local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "War Tycoon | Sayke Hub",
   LoadingTitle = "Sayke's Suite",
   LoadingSubtitle = "by Sayke",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false,
   ToggleUIKeybind = Enum.KeyCode.LeftControl -- Открытие/закрытие на левый Ctrl
})

-- Глобальные переменные
_G.HeadSize = 50
_G.ArmSize = 49
_G.WhiteList = {"nikita_031298"}
local tempNick = ""

---------------------------------------------------------
-- ЛОГИКА (Функции)
---------------------------------------------------------

-- Телепорт к оружию
local function gt(weaponName)
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local hrp = char and char:FindFirstChild("HumanoidRootPart")
    if not hrp then return end
    
    local tycoonsFolder = workspace.Tycoon.Tycoons
    for _, tycoon in ipairs(tycoonsFolder:GetChildren()) do
        local purchased = tycoon:FindFirstChild("PurchasedObjects")
        if purchased then
            for _, item in ipairs(purchased:GetChildren()) do
                if item.Name:find(weaponName) and item.Name:find("Giver") then
                    local promptFolder = item:FindFirstChild("Prompt")
                    if promptFolder then
                        local lp = char:GetPivot()
                        char:PivotTo(promptFolder:GetPivot()) 
                        hrp.Anchored = true
                        task.wait(0.5)
                        hrp.Anchored = false
                        task.wait(0.1)
                        local btn = promptFolder:FindFirstChild("Weapon Giver")
                        if btn then fireproximityprompt(btn, 7) end
                        task.wait(0.5)
                        char:PivotTo(lp)
                        return 
                    end
                end
            end
        end
    end
end

-- Поиск РПГ
local function findRPG()
    local plr = game.Players.LocalPlayer
    return plr.Backpack:FindFirstChild("RPG") or (plr.Character and plr.Character:FindFirstChild("RPG"))
end

-- Атака щита
local function attackBase(baseName)
    local tycoons = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons")
    local base = tycoons:FindFirstChild(baseName)
    if not base then return end

    local targetShield = base:FindFirstChild("PurchasedObjects") 
        and base.PurchasedObjects:FindFirstChild("Base Shield") 
        and base.PurchasedObjects["Base Shield"]:FindFirstChild("Shield")
        and base.PurchasedObjects["Base Shield"].Shield:FindFirstChild("Shield4")

    local NEWBIE_COLOR = Color3.fromRGB(248, 248, 248)

    if not targetShield or targetShield.Color == NEWBIE_COLOR then
        Rayfield:Notify({Title = "Error", Content = "Shield is Newbie or not found!", Duration = 3})
        return
    end

    local rpg = findRPG()
    if not rpg then 
        Rayfield:Notify({Title = "Error", Content = "Need RPG in backpack!", Duration = 3})
        return 
    end

    task.spawn(function()
        while targetShield and targetShield.Parent and targetShield.Transparency < 1 and targetShield.Color ~= NEWBIE_COLOR do
            local args = {{
                Normal = Vector3.yAxis,
                Player = game.Players.LocalPlayer,
                Label = game.Players.LocalPlayer.Name .. "_Silent_" .. math.random(1, 9999),
                HitPart = targetShield,
                Vehicle = rpg,
                Position = targetShield.Position,
                Weapon = rpg
            }}
            game:GetService("ReplicatedStorage").RocketSystem.Events.RocketHit:FireServer(unpack(args))
            task.wait(0.1)
        end
    end)
end

---------------------------------------------------------
-- ИНТЕРФЕЙС
---------------------------------------------------------

-- Вкладка Телепорты
local Tab1 = Window:CreateTab("Teleports", 4483345998)
local mg = {"AK47", "FAL Heavy", "G3 Rifle", "L119A2 Rifle", "MCX Spear"}
local ss = {"AWP", "Dragunov SVD", "M110 Rifle", "M200 Intervention", "M40 Sniper", "Remington MSR"}
local bs = {"Explosive Sniper", "Javelin", "RPG", "Stinger"}

Tab1:CreateSection("Machine Guns")
for _, g in ipairs(mg) do
    Tab1:CreateButton({Name = g, Callback = function() gt(g) end})
end

Tab1:CreateSection("Snipers")
for _, s in ipairs(ss) do
    Tab1:CreateButton({Name = s, Callback = function() gt(s) end})
end

Tab1:CreateSection("Heavy Weapons")
for _, b in ipairs(bs) do
    Tab1:CreateButton({Name = b, Callback = function() gt(b) end})
end

-- Вкладка Троллинг (Щиты)
local Tab2 = Window:CreateTab("Troll", 4483345998)
Tab2:CreateSection("Destroy Base Shields")
local BaseNames = {"Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "Juliet", "Kilo", "Lima", "Omega", "Romeo", "Sierra", "Tango", "Victor", "Yankee", "Zulu"}

for _, name in ipairs(BaseNames) do
    Tab2:CreateButton({Name = "Attack: "..name, Callback = function() attackBase(name) end})
end
Tab2:CreateSection("Destroy Vechicles")
-- Вкладка Misc (Хитбоксы и Вайтлист)
local Tab3 = Window:CreateTab("Misc", 4483345998)
Tab3:CreateSection("Hitboxes")

Tab3:CreateInput({
    Name = "Head Size",
    PlaceholderText = "Example: 100",
    Callback = function(Value)
        local num = tonumber(Value)
        if num then
            _G.HeadSize = num
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Tixannnm/My-scripts/refs/heads/main/War%20Tycoon.lua'))()
        end
    end,
})

Tab3:CreateInput({
    Name = "Arm Size",
    PlaceholderText = "Example: 100",
    Callback = function(Value)
        local num = tonumber(Value)
        if num then
            _G.ArmSize = num - 1
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Tixannnm/My-scripts/refs/heads/main/War%20Tycoon.lua'))()
        end
    end,
})

Tab3:CreateSection("Whitelist Manager")
Tab3:CreateInput({
    Name = "Player Nickname",
    PlaceholderText = "Real or Display Name",
    Callback = function(Value) tempNick = Value end,
})

Tab3:CreateButton({
    Name = "Add to Whitelist",
    Callback = function()
        if tempNick ~= "" then
            local found = false
            for _, p in pairs(game.Players:GetPlayers()) do
                if p.Name:lower() == tempNick:lower() or p.DisplayName:lower() == tempNick:lower() then
                    table.insert(_G.WhiteList, p.Name)
                    table.insert(_G.WhiteList, p.DisplayName)
                    found = true
                    break
                end
            end
            if not found then table.insert(_G.WhiteList, tempNick) end
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Tixannnm/My-scripts/refs/heads/main/War%20Tycoon.lua'))()
            Rayfield:Notify({Title = "Whitelist", Content = tempNick .. " added!", Duration = 3})
        end
    end,
})

Tab3:CreateButton({
    Name = "Clear Whitelist",
    Callback = function()
        _G.WhiteList = {"nikita_031298"}
        loadstring(game:HttpGet('https://raw.githubusercontent.com/Tixannnm/My-scripts/refs/heads/main/War%20Tycoon.lua'))()
        Rayfield:Notify({Title = "Whitelist", Content = "Reset to default", Duration = 3})
    end,
})
