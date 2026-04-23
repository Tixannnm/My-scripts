local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Функция для удаления старых визуальных элементов
local function clearESP(character)
	local highlight = character:FindFirstChild("Highlight")
	if highlight then highlight:Destroy() end
	local billboard = character:FindFirstChild("EnemyTag")
	if billboard then billboard:Destroy() end
end

-- Основная функция отрисовки ESP
local function updateESP(character)
	if not character then return end
	if character == LocalPlayer.Character then return end
	
	clearESP(character)
	
	local head = character:FindFirstChild("Head")
	if not head then return end
	
	local hasNametag = head:FindFirstChild("Nametag")
	
	-- Создаем Highlight (Обводка и заливка)
	local highlight = Instance.new("Highlight")
	highlight.Name = "Highlight"
	highlight.Parent = character
	highlight.Adornee = character
	highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	highlight.FillColor = hasNametag and Color3.fromRGB(0, 255, 0) or Color3.fromRGB(255, 0, 0)
	
	-- Если Nametag не найден, добавляем надпись "Enemy"
	if not hasNametag then
		local billboard = Instance.new("BillboardGui")
		billboard.Name = "EnemyTag"
		billboard.Adornee = head
		billboard.Size = UDim2.new(0, 100, 0, 50)
		billboard.StudsOffset = Vector3.new(0, 2, 0)
		billboard.AlwaysOnTop = true
		billboard.Parent = character
		
		local textLabel = Instance.new("TextLabel")
		textLabel.Parent = billboard
		textLabel.Size = UDim2.new(1, 0, 1, 0)
		textLabel.Text = "Enemy"
		textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		textLabel.TextStrokeTransparency = 0
		textLabel.BackgroundTransparency = 1
	end
end

-- Функция настройки игрока
local function setupPlayer(player)
	if player == LocalPlayer then return end
	
	local function connectCharacter(character)
		-- Ждем появления головы
		local head = character:WaitForChild("Head", 5)
		if not head then return end
		
		updateESP(character)
		
		-- Следим за изменениями в голове (добавление или удаление Nametag)
		head.ChildAdded:Connect(function(child)
			if child.Name == "Nametag" then updateESP(character) end
		end)
		
		head.ChildRemoved:Connect(function(child)
			if child.Name == "Nametag" then updateESP(character) end
		end)
	end
	
	-- Привязка событий респауна
	player.CharacterAdded:Connect(connectCharacter)
	
	-- Если персонаж уже существует
	if player.Character then
		connectCharacter(player.Character)
	end
end

-- Инициализация для всех текущих и будущих игроков
for _, player in pairs(Players:GetPlayers()) do
	setupPlayer(player)
end

Players.PlayerAdded:Connect(setupPlayer)
