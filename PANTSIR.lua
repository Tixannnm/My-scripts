local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local CoreGui = game:GetService("CoreGui")

local LocalPlayer = Players.LocalPlayer
local DroneFolder = workspace:WaitForChild("Drones"):WaitForChild("SpawnedDrones")

-- Список игнорируемых ID игроков (белый список)
local IgnoredUsers = {
    [4288295123] = true,
    [2507631272] = true
}

-- Полный список типов дронов
local AllDroneTypes = {
    "Zhuk", "GreyWidow", "Delta", "Shahed136", "Lutiy", "Gerbera", "FP1",
    "Bober", "Shahed107", "Lisica", "BM35", "Italmas", "MolniyaUav", "Molniya2",
    "Privet", "Kub", "Darts", "Shahed238", "Chaklyn", "Geran5", "ZTK",
    "GeranSeeker", "BEK", "FPV", "FPVvandal", "FPVOld", "Hornet", "Lancet",
    "SwitchBl", "X10", "Flamingo", "Neptun", "StSh", "Kalibr"
}

-- Настройки
local Settings = {
    TargetName = "iran",
    BehindOffset = 5,
    HeightOffset = 3,
    DroneESP = false,
    PlayerESPFromDrone = false,
    AutoExplodeDrones = false,
    ToggleKey = Enum.KeyCode.Delete,
    AimbotRadius = 3000,
    TargetFilterEnabled = false,
    AllowedDrones = {},
    ShowShootButton = true
}

for _, droneName in ipairs(AllDroneTypes) do
    Settings.AllowedDrones[droneName] = true
end

local ActiveDroneESPs = {}
local DroneToggleButtons = {}

-- ========== Определение мобильного устройства ==========
local isMobile = UserInputService.TouchEnabled
local MAIN_WIDTH  = isMobile and 280 or 320
local MAIN_HEIGHT = isMobile and 420 or 520
local SCROLL_HEIGHT = isMobile and 200 or 280

----------------------------------------------------
-- ФУНКЦИЯ ПЛАВНОГО ПЕРЕТАСКИВАНИЯ (DRAG)
----------------------------------------------------

local function MakeDraggable(frame, dragHandle)
    dragHandle = dragHandle or frame
    local dragging = false
    local dragInput, dragStart, startPos
    local dragDistance = 0

    dragHandle.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            dragDistance = 0

            local connection
            connection = input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                    connection:Disconnect()
                end
            end)
        end
    end)

    dragHandle.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            local delta = input.Position - dragStart
            dragDistance = delta.Magnitude
            frame.Position = UDim2.new(
                startPos.X.Scale,
                startPos.X.Offset + delta.X,
                startPos.Y.Scale,
                startPos.Y.Offset + delta.Y
            )
        end
    end)

    return function()
        return dragDistance > 8
    end
end

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

local function GetDroneTypeName(drone)
    if not drone or not drone.Parent then return nil end
    if drone:IsA("Model") then
        for _, child in ipairs(drone:GetChildren()) do
            if child:IsA("Model") then
                return child.Name
            end
        end
        return drone.Name
    end
    return drone.Name
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
            
            if IsIgnoredUser(ownerId) then
                continue
            end

            local droneTypeName = GetDroneTypeName(droneModel)
            if Settings.TargetFilterEnabled and droneTypeName and not Settings.AllowedDrones[droneTypeName] then
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
    local shortestDistance = Settings.AimbotRadius

    for _, drone in ipairs(DroneFolder:GetChildren()) do
        if drone:IsA("Model") or drone:IsA("BasePart") then
            local ownerId = drone:GetAttribute("OwnerUserId") or drone:GetAttribute("Owner") or drone:GetAttribute("PlayerId")

            if IsIgnoredUser(ownerId) then
                continue
            end

            local droneTypeName = GetDroneTypeName(drone)
            if Settings.TargetFilterEnabled and droneTypeName and not Settings.AllowedDrones[droneTypeName] then
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
                if dist <= Settings.AimbotRadius and dist < shortestDistance then
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
ScreenGui.IgnoreGuiInset = true

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
MenuToggleFrame.Size = UDim2.new(0, isMobile and 70 or 80, 0, isMobile and 28 or 32)
MenuToggleFrame.Position = UDim2.new(0.02, 0, 0.15, 0)
MenuToggleFrame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
MenuToggleFrame.Active = true
MenuToggleFrame.Parent = ScreenGui

local ToggleCorner = Instance.new("UICorner", MenuToggleFrame)
ToggleCorner.CornerRadius = UDim.new(0, 6)

local ToggleBtn = Instance.new("TextButton")
ToggleBtn.Size = UDim2.new(1, 0, 1, 0)
ToggleBtn.BackgroundTransparency = 1
ToggleBtn.Text = "☰ HUB"
ToggleBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
ToggleBtn.TextSize = isMobile and 11 or 12
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Parent = MenuToggleFrame

MakeDraggable(MenuToggleFrame, ToggleBtn)

-- КНОПКА SHOOT
local ShootFrame = Instance.new("Frame")
ShootFrame.Name = "ShootFrame"
ShootFrame.Size = UDim2.new(0, isMobile and 58 or 65, 0, isMobile and 58 or 65)
ShootFrame.Position = UDim2.new(0.88, -29, 0.55, -29)
ShootFrame.BackgroundColor3 = Color3.fromRGB(25, 27, 32)
ShootFrame.BorderSizePixel = 0
ShootFrame.Active = true
ShootFrame.Visible = Settings.ShowShootButton
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
ShootBtn.TextSize = isMobile and 12 or 13
ShootBtn.Font = Enum.Font.GothamBold
ShootBtn.Parent = ShootFrame

local wasShootDragged = MakeDraggable(ShootFrame, ShootBtn)

local isFiring = false
ShootBtn.MouseButton1Click:Connect(function()
    if wasShootDragged() then return end
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
MainFrame.Size = UDim2.new(0, MAIN_WIDTH, 0, MAIN_HEIGHT)
MainFrame.Position = UDim2.new(0.5, -MAIN_WIDTH/2, 0.5, -MAIN_HEIGHT/2)
MainFrame.BackgroundColor3 = Color3.fromRGB(25, 27, 32)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.ClipsDescendants = true
MainFrame.Parent = ScreenGui

local UICorner = Instance.new("UICorner", MainFrame)
UICorner.CornerRadius = UDim.new(0, 8)

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, -75, 0, 36)
Title.Position = UDim2.new(0, 15, 0, 0)
Title.BackgroundTransparency = 1
Title.Text = "DRONE CONTROL HUB"
Title.TextColor3 = Color3.fromRGB(240, 240, 240)
Title.TextSize = isMobile and 13 or 14
Title.Font = Enum.Font.GothamBold
Title.TextXAlignment = Enum.TextXAlignment.Left
Title.Parent = MainFrame

MakeDraggable(MainFrame, Title)

local MinimizeBtn = Instance.new("TextButton")
MinimizeBtn.Size = UDim2.new(0, 30, 0, 30)
MinimizeBtn.Position = UDim2.new(1, -65, 0, 3)
MinimizeBtn.BackgroundTransparency = 1
MinimizeBtn.Text = "—"
MinimizeBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
MinimizeBtn.TextSize = 14
MinimizeBtn.Font = Enum.Font.GothamBold
MinimizeBtn.Parent = MainFrame

local CloseBtn = Instance.new("TextButton")
CloseBtn.Size = UDim2.new(0, 30, 0, 30)
CloseBtn.Position = UDim2.new(1, -35, 0, 3)
CloseBtn.BackgroundTransparency = 1
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
CloseBtn.TextSize = 14
CloseBtn.Font = Enum.Font.GothamBold
CloseBtn.Parent = MainFrame

-- ПАНЕЛЬ ВКЛАДОК
local TabBar = Instance.new("Frame")
TabBar.Name = "TabBar"
TabBar.Size = UDim2.new(1, -20, 0, 30)
TabBar.Position = UDim2.new(0, 10, 0, 36)
TabBar.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
TabBar.Parent = MainFrame

local TabBarCorner = Instance.new("UICorner", TabBar)
TabBarCorner.CornerRadius = UDim.new(0, 6)

local MainTabBtn = Instance.new("TextButton")
MainTabBtn.Size = UDim2.new(0.5, -2, 1, 0)
MainTabBtn.Position = UDim2.new(0, 0, 0, 0)
MainTabBtn.BackgroundTransparency = 1
MainTabBtn.Text = "Main"
MainTabBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
MainTabBtn.TextSize = 12
MainTabBtn.Font = Enum.Font.GothamBold
MainTabBtn.Parent = TabBar

local ExploitTabBtn = Instance.new("TextButton")
ExploitTabBtn.Size = UDim2.new(0.5, -2, 1, 0)
ExploitTabBtn.Position = UDim2.new(0.5, 2, 0, 0)
ExploitTabBtn.BackgroundTransparency = 1
ExploitTabBtn.Text = "Exploit"
ExploitTabBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
ExploitTabBtn.TextSize = 12
ExploitTabBtn.Font = Enum.Font.GothamBold
ExploitTabBtn.Parent = TabBar

-- КОНТЕЙНЕРЫ
local MainContainer = Instance.new("Frame")
MainContainer.Name = "MainContainer"
MainContainer.Size = UDim2.new(1, -20, 1, -80)
MainContainer.Position = UDim2.new(0, 10, 0, 72)
MainContainer.BackgroundTransparency = 1
MainContainer.Visible = true
MainContainer.Parent = MainFrame

local MainUIList = Instance.new("UIListLayout", MainContainer)
MainUIList.SortOrder = Enum.SortOrder.LayoutOrder
MainUIList.Padding = UDim.new(0, isMobile and 6 or 8)

local ExploitContainer = Instance.new("Frame")
ExploitContainer.Name = "ExploitContainer"
ExploitContainer.Size = UDim2.new(1, -20, 1, -80)
ExploitContainer.Position = UDim2.new(0, 10, 0, 72)
ExploitContainer.BackgroundTransparency = 1
ExploitContainer.Visible = false
ExploitContainer.Parent = MainFrame

local ExploitUIList = Instance.new("UIListLayout", ExploitContainer)
ExploitUIList.SortOrder = Enum.SortOrder.LayoutOrder
ExploitUIList.Padding = UDim.new(0, isMobile and 6 or 8)

local function SwitchTab(tabName)
    if tabName == "Main" then
        MainContainer.Visible = true
        ExploitContainer.Visible = false
        MainTabBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
        ExploitTabBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
    elseif tabName == "Exploit" then
        MainContainer.Visible = false
        ExploitContainer.Visible = true
        MainTabBtn.TextColor3 = Color3.fromRGB(150, 150, 150)
        ExploitTabBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
    end
end

MainTabBtn.MouseButton1Click:Connect(function() SwitchTab("Main") end)
ExploitTabBtn.MouseButton1Click:Connect(function() SwitchTab("Exploit") end)

CloseBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

local isCollapsed = false
MinimizeBtn.MouseButton1Click:Connect(function()
    isCollapsed = not isCollapsed
    TabBar.Visible = not isCollapsed
    MainContainer.Visible = not isCollapsed and (MainTabBtn.TextColor3 == Color3.fromRGB(0, 220, 130))
    ExploitContainer.Visible = not isCollapsed and (ExploitTabBtn.TextColor3 == Color3.fromRGB(0, 220, 130))
    
    if isCollapsed then
        MainFrame.Size = UDim2.new(0, MAIN_WIDTH, 0, 36)
    else
        MainFrame.Size = UDim2.new(0, MAIN_WIDTH, 0, MAIN_HEIGHT)
    end
end)

----------------------------------------------------
-- КОНСТРУКТОРЫ ЭЛЕМЕНТОВ GUI
----------------------------------------------------

local function CreateActionButton(parent, btnText, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, isMobile and 32 or 36)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = parent

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Button = Instance.new("TextButton")
    Button.Size = UDim2.new(1, 0, 1, 0)
    Button.BackgroundTransparency = 1
    Button.Text = btnText
    Button.TextColor3 = Color3.fromRGB(0, 220, 130)
    Button.TextSize = isMobile and 11 or 12
    Button.Font = Enum.Font.GothamBold
    Button.Parent = Frame

    Button.MouseButton1Click:Connect(callback)
    return Frame
end

local function CreateToggle(parent, name, defaultState, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, isMobile and 32 or 36)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = parent
    
    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(1, -60, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = name
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = isMobile and 11 or 12
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
    return Frame, Button
end

local function CreateInput(parent, labelTitle, defaultValue, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, isMobile and 32 or 36)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = parent

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.55, 0, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = labelTitle
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = isMobile and 11 or 12
    Label.Font = Enum.Font.GothamMedium
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Parent = Frame

    local TextBox = Instance.new("TextBox")
    TextBox.Size = UDim2.new(0.4, 0, 0, 24)
    TextBox.Position = UDim2.new(0.58, 0, 0.5, -12)
    TextBox.BackgroundColor3 = Color3.fromRGB(48, 52, 60)
    TextBox.Text = tostring(defaultValue)
    TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextBox.TextSize = isMobile and 11 or 12
    TextBox.Font = Enum.Font.Gotham
    TextBox.Parent = Frame

    local BoxCorner = Instance.new("UICorner", TextBox)
    BoxCorner.CornerRadius = UDim.new(0, 4)

    TextBox.FocusLost:Connect(function()
        callback(TextBox.Text)
    end)
    return Frame
end

local function CreateKeybind(parent, labelTitle, defaultKey, callback)
    local Frame = Instance.new("Frame")
    Frame.Size = UDim2.new(1, 0, 0, isMobile and 32 or 36)
    Frame.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
    Frame.Parent = parent

    local Corner = Instance.new("UICorner", Frame)
    Corner.CornerRadius = UDim.new(0, 6)

    local Label = Instance.new("TextLabel")
    Label.Size = UDim2.new(0.5, 0, 1, 0)
    Label.Position = UDim2.new(0, 12, 0, 0)
    Label.BackgroundTransparency = 1
    Label.Text = labelTitle
    Label.TextColor3 = Color3.fromRGB(210, 210, 210)
    Label.TextSize = isMobile and 11 or 12
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
    return Frame
end

local function ClearAllDroneESP()
    for drone, esp in pairs(ActiveDroneESPs) do
        if esp and esp.Parent then
            esp:Destroy()
        end
    end
    table.clear(ActiveDroneESPs)
end

----------------------------------------------------
-- ЭЛЕМЕНТЫ ВКЛАДКИ MAIN
----------------------------------------------------

CreateActionButton(MainContainer, "Teleport Drone Behind Target", function()
    TeleportDroneOnce()
end)

CreateActionButton(MainContainer, "Explode Drones Once", function()
    ExplodeEnemyDrones()
end)

CreateToggle(MainContainer, "Auto Explode Drones", Settings.AutoExplodeDrones, function(v)
    Settings.AutoExplodeDrones = v
end)

CreateInput(MainContainer, "Target DisplayName:", Settings.TargetName, function(txt) 
    Settings.TargetName = txt 
end)

CreateInput(MainContainer, "Studs Behind:", Settings.BehindOffset, function(txt) 
    Settings.BehindOffset = tonumber(txt) or Settings.BehindOffset 
end)

CreateInput(MainContainer, "Height Offset (Y):", Settings.HeightOffset, function(txt) 
    Settings.HeightOffset = tonumber(txt) or Settings.HeightOffset 
end)

CreateKeybind(MainContainer, "Toggle Menu Key:", Settings.ToggleKey, function(key)
    Settings.ToggleKey = key
end)

CreateToggle(MainContainer, "Player ESP (from Drone)", Settings.PlayerESPFromDrone, function(v)
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

CreateToggle(MainContainer, "Drone ESP (Green)", Settings.DroneESP, function(v) 
    Settings.DroneESP = v 
    if not v then
        ClearAllDroneESP()
    end
end)

----------------------------------------------------
-- ЭЛЕМЕНТЫ ВКЛАДКИ EXPLOIT
----------------------------------------------------

CreateInput(ExploitContainer, "Aimbot Radius (Max 3000):", Settings.AimbotRadius, function(txt)
    local num = tonumber(txt) or 3000
    Settings.AimbotRadius = math.clamp(num, 1, 3000)
end)

CreateToggle(ExploitContainer, "Enable Target Filter", Settings.TargetFilterEnabled, function(v)
    Settings.TargetFilterEnabled = v
end)

CreateToggle(ExploitContainer, "Show SHOOT Button", Settings.ShowShootButton, function(v)
    Settings.ShowShootButton = v
    ShootFrame.Visible = v
end)

local SelectAllFrame = Instance.new("Frame")
SelectAllFrame.Size = UDim2.new(1, 0, 0, 30)
SelectAllFrame.BackgroundTransparency = 1
SelectAllFrame.Parent = ExploitContainer

local SelectAllBtn = Instance.new("TextButton")
SelectAllBtn.Size = UDim2.new(0.48, 0, 1, 0)
SelectAllBtn.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
SelectAllBtn.Text = "Select All"
SelectAllBtn.TextColor3 = Color3.fromRGB(0, 220, 130)
SelectAllBtn.TextSize = 11
SelectAllBtn.Font = Enum.Font.GothamBold
SelectAllBtn.Parent = SelectAllFrame

local SelectAllCorner = Instance.new("UICorner", SelectAllBtn)
SelectAllCorner.CornerRadius = UDim.new(0, 4)

local DeselectAllBtn = Instance.new("TextButton")
DeselectAllBtn.Size = UDim2.new(0.48, 0, 1, 0)
DeselectAllBtn.Position = UDim2.new(0.52, 0, 0, 0)
DeselectAllBtn.BackgroundColor3 = Color3.fromRGB(35, 38, 45)
DeselectAllBtn.Text = "Deselect All"
DeselectAllBtn.TextColor3 = Color3.fromRGB(220, 80, 80)
DeselectAllBtn.TextSize = 11
DeselectAllBtn.Font = Enum.Font.GothamBold
DeselectAllBtn.Parent = SelectAllFrame

local DeselectAllCorner = Instance.new("UICorner", DeselectAllBtn)
DeselectAllCorner.CornerRadius = UDim.new(0, 4)

local DroneScroll = Instance.new("ScrollingFrame")
DroneScroll.Name = "DroneScroll"
DroneScroll.Size = UDim2.new(1, 0, 0, SCROLL_HEIGHT)
DroneScroll.BackgroundColor3 = Color3.fromRGB(20, 22, 26)
DroneScroll.BorderSizePixel = 0
DroneScroll.ScrollBarThickness = 4
DroneScroll.ScrollBarImageColor3 = Color3.fromRGB(0, 220, 130)
DroneScroll.Parent = ExploitContainer

local ScrollCorner = Instance.new("UICorner", DroneScroll)
ScrollCorner.CornerRadius = UDim.new(0, 6)

local ScrollList = Instance.new("UIListLayout", DroneScroll)
ScrollList.SortOrder = Enum.SortOrder.LayoutOrder
ScrollList.Padding = UDim.new(0, 4)

ScrollList:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    DroneScroll.CanvasSize = UDim2.new(0, 0, 0, ScrollList.AbsoluteContentSize.Y + 8)
end)

for _, droneName in ipairs(AllDroneTypes) do
    local ItemFrame = Instance.new("Frame")
    ItemFrame.Size = UDim2.new(1, -8, 0, isMobile and 28 or 32)
    ItemFrame.BackgroundColor3 = Color3.fromRGB(30, 33, 40)
    ItemFrame.Parent = DroneScroll

    local ItemCorner = Instance.new("UICorner", ItemFrame)
    ItemCorner.CornerRadius = UDim.new(0, 4)

    local ItemLabel = Instance.new("TextLabel")
    ItemLabel.Size = UDim2.new(1, -55, 1, 0)
    ItemLabel.Position = UDim2.new(0, 10, 0, 0)
    ItemLabel.BackgroundTransparency = 1
    ItemLabel.Text = droneName
    ItemLabel.TextColor3 = Color3.fromRGB(210, 210, 210)
    ItemLabel.TextSize = isMobile and 10 or 11
    ItemLabel.Font = Enum.Font.GothamMedium
    ItemLabel.TextXAlignment = Enum.TextXAlignment.Left
    ItemLabel.Parent = ItemFrame

    local ItemBtn = Instance.new("TextButton")
    ItemBtn.Size = UDim2.new(0, 38, 0, 20)
    ItemBtn.Position = UDim2.new(1, -44, 0.5, -10)
    ItemBtn.BackgroundColor3 = Settings.AllowedDrones[droneName] and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(60, 64, 72)
    ItemBtn.Text = Settings.AllowedDrones[droneName] and "ON" or "OFF"
    ItemBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
    ItemBtn.TextSize = 10
    ItemBtn.Font = Enum.Font.GothamBold
    ItemBtn.Parent = ItemFrame

    local ItemBtnCorner = Instance.new("UICorner", ItemBtn)
    ItemBtnCorner.CornerRadius = UDim.new(0, 4)

    DroneToggleButtons[droneName] = ItemBtn

    ItemBtn.MouseButton1Click:Connect(function()
        Settings.AllowedDrones[droneName] = not Settings.AllowedDrones[droneName]
        local isAllowed = Settings.AllowedDrones[droneName]
        ItemBtn.BackgroundColor3 = isAllowed and Color3.fromRGB(0, 200, 100) or Color3.fromRGB(60, 64, 72)
        ItemBtn.Text = isAllowed and "ON" or "OFF"
    end)
end

SelectAllBtn.MouseButton1Click:Connect(function()
    for _, droneName in ipairs(AllDroneTypes) do
        Settings.AllowedDrones[droneName] = true
        local btn = DroneToggleButtons[droneName]
        if btn then
            btn.BackgroundColor3 = Color3.fromRGB(0, 200, 100)
            btn.Text = "ON"
        end
    end
end)

DeselectAllBtn.MouseButton1Click:Connect(function()
    for _, droneName in ipairs(AllDroneTypes) do
        Settings.AllowedDrones[droneName] = false
        local btn = DroneToggleButtons[droneName]
        if btn then
            btn.BackgroundColor3 = Color3.fromRGB(60, 64, 72)
            btn.Text = "OFF"
        end
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
