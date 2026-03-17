local Players = game:GetService("Players")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

-- ================= [ НАСТРОЙКИ ] =================
-- Используем значение из _G для loadstring, либо 100 по умолчанию
local HEAD_SIZE = _G.HitboxSize or 100 
-- =================================================

-- ПОСТОЯННОЕ НАЗВАНИЕ (НЕ МЕНЯТЬ)
local scriptId = "Hitboxes"

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

-- Список исключений
local whiteList = {
    "Flamiwet",
    "nikita_031298",
}

-- Добавляем ники из _G, если они переданы через лоадстринг
if _G.WhiteList and type(_G.WhiteList) == "table" then
    for _, name in pairs(_G.WhiteList) do
        table.insert(whiteList, name)
    end
end

local function isWhiteListed(playerObj)
    for _, whiteName in pairs(whiteList) do
        if playerObj.Name == whiteName then return true end
    end
    -- Авто-исключение союзников по команде
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
        existing.Size = part.Size -- Обновляем размер коробки под размер головы
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

                if isWhiteListed(player) then
                    removeEffects(char)
                elseif hum and hum.Health > 0 and head then
                    local color = player.TeamColor.Color
                    
                    local targetSize = Vector3.new(HEAD_SIZE, HEAD_SIZE, HEAD_SIZE)
                    if head.Size ~= targetSize then
                        head.Size = targetSize
                        head.Transparency = 1
                        head.CanCollide = false
                        head.Massless = true
                    end

                    createHitboxEsp(head, color)
                    createNameTag(player, head)
                else
                    removeEffects(char)
                end
            end
        end
        task.wait(0.3)
    end
    globalCleanup()
end)
