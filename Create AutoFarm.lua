local lplr = game.Players.LocalPlayer
local char = lplr.Character or lplr.CharacterAdded:Wait()
local lpos = char:GetPivot()
local team = lplr.Team or lplr:GetPropertyChangedSignal("Team"):Wait()
local teamName = lplr.Team.Name
local tycoonFolder = workspace.Tycoon.Tycoons:FindFirstChild(teamName)
local CW = workspace["Game Systems"]["Crate Workspace"]

local processedCrates = {}
_G.acw = true

local function GetCreate()
    for i, v in CW:GetChildren() do
        if processedCrates[v] then
            continue
        end

        local ownerValue = v:GetAttribute("Owner")
        if ownerValue and ownerValue == lplr.Name then
            continue 
        end

        local sp = v:FindFirstChild("StealPrompt")
        if sp and char then
            processedCrates[v] = true
            char:PivotTo(v:GetPivot()) 
            task.wait(0.3)
            fireproximityprompt(sp)
            return true
        end
    end
    return false
end

local function TeleportToCollector()
    if not tycoonFolder then return end
    for i, v in tycoonFolder:GetDescendants() do
        if v.Name == "Collector" and v:FindFirstAncestor("Oil Collector") then
            local plane = v:FindFirstChild("Plane")
            local pp = v.Parent:FindFirstChild("Persistant") 
                and v.Parent.Persistant:FindFirstChild("CratePromptPart") 
                and v.Parent.Persistant.CratePromptPart:FindFirstChild("ExtractPrompt")

            if plane and pp then
                char.HumanoidRootPart.CFrame = plane.CFrame
                task.wait(10)
                fireproximityprompt(pp)
                break
            end
        end
    end
end

while _G.acw do
    local foundSomething = GetCreate()
    
    if foundSomething then
        task.wait(1)
        TeleportToCollector()
        task.wait(1)
    else
        task.wait(2)
    end
end
