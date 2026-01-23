local RunService = game:GetService("RunService")
local plr = game:GetService("Players").LocalPlayer

local function applyESP(player)
    if not player.Character then return end

    local folder = player.Character:FindFirstChild("ESP") or Instance.new("Folder", player.Character)
    folder.Name = "ESP"

    -- Настройка подсветки (Highlight)
    local hl = folder:FindFirstChild("Highlight") or Instance.new("Highlight", folder)
    hl.FillColor = player.Team and player.TeamColor.Color or Color3.new(1, 1, 1)
    hl.OutlineColor = hl.FillColor
    hl.Adornee = player.Character

    -- Настройка BillboardGui
    local bb = folder:FindFirstChild("BillboardGui") or Instance.new("BillboardGui", folder)
    bb.Size = UDim2.new(0, 200, 0, 50)
    bb.Adornee = player.Character:FindFirstChild("Head") or player.Character
    bb.AlwaysOnTop = true
    bb.StudsOffset = Vector3.new(0, 4, 0)
    
    local tl = bb:FindFirstChild("TextLabel") or Instance.new("TextLabel", bb)
    tl.BackgroundTransparency = 1
    tl.Size = UDim2.new(1, 0, 1, 0)
    tl.TextColor3 = hl.FillColor
    tl.TextScaled = true

    -- Обновление дистанции каждый кадр
    local connection
    connection = RunService.RenderStepped:Connect(function()
        -- Проверяем, существует ли еще персонаж и объект ESP
        if not player.Character or not player.Character:Parent() or not tl:IsDescendantOf(game) then
            connection:Disconnect()
            return
        end

        local root = player.Character:FindFirstChild("HumanoidRootPart")
        local myRoot = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")

        if root and myRoot then
            -- Вычисляем дистанцию (в студах/метрах)
            local distance = math.floor((root.Position - myRoot.Position).Magnitude)
            tl.Text = string.format("%s\n[%d m]", player.DisplayName, distance)
        else
            tl.Text = player.DisplayName
        end
    end)
end

local function setupPlayer(v)
    if v and v ~= plr then
        v.CharacterAdded:Connect(function()
            task.wait(0.5) -- Ждем загрузки персонажа
            applyESP(v)
        end)
        
        if v.Character then
            applyESP(v)
        end
    end
end

-- Инициализация для текущих и новых игроков
for _, v in ipairs(game:GetService("Players"):GetPlayers()) do
    setupPlayer(v)
end
game:GetService("Players").PlayerAdded:Connect(setupPlayer)
