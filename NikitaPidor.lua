local function a()
    local workspace = game:GetService("Workspace")
    local players = game:GetService("Players")
    local lp = players.LocalPlayer

    local character = lp.Character or lp.CharacterAdded:Wait()
    local rootPart = character:WaitForChild("HumanoidRootPart")

    local playerAttach = rootPart:FindFirstChild("FruitTracerAttachment")
    if not playerAttach then
        playerAttach = Instance.new("Attachment")
        playerAttach.Name = "FruitTracerAttachment"
        playerAttach.Parent = rootPart
    end

    for _, v in pairs(workspace:GetChildren()) do
        -- Ищем объекты, в названии которых есть "Fruit" и которые еще не обработаны
        if string.find(v.Name, "Fruit") and not v:FindFirstChild("FruitTracer") then
            if not v then
                local parent = game:GetService("CoreGui");
                local objects = {
                    ["Instance0"] = Instance.new("ScreenGui");
                    ["Instance1"] = Instance.new("TextLabel"); 
                };

                do 
                    objects["Instance0"]["Parent"] = parent;
                    objects["Instance0"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

                    objects["Instance1"]["FontSize"] = Enum.FontSize.Size14;
                    objects["Instance1"]["TextWrapped"] = true;
                    objects["Instance1"]["TextColor3"] = Color3.new(0, 0, 0);
                    objects["Instance1"]["Parent"] = objects["Instance0"];
                    objects["Instance1"]["Text"] = "no fruits found";
                    objects["Instance1"]["TextSize"] = 14;
                    objects["Instance1"]["BackgroundColor3"] = Color3.new(1, 1, 1);
                    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
                    objects["Instance1"]["Size"] = UDim2.new(0, 378, 0, 170);
                    objects["Instance1"]["BackgroundTransparency"] = 1;
                    objects["Instance1"]["Position"] = UDim2.new(0.386415094, 0, 0.362149537, 0);
                    objects["Instance1"]["FontFace"] = Font.new("rbxasset://fonts/families/Bangers.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
                    objects["Instance1"]["TextScaled"] = true;
                    objects["Instance1"]["BorderSizePixel"] = 0;
                    objects["Instance1"]["TextWrap"] = true;
                end;

                local obj = objects["Instance0"];
            end
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
            label.Text = v.Name .. " [0m]" -- Начальный текст

            -- 2. Подсветка (Highlight)
            local high = Instance.new("Highlight")
            high.Parent = v:FindFirstChild("Fruit") or v

            -- 3. Создание Трассера (Beam)
            local targetPart = (v:IsA("BasePart") and v) or v:FindFirstChildWhichIsA("BasePart") or v:FindFirstChild("Fruit")
            if targetPart then
                local fruitAttach = Instance.new("Attachment")
                fruitAttach.Name = "FruitAttachment"
                fruitAttach.Parent = targetPart

                local beam = Instance.new("Beam")
                beam.Name = "FruitTracer"
                beam.Attachment0 = playerAttach
                beam.Attachment1 = fruitAttach
                beam.Width0 = 0.1
                beam.Width1 = 0.1
                beam.Color = ColorSequence.new(Color3.fromRGB(255, 0, 0))
                beam.FaceCamera = true
                beam.Parent = v

                -- 4. ЦИКЛ ОБНОВЛЕНИЯ ДИСТАНЦИИ
                -- Запускаем отдельный поток для каждого фрукта, чтобы обновлять метры
                task.spawn(function()
                    while v.Parent and targetPart.Parent do
                        if rootPart and targetPart then
                            -- Вычисляем дистанцию (в стадах/блоках)
                            local distance = (rootPart.Position - targetPart.Position).Magnitude
                            -- Обновляем текст (округляем до целого)
                            label.Text = v.Name .. "\n[" .. math.floor(distance) .. " m]"
                        end
                        task.wait(0.1) -- Обновляем 10 раз в секунду для плавности
                    end
                end)
            end
        end
    end
end

-- Запуск
a()

-- Слушатель новых фруктов
workspace.ChildAdded:Connect(function(child)
    task.wait(0.5)
    if string.find(child.Name, "Fruit") then
        a()
    end
end)
