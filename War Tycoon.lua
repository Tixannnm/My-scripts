local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
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

local function isWhiteListed(playerObj)
    for _, whiteName in pairs(whiteList) do
        if playerObj.Name == whiteName then return true end
    end
    if playerObj.Team == localPlayer.Team then
        return true
    end
    return false
end

-- Очистка физики игроков
local function resetPhysics(character)
    local head = character:FindFirstChild("Head")
    if head then
        head.Size = Vector3.new(1.2, 1, 1)
        head.Transparency = 0
        head.CanCollide = true
        head.CanTouch = true
        head.CanQuery = true
    end
    local arm = character:FindFirstChild("RightUpperArm") or character:FindFirstChild("Right Arm")
    if arm then
        arm.Size = Vector3.new(1, 2, 1)
        arm.Transparency = 0
        arm.CanCollide = true
        arm.CanTouch = true
        arm.CanQuery = true
    end
end

local function removeAllEffects(model)
    if Players:GetPlayerFromCharacter(model) then
        resetPhysics(model)
    end
    for _, obj in pairs(model:GetDescendants()) do
        if obj.Name == "HitboxEsp" or obj.Name == "NameEsp" then
            obj:Destroy()
        end
    end
end

local function globalCleanup()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character then removeAllEffects(player.Character) end
    end
    local droneFolder = Workspace:FindFirstChild("Game Systems") and Workspace["Game Systems"]:FindFirstChild("Drone Workspace")
    if droneFolder then
        for _, drone in pairs(droneFolder:GetChildren()) do
            removeAllEffects(drone)
        end
    end
end

local function createNameTag(target, text, color, offset)
    local tag = target:FindFirstChild("NameEsp")
    if tag then 
        tag.TextLabel.Text = text
        tag.TextLabel.TextColor3 = color
        return 
    end
    
    local bill = Instance.new("BillboardGui", target)
    bill.Name = "NameEsp"
    bill.Adornee = target
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, offset or 4, 0)
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

local function processDrones()
    local droneFolder = Workspace:FindFirstChild("Game Systems") and Workspace["Game Systems"]:FindFirstChild("Drone Workspace")
    if not droneFolder then return end

    for _, drone in pairs(droneFolder:GetChildren()) do
        if drone:GetAttribute("Destroyed") == true then 
            removeAllEffects(drone)
            continue 
        end

        local body = drone:FindFirstChild("Engine") or drone:FindFirstChild("Body") or drone:FindFirstChildOfClass("BasePart")
        if body then
            local ownerName = drone:GetAttribute("Owner") or "Unknown"
            local ownerObj = Players:FindFirstChild(ownerName)
            
            local teamName = "No Team"
            local displayColor = Color3.fromRGB(255, 0, 0)

            if ownerObj then
                teamName = ownerObj.Team and ownerObj.Team.Name or "No Team"
                displayColor = ownerObj.TeamColor.Color
            end

            local infoText = "[DRONE] " .. ownerName .. " [" .. teamName .. "]"
            createHitboxEsp(body, displayColor, Vector3.new(3, 3, 3))
            createNameTag(body, infoText, displayColor, 3)
        end
    end
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
                    local displayName = player.Name .. " [" .. (player.Team and player.Team.Name or "No Team") .. "]"
                    
                    if isWhiteListed(player) then
                        resetPhysics(char)
                        createHitboxEsp(head, color)
                        createNameTag(head, displayName, color)
                    else
                        -- ИСПРАВЛЕНИЕ: Отключаем физическое взаимодействие
                        local targetHeadSize = Vector3.new(HEAD_SIZE, HEAD_SIZE, HEAD_SIZE)
                        if head.Size ~= targetHeadSize then
                            head.Size = targetHeadSize
                            head.Transparency = 1
                            head.CanCollide = false -- Не сталкивается с блоками
                            head.CanTouch = false   -- Не активирует триггеры
                            head.CanQuery = true    -- НО ПУЛИ ВСЁ ЕЩЁ ПОПАДАЮТ
                            head.Massless = true
                        end
                        createHitboxEsp(head, color)
                        createNameTag(head, displayName, color)

                        if arm then
                            local targetArmSize = Vector3.new(ARM_SIZE, ARM_SIZE, ARM_SIZE)
                            if arm.Size ~= targetArmSize then
                                arm.Size = targetArmSize
                                arm.Transparency = 1
                                arm.CanCollide = false
                                arm.CanTouch = false
                                arm.CanQuery = true
                                arm.Massless = true
                            end
                            createHitboxEsp(arm, color)
                        end
                    end
                else
                    removeAllEffects(char)
                end
            end
        end

        processDrones()
        task.wait(0.3)
    end
    globalCleanup()
end)
