local defaults = {
	SmoothAimbot = false,
	Aimbot = false,
	Predict = 0,
	TriggerBot = false
}
local vals = table.clone(defaults)
local lib = loadstring(game:HttpGet("https://raw.githubusercontent.com/InfernusScripts/Null-Fire/main/Core/Libraries/Fire-Lib/Main.lua"))()
local cons = {}
local closed = false

local function raycast(obj)
	local camPos = workspace.CurrentCamera and (workspace.CurrentCamera.CFrame.Position + (workspace.CurrentCamera.CFrame.LookVector * 2.5)) or Vector3.new()

	local raycast = RaycastParams.new()
	raycast.IgnoreWater = true
	raycast.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
	raycast.FilterType = Enum.RaycastFilterType.Exclude
	raycast.RespectCanCollide = true
	raycast.BruteForceAllSlow = true

	return workspace:Raycast(camPos, ((obj.Position) + (obj.Velocity*vals.Predict)) - camPos, raycast) or {}
end

local function aimbotCheck(user)
	if user == game.Players.LocalPlayer.Character or not user.Character then return end
	local obj = user.Character:FindFirstChild("Head") or user.Character:FindFirstChild("UpperTorso") or user.Character:FindFirstChild("Torso") or
		user.Character:FindFirstChild("HumanoidRootPart") or user.Character:FindFirstChildWhichIsA("BasePart")
	if not obj then return end

	local res = raycast(obj)
	local wall = res.Instance ~= nil and not res.Instance:IsDescendantOf(user.Character)

	return wall, res.Position
end

local function esp(user)
	if user == game.Players.LocalPlayer or not user.Character then return end

	local bbg = user.Character:FindFirstChild("BoxHandleAdornment") or Instance.new("BoxHandleAdornment", user.Character)
	bbg.Adornee = user.Character:FindFirstChild("Head")
	bbg.AlwaysOnTop = true
	bbg.ZIndex = 1

	return bbg
end

local function teamCheck(user)
	return #game.Teams:GetTeams() <= 1 or user.Team ~= game.Players.LocalPlayer.Team
end

local clicking = false
local function click()
	if clicking then return end
	task.spawn(function()
		clicking = true
		game:GetService("VirtualInputManager"):SendMouseButtonEvent(5, workspace.CurrentCamera.ViewportSize.Y - 100, 0, true, game, 1)
		task.wait(0.1)
		game:GetService("VirtualInputManager"):SendMouseButtonEvent(5, workspace.CurrentCamera.ViewportSize.Y - 100, 0, false, game, 1)
		task.wait(0.025)
		clicking = false
	end)
end

local closest, dist = nil, math.huge
local function basePlayerCheck(user)
	if user and user ~= game.Players.LocalPlayer and user.Character then
		if teamCheck(user) then
			local res = aimbotCheck(user)
			local tl = esp(user)
			if tl then
				tl.Color3 = res and Color3.new(1) or Color3.new(0,1)
			end
			if not res then
				local obj = user.Character:FindFirstChild("Head") or user.Character:FindFirstChild("HumanoidRootPart")
				if obj then
					local nDist = (workspace.CurrentCamera.CFrame.Position - obj.Position).Magnitude
					if nDist < dist then
						closest, dist = obj, nDist
					end
					if vals.TriggerBot then
						local p1 = Instance.new("Part", workspace)
						p1.Anchored = true
						p1.CanCollide = false
						p1.Transparency = 1
						p1.CFrame = workspace.CurrentCamera.CFrame
						local p2 = p1:Clone()
						p2.Parent = workspace
						p2.CFrame = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, obj.Position)
						local d = (p1.Rotation - p2.Rotation).Magnitude
						p1:Destroy()
						p2:Destroy()
						if d < 12.5 then
							if tl then
								tl.Color3 = Color3.new(1, 1)
							end
							click()
						end
					end
				end
			end
		else
			if user.Character:FindFirstChild("BoxHandleAdornment") then
				user.Character.BoxHandleAdornment:Destroy()
			end
		end
	end
end

cons[#cons+1] = game["Run Service"].RenderStepped:Connect(function()
	closest, dist = nil, math.huge
	for i,v in game.Players:GetPlayers() do
		basePlayerCheck(v)
	end
	if closest and vals.Aimbot then
		local target = CFrame.lookAt(workspace.CurrentCamera.CFrame.Position, closest.Position)
		if vals.SmoothAimbot then
			workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(target, 0.5)
		else
			workspace.CurrentCamera.CFrame = target
		end
	end
end)

local window = lib:MakeWindow({Title = "NullFire - Arsenal", CloseCallback = function()
	for i,v in defaults do
		vals[i] = v
	end
	for i,v in cons do
		if v then
			v:Disconnect()
		end
	end
	closed = true
end})
local page = window:AddPage({Title = "Aimbot"})
page:AddToggle({Caption = "Aimbot", Callback = function(bool)
	vals.Aimbot = bool
end, Default = false})
page:AddToggle({Caption = "Smooth Aimbot", Callback = function(bool)
	vals.SmoothAimbot = bool
end, Default = false})
page:AddSeparator()
page:AddToggle({Caption = "Trigger Bot", Callback = function(bool)
	vals.TriggerBot = bool
end, Default = false})
page:AddSeparator()
page:AddSlider({Caption = "Prediction", Callback = function(bool)
	vals.Predict = bool
end, Default = 0, Min = 0, Max = 1, Step = 0.001})
