local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
local DroneFolder = workspace:WaitForChild("Drones"):WaitForChild("SpawnedDrones")

-- Список игнорируемых ID (белый список)
local IgnoredUsers = {
    [4288295123] = true,
    [2507631272] = true
}

-- Настройки
local Settings = {
    TargetName = "iran",
    BehindOffset = 5,
    HeightOffset = 3,
    DroneESP = false,
    PlayerESPFromDrone = false,
    AutoExplodeDrones = false,
    ToggleKey = Enum.KeyCode.Delete
}

local ActiveDroneESPs = {}

----------------------------------------------------
-- ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ
----------------------------------------------------

local function IsIgnoredUser(ownerId)
    local parsedId = tonumber(ownerId)
    if not parsedId then return false end
    if parsedId == LocalPlayer.UserId or IgnoredUsers[parsedId] then
        return true
    end
    return false
end

local function GetDronePosition(drone)
    if not drone or not drone.Parent then return nil end
    if drone:IsA("Model") then return drone:GetPivot().Position end
    if drone:IsA("BasePart") then return drone.Position end
    return nil
end

local function GetDroneAdornee(drone)
    if not drone or not drone.Parent then return nil end
    if drone:IsA("Model") then
        return drone.PrimaryPart or drone:FindFirstChildWhichIsA("BasePart", true)
    elseif drone:IsA("BasePart") then
        return drone
    end
    return nil
end

local function GetMyDrone()
    for _, drone in ipairs(DroneFolder:GetChildren()) do
        local ownerId = drone:GetAttribute("OwnerUserId") or drone:GetAttribute("Owner") or drone:GetAttribute("PlayerId")
        
        if ownerId == LocalPlayer.UserId or tostring(ownerId) == tostring(LocalPlayer.UserId) then
            return drone
        end
        
        if drone.Name == LocalPlayer.Name or drone:GetAttribute("OwnerName") == LocalPlayer.Name then
            return drone
        end
    end
    return nil
end

local function ExplodeEnemyDrones()
    local char = LocalPlayer.Character
    local rootPart = char and char:FindFirstChild("HumanoidRootPart")
    if not rootPart or not firetouchinterest then return end

    for _, droneModel in ipairs(DroneFolder:GetChildren()) do
        if droneModel:IsA("Model") then
            local ownerId = droneModel:GetAttribute("OwnerUserId") or droneModel:GetAttribute("Owner") or droneModel:GetAttribute("PlayerId")
            
            -- Проверка на белый список и свой дрон
            if IsIgnoredUser(ownerId) then
                continue
            end

            for _, child in ipairs(droneModel:GetDescendants()) do
                if child:IsA("BasePart") then
                    firetouchinterest(rootPart, child, 0)
                    firetouchinterest(rootPart, child, 1)
                end
            end
        end
    end
end

local function TeleportDroneOnce()
    local myDrone = GetMyDrone()
    if not myDrone then return end

    for _, g in ipairs(Players:GetPlayers()) do
        if g ~= LocalPlayer then
            local char = g.Character
            if char then
                local team = char:GetAttribute("Team")
                local nameToCompare = g.DisplayName or g.Name
                if team == "Defenders" and string.lower(nameToCompare) == string.lower(Settings.TargetName) then
                    local charCFrame = char:GetPivot()
                    local _, yaw, _ = charCFrame:ToOrientation()
                    local flatCFrame = CFrame.new(charCFrame.Position) * CFrame.Angles(0, yaw, 0)
                    
                    local targetCFrame = flatCFrame * CFrame.new(0, Settings.HeightOffset, Settings.BehindOffset)
                    myDrone:PivotTo(targetCFrame)
                    break
                end
            end
        end
    end
end

-- Авто-сбивание всех чужих дронов (кроме белого списка)
local function AutoShootClosestDrone()
    local char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local rootPart = char:FindFirstChild("HumanoidRootPart") or char:FindFirstChildWhichIsA("BasePart")
    if not rootPart then return end

    local tool = char:FindFirstChild("AK74") or LocalPlayer.Backpack:FindFirstChild("AK74")
    if not tool or not tool:FindFirstChild("FireEvent") then
        for _, item in ipairs(char:GetChildren()) do
            if item:IsA("Tool") and item:FindFirstChild("FireEvent") then
                tool = item
                break
            end
        end
        if not tool then
            for _, item in ipairs(LocalPlayer.Backpack:GetChildren()) do
                if item:IsA("Tool") and item:FindFirstChild("FireEvent") then
                    tool = item
                    break
                end
            end
        end
    end

    if not tool or not tool:FindFirstChild("FireEvent") then
        warn("Оружие с FireEvent не найдено!")
        return
    end

    local closestPart = nil
    local shortestDistance = math.huge

    for _, drone in ipairs(DroneFolder:GetChildren()) do
        if drone:IsA("Model") or drone:IsA("BasePart") then
            local ownerId = drone:GetAttribute("OwnerUserId") or drone:GetAttribute("Owner") or drone:GetAttribute("PlayerId")

            -- Проверка на белый список и свой дрон
            if IsIgnoredUser(ownerId) then
                continue
            end

            local targetPart = drone:FindFirstChild("Body", true)
            if not targetPart or not targetPart:IsA("BasePart") then
                if drone:IsA("Model") then
                    targetPart = drone.PrimaryPart or drone:FindFirstChildWhichIsA("BasePart", true)
                elseif drone:IsA("BasePart") then
                    targetPart = drone
                end
            end

            if targetPart then
                local dist = (targetPart.Position - rootPart.Position).Magnitude
                if dist < shortestDistance then
                    shortestDistance = dist
                    closestPart = targetPart
                end
            end
        end
    end

    if closestPart then
        local targetPosition = closestPart.Position
        local dynamicDelay = math.clamp(shortestDistance / 2500, 0.01, 0.15)

        local originalParent = tool.Parent
        if originalParent == LocalPlayer.Backpack then
            tool.Parent = char
        end

        local Event = tool:FindFirstChild("FireEvent")
        if Event then
            Event:FireServer({
                isAiming = false,
                action = "start",
                aim = targetPosition
            })

            task.wait(dynamicDelay)

            Event:FireServer({
                isAiming = false,
                action = "stop",
                aim = targetPosition
            })
        end

        if rootPart and firetouchinterest then
            local droneModel = closestPart:FindFirstAncestorOfClass("Model") or closestPart
            for _, part in ipairs(droneModel:GetDescendants()) do
                if part:IsA("BasePart") then
                    firetouchinterest(rootPart, part, 0)
                    firetouchinterest(rootPart, part, 1)
                end
            end
        end
    end
end

----------------------------------------------------
-- СОЗДАНИЕ GUI ИНТЕРФЕЙСА
----------------------------------------------------

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "DroneControlHub"
ScreenGui.ResetOnSpawn = false

if gethui then
    ScreenGui.Parent = gethui()
elseif syn and syn.protect_gui then
    syn.protect_gui(ScreenGui)
    ScreenGui.Parent = CoreGui
else
    ScreenGui.Parent = CoreGui
end

-- КНОПКА HUB
local MenuToggleFrame = Instance.new("Frame")
MenuToggleFrame.Name = "MenuToggleFrame"
MenuToggleFrame.Size = UDim2.new(0, 80, 0, 32)
MenuToggleFrame.Position = UDim2.new(0.02, 0, 0.2, 0)
MenuToggleFrame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
MenuToggleFrame.Active = true
MenuToggleFrame.Draggable = true
MenuToggleFrame.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner", MenuToggleFrame)
ToggleCorner.CornerRadius = UDim.new(0, 6)

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(1, 0, 1, 0)
ToggleBtn.BackgroundTransparency = 1
ToggleBtn.Text = "☰ HUB"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
ToggleBtn.TextSize = 12
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Parent = MenuToggleFrame

-- КНОПКА SHOOT
local ShootFrame = Instance.new("Frame")
ShootFrame.Name = "ShootFrame"
ShootFrame.Size = UDim2.new(0, 65, 0, 65)
ShootFrame.Position = UDim2.new(0.85, -32, 0.5, -32)
ShootFrame.BackgroundColor3 = Color3.fromRGB(25, 27, 32)
ShootFrame.BorderSizePixel = 0
ShootFrame.Active = true
ShootFrame.Draggable = true
ShootFrame.Parent = ScreenGui

local ShootCorner = Instance.new("UICorner", ShootFrame)
ShootCorner.CornerRadius = UDim.new(0, 14)

local ShootStroke = Instance.new("UIStroke", ShootFrame)
ShootStroke.Color = Color3.fromRGB(0, 220, 130)
ShootStroke.Thickness = 2
ShootStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border

local ShootBtn = Instance.new("TextButton")
ShootBtn.Size = UDim2.new(1, 0, 1, 0)
ShootBtn.BackgroundTransparency = 1
ShootBtn.Text = "SHOOT"
ShootBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
ShootBtn.TextSize = 13
ShootBtn.Font = Enum.Font.GothamBold
ShootBtn.Parent = ShootFrame

local isFiring = false
ShootBtn.MouseButton1Click:Connect(function()
    if isFiring then return end
    isFiring = true
    ShootBtn.Text = "WAIT..."
    ShootBtn.TextColor3 = Color3.fromRGB(150, 150, 150)

    task.spawn(function()
        AutoShootClosestDrone()
        task.wait(0.1)
        ShootBtn.Text = "SHOOT"
        ShootBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
        isFiring = false
    end)
end)

-- ОСНОВНОЕ ОКНО
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 320, 0, 480)
MainFrame.Position = UDim2.new(0.5, -160, 0.2, 0)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 27, 32)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -75, 0, 40)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "DRONE CONTROL HUB"
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.TextSize = 15
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -65, 0, 5)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
MinimizeBtn.TextSize = 14
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.Parent = MainFrame

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 5)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
CloseBtn.TextSize = 14
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = MainFrame

local Container = Instance.new("Frame")
Container.Size = UDim2.new(1, -20, 1, -50)
Container.Position = UDim2.new(0, 10, 0, 45)
Container.BackgroundTransparency = 1
Container.Parent = MainFrame

local UIList = Instance.new("UIListLayout", Container)
UIList.SortOrder = Enum.SortOrder.LayoutOrder
UIList.Padding = UDim.new(0, 8)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

local isCollapsed = false
MinimizeBtn.MouseButton1Click:Connect(function()
    isCollapsed = not isCollapsed
    Container.Visible = not isCollapsed
    if isCollapsed then
        MainFrame.Size = UDim2.new(0, 320, 0, 40)
    else
        MainFrame.Size = UDim2.new(0, 320, 0, 480)
    end
end)

local function CreateActionButton(btnText, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 38)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = Container

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, 0, 1, 0)
    Button.BackgroundTransparency = 1
    Button.Text = btnText
    Button.TextColor3 = Color3.fromRGB(0, 220, 130)
    Button.TextSize = 13
    Button.Font = Enum.Font.GothamBold
    Button.Parent = Frame

    Button.MouseButton1Click:Connect(callback)
end

local function CreateToggle(name, defaultState, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 38)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = Container
    
    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -60, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0, 40, 0, 22)
    Button.Position = UDim2.new(1, -48, 0.5, -11)
    Button.BackgroundColor3 = defaultState and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(60, 64, 72)
    Button.Text = defaultState and "ON" or "OFF"
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 11
    Button.Font = Enum.Font.GothamBold
    Button.Parent = Frame

    local BtnCorner = Instance.new("UICorner", Button)
    BtnCorner.CornerRadius = UDim.new(0, 4)

    local state = defaultState
    Button.MouseButton1Click:Connect(function()
        state = not state
        Button.BackgroundColor3 = state and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(60, 64, 72)
        Button.Text = state and "ON" or "OFF"
        callback(state)
    end)
end

local function CreateInput(labelTitle, defaultValue, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 38)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = Container

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.55, 0, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = labelTitle
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0.4, 0, 0, 24)
    TextBox.Position = UDim2.new(0.58, 0, 0.5, -12)
    TextBox.BackgroundColor3 = Color3.fromRGB(48, 52, 60)
    TextBox.Text = tostring(defaultValue)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = 12
    TextBox.Font = Enum.Font.Gotham
    TextBox.Parent = Frame

    local BoxCorner = Instance.new("UICorner", TextBox)
    BoxCorner.CornerRadius = UDim.new(0, 4)

    TextBox.FocusLost:Connect(function()
        callback(TextBox.Text)
    end)
end

local function CreateKeybind(labelTitle, defaultKey, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, 38)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = Container

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.5, 0, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = labelTitle
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = 12
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(0.45, 0, 0, 24)
    Button.Position = UDim2.new(0.52, 0, 0.5, -12)
    Button.BackgroundColor3 = Color3.fromRGB(48, 52, 60)
    Button.Text = defaultKey.Name
    Button.TextColor3 = Color3.fromRGB(255, 255, 255)
    Button.TextSize = 11
    Button.Font = Enum.Font.GothamBold
    Button.Parent = Frame

    local BtnCorner = Instance.new("UICorner", Button)
    BtnCorner.CornerRadius = UDim.new(0, 4)

    local listening = false

    Button.MouseButton1Click:Connect(function()
        listening = true
        Button.Text = "[ Press Key... ]"
        Button.BackgroundColor3 = Color3.fromRGB(80, 85, 95)
    end)

    UserInputService.InputBegan:Connect(function(input, gpe)
        if listening then
            if input.UserInputType == Enum.UserInputType.Keyboard then
                local pressedKey = input.KeyCode
                if pressedKey ~= Enum.KeyCode.Unknown and pressedKey ~= Enum.KeyCode.Escape then
                    Settings.ToggleKey = pressedKey
                    Button.Text = pressedKey.Name
                    callback(pressedKey)
                else
                    Button.Text = Settings.ToggleKey.Name
                end
                Button.BackgroundColor3 = Color3.fromRGB(48, 52, 60)
                listening = false
            end
        end
    end)
end

local function ClearAllDroneESP()
    for drone, esp in pairs(ActiveDroneESPs) do
        if esp and esp.Parent then
            esp:Destroy()
        end
    end
    table.clear(ActiveDroneESPs)
end

-- Элементы управления
CreateActionButton("Teleport Drone Behind Target", function()
    TeleportDroneOnce()
end)

CreateActionButton("Explode Drones Once", function()
    ExplodeEnemyDrones()
end)

CreateToggle("Auto Explode Drones", Settings.AutoExplodeDrones, function(v)
    Settings.AutoExplodeDrones = v
end)

CreateInput("Target DisplayName:", Settings.TargetName, function(txt) 
    Settings.TargetName = txt 
end)

CreateInput("Studs Behind:", Settings.BehindOffset, function(txt) 
    Settings.BehindOffset = tonumber(txt) or Settings.BehindOffset 
end)

CreateInput("Height Offset (Y):", Settings.HeightOffset, function(txt) 
    Settings.HeightOffset = tonumber(txt) or Settings.HeightOffset 
end)

CreateKeybind("Toggle Menu Key:", Settings.ToggleKey, function(key)
    Settings.ToggleKey = key
end)

CreateToggle("Player ESP (from Drone)", Settings.PlayerESPFromDrone, function(v)
    Settings.PlayerESPFromDrone = v
    if not v then
        for _, p in ipairs(Players:GetPlayers()) do
            if p.Character and p.Character:FindFirstChild("Head") then
                local esp = p.Character.Head:FindFirstChild("DroneDistanceESP")
                if esp then esp.Enabled = false end
            end
        end
    end
end)

CreateToggle("Drone ESP (Green)", Settings.DroneESP, function(v) 
    Settings.DroneESP = v 
    if not v then
        ClearAllDroneESP()
    end
end)

UserInputService.InputBegan:Connect(function(input, gpe)
    if not gpe and input.UserInputType == Enum.UserInputType.Keyboard then
        if input.KeyCode == Settings.ToggleKey then
            MainFrame.Visible = not MainFrame.Visible
        end
    end
end)

----------------------------------------------------
-- ЛОГИКА ESP МЕТОК
----------------------------------------------------

local function CreateESP(parentObj, espName, color)
    if not parentObj or not parentObj.Parent or not (parentObj:IsA("Model") or parentObj:IsA("BasePart")) then return nil end
    local esp = parentObj:FindFirstChild(espName)
    if esp then return esp end

    local adorneePart = GetDroneAdornee(parentObj)
    if not adorneePart then return nil end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = espName
    billboard.AlwaysOnTop = true
    billboard.Size = UDim2.new(0, 250, 0, 70)
    billboard.StudsOffset = Vector3.new(0, 4, 0)
    billboard.Adornee = adorneePart
    billboard.Parent = parentObj

    local label = Instance.new("TextLabel")
    label.Name = "InfoLabel"
    label.Size = UDim2.new(1, 0, 1, 0)
    label.BackgroundTransparency = 1
    label.TextColor3 = color
    label.TextStrokeTransparency = 0
    label.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
    label.TextSize = 20
    label.Font = Enum.Font.SourceSansBold
    label.Parent = billboard

    return billboard
end

local function SetupPlayerESP(player)
    if player == LocalPlayer then return end

    local function ApplyToCharacter(character)
        local head = character:WaitForChild("Head", 10)
        if not head then return end

        local oldESP = head:FindFirstChild("DroneDistanceESP")
        if oldESP then oldESP:Destroy() end

        local billboard = Instance.new("BillboardGui")
        billboard.Name = "DroneDistanceESP"
        billboard.AlwaysOnTop = true
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.Enabled = Settings.PlayerESPFromDrone
        billboard.Parent = head

        local label = Instance.new("TextLabel")
        label.Name = "DistanceLabel"
        label.Size = UDim2.new(1, 0, 1, 0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255, 50, 50)
        label.TextStrokeTransparency = 0
        label.TextSize = 14
        label.Font = Enum.Font.SourceSansBold
        
        local displayName = player.DisplayName or player.Name or "Unknown"
        label.Text = displayName .. "\n[--m]"
        label.Parent = billboard
    end

    if player.Character then ApplyToCharacter(player.Character) end
    player.CharacterAdded:Connect(ApplyToCharacter)
end

for _, player in ipairs(Players:GetPlayers()) do
    SetupPlayerESP(player)
end
Players.PlayerAdded:Connect(SetupPlayerESP)

DroneFolder.ChildRemoved:Connect(function(child)
    if ActiveDroneESPs[child] then
        if ActiveDroneESPs[child].Parent then
            ActiveDroneESPs[child]:Destroy()
        end
        ActiveDroneESPs[child] = nil
    end
end)

----------------------------------------------------
-- ОСНОВНОЙ ЦИКЛ ОБНОВЛЕНИЯ (RenderStepped)
----------------------------------------------------

RunService.RenderStepped:Connect(function()
    local myChar = LocalPlayer.Character
    local myPos = myChar and myChar:GetPivot().Position
    local myDrone = GetMyDrone()
    local myDronePos = GetDronePosition(myDrone)

    if Settings.AutoExplodeDrones then
        ExplodeEnemyDrones()
    end

    for _, player in ipairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character then
            local head = player.Character:FindFirstChild("Head")
            if head then
                local billboard = head:FindFirstChild("DroneDistanceESP")
                
                if billboard then
                    billboard.Enabled = Settings.PlayerESPFromDrone
                    
                    local label = billboard:FindFirstChild("DistanceLabel")
                    if label and Settings.PlayerESPFromDrone then
                        local nameToShow = player.DisplayName or player.Name or "Player"
                        if myDronePos then
                            local distance = (myDronePos - head.Position).Magnitude
                            label.Text = string.format("%s\n[%d studs]", nameToShow, math.floor(distance))
                        else
                            label.Text = nameToShow .. "\n[Дрон не найден]"
                        end
                    end
                end
            end
        end
    end

    if Settings.DroneESP then
        for drone, esp in pairs(ActiveDroneESPs) do
            if not drone or not drone.Parent or not drone:IsDescendantOf(DroneFolder) then
                if esp and esp.Parent then esp:Destroy() end
                ActiveDroneESPs[drone] = nil
            end
        end

        for _, drone in ipairs(DroneFolder:GetChildren()) do
            if drone:IsA("Model") or drone:IsA("BasePart") then
                local esp = CreateESP(drone, "DroneESP", Color3.fromRGB(0, 255, 150))
                if esp then
                    ActiveDroneESPs[drone] = esp
                    if esp:FindFirstChild("InfoLabel") then
                        local droneName = drone:GetAttribute("DroneName") or "Unknown"
                        local dronePos = GetDronePosition(drone)
                        
                        if myPos and dronePos then
                            local dist = (myPos - dronePos).Magnitude
                            esp.InfoLabel.Text = string.format("%s\n[%d studs]", tostring(droneName), math.floor(dist))
                        else
                            esp.InfoLabel.Text = string.format("%s\n[-- studs]", tostring(droneName))
                        end
                    end
                end
            end
        end
    else
        ClearAllDroneESP()
    end
end)
