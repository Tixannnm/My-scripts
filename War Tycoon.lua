local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
local HEAD_SIZE = _G.HeadSize or 100 
-- =================================================

local scriptId = "WarTycoon"

local oldSignal = LogService:FindFirstChild(scriptId)
if oldSignal then oldSignal:Destroy() task.wait(0.3) end

local currentSignal = Instance.new("BindableEvent", LogService)
currentSignal.Name = scriptId

local isRunning = true
currentSignal.AncestryChanged:Connect(function()
    if not currentSignal:IsDescendantOf(game) then isRunning = false end
end)

local function isWhiteListed(playerObj)
    if playerObj.Team == localPlayer.Team then return true end
    if _G.WhiteList and type(_G.WhiteList) == "table" then
        for _, name in pairs(_G.WhiteList) do if playerObj.Name == name then return true end end
    end
    return false
end

-- Сброс физики (теперь и для RootPart)
local function resetPhysics(character)
    local head = character:FindFirstChild("Head")
    local hrp = character:FindFirstChild("HumanoidRootPart")
    
    if head then
        head.Size = Vector3.new(1.2, 1, 1)
        head.Transparency = 0
        head.CanCollide = true
        head.CanTouch = true
        head.CanQuery = true
        head.Massless = false
    end
    if hrp then
        hrp.Size = Vector3.new(2, 2, 1)
        hrp.Transparency = 1 -- RootPart всегда прозрачный в Roblox
        hrp.CanCollide = true
    end
end

local function removeAllEffects(model)
    if Players:GetPlayerFromCharacter(model) then resetPhysics(model) end
    for _, obj in pairs(model:GetDescendants()) do
        if obj.Name == "HitboxEsp" or obj.Name == "NameEsp" then obj:Destroy() end
    end
end

local function createNameTag(target, text, color)
    local tag = target:FindFirstChild("NameEsp")
    if tag then 
        tag.TextLabel.Text = text
        tag.TextLabel.TextColor3 = color
        return 
    end
    local bill = Instance.new("BillboardGui", target)
    bill.Name = "NameEsp"
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, 5, 0)
    bill.AlwaysOnTop = true
    local label = Instance.new("TextLabel", bill)
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = text
    label.TextColor3 = color
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
end

local function createHitboxEsp(part, color, size)
    local box = part:FindFirstChild("HitboxEsp")
    if not box then
        box = Instance.new("BoxHandleAdornment", part)
        box.Name = "HitboxEsp"
        box.Adornee = part
        box.AlwaysOnTop = true
        box.ZIndex = 10
        box.Transparency = 0.6
    end
    box.Size = size or part.Size
    box.Color3 = color
end

-- Функция настройки хитбокса (голова или рутпарт)
local function setupHitbox(part, targetSize)
    if part.Size ~= targetSize then
        part.Size = targetSize
        part.CanCollide = false
        part.CanTouch = false
        part.CanQuery = true
        part.Massless = true
        if part.Name == "Head" then part.Transparency = 1 end
    end
    if part.AssemblyLinearVelocity.Magnitude > 0 then
        part.AssemblyLinearVelocity = Vector3.new(0,0,0)
    end
end

-- Основной цикл
task.spawn(function()
    while isRunning do
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local char = player.Character
                local head = char:FindFirstChild("Head")
                local hrp = char:FindFirstChild("HumanoidRootPart")
                local hum = char:FindFirstChildOfClass("Humanoid")

                if head and hrp and hum and hum.Health > 0 then
                    local color = player.TeamColor.Color
                    local nameText = player.Name .. " [" .. (player.Team and player.Team.Name or "No Team") .. "]"

                    if isWhiteListed(player) then
                        resetPhysics(char)
                        createHitboxEsp(head, color)
                        createNameTag(head, nameText, color)
                    else
                        local targetSize = Vector3.new(HEAD_SIZE, HEAD_SIZE, HEAD_SIZE)
                        
                        -- Увеличиваем и Голову, и RootPart
                        setupHitbox(head, targetSize)
                        setupHitbox(hrp, targetSize)

                        createHitboxEsp(head, color)
                        createNameTag(head, nameText, color)
                    end
                else
                    if char then removeAllEffects(char) end
                end
            end
        end

        -- Дроны
        local droneFolder = Workspace:FindFirstChild("Game Systems") and Workspace["Game Systems"]:FindFirstChild("Drone Workspace")
        if droneFolder then
            for _, drone in pairs(droneFolder:GetChildren()) do
                if drone:GetAttribute("Destroyed") ~= true then
                    local body = drone:FindFirstChild("Engine") or drone:FindFirstChild("Body") or drone:FindFirstChildOfClass("BasePart")
                    if body then
                        local ownerName = drone:GetAttribute("Owner") or "Unknown"
                        createHitboxEsp(body, Color3.fromRGB(255, 0, 0), Vector3.new(3, 3, 3))
                        createNameTag(body, "[DRONE] " .. ownerName, Color3.fromRGB(255, 0, 0))
                    end
                end
            end
        end

        task.wait(0.2)
    end
    -- Очистка
    for _, player in pairs(Players:GetPlayers()) do if player.Character then removeAllEffects(player.Character) end end
end)
