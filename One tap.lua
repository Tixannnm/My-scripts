local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
-- Берем размер из _G, если он там есть, иначе ставим 25 по умолчанию
local HITBOX_SIZE = _G.HitboxSize or 25
local TARGET_VECTOR = Vector3.new(HITBOX_SIZE, HITBOX_SIZE, HITBOX_SIZE)
-- =================================================

-- === ЗАЩИТА ОТ ДУБЛИРОВАНИЯ ===
local scriptId = "NoriHitboxSystem_v2"

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
-- ===============================

local whiteList = {
    "nikita_031298",
    "Flamiwet"
}

-- Добавляем внешние ники из лоадстринг-настроек
if _G.WhiteList and type(_G.WhiteList) == "table" then
    for _, name in pairs(_G.WhiteList) do
        table.insert(whiteList, name)
    end
end

local function isWhiteListed(playerObj, modelName)
    for _, whiteName in pairs(whiteList) do
        if modelName == whiteName then return true end
    end
    -- Авто-вайтлист союзников
    if playerObj and playerObj:IsA("Player") and playerObj.Team == localPlayer.Team then
        return true
    end
    return false
end

local function removeEffects(model)
    local head = model:FindFirstChild("Head")
    if head then
        if head:FindFirstChild("HitboxEsp") then head.HitboxEsp:Destroy() end
        if head:FindFirstChild("NameEsp") then head.NameEsp:Destroy() end
        head.Transparency = 0
        head.Size = Vector3.new(1.2, 1, 1)
        head.CanCollide = true
    end
end

-- Полная очистка всего Workspace от следов скрипта
local function globalCleanup()
    for _, obj in pairs(Workspace:GetDescendants()) do
        if obj.Name == "HitboxEsp" or obj.Name == "NameEsp" then
            obj:Destroy()
        end
        if obj:IsA("Model") and obj:FindFirstChild("Head") then
            local h = obj.Head
            -- Сбрасываем голову, если она явно изменена скриптом (прозрачная или огромная)
            if h.Transparency == 1 or h.Size.Y > 2 then
                h.Size = Vector3.new(1.2, 1, 1)
                h.Transparency = 0
                h.CanCollide = true
            end
        end
    end
end

local function createNameTag(targetPart, name, color)
    if not targetPart or targetPart:FindFirstChild("NameEsp") then return end
    local bill = Instance.new("BillboardGui")
    bill.Name = "NameEsp"
    bill.Adornee = targetPart
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, 10, 0)
    bill.AlwaysOnTop = true
    bill.Parent = targetPart
    local label = Instance.new("TextLabel")
    label.Parent = bill
    label.BackgroundTransparency = 1
    label.Size = UDim2.new(1, 0, 1, 0)
    label.Text = name
    label.TextColor3 = color
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

local function processModel(model)
    if not isRunning or not model:IsA("Model") or model == localPlayer.Character then return end
    local hum = model:FindFirstChildOfClass("Humanoid")
    local head = model:FindFirstChild("Head")
    
    if hum and head then
        local playerObj = Players:GetPlayerFromCharacter(model) or Players:FindFirstChild(model.Name)
        
        if isWhiteListed(playerObj, model.Name) then
            removeEffects(model)
            return
        end

        if hum.Health > 0 then
            local targetColor
            local displayName
            if playerObj and playerObj:IsA("Player") then
                targetColor = playerObj.TeamColor.Color
                local teamName = playerObj.Team and playerObj.Team.Name or "No Team"
                displayName = playerObj.Name .. " [" .. teamName .. "]"
            else
                targetColor = Color3.fromRGB(255, 170, 0)
                displayName = "[BOT] " .. model.Name
            end

            if head.Size ~= TARGET_VECTOR then
                head.Size = TARGET_VECTOR
                head.Transparency = 1
                head.CanCollide = false
                head.Massless = true
            end
            createHitboxEsp(head, targetColor)
            createNameTag(head, displayName, targetColor)
        else
            removeEffects(model)
        end
    end
end

globalCleanup()

task.spawn(function()
    while isRunning do
        -- Проверка реальных игроков
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character then processModel(player.Character) end
        end
        -- Проверка Workspace для NPC и тех, кто не в Players
        for _, obj in pairs(Workspace:GetChildren()) do
            processModel(obj)
        end
        task.wait(0.2)
    end
    globalCleanup()
end)
