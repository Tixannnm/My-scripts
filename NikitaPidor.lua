local function a()
    local workspace = game:GetService("Workspace")
    local players = game:GetService("Players")
    local lp = players.LocalPlayer

    local character = lp.Character or lp.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")

    -- Ссылка на аттачмент игрока
    local playerAttach = rootPart:FindFirstChild("FruitTracerAttachment")
    if not playerAttach then
        playerAttach = Instance.new("Attachment")
        playerAttach.Name = "FruitTracerAttachment"
        playerAttach.Parent = rootPart
    end

    local fruitsFound = 0
    local allChildren = workspace:GetChildren()

    -- Считаем количество фруктов
    for _, v in pairs(allChildren) do
        if string.find(v.Name, "Fruit") then
            fruitsFound = fruitsFound + 1
        end
    end

    -- ЛОГИКА "НИЧЕГО НЕ НАЙДЕНО"
    if fruitsFound == 0 then
        -- Проверяем, нет ли уже такого сообщения, чтобы не спамить
        if not game:GetService("CoreGui"):FindFirstChild("NoFruitsGui") then
            local sg = Instance.new("ScreenGui")
            sg.Name = "NoFruitsGui"
            sg.Parent = game:GetService("CoreGui")
            
            local label = Instance.new("TextLabel")
            label.Parent = sg
            label.Size = UDim2.new(0, 378, 0, 170)
            label.Position = UDim2.new(0.5, -189, 0.4, -85) -- Центр экрана
            label.BackgroundTransparency = 1
            label.Text = "No fruits found"
            label.TextColor3 = Color3.new(1, 0, 0) -- Сделал красным для заметности
            label.TextScaled = true
            label.FontFace = Font.new("rbxasset://fonts/families/Bangers.json")
            
            -- Удаляем сообщение через 3 секунды
            task.delay(3, function()
                sg:Destroy()
            end)
        end
        return -- Выходим из функции, так как фруктов нет
    end

    -- ОСНОВНОЙ ЦИКЛ (если фрукты найдены)
    for _, v in pairs(allChildren) do
        if string.find(v.Name, "Fruit") and not v:FindFirstChild("FruitTracer") then
            -- 1. Создание GUI
            local bill = Instance.new("BillboardGui")
            bill.Name = "BillboardGui"
            bill.AlwaysOnTop = true
            bill.Size = UDim2.new(0, 200, 0, 50)
            bill.StudsOffset = Vector3.new(0, 4, 0)
            bill.Parent = v

            local label = Instance.new("TextLabel")
            label.Parent = bill
            label.BackgroundTransparency = 1
            label.Size = UDim2.new(1, 0, 1, 0)
            label.TextColor3 = Color3.fromRGB(255, 0, 0)
            label.TextScaled = true
            label.Text = v.Name

            -- 2. Подсветка
            local high = Instance.new("Highlight")
            high.Parent = v:FindFirstChild("Fruit") or v

            -- 3. Трассер и дистанция
            local targetPart = v:IsA("BasePart") and v or v:FindFirstChildWhichIsA("BasePart") or v:FindFirstChild("Fruit")
            if targetPart then
                local fAttach = Instance.new("Attachment", targetPart)
                fAttach.Name = "FruitAttachment"

                local beam = Instance.new("Beam")
                beam.Name = "FruitTracer"
                beam.Attachment0 = playerAttach
                beam.Attachment1 = fAttach
                beam.Width0, beam.Width1 = 0.1, 0.1
                beam.Color = ColorSequence.new(Color3.new(1, 0, 0))
                beam.FaceCamera = true
                beam.Parent = v

                -- Обновление дистанции
                task.spawn(function()
                    while v.Parent and targetPart.Parent do
                        if rootPart and targetPart then
                            local dist = (rootPart.Position - targetPart.Position).Magnitude
                            label.Text = v.Name .. "\n[" .. math.floor(dist) .. " m]"
                        end
                        task.wait(0.2)
                    end
                end)
            end
        end
    end
end

-- Запуск
a()

-- Слежка за новыми объектами
workspace.ChildAdded:Connect(function(child)
    if string.find(child.Name, "Fruit") then
        task.wait(0.5)
        a()
    end
end)
