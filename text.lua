local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")
local LogService = game:GetService("LogService")
local localPlayer = Players.LocalPlayer

local scriptId = "WarTycoon_Final_Cloud"

-- Перезапуск скрипта
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

-- УНИВЕРСАЛЬНАЯ НАСТРОЙКА ХИТБОКСА (Берет размер из глобальных настроек)
local function setPartStyle(part, size, color)
    if not part then return end
    local targetSize = Vector3.new(size, size, size)
    
    if part.Size ~= targetSize then
        part.Size = targetSize
        part.CanCollide = false            -- Чтобы не застревать
        part.CanTouch = true               -- Для регистрации урона техникой
        part.CanQuery = true               -- Для регистрации пуль
        
        part.Transparency = 0.7            -- Прозрачность ForceField
        part.Material = Enum.Material.ForceField 
        part.Color = color                 
        part.CollisionGroup = "Player"     -- Группа из твоих настроек Studio
        part.Massless = false              -- Твой фикс физики
        
        -- Сброс инерции для стабильности
        if part.AssemblyLinearVelocity.Magnitude > 0 then
            part.AssemblyLinearVelocity = Vector3.new(0,0,0)
        end
    end
end

local function resetPhysics(character)
    for _, obj in pairs(character:GetChildren()) do
        if obj:IsA("BasePart") then
            if obj.Name == "Head" then 
                obj.Size = Vector3.new(1.2, 1, 1) 
                obj.Transparency = 0
            elseif obj.Name == "HumanoidRootPart" then 
                obj.Size = Vector3.new(2, 2, 1)
            end
            obj.Material = Enum.Material.Plastic
            obj.CollisionGroup = "Default"
            obj.CanCollide = true
        end
    end
end

local function createNameTag(target, text, color)
    local tag = target:FindFirstChild("NameEsp")
    if tag then tag.TextLabel.TextColor3 = color return end
    
    local hSize = _G.HeadSize or 50
    local bill = Instance.new("BillboardGui", target)
    bill.Name = "NameEsp"
    bill.Size = UDim2.new(0, 200, 0, 50)
    bill.StudsOffset = Vector3.new(0, hSize/2 + 2, 0)
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

-- ОСНОВНОЙ ЦИКЛ
task.spawn(function()
    while isRunning do
        for _, player in pairs(Players:GetPlayers()) do
            if player ~= localPlayer and player.Character then
                local char = player.Character
                local hum = char:FindFirstChildOfClass("Humanoid")

                if hum and hum.Health > 0 then
                    if isWhiteListed(player) then
                        resetPhysics(char)
                    else
                        local color = player.TeamColor.Color
                        local hSize = _G.HeadSize or 50
                        local aSize = _G.ArmSize or 0 -- Если 0, руки не трогаем
                        
                        -- Применяем на Голову и RootPart
                        setPartStyle(char:FindFirstChild("Head"), hSize, color)
                        setPartStyle(char:FindFirstChild("HumanoidRootPart"), hSize, color)
                        
                        -- Применяем на Руки, если задан размер ArmSize
                        if aSize > 0 then
                            for _, part in pairs(char:GetChildren()) do
                                if string.find(part.Name, "Arm") or string.find(part.Name, "Hand") then
                                    setPartStyle(part, aSize, color)
                                end
                            end
                        end
                        
                        createNameTag(char:FindFirstChild("Head"), player.Name, color)
                    end
                end
            end
        end
        task.wait(0.2)
    end
    -- Очистка при выключении
    for _, p in pairs(Players:GetPlayers()) do if p.Character then resetPhysics(p.Character) end end
end)
