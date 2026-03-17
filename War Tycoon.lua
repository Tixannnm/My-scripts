local Players = game:GetService("Players")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
-- Берем значения из _G (если они заданы в лоадстринге), иначе ставим стандарт
local HEAD_SIZE = _G.HeadSize or 100 
local ARM_SIZE = _G.ArmSize or 25    
-- =================================================

-- ФИКСИРОВАННОЕ НАЗВАНИЕ
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

local whiteList = {
    "Flamiwet",
    "nikita_031298",
}

-- Добавляем ники из _G.WhiteList, если они есть
if _G.WhiteList and type(_G.WhiteList) == "table" then
    for _, name in pairs(_G.WhiteList) do
        table.insert(whiteList, name)
    end
end

local function isWhiteListed(playerObj)
    for _, whiteName in pairs(whiteList) do
        if playerObj.Name == whiteName then return true end
    end
    -- Авто-вайтлист своей команды
    if playerObj.Team == localPlayer.Team then
        return true
    end
    return false
end

local function removeEffects(character)
    for _, obj in pairs(character:GetDescendants()) do
        if obj.Name == "HitboxEsp" or obj.Name == "NameEsp" then
            obj:Destroy()
        end
    end
    local head = character:FindFirstChild("Head")
    if head then
        head.Size = Vector3.new(1.2, 1, 1)
        head.Transparency = 0
    end
    local arm = character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm")
    if arm then
        arm.Size = Vector3.new(1, 2, 1)
        arm.Transparency = 0
    end
end

local function globalCleanup()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then removeEffects(player.Character) end
    end
end

local function createNameTag(player, head)
    if head:FindFirstChild("NameEsp") then return end
    local bill = Instance.new("BillboardGui")
    bill.Name = "NameEsp"
    bill.Adornee = head
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, 10, 0)
    bill.AlwaysOnTop = true
    bill.Parent = head

    local label = Instance.new("TextLabel")
    label.Parent = bill
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
    local existing = part:FindFirstChild("HitboxEsp")
    if existing then 
        existing.Size = part.Size
        return 
    end
    
    local box = Instance.new("BoxHandleAdornment")
    box.Name = "HitboxEsp"
    box.Adornee = part
    box.AlwaysOnTop = true
    box.ZIndex = 10
    box.Color3 = color
    box.Transparency = 0.6
    box.Size = part.Size
    box.Parent = part
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

                if isWhiteListed(player) then
                    removeEffects(char)
                elseif hum and hum.Health > 0 and head then
                    local color = player.TeamColor.Color
                    
                    -- Обработка головы
                    local targetHeadSize = Vector3.new(HEAD_SIZE, HEAD_SIZE, HEAD_SIZE)
                    if head.Size ~= targetHeadSize then
                        head.Size = targetHeadSize
                        head.Transparency = 1
                        head.CanCollide = false
                        head.Massless = true
                    end
                    createHitboxEsp(head, color)
                    createNameTag(player, head)

                    -- Обработка руки
                    if arm then
                        local targetArmSize = Vector3.new(ARM_SIZE, ARM_SIZE, ARM_SIZE)
                        if arm.Size ~= targetArmSize then
                            arm.Size = targetArmSize
                            arm.Transparency = 1
                            arm.CanCollide = false
                            arm.Massless = true
                        end
                        createHitboxEsp(arm, color)
                    end
                else
                    removeEffects(char)
                end
            end
        end
        task.wait(0.3)
    end
    globalCleanup()
end)
