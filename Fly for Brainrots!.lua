local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local LastPos = LocalPlayer.Character:GetPivot()

local Window = Library.CreateLib("Fly For Brainrots", "Midnight")

local Tab = Window:NewTab("Tp Zone")
local Section = Tab:NewSection("Teleport Zone")

for _, v in pairs(workspace.RarityZones:GetChildren()) do
    if v:IsA("BasePart") or v:IsA("Model") then
        Section:NewButton(v.Name, "Teleport to " .. v.Name, function()
            local character = LocalPlayer.Character
            if character and character:FindFirstChild("HumanoidRootPart") then
                local targetPos = v:IsA("Model") and v:GetPivot().Position or v.Position
                character.HumanoidRootPart.CFrame = CFrame.new(targetPos)
            end
        end)
    end
end

local Tab2 = Window:NewTab("Tp Base")
local Section2 = Tab2:NewSection("Player Bases")

local function TeleportToBase(plotObject)
    local character = LocalPlayer.Character
    if character and plotObject:FindFirstChild("BaseDisplay") then
        character:PivotTo(plotObject.BaseDisplay:GetPivot())
    end
end

for _, v in pairs(workspace.Plots:GetDescendants()) do
    if v.Name == "Name" and v:IsA("TextLabel") or v:IsA("SurfaceGui") or v.Name == "Name" then
        local text = v:FindFirstChildOfClass("TextLabel") and v:FindFirstChildOfClass("TextLabel").Text or (v:IsA("TextLabel") and v.Text or "")
        
        if text:find(LocalPlayer.Name) then
            local myPlot = v.Parent.Parent.Parent.Parent.Parent
            Section2:NewButton("⭐ YOUR BASE ⭐", "Teleport to your plot", function()
                TeleportToBase(myPlot)
            end)
        end
    end
end

for _, v in pairs(workspace.Plots:GetDescendants()) do
    if v.Name == "Name" then
        local text = v:FindFirstChildOfClass("TextLabel") and v:FindFirstChildOfClass("TextLabel").Text or (v:IsA("TextLabel") and v.Text or "")
        
        if text ~= "" and not text:find(LocalPlayer.Name) then
            local otherPlot = v.Parent.Parent.Parent.Parent.Parent
            Section2:NewButton("Base: " .. text, "Teleport to " .. text, function()
                TeleportToBase(otherPlot)
            end)
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if not gameProcessed then
        if input.KeyCode == Enum.KeyCode.LeftControl then
            Library:ToggleUI()
        end
    end
end)

local Tab3 = Window:NewTab("Misc")
local Section3 = Tab3:NewSection("Misc")
Section3:NewButton("Collect Money", "Collect all money on your base", function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character

    local a = char:GetPivot()
    for i,v in workspace.Plots:GetDescendants() do
        if v.Name == "Name" and v.Text:find(plr.Name) then
            local b = v.Parent.Parent.Parent.Parent.Parent.Podiums
            for _,g in b:GetDescendants() do
                if g.Name == "Collect" then
                    char:PivotTo(g:GetPivot() + Vector3.new(0,2,0)) task.wait(.05)
                end
            end
        end
    end

    char:PivotTo(a)
end)

Section3:NewButton("Instant Collect Brainrots", "Instant Collect Brainrots", function()
    local function InstantCollect()
        for i,v in workspace.Brainrots:GetDescendants() do
            if v:IsA("ProximityPrompt") then
                v.HoldDuration = 0
            end
        end
        task.wait(.05)
    end
    InstantCollect()
    workspace.Brainrots.ChildAdded:Connect(InstantCollect)
end)

local Tab4 = Window:NewTab("AutoFarm")
local Section4 = Tab4:NewSection("AutoFarm")

local BestBrainrots = {
    ["Noobini Pizzanini"] = true,
    ["Mastodontico Telepiedone Planetario"] = true,
    ["Anpali Babel"] = true,
    ["Snailenzo"] = true,
    ["Rang Ring Bus"] = true,
    ["Clocktopus Professino"] = true,
    ["Trenostruzzo Turbo 3000"] = true
}

local Rarities = {"SolarWrath", "Hacker", "Galaxy", "Rainbow"}

Section4:NewToggle("Inventory Cleaner", "Moves best brainrots to backpack", function(state)
    getgenv().InvCleaner = state 
    
    task.spawn(function()
        while getgenv().InvCleaner do
            for _, v in pairs(LocalPlayer.Character:GetChildren()) do
                if BestBrainrots[v.Name] then
                    v.Parent = LocalPlayer.Backpack 
                    print("Moved to backpack: " .. v.Name)
                end
            end
            task.wait(1)
        end
    end)
end)

Section4:NewButton("AutoFarm Best Brainrots", "AutoFarm Best Brainrots", function()

    local function AutoCollect()
        local plr = game.Players.LocalPlayer.Character
        if not plr then return end
        local q = plr:GetPivot()

        local function a()    
            for i,v in workspace.Plots:GetDescendants() do
                if v.Name == "Name" then
                    if v.Text:find(game.Players.LocalPlayer.Name) then
                        plr:PivotTo(v.Parent.Parent.Parent.Parent.Parent.BaseDisplay:GetPivot())
                    end
                end
            end
            task.wait(0.1)
            plr:PivotTo(q)
        end

        for i,v in workspace.Brainrots:GetDescendants() do
            if v.Name == "DisplayName" then
                if BestBrainrots[v.Text] then 
                    
                    local foundRarity = false
                    for _, rarityName in pairs(Rarities) do
                        if v:FindFirstAncestor(rarityName) then
                            foundRarity = true
                            break
                        end
                    end

                    if foundRarity then
                        local model = v.Parent.Parent.Parent
                        plr:PivotTo(model:GetPivot()) 
                        task.wait(.15)
                        
                        if model:FindFirstChild("Carry") then
                            model.Carry.HoldDuration = 0
                            fireproximityprompt(model.Carry, 15) 
                            task.wait(.05)
                            a()
                        end
                    end
                end
            end
        end
    end

    AutoCollect()
    workspace.Brainrots.ChildAdded:Connect(AutoCollect)
end)
