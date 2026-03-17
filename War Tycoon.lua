local Players = game:GetService("Players")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
local HEAD_SIZE = _G.HeadSize or 100 
local ARM_SIZE = _G.ArmSize or 25    
-- =================================================

local scriptId = "WarTycoon"

local oldSignal = LogService:FindFirstChild(scriptId)
if oldSignal then
    oldSignal:Destroy()
    task.wait(0.3)
end

local currentSignal = Instance.new("BindableEvent")
currentSignal.Name = scriptId
currentSignal.Parent = LogService

local isRunning = true
currentSignal.AncestryChanged:Connect(function()
    if not currentSignal:IsDescendantOf(game) then
        isRunning = false
    end
end)

local whiteList = {}

if _G.WhiteList and type(_G.WhiteList) == "table" then
    for _, name in pairs(_G.WhiteList) do
        table.insert(whiteList, name)
    end
end

-- Проверка на вайтлист (друзья или команда)
local function isWhiteListed(playerObj)
    for _, whiteName in pairs(whiteList) do
        if playerObj.Name == whiteName then return true end
    end
    if playerObj.Team == localPlayer.Team then
        return true
    end
    return false
end

-- Очистка ТОЛЬКО физических изменений (размер/прозрачность)
local function resetPhysics(character)
    local head = character:FindFirstChild("Head")
    if head then
        head.Size = Vector3.new(1.2, 1, 1)
        head.Transparency = 0
        head.CanCollide = true
    end
    local arm = character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm")
    if arm then
        arm.Size = Vector3.new(1, 2, 1)
        arm.Transparency = 0
        arm.CanCollide = true
    end
end

-- Полная очистка при выключении
local function removeAllEffects(character)
    resetPhysics(character)
    for _, obj in pairs(character:GetDescendants()) do
        if obj.Name == "HitboxEsp" or obj.Name == "NameEsp" then
            obj:Destroy()
        end
    end
end

local function globalCleanup()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then removeAllEffects(player.Character) end
    end
end

local function createNameTag(player, head)
    local tag = head:FindFirstChild("NameEsp")
    if tag then 
        tag.TextLabel.TextColor3 = player.TeamColor.Color
        return 
    end
    
    local bill = Instance.new("BillboardGui", head)
    bill.Name = "NameEsp"
    bill.Adornee = head
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, 4, 0) -- Сделал чуть ниже, так как хитбокс у своих маленький
    bill.AlwaysOnTop = true

    local label = Instance.new("TextLabel", bill)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    local teamName = player.Team and player.Team.Name or "No Team"
    label.Text = player.Name .. " [" .. teamName .. "]"
    label.TextColor3 = player.TeamColor.Color
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
end

local function createHitboxEsp(part, color)
    local box = part:FindFirstChild("HitboxEsp")
    if not box then
        box = Instance.new("BoxHandleAdornment", part)
        box.Name = "HitboxEsp"
        box.Adornee = part
        box.AlwaysOnTop = true
        box.ZIndex = 10
        box.Transparency = 0.6
    end
    box.Size = part.Size
    box.Color3 = color
end

globalCleanup()

task.spawn(function()
    while isRunning do
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local char = player.Character
                local hum = char:FindFirstChildOfClass("Humanoid")
                local head = char:FindFirstChild("Head")
                local arm = char:FindFirstChild("RightUpperArm") or char:FindFirstChild("Right Arm")

                if hum and hum.Health > 0 and head then
                    local color = player.TeamColor.Color
                    
                    if isWhiteListed(player) then
                        -- ВАЙТЛИСТ: Оставляем ESP, убираем огромный хитбокс
                        resetPhysics(char)
                        createHitboxEsp(head, color)
                        if arm then createHitboxEsp(arm, color) end
                        createNameTag(player, head)
                    else
                        -- ВРАГИ: Огромный хитбокс + ESP
                        local targetHeadSize = Vector3.new(HEAD_SIZE, HEAD_SIZE, HEAD_SIZE)
                        if head.Size ~= targetHeadSize then
                            head.Size = targetHeadSize
                            head.Transparency = 1
                            head.CanCollide = false
                        end
                        createHitboxEsp(head, color)
                        createNameTag(player, head)

                        if arm then
                            local targetArmSize = Vector3.new(ARM_SIZE, ARM_SIZE, ARM_SIZE)
                            if arm.Size ~= targetArmSize then
                                arm.Size = targetArmSize
                                arm.Transparency = 1
                                arm.CanCollide = false
                            end
                            createHitboxEsp(arm, color)
                        end
                    end
                else
                    removeAllEffects(char)
                end
            end
        end
        task.wait(0.3)
    end
    globalCleanup()
end)
