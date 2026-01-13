local SAFE_ZONE = Vector3.new(0, 500, 0)
local BOT_RADIUS = 25              
local STUCK_TIME_LIMIT = 10        
local TOUCH_DELAY = 0.05           

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local workspace = game:GetService("Workspace")
local VirtualUser = game:GetService("VirtualUser")

local player = Players.LocalPlayer
local myName = player.Name

local lastTicket = nil
local lastPos = Vector3.new()
local lastMoveTime = os.time()
local currentPlatform = nil
local defaultGravity = workspace.Gravity

player.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

local function isPlayerInActiveGame()
    local gameFolder = workspace:FindFirstChild("Game")
    local playersInGame = gameFolder and gameFolder:FindFirstChild("Players")
    return playersInGame and playersInGame:FindFirstChild(myName)
end

local ignoreList = {}
local function updateIgnoreList()
    ignoreList = {}
    for _, p in ipairs(Players:GetPlayers()) do
        ignoreList[p.Name] = true
    end
end
Players.PlayerAdded:Connect(updateIgnoreList)
Players.PlayerRemoving:Connect(updateIgnoreList)
updateIgnoreList()

local function createPlatform(pos)
    if currentPlatform then currentPlatform:Destroy() end
    local p = Instance.new("Part")
    p.Name = "SafePlatform"
    p.Size = Vector3.new(12, 1, 12)
    p.Anchored = true
    p.CanCollide = true
    p.Transparency = 1 
    p.CFrame = CFrame.new(pos)
    p.Parent = workspace
    currentPlatform = p
    return p
end

task.spawn(function()
    while true do
        RunService.Heartbeat:Wait()
        if not isPlayerInActiveGame() then continue end
        local char = player.Character
        local root = char and char:FindFirstChild("HumanoidRootPart")
        if not root then continue end
        local gamePlayersFolder = workspace.Game.Players
        local botFound = false
        for _, obj in ipairs(gamePlayersFolder:GetChildren()) do
            if not ignoreList[obj.Name] and obj:IsA("Model") and obj:FindFirstChild("HumanoidRootPart") then
                local dist = (root.Position - obj.HumanoidRootPart.Position).Magnitude
                if dist <= BOT_RADIUS then
                    botFound = true
                    break
                end
            end
        end
        if botFound then
            workspace.Gravity = 0
            if currentPlatform then currentPlatform:Destroy() end
            local platPos = root.Position + Vector3.new(0, 10, 0)
            createPlatform(platPos)
            char:PivotTo(CFrame.new(platPos + Vector3.new(0, 10, 0)))
            RunService.Heartbeat:Wait()
            workspace.Gravity = defaultGravity
        end
    end
end)

RunService.Stepped:Connect(function()
    if player.Character and isPlayerInActiveGame() then
        for _, part in ipairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") and (not currentPlatform or part ~= currentPlatform) then
                part.CanCollide = false
            end
        end
    end
end)

while true do
    RunService.Heartbeat:Wait()
    if not isPlayerInActiveGame() then
        if currentPlatform then currentPlatform:Destroy() currentPlatform = nil end
        lastMoveTime = os.time()
        task.wait(1)
        continue 
    end
    local character = player.Character
    local hrp = character and character:FindFirstChild("HumanoidRootPart")
    if not hrp then continue end
    local ticketsFolder = workspace.Game.Effects:FindFirstChild("Tickets")
    local currentTicket = nil
    if ticketsFolder then
        for _, v in ipairs(ticketsFolder:GetChildren()) do
            if v.Name == "Visual" and v ~= lastTicket then
                currentTicket = v
                break
            end
        end
    end
    if currentTicket then
        lastTicket = currentTicket
        character:PivotTo(CFrame.new(currentTicket:GetPivot().Position))
        task.wait(TOUCH_DELAY)
        lastMoveTime = os.time()
        lastPos = hrp.Position
    else
        lastTicket = nil
    end
    if (hrp.Position - lastPos).Magnitude > 2 then
        lastPos = hrp.Position
        lastMoveTime = os.time()
    elseif os.time() - lastMoveTime > STUCK_TIME_LIMIT then
        createPlatform(SAFE_ZONE - Vector3.new(0, 1, 0))
        character:PivotTo(CFrame.new(SAFE_ZONE))
        lastMoveTime = os.time()
    end
end
