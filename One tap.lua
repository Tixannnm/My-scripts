local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
local HITBOX_VAL = _G.HitboxSize or 10
local TARGET_VECTOR = Vector3.new(HITBOX_VAL, HITBOX_VAL, HITBOX_VAL)
local DEFAULT_VECTOR = Vector3.new(1.2, 1, 1) -- Стандартный размер головы
-- =================================================

local scriptId = "One Tap"

local oldSignal = LogService:FindFirstChild(scriptId)
if oldSignal then oldSignal:Destroy() task.wait(0.2) end

local currentSignal = Instance.new("BindableEvent", LogService)
currentSignal.Name = scriptId

local isRunning = true
currentSignal.AncestryChanged:Connect(function()
    if not currentSignal:IsDescendantOf(game) then isRunning = false end
end)

local whiteList = {"nikita_031298", "Flamiwet"}
if _G.WhiteList and type(_G.WhiteList) == "table" then
    for _, name in pairs(_G.WhiteList) do table.insert(whiteList, name) end
end

local function isWhiteListed(model)
    if not model or model == localPlayer.Character then return true end
    for _, name in pairs(whiteList) do
        if model.Name == name then return true end
    end
    return false
end

-- Очистка хитбокса после смерти или для вайтлиста
local function removeEffects(model)
    local head = model:FindFirstChild("Head")
    if head then
        if head:FindFirstChild("HitboxEsp") then head.HitboxEsp:Destroy() end
        if head:FindFirstChild("NameEsp") then head.NameEsp:Destroy() end
        head.Size = DEFAULT_VECTOR
        head.Transparency = 0
        head.CanCollide = true
    end
end

local function createNameTag(targetPart, name, color)
    local tag = targetPart:FindFirstChild("NameEsp")
    if tag then 
        tag.TextLabel.TextColor3 = color
        tag.TextLabel.Text = name
        return 
    end
    
    local bill = Instance.new("BillboardGui", targetPart)
    bill.Name = "NameEsp"
    bill.AlwaysOnTop = true
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, HITBOX_VAL / 2 + 2, 0)
    
    local label = Instance.new("TextLabel", bill)
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = color
    label.TextStrokeTransparency = 0
    label.TextScaled = true
    label.Font = Enum.Font.SourceSansBold
end

local function applyHitbox(model)
    if not isRunning or isWhiteListed(model) then return end
    
    local head = model:FindFirstChild("Head")
    local hum = model:FindFirstChildOfClass("Humanoid")
    
    if head and hum then
        if hum.Health > 0 then
            -- ПРИМЕНЯЕМ ХИТБОКС
            if head.Size ~= TARGET_VECTOR then
                head.Size = TARGET_VECTOR
                head.Transparency = 1
                head.CanCollide = false
                head.Massless = true
            end
            
            local playerObj = Players:GetPlayerFromCharacter(model)
            local targetColor, displayName
            
            if playerObj then
                targetColor = playerObj.TeamColor.Color
                displayName = playerObj.Name .. " [" .. (playerObj.Team and playerObj.Team.Name or "No Team") .. "]"
            else
                targetColor = Color3.fromRGB(255, 120, 0)
                displayName = "[BOT] " .. model.Name
            end

            local box = head:FindFirstChild("HitboxEsp")
            if not box then
                box = Instance.new("BoxHandleAdornment", head)
                box.Name = "HitboxEsp"
                box.Adornee = head
                box.AlwaysOnTop = true
                box.ZIndex = 10
                box.Transparency = 0.6
            end
            box.Size = TARGET_VECTOR
            box.Color3 = targetColor
            
            createNameTag(head, displayName, targetColor)
        else
            -- УДАЛЯЕМ ХИТБОКС (если мертв)
            removeEffects(model)
        end
    end
end

-- Рекурсивный поиск ботов
local function scanForBots(root)
    for _, obj in pairs(root:GetChildren()) do
        if obj:IsA("Model") then
            if obj:FindFirstChild("Head") and obj:FindFirstChildOfClass("Humanoid") then
                applyHitbox(obj)
            end
        elseif obj:IsA("Folder") then
            scanForBots(obj)
        end
    end
end

-- Цикл
task.spawn(function()
    while isRunning do
        for _, p in pairs(Players:GetPlayers()) do
            if p.Character then applyHitbox(p.Character) end
        end
        scanForBots(Workspace)
        task.wait(0.2)
    end
    -- Финальная очистка при выключении скрипта
    for _, p in pairs(Players:GetPlayers()) do if p.Character then removeEffects(p.Character) end end
end)
