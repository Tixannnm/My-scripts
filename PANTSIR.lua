    local Players = game:GetService("Players")
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local CoreGui = game:GetService("CoreGui")

    local LocalPlayer = Players.LocalPlayer
    local DroneFolder = workspace:WaitForChild("Drones"):WaitForChild("SpawnedDrones")

    -- Константа исключения для функции подрыва
    local TARGET_USER_ID = 4288295123

    -- Флаги состояний и настройки
    local Settings = {
        TargetName = "iran",
        BehindOffset = 5,   -- Дистанция за спину (в блоках)
        HeightOffset = 3,   -- Высота над/под игроком (в блоках)
        DroneESP = false,
        PlayerESPFromDrone = false,
        AutoExplodeDrones = false,
        ToggleKey = Enum.KeyCode.Delete
    }

    -- Таблицы для отслеживания существующих меток ESP
    local ActiveDroneESPs = {}

    ----------------------------------------------------
    -- ВСПОМОГАТЕЛЬНЫЕ ФУНКЦИИ
    ----------------------------------------------------

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

    -- Поиск твоего дрона
    local function GetMyDrone()
        for _, drone in ipairs(DroneFolder:GetChildren()) do
            local ownerId = drone:GetAttribute("OwnerUserId") or drone:GetAttribute("Owner") or drone:GetAttribute("PlayerId")
            
            if ownerId == LocalPlayer.UserId or ownerId == 2507631272 or tostring(ownerId) == tostring(LocalPlayer.UserId) then
                return drone
            end
            
            if drone.Name == LocalPlayer.Name or drone:GetAttribute("OwnerName") == LocalPlayer.Name then
                return drone
            end
        end
        return nil
    end

    -- Функция подрыва всех чужих дронов
    local function ExplodeEnemyDrones()
        local char = LocalPlayer.Character
        local rootPart = char and char:FindFirstChild("HumanoidRootPart")
        if not rootPart or not firetouchinterest then return end

        for _, droneModel in ipairs(DroneFolder:GetChildren()) do
            if droneModel:IsA("Model") then
                local ownerId = droneModel:GetAttribute("OwnerUserId") or droneModel:GetAttribute("Owner")
                
                -- Пропускаем сохраненного юзера и самого себя
                if tonumber(ownerId) == TARGET_USER_ID or tonumber(ownerId) == LocalPlayer.UserId then
                    continue
                end

                for _, child in ipairs(droneModel:GetChildren()) do
                    local body = child:FindFirstChild("Body")
                    if body then
                        firetouchinterest(rootPart, body, 0)
                        firetouchinterest(rootPart, body, 1)
                    end
                end
            end
        end
    end

    -- Функция для разовой телепортации
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

    local MainFrame = Instance.new("Frame")
    MainFrame.Name = "MainFrame"
    MainFrame.Size = UDim2.new(0, 320, 0, 480)
    MainFrame.Position = UDim2.new(0.5, -160, 0.2, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(25, 27, 32)
    MainFrame.BorderSizePixel = 0
    MainFrame.Active = true
    MainFrame.Draggable = true
    MainFrame.Parent = ScreenGui

    local UICorner = Instance.new("UICorner", MainFrame)
    UICorner.CornerRadius = UDim.new(0, 8)

    -- Заголовок
    local Title = Instance.new("TextLabel")
    Title.Size = UDim2.new(1, -40, 0, 40)
    Title.Position = UDim2.new(0, 15, 0, 0)
    Title.BackgroundTransparency = 1
    Title.Text = "DRONE CONTROL HUB"
    Title.TextColor3 = Color3.fromRGB(240, 240, 240)
    Title.TextSize = 16
    Title.Font = Enum.Font.GothamBold
    Title.TextXAlignment = Enum.TextXAlignment.Left
    Title.Parent = MainFrame

    -- Кнопка закрытия
    local CloseBtn = Instance.new("TextButton")
    CloseBtn.Size = UDim2.new(0, 30, 0, 30)
    CloseBtn.Position = UDim2.new(1, -35, 0, 5)
    CloseBtn.BackgroundTransparency = 1
    CloseBtn.Text = "X"
    CloseBtn.TextColor3 = Color3.fromRGB(180, 180, 180)
    CloseBtn.TextSize = 14
    CloseBtn.Font = Enum.Font.GothamBold
    CloseBtn.Parent = MainFrame

    CloseBtn.MouseButton1Click:Connect(function()
        MainFrame.Visible = not MainFrame.Visible
    end)

    local Container = Instance.new("Frame")
    Container.Size = UDim2.new(1, -20, 1, -50)
    Container.Position = UDim2.new(0, 10, 0, 45)
    Container.BackgroundTransparency = 1
    Container.Parent = MainFrame

    local UIList = Instance.new("UIListLayout", Container)
    UIList.SortOrder = Enum.SortOrder.LayoutOrder
    UIList.Padding = UDim.new(0, 8)

    -- Создание кнопки
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

    -- Создание переключателя (Toggle)
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

    -- Создание текстового поля
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

    -- Создание выбора клавиши (Keybind)
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

    -- Очистить весь Drone ESP
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

    -- Динамическая горячая клавиша сворачивания
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

    -- Очистка меток при физическом удалении дронов из игры
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

        -- Автоподрыв дронов
        if Settings.AutoExplodeDrones then
            ExplodeEnemyDrones()
        end

        ----------------------------------------------------
        -- 1. ESP ИГРОКОВ (ОТ ДРОНА)
        ----------------------------------------------------
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

        ----------------------------------------------------
        -- 2. ESP ДРОНОВ
        ----------------------------------------------------
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
