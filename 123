local plr = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local remote = ReplicatedStorage:WaitForChild("RocketSystem"):WaitForChild("Events"):WaitForChild("RocketHit")
local UIS = game:GetService("UserInputService")

local tycoonsFolder = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons")

-- Функция авто-экипировки
local function equipRPG()
    local char = plr.Character
    if not char then return nil end
    local hum = char:FindFirstChild("Humanoid")
    local rpg = char:FindFirstChild("RPG") or plr.Backpack:FindFirstChild("RPG")
    
    if rpg and hum and rpg.Parent ~= char then
        hum:EquipTool(rpg)
        task.wait(0.2)
    end
    return rpg
end

local function autoBlast()
    local char = plr.Character
    local root = char and char:FindFirstChild("HumanoidRootPart")
    if not root then return end
    
    local rpg = equipRPG()
    if not rpg then return end

    local myPos = root.Position
    local radius = 25

    -- Сканируем все тайкуны через GetDescendants
    for _, eBox in ipairs(tycoonsFolder:GetDescendants()) do
        -- Ищем именно щитки
        if eBox.Name == "ElectricalBox" then
            
            -- Проверка дистанции до щитка
            local boxPart = eBox:FindFirstChildWhichIsA("BasePart", true)
            if boxPart and (myPos - boxPart.Position).Magnitude <= radius then
                
                local targetUI = nil
                local hitPart = nil

                -- --- ПРОВЕРКА ВСЕХ ДЕТЕЙ ВНУТРИ КОРОбки ---
                for _, child in ipairs(eBox:GetChildren()) do
                    
                    -- 1. ПРОВЕРКА: Health лежит ПРЯМО в коробке (Твой новый вариант для бункера)
                    if string.find(child.Name, "Health") then
                        local ui = child:FindFirstChild("UI")
                        if ui and ui:IsA("BillboardGui") then
                            targetUI = ui
                        end
                    end

                    -- 2. ПРОВЕРКА: Health лежит ВНУТРИ эффекта (Твой старый вариант для дверей)
                    if string.find(child.Name:lower(), "effect") then
                        -- Сохраняем эффект как приоритетную цель для удара ракеты
                        hitPart = child 
                        
                        local h = child:FindFirstChild("Health")
                        local ui = h and h:FindFirstChild("UI")
                        if ui and ui:IsA("BillboardGui") then
                            targetUI = ui
                        end
                    end
                end

                -- --- ЕСЛИ НАШЛИ UI И ОН ENABLED ---
                if targetUI and targetUI.Enabled == true then
                    -- Если эффект не нашли (для бункера), бьем по самой коробке
                    hitPart = hitPart or boxPart

                    print("🎯 Цель обнаружена! Тип: " .. (hitPart.Name == "ElectricalBox" and "Бункер" or "Дверь"))

                    local args = {
                        {
                            Normal = Vector3.new(0, 1, 0),
                            Player = plr,
                            Label = plr.Name .. "_Universal_" .. math.random(1, 999),
                            HitPart = hitPart,
                            Vehicle = rpg,
                            Position = hitPart.Position,
                            Weapon = rpg
                        }
                    }

                    remote:FireServer(unpack(args))
                    print("💥 БА-БАХ! Взорвано: " .. hitPart.Name)
                    task.wait(0.1)
                end
            end
        end
    end
end

-- Активация на L
UIS.InputBegan:Connect(function(input, gpe)
    if not gpe and input.KeyCode == Enum.KeyCode.L then
        autoBlast()
    end
end)

print("Ультра-Смарт РПГ (2-в-1) запущено. Проверяю двери и бункеры. Клавиша: L")
