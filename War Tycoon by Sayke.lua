-- Gui to Lua
-- Version: 3.2

-- Instances:
if game.CoreGui:FindFirstChild("War Tycoon by Sayke") then
	game.CoreGui["War Tycoon by Sayke"]:Destroy()
end
local WarTycoonbySayke = Instance.new("ScreenGui")
local Guns = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local UIPadding = Instance.new("UIPadding")
local Frame = Instance.new("Frame")
local UIGridLayout = Instance.new("UIGridLayout")
local UIPadding_2 = Instance.new("UIPadding")
local Bombers = Instance.new("TextLabel")
local UICorner_2 = Instance.new("UICorner")
local MachineGuns = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local Sinpers = Instance.new("TextLabel")
local UICorner_4 = Instance.new("UICorner")
local MachineGunsFrame = Instance.new("Frame")
local UIGridLayout_2 = Instance.new("UIGridLayout")
local UIPadding_3 = Instance.new("UIPadding")
local AK47 = Instance.new("TextButton")
local UICorner_5 = Instance.new("UICorner")
local G3Rifle = Instance.new("TextButton")
local UICorner_6 = Instance.new("UICorner")
local FALHeavy = Instance.new("TextButton")
local UICorner_7 = Instance.new("UICorner")
local MCXSpear = Instance.new("TextButton")
local UICorner_8 = Instance.new("UICorner")
local L119A2Rifle = Instance.new("TextButton")
local UICorner_9 = Instance.new("UICorner")
local BomberFrame = Instance.new("Frame")
local UIGridLayout_3 = Instance.new("UIGridLayout")
local UIPadding_4 = Instance.new("UIPadding")
local RPG = Instance.new("TextButton")
local UICorner_10 = Instance.new("UICorner")
local Javelin = Instance.new("TextButton")
local UICorner_11 = Instance.new("UICorner")
local Stinger = Instance.new("TextButton")
local UICorner_12 = Instance.new("UICorner")
local ExplosiveSniper = Instance.new("TextButton")
local UICorner_13 = Instance.new("UICorner")
local SnipersFrame = Instance.new("Frame")
local UIGridLayout_4 = Instance.new("UIGridLayout")
local UIPadding_5 = Instance.new("UIPadding")
local M200Intervention = Instance.new("TextButton")
local UICorner_14 = Instance.new("UICorner")
local M40Sniper = Instance.new("TextButton")
local UICorner_15 = Instance.new("UICorner")
local DragunovSVD = Instance.new("TextButton")
local UICorner_16 = Instance.new("UICorner")
local RemingtonMSR = Instance.new("TextButton")
local UICorner_17 = Instance.new("UICorner")
local M110Rifle = Instance.new("TextButton")
local UICorner_18 = Instance.new("UICorner")
local AWP = Instance.new("TextButton")
local UICorner_19 = Instance.new("UICorner")
local Close = Instance.new("TextButton")
local UICorner_20 = Instance.new("UICorner")
local MainFrame = Instance.new("Frame")
local Frame_2 = Instance.new("Frame")
local UICorner_21 = Instance.new("UICorner")
local ButtonFrame = Instance.new("Frame")
local UICorner_22 = Instance.new("UICorner")
local Teleport = Instance.new("TextButton")
local UICorner_23 = Instance.new("UICorner")
local UIListLayout = Instance.new("UIListLayout")
local UIPadding_6 = Instance.new("UIPadding")
local Teams = Instance.new("TextButton")
local UICorner_24 = Instance.new("UICorner")
local FunctonFrame = Instance.new("Frame")
local UICorner_25 = Instance.new("UICorner")
local Teams_2 = Instance.new("Frame")
local UICorner_26 = Instance.new("UICorner")
local Frame_3 = Instance.new("Frame")
local Zulu = Instance.new("TextButton")
local Alpha = Instance.new("UICorner")
local Yankee = Instance.new("TextButton")
local Alpha_2 = Instance.new("UICorner")
local Victor = Instance.new("TextButton")
local Alpha_3 = Instance.new("UICorner")
local Tango = Instance.new("TextButton")
local Alpha_4 = Instance.new("UICorner")
local Sierra = Instance.new("TextButton")
local Alpha_5 = Instance.new("UICorner")
local Romeo = Instance.new("TextButton")
local Alpha_6 = Instance.new("UICorner")
local Omega = Instance.new("TextButton")
local Alpha_7 = Instance.new("UICorner")
local Lima = Instance.new("TextButton")
local Alpha_8 = Instance.new("UICorner")
local Kilo = Instance.new("TextButton")
local Alpha_9 = Instance.new("UICorner")
local Juliet = Instance.new("TextButton")
local Alpha_10 = Instance.new("UICorner")
local Hotel = Instance.new("TextButton")
local Alpha_11 = Instance.new("UICorner")
local Golf = Instance.new("TextButton")
local Alpha_12 = Instance.new("UICorner")
local Foxtrot = Instance.new("TextButton")
local Alpha_13 = Instance.new("UICorner")
local Echo = Instance.new("TextButton")
local Alpha_14 = Instance.new("UICorner")
local Delta = Instance.new("TextButton")
local Alpha_15 = Instance.new("UICorner")
local Charlie = Instance.new("TextButton")
local Alpha_16 = Instance.new("UICorner")
local Bravo = Instance.new("TextButton")
local Alpha_17 = Instance.new("UICorner")
local Alpha_18 = Instance.new("TextButton")
local Alpha_19 = Instance.new("UICorner")
local UIPadding_7 = Instance.new("UIPadding")
local UIGridLayout_5 = Instance.new("UIGridLayout")
local Teams_3 = Instance.new("TextLabel")
local Alpha_20 = Instance.new("UICorner")
local Teleport_2 = Instance.new("Frame")
local UICorner_27 = Instance.new("UICorner")
local Teleporttoguns = Instance.new("TextButton")
local UICorner_28 = Instance.new("UICorner")
local TeleporttoBases = Instance.new("TextButton")
local UICorner_29 = Instance.new("UICorner")
local UIListLayout_2 = Instance.new("UIListLayout")
local UIPadding_8 = Instance.new("UIPadding")
local TeleporttoPlayers = Instance.new("TextButton")
local UICorner_30 = Instance.new("UICorner")
local Debris = Instance.new("Folder")
local Frame_4 = Instance.new("Frame")
local Bases = Instance.new("Frame")
local UICorner_31 = Instance.new("UICorner")
local Frame_5 = Instance.new("Frame")
local Alpha_21 = Instance.new("TextButton")
local Alpha_22 = Instance.new("UICorner")
local Bravo_2 = Instance.new("TextButton")
local Alpha_23 = Instance.new("UICorner")
local Charlie_2 = Instance.new("TextButton")
local Alpha_24 = Instance.new("UICorner")
local Delta_2 = Instance.new("TextButton")
local Alpha_25 = Instance.new("UICorner")
local Echo_2 = Instance.new("TextButton")
local Alpha_26 = Instance.new("UICorner")
local Foxtrot_2 = Instance.new("TextButton")
local Alpha_27 = Instance.new("UICorner")
local Golf_2 = Instance.new("TextButton")
local Alpha_28 = Instance.new("UICorner")
local Hotel_2 = Instance.new("TextButton")
local Alpha_29 = Instance.new("UICorner")
local Juliet_2 = Instance.new("TextButton")
local Alpha_30 = Instance.new("UICorner")
local Kilo_2 = Instance.new("TextButton")
local Alpha_31 = Instance.new("UICorner")
local Lima_2 = Instance.new("TextButton")
local Alpha_32 = Instance.new("UICorner")
local Omega_2 = Instance.new("TextButton")
local Alpha_33 = Instance.new("UICorner")
local Romeo_2 = Instance.new("TextButton")
local Alpha_34 = Instance.new("UICorner")
local Sierra_2 = Instance.new("TextButton")
local Alpha_35 = Instance.new("UICorner")
local Tango_2 = Instance.new("TextButton")
local Alpha_36 = Instance.new("UICorner")
local Victor_2 = Instance.new("TextButton")
local Alpha_37 = Instance.new("UICorner")
local Yankee_2 = Instance.new("TextButton")
local Alpha_38 = Instance.new("UICorner")
local Zulu_2 = Instance.new("TextButton")
local Alpha_39 = Instance.new("UICorner")
local UIGridLayout_6 = Instance.new("UIGridLayout")
local UIPadding_9 = Instance.new("UIPadding")
local CloseBases = Instance.new("TextButton")
local Alpha_40 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local Alpha_41 = Instance.new("UICorner")
local Players = Instance.new("Frame")
local UICorner_32 = Instance.new("UICorner")
local Frame_6 = Instance.new("Frame")
local UIGridLayout_7 = Instance.new("UIGridLayout")
local UIPadding_10 = Instance.new("UIPadding")
local Teleportto = Instance.new("TextButton")
local Alpha_42 = Instance.new("UICorner")
local ClosePlayers = Instance.new("TextButton")
local Alpha_43 = Instance.new("UICorner")

--Properties:

WarTycoonbySayke.Name = "War Tycoon by Sayke"
WarTycoonbySayke.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
WarTycoonbySayke.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Guns.Name = "Guns"
Guns.Parent = WarTycoonbySayke
Guns.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Guns.BorderColor3 = Color3.fromRGB(0, 0, 0)
Guns.BorderSizePixel = 0
Guns.Position = UDim2.new(0.358123183, 0, 0.0642092749, 0)
Guns.Size = UDim2.new(0, 368, 0, 416)
Guns.Visible = false
Guns.ZIndex = 501

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = Guns

UIPadding.Parent = Guns
UIPadding.PaddingBottom = UDim.new(0, 370)
UIPadding.PaddingLeft = UDim.new(0, 10)
UIPadding.PaddingRight = UDim.new(0, 10)
UIPadding.PaddingTop = UDim.new(0, 25)

Frame.Parent = Guns
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BackgroundTransparency = 1.000
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(-0.0203253217, 0, -1.47058833, 0)
Frame.Size = UDim2.new(0, 365, 0, 75)
Frame.ZIndex = 502

UIGridLayout.Parent = Frame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 30, 0, 15)
UIGridLayout.CellSize = UDim2.new(0, 80, 0, 30)

UIPadding_2.Parent = Frame
UIPadding_2.PaddingBottom = UDim.new(0, 25)
UIPadding_2.PaddingLeft = UDim.new(0, 30)
UIPadding_2.PaddingRight = UDim.new(0, 10)
UIPadding_2.PaddingTop = UDim.new(0, 15)

Bombers.Name = "Bombers"
Bombers.Parent = Frame
Bombers.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Bombers.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bombers.BorderSizePixel = 0
Bombers.Size = UDim2.new(0, 200, 0, 50)
Bombers.ZIndex = 503
Bombers.Font = Enum.Font.SourceSans
Bombers.Text = "Bombers"
Bombers.TextColor3 = Color3.fromRGB(255, 255, 255)
Bombers.TextScaled = true
Bombers.TextSize = 20.000
Bombers.TextWrapped = true

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = Bombers

MachineGuns.Name = "Machine Guns"
MachineGuns.Parent = Frame
MachineGuns.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MachineGuns.BorderColor3 = Color3.fromRGB(0, 0, 0)
MachineGuns.BorderSizePixel = 0
MachineGuns.Size = UDim2.new(0, 200, 0, 50)
MachineGuns.ZIndex = 503
MachineGuns.Font = Enum.Font.SourceSans
MachineGuns.Text = "Machine Guns"
MachineGuns.TextColor3 = Color3.fromRGB(255, 255, 255)
MachineGuns.TextScaled = true
MachineGuns.TextSize = 20.000
MachineGuns.TextWrapped = true

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = MachineGuns

Sinpers.Name = "Sinpers"
Sinpers.Parent = Frame
Sinpers.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Sinpers.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sinpers.BorderSizePixel = 0
Sinpers.Size = UDim2.new(0, 200, 0, 50)
Sinpers.ZIndex = 503
Sinpers.Font = Enum.Font.SourceSans
Sinpers.Text = "Sinpers"
Sinpers.TextColor3 = Color3.fromRGB(255, 255, 255)
Sinpers.TextScaled = true
Sinpers.TextSize = 20.000
Sinpers.TextWrapped = true

UICorner_4.CornerRadius = UDim.new(0, 3)
UICorner_4.Parent = Sinpers

MachineGunsFrame.Name = "Machine Guns Frame"
MachineGunsFrame.Parent = Guns
MachineGunsFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MachineGunsFrame.BackgroundTransparency = 1.000
MachineGunsFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MachineGunsFrame.BorderSizePixel = 0
MachineGunsFrame.Position = UDim2.new(0.0500000007, 0, -1.47099996, 0)
MachineGunsFrame.Size = UDim2.new(0, 92, 0, 399)
MachineGunsFrame.ZIndex = 502

UIGridLayout_2.Parent = MachineGunsFrame
UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_2.CellPadding = UDim2.new(0, 30, 0, 15)
UIGridLayout_2.CellSize = UDim2.new(0, 80, 0, 30)

UIPadding_3.Parent = MachineGunsFrame
UIPadding_3.PaddingBottom = UDim.new(0, 5)
UIPadding_3.PaddingLeft = UDim.new(0, 50)
UIPadding_3.PaddingRight = UDim.new(0, 86)
UIPadding_3.PaddingTop = UDim.new(0, 65)

AK47.Name = "AK47"
AK47.Parent = MachineGunsFrame
AK47.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
AK47.BorderColor3 = Color3.fromRGB(0, 0, 0)
AK47.BorderSizePixel = 0
AK47.Size = UDim2.new(0, 200, 0, 50)
AK47.ZIndex = 503
AK47.Font = Enum.Font.SourceSans
AK47.Text = "AK47"
AK47.TextColor3 = Color3.fromRGB(255, 255, 255)
AK47.TextScaled = true
AK47.TextSize = 14.000
AK47.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
AK47.TextWrapped = true

UICorner_5.CornerRadius = UDim.new(0, 3)
UICorner_5.Parent = AK47

G3Rifle.Name = "G3 Rifle"
G3Rifle.Parent = MachineGunsFrame
G3Rifle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
G3Rifle.BorderColor3 = Color3.fromRGB(0, 0, 0)
G3Rifle.BorderSizePixel = 0
G3Rifle.Size = UDim2.new(0, 200, 0, 50)
G3Rifle.ZIndex = 503
G3Rifle.Font = Enum.Font.SourceSans
G3Rifle.Text = "G3 Rifle"
G3Rifle.TextColor3 = Color3.fromRGB(255, 255, 255)
G3Rifle.TextScaled = true
G3Rifle.TextSize = 14.000
G3Rifle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
G3Rifle.TextWrapped = true

UICorner_6.CornerRadius = UDim.new(0, 3)
UICorner_6.Parent = G3Rifle

FALHeavy.Name = "FAL Heavy"
FALHeavy.Parent = MachineGunsFrame
FALHeavy.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
FALHeavy.BorderColor3 = Color3.fromRGB(0, 0, 0)
FALHeavy.BorderSizePixel = 0
FALHeavy.Size = UDim2.new(0, 200, 0, 50)
FALHeavy.ZIndex = 503
FALHeavy.Font = Enum.Font.SourceSans
FALHeavy.Text = "FAL Heavy"
FALHeavy.TextColor3 = Color3.fromRGB(255, 255, 255)
FALHeavy.TextScaled = true
FALHeavy.TextSize = 14.000
FALHeavy.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
FALHeavy.TextWrapped = true

UICorner_7.CornerRadius = UDim.new(0, 3)
UICorner_7.Parent = FALHeavy

MCXSpear.Name = "MCX Spear"
MCXSpear.Parent = MachineGunsFrame
MCXSpear.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
MCXSpear.BorderColor3 = Color3.fromRGB(0, 0, 0)
MCXSpear.BorderSizePixel = 0
MCXSpear.Size = UDim2.new(0, 200, 0, 50)
MCXSpear.ZIndex = 503
MCXSpear.Font = Enum.Font.SourceSans
MCXSpear.Text = "MCX Spear"
MCXSpear.TextColor3 = Color3.fromRGB(255, 255, 255)
MCXSpear.TextScaled = true
MCXSpear.TextSize = 14.000
MCXSpear.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
MCXSpear.TextWrapped = true

UICorner_8.CornerRadius = UDim.new(0, 3)
UICorner_8.Parent = MCXSpear

L119A2Rifle.Name = "L119A2 Rifle"
L119A2Rifle.Parent = MachineGunsFrame
L119A2Rifle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
L119A2Rifle.BorderColor3 = Color3.fromRGB(0, 0, 0)
L119A2Rifle.BorderSizePixel = 0
L119A2Rifle.Size = UDim2.new(0, 200, 0, 50)
L119A2Rifle.ZIndex = 503
L119A2Rifle.Font = Enum.Font.SourceSans
L119A2Rifle.Text = "L119A2 Rifle"
L119A2Rifle.TextColor3 = Color3.fromRGB(255, 255, 255)
L119A2Rifle.TextScaled = true
L119A2Rifle.TextSize = 14.000
L119A2Rifle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
L119A2Rifle.TextWrapped = true

UICorner_9.CornerRadius = UDim.new(0, 3)
UICorner_9.Parent = L119A2Rifle

BomberFrame.Name = "Bomber Frame"
BomberFrame.Parent = Guns
BomberFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
BomberFrame.BackgroundTransparency = 1.000
BomberFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
BomberFrame.BorderSizePixel = 0
BomberFrame.Position = UDim2.new(0.370000005, 0, -1.47099996, 0)
BomberFrame.Size = UDim2.new(0, 92, 0, 399)
BomberFrame.ZIndex = 502

UIGridLayout_3.Parent = BomberFrame
UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_3.CellPadding = UDim2.new(0, 30, 0, 15)
UIGridLayout_3.CellSize = UDim2.new(0, 80, 0, 30)

UIPadding_4.Parent = BomberFrame
UIPadding_4.PaddingBottom = UDim.new(0, 5)
UIPadding_4.PaddingLeft = UDim.new(0, 50)
UIPadding_4.PaddingRight = UDim.new(0, 86)
UIPadding_4.PaddingTop = UDim.new(0, 65)

RPG.Name = "RPG"
RPG.Parent = BomberFrame
RPG.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
RPG.BorderColor3 = Color3.fromRGB(0, 0, 0)
RPG.BorderSizePixel = 0
RPG.Size = UDim2.new(0, 200, 0, 50)
RPG.ZIndex = 503
RPG.Font = Enum.Font.SourceSans
RPG.Text = "RPG"
RPG.TextColor3 = Color3.fromRGB(255, 255, 255)
RPG.TextScaled = true
RPG.TextSize = 14.000
RPG.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
RPG.TextWrapped = true

UICorner_10.CornerRadius = UDim.new(0, 3)
UICorner_10.Parent = RPG

Javelin.Name = "Javelin"
Javelin.Parent = BomberFrame
Javelin.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Javelin.BorderColor3 = Color3.fromRGB(0, 0, 0)
Javelin.BorderSizePixel = 0
Javelin.Size = UDim2.new(0, 200, 0, 50)
Javelin.ZIndex = 503
Javelin.Font = Enum.Font.SourceSans
Javelin.Text = "Javelin"
Javelin.TextColor3 = Color3.fromRGB(255, 255, 255)
Javelin.TextScaled = true
Javelin.TextSize = 14.000
Javelin.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Javelin.TextWrapped = true

UICorner_11.CornerRadius = UDim.new(0, 3)
UICorner_11.Parent = Javelin

Stinger.Name = "Stinger"
Stinger.Parent = BomberFrame
Stinger.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Stinger.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stinger.BorderSizePixel = 0
Stinger.Size = UDim2.new(0, 200, 0, 50)
Stinger.ZIndex = 503
Stinger.Font = Enum.Font.SourceSans
Stinger.Text = "Stinger"
Stinger.TextColor3 = Color3.fromRGB(255, 255, 255)
Stinger.TextScaled = true
Stinger.TextSize = 14.000
Stinger.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
Stinger.TextWrapped = true

UICorner_12.CornerRadius = UDim.new(0, 3)
UICorner_12.Parent = Stinger

ExplosiveSniper.Name = "Explosive Sniper"
ExplosiveSniper.Parent = BomberFrame
ExplosiveSniper.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ExplosiveSniper.BorderColor3 = Color3.fromRGB(0, 0, 0)
ExplosiveSniper.BorderSizePixel = 0
ExplosiveSniper.Size = UDim2.new(0, 200, 0, 50)
ExplosiveSniper.ZIndex = 503
ExplosiveSniper.Font = Enum.Font.SourceSans
ExplosiveSniper.Text = "Explosive Sniper"
ExplosiveSniper.TextColor3 = Color3.fromRGB(255, 255, 255)
ExplosiveSniper.TextScaled = true
ExplosiveSniper.TextSize = 14.000
ExplosiveSniper.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
ExplosiveSniper.TextWrapped = true

UICorner_13.CornerRadius = UDim.new(0, 3)
UICorner_13.Parent = ExplosiveSniper

SnipersFrame.Name = "Snipers Frame"
SnipersFrame.Parent = Guns
SnipersFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SnipersFrame.BackgroundTransparency = 1.000
SnipersFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
SnipersFrame.BorderSizePixel = 0
SnipersFrame.Position = UDim2.new(0.680000007, 0, -1.47099996, 0)
SnipersFrame.Size = UDim2.new(0, 92, 0, 399)
SnipersFrame.ZIndex = 502

UIGridLayout_4.Parent = SnipersFrame
UIGridLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_4.CellPadding = UDim2.new(0, 30, 0, 15)
UIGridLayout_4.CellSize = UDim2.new(0, 80, 0, 30)

UIPadding_5.Parent = SnipersFrame
UIPadding_5.PaddingBottom = UDim.new(0, 5)
UIPadding_5.PaddingLeft = UDim.new(0, 50)
UIPadding_5.PaddingRight = UDim.new(0, 86)
UIPadding_5.PaddingTop = UDim.new(0, 65)

M200Intervention.Name = "M200 Intervention"
M200Intervention.Parent = SnipersFrame
M200Intervention.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
M200Intervention.BorderColor3 = Color3.fromRGB(0, 0, 0)
M200Intervention.BorderSizePixel = 0
M200Intervention.Size = UDim2.new(0, 200, 0, 50)
M200Intervention.ZIndex = 503
M200Intervention.Font = Enum.Font.SourceSans
M200Intervention.Text = "M200 Intervention"
M200Intervention.TextColor3 = Color3.fromRGB(255, 255, 255)
M200Intervention.TextScaled = true
M200Intervention.TextSize = 14.000
M200Intervention.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
M200Intervention.TextWrapped = true

UICorner_14.CornerRadius = UDim.new(0, 3)
UICorner_14.Parent = M200Intervention

M40Sniper.Name = "M40 Sniper"
M40Sniper.Parent = SnipersFrame
M40Sniper.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
M40Sniper.BorderColor3 = Color3.fromRGB(0, 0, 0)
M40Sniper.BorderSizePixel = 0
M40Sniper.Size = UDim2.new(0, 200, 0, 50)
M40Sniper.ZIndex = 503
M40Sniper.Font = Enum.Font.SourceSans
M40Sniper.Text = "M40 Sniper"
M40Sniper.TextColor3 = Color3.fromRGB(255, 255, 255)
M40Sniper.TextScaled = true
M40Sniper.TextSize = 14.000
M40Sniper.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
M40Sniper.TextWrapped = true

UICorner_15.CornerRadius = UDim.new(0, 3)
UICorner_15.Parent = M40Sniper

DragunovSVD.Name = "Dragunov SVD"
DragunovSVD.Parent = SnipersFrame
DragunovSVD.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
DragunovSVD.BorderColor3 = Color3.fromRGB(0, 0, 0)
DragunovSVD.BorderSizePixel = 0
DragunovSVD.Size = UDim2.new(0, 200, 0, 50)
DragunovSVD.ZIndex = 503
DragunovSVD.Font = Enum.Font.SourceSans
DragunovSVD.Text = "Dragunov SVD"
DragunovSVD.TextColor3 = Color3.fromRGB(255, 255, 255)
DragunovSVD.TextScaled = true
DragunovSVD.TextSize = 14.000
DragunovSVD.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
DragunovSVD.TextWrapped = true

UICorner_16.CornerRadius = UDim.new(0, 3)
UICorner_16.Parent = DragunovSVD

RemingtonMSR.Name = "Remington MSR"
RemingtonMSR.Parent = SnipersFrame
RemingtonMSR.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
RemingtonMSR.BorderColor3 = Color3.fromRGB(0, 0, 0)
RemingtonMSR.BorderSizePixel = 0
RemingtonMSR.Size = UDim2.new(0, 200, 0, 50)
RemingtonMSR.ZIndex = 503
RemingtonMSR.Font = Enum.Font.SourceSans
RemingtonMSR.Text = "Remington MSR"
RemingtonMSR.TextColor3 = Color3.fromRGB(255, 255, 255)
RemingtonMSR.TextScaled = true
RemingtonMSR.TextSize = 14.000
RemingtonMSR.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
RemingtonMSR.TextWrapped = true

UICorner_17.CornerRadius = UDim.new(0, 3)
UICorner_17.Parent = RemingtonMSR

M110Rifle.Name = "M110 Rifle"
M110Rifle.Parent = SnipersFrame
M110Rifle.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
M110Rifle.BorderColor3 = Color3.fromRGB(0, 0, 0)
M110Rifle.BorderSizePixel = 0
M110Rifle.Size = UDim2.new(0, 200, 0, 50)
M110Rifle.ZIndex = 503
M110Rifle.Font = Enum.Font.SourceSans
M110Rifle.Text = "M110 Rifle"
M110Rifle.TextColor3 = Color3.fromRGB(255, 255, 255)
M110Rifle.TextScaled = true
M110Rifle.TextSize = 14.000
M110Rifle.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
M110Rifle.TextWrapped = true

UICorner_18.CornerRadius = UDim.new(0, 3)
UICorner_18.Parent = M110Rifle

AWP.Name = "AWP"
AWP.Parent = SnipersFrame
AWP.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
AWP.BorderColor3 = Color3.fromRGB(0, 0, 0)
AWP.BorderSizePixel = 0
AWP.Size = UDim2.new(0, 200, 0, 50)
AWP.ZIndex = 503
AWP.Font = Enum.Font.SourceSans
AWP.Text = "AWP"
AWP.TextColor3 = Color3.fromRGB(255, 255, 255)
AWP.TextScaled = true
AWP.TextSize = 14.000
AWP.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
AWP.TextWrapped = true

UICorner_19.CornerRadius = UDim.new(0, 3)
UICorner_19.Parent = AWP

Close.Name = "Close"
Close.Parent = Guns
Close.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.19252874, 0, 15.4285717, 0)
Close.Size = UDim2.new(0, 200, 0, 50)
Close.ZIndex = 502
Close.Font = Enum.Font.SourceSans
Close.Text = "Close"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.TextScaled = true
Close.TextSize = 14.000
Close.TextWrapped = true

UICorner_20.CornerRadius = UDim.new(0, 3)
UICorner_20.Parent = Close

MainFrame.Name = "MainFrame"
MainFrame.Parent = WarTycoonbySayke
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.BackgroundTransparency = 1.000
MainFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0, 442, 0, 350)
MainFrame.ZIndex = 500

Frame_2.Parent = MainFrame
Frame_2.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Size = UDim2.new(0, 442, 0, 350)

UICorner_21.CornerRadius = UDim.new(0, 3)
UICorner_21.Parent = Frame_2

ButtonFrame.Name = "ButtonFrame"
ButtonFrame.Parent = Frame_2
ButtonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ButtonFrame.BackgroundTransparency = 1.000
ButtonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ButtonFrame.BorderSizePixel = 0
ButtonFrame.Size = UDim2.new(0, 113, 0, 350)

UICorner_22.CornerRadius = UDim.new(0, 3)
UICorner_22.Parent = ButtonFrame

Teleport.Name = "Teleport"
Teleport.Parent = ButtonFrame
Teleport.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teleport.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleport.BorderSizePixel = 0
Teleport.Position = UDim2.new(0.123893805, 0, 0.0571428575, 0)
Teleport.Size = UDim2.new(0, 80, 0, 35)
Teleport.Font = Enum.Font.SourceSans
Teleport.Text = "Teleport"
Teleport.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleport.TextSize = 20.000

UICorner_23.CornerRadius = UDim.new(0, 3)
UICorner_23.Parent = Teleport

UIListLayout.Parent = ButtonFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 10)

UIPadding_6.Parent = ButtonFrame
UIPadding_6.PaddingBottom = UDim.new(0, 20)
UIPadding_6.PaddingLeft = UDim.new(0, 10)
UIPadding_6.PaddingRight = UDim.new(0, 10)
UIPadding_6.PaddingTop = UDim.new(0, 25)

Teams.Name = "Teams"
Teams.Parent = ButtonFrame
Teams.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teams.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teams.BorderSizePixel = 0
Teams.Position = UDim2.new(0.123893805, 0, 0.0571428575, 0)
Teams.Size = UDim2.new(0, 80, 0, 35)
Teams.Font = Enum.Font.SourceSans
Teams.Text = "Teams"
Teams.TextColor3 = Color3.fromRGB(255, 255, 255)
Teams.TextSize = 20.000

UICorner_24.CornerRadius = UDim.new(0, 3)
UICorner_24.Parent = Teams

FunctonFrame.Name = "FunctonFrame"
FunctonFrame.Parent = Frame_2
FunctonFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FunctonFrame.BackgroundTransparency = 1.000
FunctonFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
FunctonFrame.BorderSizePixel = 0
FunctonFrame.Position = UDim2.new(0.255656123, 0, 0, 0)
FunctonFrame.Size = UDim2.new(0, 329, 0, 350)

UICorner_25.CornerRadius = UDim.new(0, 3)
UICorner_25.Parent = FunctonFrame

Teams_2.Name = "Teams"
Teams_2.Parent = FunctonFrame
Teams_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Teams_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teams_2.BorderSizePixel = 0
Teams_2.Position = UDim2.new(0.0790273547, 0, 0.0857142881, 0)
Teams_2.Size = UDim2.new(0, 280, 0, 290)
Teams_2.ZIndex = 2

UICorner_26.Parent = Teams_2

Frame_3.Parent = Teams_2
Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_3.BackgroundTransparency = 1.000
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(-0.00311540882, 0, 0.103448279, 0)
Frame_3.Size = UDim2.new(0, 280, 0, 259)
Frame_3.ZIndex = 550

Zulu.Name = "Zulu"
Zulu.Parent = Frame_3
Zulu.BackgroundColor3 = Color3.fromRGB(91, 93, 105)
Zulu.BorderColor3 = Color3.fromRGB(0, 0, 0)
Zulu.BorderSizePixel = 0
Zulu.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Zulu.Size = UDim2.new(0, 80, 0, 30)
Zulu.ZIndex = 503
Zulu.Font = Enum.Font.SourceSans
Zulu.Text = "Zulu"
Zulu.TextColor3 = Color3.fromRGB(255, 255, 255)
Zulu.TextScaled = true
Zulu.TextSize = 14.000
Zulu.TextWrapped = true

Alpha.CornerRadius = UDim.new(0, 3)
Alpha.Name = "Alpha"
Alpha.Parent = Zulu

Yankee.Name = "Yankee"
Yankee.Parent = Frame_3
Yankee.BackgroundColor3 = Color3.fromRGB(116, 134, 157)
Yankee.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yankee.BorderSizePixel = 0
Yankee.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Yankee.Size = UDim2.new(0, 80, 0, 30)
Yankee.ZIndex = 503
Yankee.Font = Enum.Font.SourceSans
Yankee.Text = "Yankee"
Yankee.TextColor3 = Color3.fromRGB(0, 0, 0)
Yankee.TextScaled = true
Yankee.TextSize = 14.000
Yankee.TextWrapped = true

Alpha_2.CornerRadius = UDim.new(0, 3)
Alpha_2.Name = "Alpha"
Alpha_2.Parent = Yankee

Victor.Name = "Victor"
Victor.Parent = Frame_3
Victor.BackgroundColor3 = Color3.fromRGB(231, 231, 236)
Victor.BorderColor3 = Color3.fromRGB(0, 0, 0)
Victor.BorderSizePixel = 0
Victor.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Victor.Size = UDim2.new(0, 80, 0, 30)
Victor.ZIndex = 503
Victor.Font = Enum.Font.SourceSans
Victor.Text = "Victor"
Victor.TextColor3 = Color3.fromRGB(0, 0, 0)
Victor.TextScaled = true
Victor.TextSize = 14.000
Victor.TextWrapped = true

Alpha_3.CornerRadius = UDim.new(0, 3)
Alpha_3.Name = "Alpha"
Alpha_3.Parent = Victor

Tango.Name = "Tango"
Tango.Parent = Frame_3
Tango.BackgroundColor3 = Color3.fromRGB(86, 66, 54)
Tango.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tango.BorderSizePixel = 0
Tango.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Tango.Size = UDim2.new(0, 80, 0, 30)
Tango.ZIndex = 503
Tango.Font = Enum.Font.SourceSans
Tango.Text = "Tango"
Tango.TextColor3 = Color3.fromRGB(255, 255, 255)
Tango.TextScaled = true
Tango.TextSize = 14.000
Tango.TextWrapped = true

Alpha_4.CornerRadius = UDim.new(0, 3)
Alpha_4.Name = "Alpha"
Alpha_4.Parent = Tango

Sierra.Name = "Sierra"
Sierra.Parent = Frame_3
Sierra.BackgroundColor3 = Color3.fromRGB(150, 103, 102)
Sierra.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sierra.BorderSizePixel = 0
Sierra.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Sierra.Size = UDim2.new(0, 80, 0, 30)
Sierra.ZIndex = 503
Sierra.Font = Enum.Font.SourceSans
Sierra.Text = "Sierra"
Sierra.TextColor3 = Color3.fromRGB(255, 255, 255)
Sierra.TextScaled = true
Sierra.TextSize = 14.000
Sierra.TextWrapped = true

Alpha_5.CornerRadius = UDim.new(0, 3)
Alpha_5.Name = "Alpha"
Alpha_5.Parent = Sierra

Romeo.Name = "Romeo"
Romeo.Parent = Frame_3
Romeo.BackgroundColor3 = Color3.fromRGB(175, 148, 131)
Romeo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Romeo.BorderSizePixel = 0
Romeo.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Romeo.Size = UDim2.new(0, 80, 0, 30)
Romeo.ZIndex = 503
Romeo.Font = Enum.Font.SourceSans
Romeo.Text = "Romeo"
Romeo.TextColor3 = Color3.fromRGB(0, 0, 0)
Romeo.TextScaled = true
Romeo.TextSize = 14.000
Romeo.TextWrapped = true

Alpha_6.CornerRadius = UDim.new(0, 3)
Alpha_6.Name = "Alpha"
Alpha_6.Parent = Romeo

Omega.Name = "Omega"
Omega.Parent = Frame_3
Omega.BackgroundColor3 = Color3.fromRGB(255, 0, 191)
Omega.BorderColor3 = Color3.fromRGB(0, 0, 0)
Omega.BorderSizePixel = 0
Omega.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Omega.Size = UDim2.new(0, 80, 0, 30)
Omega.ZIndex = 503
Omega.Font = Enum.Font.SourceSans
Omega.Text = "Omega"
Omega.TextColor3 = Color3.fromRGB(255, 255, 255)
Omega.TextScaled = true
Omega.TextSize = 14.000
Omega.TextWrapped = true

Alpha_7.CornerRadius = UDim.new(0, 3)
Alpha_7.Name = "Alpha"
Alpha_7.Parent = Omega

Lima.Name = "Lima"
Lima.Parent = Frame_3
Lima.BackgroundColor3 = Color3.fromRGB(180, 128, 255)
Lima.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lima.BorderSizePixel = 0
Lima.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Lima.Size = UDim2.new(0, 80, 0, 30)
Lima.ZIndex = 503
Lima.Font = Enum.Font.SourceSans
Lima.Text = "Lima"
Lima.TextColor3 = Color3.fromRGB(0, 0, 0)
Lima.TextScaled = true
Lima.TextSize = 14.000
Lima.TextWrapped = true

Alpha_8.CornerRadius = UDim.new(0, 3)
Alpha_8.Name = "Alpha"
Alpha_8.Parent = Lima

Kilo.Name = "Kilo"
Kilo.Parent = Frame_3
Kilo.BackgroundColor3 = Color3.fromRGB(98, 37, 209)
Kilo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Kilo.BorderSizePixel = 0
Kilo.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Kilo.Size = UDim2.new(0, 80, 0, 30)
Kilo.ZIndex = 503
Kilo.Font = Enum.Font.SourceSans
Kilo.Text = "Kilo"
Kilo.TextColor3 = Color3.fromRGB(255, 255, 255)
Kilo.TextScaled = true
Kilo.TextSize = 14.000
Kilo.TextWrapped = true

Alpha_9.CornerRadius = UDim.new(0, 3)
Alpha_9.Name = "Alpha"
Alpha_9.Parent = Kilo

Juliet.Name = "Juliet"
Juliet.Parent = Frame_3
Juliet.BackgroundColor3 = Color3.fromRGB(0, 32, 96)
Juliet.BorderColor3 = Color3.fromRGB(0, 0, 0)
Juliet.BorderSizePixel = 0
Juliet.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Juliet.Size = UDim2.new(0, 80, 0, 30)
Juliet.ZIndex = 503
Juliet.Font = Enum.Font.SourceSans
Juliet.Text = "Juliet"
Juliet.TextColor3 = Color3.fromRGB(255, 255, 255)
Juliet.TextScaled = true
Juliet.TextSize = 14.000
Juliet.TextWrapped = true

Alpha_10.CornerRadius = UDim.new(0, 3)
Alpha_10.Name = "Alpha"
Alpha_10.Parent = Juliet

Hotel.Name = "Hotel"
Hotel.Parent = Frame_3
Hotel.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Hotel.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hotel.BorderSizePixel = 0
Hotel.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Hotel.Size = UDim2.new(0, 80, 0, 30)
Hotel.ZIndex = 503
Hotel.Font = Enum.Font.SourceSans
Hotel.Text = "Hotel"
Hotel.TextColor3 = Color3.fromRGB(255, 255, 255)
Hotel.TextScaled = true
Hotel.TextSize = 14.000
Hotel.TextWrapped = true

Alpha_11.CornerRadius = UDim.new(0, 3)
Alpha_11.Name = "Alpha"
Alpha_11.Parent = Hotel

Golf.Name = "Golf"
Golf.Parent = Frame_3
Golf.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
Golf.BorderColor3 = Color3.fromRGB(0, 0, 0)
Golf.BorderSizePixel = 0
Golf.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Golf.Size = UDim2.new(0, 80, 0, 30)
Golf.ZIndex = 503
Golf.Font = Enum.Font.SourceSans
Golf.Text = "Golf"
Golf.TextColor3 = Color3.fromRGB(255, 255, 255)
Golf.TextScaled = true
Golf.TextSize = 14.000
Golf.TextWrapped = true

Alpha_12.CornerRadius = UDim.new(0, 3)
Alpha_12.Name = "Alpha"
Alpha_12.Parent = Golf

Foxtrot.Name = "Foxtrot"
Foxtrot.Parent = Frame_3
Foxtrot.BackgroundColor3 = Color3.fromRGB(18, 238, 212)
Foxtrot.BorderColor3 = Color3.fromRGB(0, 0, 0)
Foxtrot.BorderSizePixel = 0
Foxtrot.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Foxtrot.Size = UDim2.new(0, 80, 0, 30)
Foxtrot.ZIndex = 503
Foxtrot.Font = Enum.Font.SourceSans
Foxtrot.Text = "Foxtrot"
Foxtrot.TextColor3 = Color3.fromRGB(0, 0, 0)
Foxtrot.TextScaled = true
Foxtrot.TextSize = 14.000
Foxtrot.TextWrapped = true

Alpha_13.CornerRadius = UDim.new(0, 3)
Alpha_13.Name = "Alpha"
Alpha_13.Parent = Foxtrot

Echo.Name = "Echo"
Echo.Parent = Frame_3
Echo.BackgroundColor3 = Color3.fromRGB(39, 70, 45)
Echo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Echo.BorderSizePixel = 0
Echo.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Echo.Size = UDim2.new(0, 80, 0, 30)
Echo.ZIndex = 503
Echo.Font = Enum.Font.SourceSans
Echo.Text = "Echo"
Echo.TextColor3 = Color3.fromRGB(255, 255, 255)
Echo.TextScaled = true
Echo.TextSize = 14.000
Echo.TextWrapped = true

Alpha_14.CornerRadius = UDim.new(0, 3)
Alpha_14.Name = "Alpha"
Alpha_14.Parent = Echo

Delta.Name = "Delta"
Delta.Parent = Frame_3
Delta.BackgroundColor3 = Color3.fromRGB(75, 151, 75)
Delta.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delta.BorderSizePixel = 0
Delta.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Delta.Size = UDim2.new(0, 80, 0, 30)
Delta.ZIndex = 503
Delta.Font = Enum.Font.SourceSans
Delta.Text = "Delta"
Delta.TextColor3 = Color3.fromRGB(255, 255, 255)
Delta.TextScaled = true
Delta.TextSize = 14.000
Delta.TextWrapped = true

Alpha_15.CornerRadius = UDim.new(0, 3)
Alpha_15.Name = "Alpha"
Alpha_15.Parent = Delta

Charlie.Name = "Charlie"
Charlie.Parent = Frame_3
Charlie.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Charlie.BorderColor3 = Color3.fromRGB(0, 0, 0)
Charlie.BorderSizePixel = 0
Charlie.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Charlie.Size = UDim2.new(0, 80, 0, 30)
Charlie.ZIndex = 503
Charlie.Font = Enum.Font.SourceSans
Charlie.Text = "Charlie"
Charlie.TextColor3 = Color3.fromRGB(0, 0, 0)
Charlie.TextScaled = true
Charlie.TextSize = 14.000
Charlie.TextWrapped = true

Alpha_16.CornerRadius = UDim.new(0, 3)
Alpha_16.Name = "Alpha"
Alpha_16.Parent = Charlie

Bravo.Name = "Bravo"
Bravo.Parent = Frame_3
Bravo.BackgroundColor3 = Color3.fromRGB(218, 133, 65)
Bravo.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bravo.BorderSizePixel = 0
Bravo.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Bravo.Size = UDim2.new(0, 80, 0, 30)
Bravo.ZIndex = 503
Bravo.Font = Enum.Font.SourceSans
Bravo.Text = "Bravo"
Bravo.TextColor3 = Color3.fromRGB(0, 0, 0)
Bravo.TextScaled = true
Bravo.TextSize = 14.000
Bravo.TextWrapped = true

Alpha_17.CornerRadius = UDim.new(0, 3)
Alpha_17.Name = "Alpha"
Alpha_17.Parent = Bravo

Alpha_18.Name = "Alpha"
Alpha_18.Parent = Frame_3
Alpha_18.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Alpha_18.BorderColor3 = Color3.fromRGB(0, 0, 0)
Alpha_18.BorderSizePixel = 0
Alpha_18.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Alpha_18.Size = UDim2.new(0, 80, 0, 30)
Alpha_18.ZIndex = 503
Alpha_18.Font = Enum.Font.SourceSans
Alpha_18.Text = "Alpha"
Alpha_18.TextColor3 = Color3.fromRGB(255, 255, 255)
Alpha_18.TextScaled = true
Alpha_18.TextSize = 14.000
Alpha_18.TextWrapped = true

Alpha_19.CornerRadius = UDim.new(0, 3)
Alpha_19.Name = "Alpha"
Alpha_19.Parent = Alpha_18

UIPadding_7.Parent = Frame_3
UIPadding_7.PaddingBottom = UDim.new(0, 10)
UIPadding_7.PaddingLeft = UDim.new(0, 14)
UIPadding_7.PaddingRight = UDim.new(0, 10)
UIPadding_7.PaddingTop = UDim.new(0, 25)

UIGridLayout_5.Parent = Frame_3
UIGridLayout_5.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_5.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_5.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIGridLayout_5.CellPadding = UDim2.new(0, 7, 0, 7)
UIGridLayout_5.CellSize = UDim2.new(0, 80, 0, 30)

Teams_3.Name = "Teams"
Teams_3.Parent = Teams_2
Teams_3.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teams_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teams_3.BorderSizePixel = 0
Teams_3.Position = UDim2.new(0.230000094, 0, 0.0339999497, 0)
Teams_3.Size = UDim2.new(0, 150, 0, 30)
Teams_3.ZIndex = 503
Teams_3.Font = Enum.Font.SourceSans
Teams_3.Text = "Destroy shield of "
Teams_3.TextColor3 = Color3.fromRGB(255, 255, 255)
Teams_3.TextScaled = true
Teams_3.TextSize = 14.000
Teams_3.TextWrapped = true

Alpha_20.CornerRadius = UDim.new(0, 3)
Alpha_20.Name = "Alpha"
Alpha_20.Parent = Teams_3

Teleport_2.Name = "Teleport"
Teleport_2.Parent = FunctonFrame
Teleport_2.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
Teleport_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleport_2.BorderSizePixel = 0
Teleport_2.Position = UDim2.new(0.0790273547, 0, 0.0857142881, 0)
Teleport_2.Size = UDim2.new(0, 280, 0, 166)
Teleport_2.Visible = false
Teleport_2.ZIndex = 3

UICorner_27.Parent = Teleport_2

Teleporttoguns.Name = "Teleport to guns"
Teleporttoguns.Parent = Teleport_2
Teleporttoguns.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teleporttoguns.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleporttoguns.BorderSizePixel = 0
Teleporttoguns.Position = UDim2.new(0.0571428575, 0, 0.0620689653, 0)
Teleporttoguns.Size = UDim2.new(0, 248, 0, 30)
Teleporttoguns.ZIndex = 4
Teleporttoguns.Font = Enum.Font.SourceSans
Teleporttoguns.Text = "Teleport to guns"
Teleporttoguns.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleporttoguns.TextScaled = true
Teleporttoguns.TextSize = 20.000
Teleporttoguns.TextWrapped = true

UICorner_28.CornerRadius = UDim.new(0, 3)
UICorner_28.Parent = Teleporttoguns

TeleporttoBases.Name = "Teleport to Bases"
TeleporttoBases.Parent = Teleport_2
TeleporttoBases.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
TeleporttoBases.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleporttoBases.BorderSizePixel = 0
TeleporttoBases.Position = UDim2.new(0.057, 0, 0.25, 0)
TeleporttoBases.Size = UDim2.new(0, 248, 0, 30)
TeleporttoBases.ZIndex = 4
TeleporttoBases.Font = Enum.Font.SourceSans
TeleporttoBases.Text = "Teleport to Bases"
TeleporttoBases.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleporttoBases.TextScaled = true
TeleporttoBases.TextSize = 20.000
TeleporttoBases.TextWrapped = true

UICorner_29.CornerRadius = UDim.new(0, 3)
UICorner_29.Parent = TeleporttoBases

UIListLayout_2.Parent = Teleport_2
UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_2.Padding = UDim.new(0, 25)

UIPadding_8.Parent = Teleport_2
UIPadding_8.PaddingLeft = UDim.new(0, 15)
UIPadding_8.PaddingTop = UDim.new(0, 15)

TeleporttoPlayers.Name = "Teleport to Players"
TeleporttoPlayers.Parent = Teleport_2
TeleporttoPlayers.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
TeleporttoPlayers.BorderColor3 = Color3.fromRGB(0, 0, 0)
TeleporttoPlayers.BorderSizePixel = 0
TeleporttoPlayers.Position = UDim2.new(0.057, 0, 0.25, 0)
TeleporttoPlayers.Size = UDim2.new(0, 248, 0, 30)
TeleporttoPlayers.ZIndex = 4
TeleporttoPlayers.Font = Enum.Font.SourceSans
TeleporttoPlayers.Text = "Teleport to Players"
TeleporttoPlayers.TextColor3 = Color3.fromRGB(255, 255, 255)
TeleporttoPlayers.TextScaled = true
TeleporttoPlayers.TextSize = 20.000
TeleporttoPlayers.TextWrapped = true

UICorner_30.CornerRadius = UDim.new(0, 3)
UICorner_30.Parent = TeleporttoPlayers

Debris.Name = "Debris"
Debris.Parent = MainFrame

Frame_4.Parent = Debris
Frame_4.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Frame_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_4.BorderSizePixel = 0
Frame_4.Position = UDim2.new(0, 110, 0, 0)
Frame_4.Size = UDim2.new(0, 3, 0, 350)
Frame_4.ZIndex = 2

Bases.Name = "Bases"
Bases.Parent = WarTycoonbySayke
Bases.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Bases.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bases.BorderSizePixel = 0
Bases.Position = UDim2.new(0.360548437, 0, 0.0868014246, 0)
Bases.Size = UDim2.new(0, 270, 0, 324)
Bases.Visible = false
Bases.ZIndex = 501

UICorner_31.CornerRadius = UDim.new(0, 3)
UICorner_31.Parent = Bases

Frame_5.Parent = Bases
Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_5.BackgroundTransparency = 1.000
Frame_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_5.BorderSizePixel = 0
Frame_5.Size = UDim2.new(0, 270, 0, 284)

Alpha_21.Name = "Alpha"
Alpha_21.Parent = Frame_5
Alpha_21.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
Alpha_21.BorderColor3 = Color3.fromRGB(0, 0, 0)
Alpha_21.BorderSizePixel = 0
Alpha_21.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Alpha_21.Size = UDim2.new(0, 80, 0, 30)
Alpha_21.ZIndex = 502
Alpha_21.Font = Enum.Font.SourceSans
Alpha_21.Text = "Alpha"
Alpha_21.TextColor3 = Color3.fromRGB(255, 255, 255)
Alpha_21.TextScaled = true
Alpha_21.TextSize = 14.000
Alpha_21.TextWrapped = true

Alpha_22.CornerRadius = UDim.new(0, 3)
Alpha_22.Name = "Alpha"
Alpha_22.Parent = Alpha_21

Bravo_2.Name = "Bravo"
Bravo_2.Parent = Frame_5
Bravo_2.BackgroundColor3 = Color3.fromRGB(218, 133, 65)
Bravo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bravo_2.BorderSizePixel = 0
Bravo_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Bravo_2.Size = UDim2.new(0, 80, 0, 30)
Bravo_2.ZIndex = 502
Bravo_2.Font = Enum.Font.SourceSans
Bravo_2.Text = "Bravo"
Bravo_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Bravo_2.TextScaled = true
Bravo_2.TextSize = 14.000
Bravo_2.TextWrapped = true

Alpha_23.CornerRadius = UDim.new(0, 3)
Alpha_23.Name = "Alpha"
Alpha_23.Parent = Bravo_2

Charlie_2.Name = "Charlie"
Charlie_2.Parent = Frame_5
Charlie_2.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
Charlie_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Charlie_2.BorderSizePixel = 0
Charlie_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Charlie_2.Size = UDim2.new(0, 80, 0, 30)
Charlie_2.ZIndex = 502
Charlie_2.Font = Enum.Font.SourceSans
Charlie_2.Text = "Charlie"
Charlie_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Charlie_2.TextScaled = true
Charlie_2.TextSize = 14.000
Charlie_2.TextWrapped = true

Alpha_24.CornerRadius = UDim.new(0, 3)
Alpha_24.Name = "Alpha"
Alpha_24.Parent = Charlie_2

Delta_2.Name = "Delta"
Delta_2.Parent = Frame_5
Delta_2.BackgroundColor3 = Color3.fromRGB(75, 151, 75)
Delta_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Delta_2.BorderSizePixel = 0
Delta_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Delta_2.Size = UDim2.new(0, 80, 0, 30)
Delta_2.ZIndex = 502
Delta_2.Font = Enum.Font.SourceSans
Delta_2.Text = "Delta"
Delta_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Delta_2.TextScaled = true
Delta_2.TextSize = 14.000
Delta_2.TextWrapped = true

Alpha_25.CornerRadius = UDim.new(0, 3)
Alpha_25.Name = "Alpha"
Alpha_25.Parent = Delta_2

Echo_2.Name = "Echo"
Echo_2.Parent = Frame_5
Echo_2.BackgroundColor3 = Color3.fromRGB(39, 70, 45)
Echo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Echo_2.BorderSizePixel = 0
Echo_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Echo_2.Size = UDim2.new(0, 80, 0, 30)
Echo_2.ZIndex = 502
Echo_2.Font = Enum.Font.SourceSans
Echo_2.Text = "Echo"
Echo_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Echo_2.TextScaled = true
Echo_2.TextSize = 14.000
Echo_2.TextWrapped = true

Alpha_26.CornerRadius = UDim.new(0, 3)
Alpha_26.Name = "Alpha"
Alpha_26.Parent = Echo_2

Foxtrot_2.Name = "Foxtrot"
Foxtrot_2.Parent = Frame_5
Foxtrot_2.BackgroundColor3 = Color3.fromRGB(18, 238, 212)
Foxtrot_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Foxtrot_2.BorderSizePixel = 0
Foxtrot_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Foxtrot_2.Size = UDim2.new(0, 80, 0, 30)
Foxtrot_2.ZIndex = 502
Foxtrot_2.Font = Enum.Font.SourceSans
Foxtrot_2.Text = "Foxtrot"
Foxtrot_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Foxtrot_2.TextScaled = true
Foxtrot_2.TextSize = 14.000
Foxtrot_2.TextWrapped = true

Alpha_27.CornerRadius = UDim.new(0, 3)
Alpha_27.Name = "Alpha"
Alpha_27.Parent = Foxtrot_2

Golf_2.Name = "Golf"
Golf_2.Parent = Frame_5
Golf_2.BackgroundColor3 = Color3.fromRGB(13, 105, 172)
Golf_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Golf_2.BorderSizePixel = 0
Golf_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Golf_2.Size = UDim2.new(0, 80, 0, 30)
Golf_2.ZIndex = 502
Golf_2.Font = Enum.Font.SourceSans
Golf_2.Text = "Golf"
Golf_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Golf_2.TextScaled = true
Golf_2.TextSize = 14.000
Golf_2.TextWrapped = true

Alpha_28.CornerRadius = UDim.new(0, 3)
Alpha_28.Name = "Alpha"
Alpha_28.Parent = Golf_2

Hotel_2.Name = "Hotel"
Hotel_2.Parent = Frame_5
Hotel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
Hotel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Hotel_2.BorderSizePixel = 0
Hotel_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Hotel_2.Size = UDim2.new(0, 80, 0, 30)
Hotel_2.ZIndex = 502
Hotel_2.Font = Enum.Font.SourceSans
Hotel_2.Text = "Hotel"
Hotel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Hotel_2.TextScaled = true
Hotel_2.TextSize = 14.000
Hotel_2.TextWrapped = true

Alpha_29.CornerRadius = UDim.new(0, 3)
Alpha_29.Name = "Alpha"
Alpha_29.Parent = Hotel_2

Juliet_2.Name = "Juliet"
Juliet_2.Parent = Frame_5
Juliet_2.BackgroundColor3 = Color3.fromRGB(0, 32, 96)
Juliet_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Juliet_2.BorderSizePixel = 0
Juliet_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Juliet_2.Size = UDim2.new(0, 80, 0, 30)
Juliet_2.ZIndex = 502
Juliet_2.Font = Enum.Font.SourceSans
Juliet_2.Text = "Juliet"
Juliet_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Juliet_2.TextScaled = true
Juliet_2.TextSize = 14.000
Juliet_2.TextWrapped = true

Alpha_30.CornerRadius = UDim.new(0, 3)
Alpha_30.Name = "Alpha"
Alpha_30.Parent = Juliet_2

Kilo_2.Name = "Kilo"
Kilo_2.Parent = Frame_5
Kilo_2.BackgroundColor3 = Color3.fromRGB(98, 37, 209)
Kilo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Kilo_2.BorderSizePixel = 0
Kilo_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Kilo_2.Size = UDim2.new(0, 80, 0, 30)
Kilo_2.ZIndex = 502
Kilo_2.Font = Enum.Font.SourceSans
Kilo_2.Text = "Kilo"
Kilo_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Kilo_2.TextScaled = true
Kilo_2.TextSize = 14.000
Kilo_2.TextWrapped = true

Alpha_31.CornerRadius = UDim.new(0, 3)
Alpha_31.Name = "Alpha"
Alpha_31.Parent = Kilo_2

Lima_2.Name = "Lima"
Lima_2.Parent = Frame_5
Lima_2.BackgroundColor3 = Color3.fromRGB(180, 128, 255)
Lima_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Lima_2.BorderSizePixel = 0
Lima_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Lima_2.Size = UDim2.new(0, 80, 0, 30)
Lima_2.ZIndex = 502
Lima_2.Font = Enum.Font.SourceSans
Lima_2.Text = "Lima"
Lima_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Lima_2.TextScaled = true
Lima_2.TextSize = 14.000
Lima_2.TextWrapped = true

Alpha_32.CornerRadius = UDim.new(0, 3)
Alpha_32.Name = "Alpha"
Alpha_32.Parent = Lima_2

Omega_2.Name = "Omega"
Omega_2.Parent = Frame_5
Omega_2.BackgroundColor3 = Color3.fromRGB(255, 0, 191)
Omega_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Omega_2.BorderSizePixel = 0
Omega_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Omega_2.Size = UDim2.new(0, 80, 0, 30)
Omega_2.ZIndex = 502
Omega_2.Font = Enum.Font.SourceSans
Omega_2.Text = "Omega"
Omega_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Omega_2.TextScaled = true
Omega_2.TextSize = 14.000
Omega_2.TextWrapped = true

Alpha_33.CornerRadius = UDim.new(0, 3)
Alpha_33.Name = "Alpha"
Alpha_33.Parent = Omega_2

Romeo_2.Name = "Romeo"
Romeo_2.Parent = Frame_5
Romeo_2.BackgroundColor3 = Color3.fromRGB(175, 148, 131)
Romeo_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Romeo_2.BorderSizePixel = 0
Romeo_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Romeo_2.Size = UDim2.new(0, 80, 0, 30)
Romeo_2.ZIndex = 502
Romeo_2.Font = Enum.Font.SourceSans
Romeo_2.Text = "Romeo"
Romeo_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Romeo_2.TextScaled = true
Romeo_2.TextSize = 14.000
Romeo_2.TextWrapped = true

Alpha_34.CornerRadius = UDim.new(0, 3)
Alpha_34.Name = "Alpha"
Alpha_34.Parent = Romeo_2

Sierra_2.Name = "Sierra"
Sierra_2.Parent = Frame_5
Sierra_2.BackgroundColor3 = Color3.fromRGB(150, 103, 102)
Sierra_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Sierra_2.BorderSizePixel = 0
Sierra_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Sierra_2.Size = UDim2.new(0, 80, 0, 30)
Sierra_2.ZIndex = 502
Sierra_2.Font = Enum.Font.SourceSans
Sierra_2.Text = "Sierra"
Sierra_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Sierra_2.TextScaled = true
Sierra_2.TextSize = 14.000
Sierra_2.TextWrapped = true

Alpha_35.CornerRadius = UDim.new(0, 3)
Alpha_35.Name = "Alpha"
Alpha_35.Parent = Sierra_2

Tango_2.Name = "Tango"
Tango_2.Parent = Frame_5
Tango_2.BackgroundColor3 = Color3.fromRGB(86, 66, 54)
Tango_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Tango_2.BorderSizePixel = 0
Tango_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Tango_2.Size = UDim2.new(0, 80, 0, 30)
Tango_2.ZIndex = 502
Tango_2.Font = Enum.Font.SourceSans
Tango_2.Text = "Tango"
Tango_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Tango_2.TextScaled = true
Tango_2.TextSize = 14.000
Tango_2.TextWrapped = true

Alpha_36.CornerRadius = UDim.new(0, 3)
Alpha_36.Name = "Alpha"
Alpha_36.Parent = Tango_2

Victor_2.Name = "Victor"
Victor_2.Parent = Frame_5
Victor_2.BackgroundColor3 = Color3.fromRGB(231, 231, 236)
Victor_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Victor_2.BorderSizePixel = 0
Victor_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Victor_2.Size = UDim2.new(0, 80, 0, 30)
Victor_2.ZIndex = 502
Victor_2.Font = Enum.Font.SourceSans
Victor_2.Text = "Victor"
Victor_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Victor_2.TextScaled = true
Victor_2.TextSize = 14.000
Victor_2.TextWrapped = true

Alpha_37.CornerRadius = UDim.new(0, 3)
Alpha_37.Name = "Alpha"
Alpha_37.Parent = Victor_2

Yankee_2.Name = "Yankee"
Yankee_2.Parent = Frame_5
Yankee_2.BackgroundColor3 = Color3.fromRGB(116, 134, 157)
Yankee_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Yankee_2.BorderSizePixel = 0
Yankee_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Yankee_2.Size = UDim2.new(0, 80, 0, 30)
Yankee_2.ZIndex = 502
Yankee_2.Font = Enum.Font.SourceSans
Yankee_2.Text = "Yankee"
Yankee_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Yankee_2.TextScaled = true
Yankee_2.TextSize = 14.000
Yankee_2.TextWrapped = true

Alpha_38.CornerRadius = UDim.new(0, 3)
Alpha_38.Name = "Alpha"
Alpha_38.Parent = Yankee_2

Zulu_2.Name = "Zulu"
Zulu_2.Parent = Frame_5
Zulu_2.BackgroundColor3 = Color3.fromRGB(91, 93, 105)
Zulu_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Zulu_2.BorderSizePixel = 0
Zulu_2.Position = UDim2.new(0.206666663, 0, 0.238709673, 0)
Zulu_2.Size = UDim2.new(0, 80, 0, 30)
Zulu_2.ZIndex = 502
Zulu_2.Font = Enum.Font.SourceSans
Zulu_2.Text = "Zulu"
Zulu_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Zulu_2.TextScaled = true
Zulu_2.TextSize = 14.000
Zulu_2.TextWrapped = true

Alpha_39.CornerRadius = UDim.new(0, 3)
Alpha_39.Name = "Alpha"
Alpha_39.Parent = Zulu_2

UIGridLayout_6.Parent = Frame_5
UIGridLayout_6.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_6.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_6.VerticalAlignment = Enum.VerticalAlignment.Bottom
UIGridLayout_6.CellPadding = UDim2.new(0, 7, 0, 7)
UIGridLayout_6.CellSize = UDim2.new(0, 80, 0, 30)

UIPadding_9.Parent = Frame_5
UIPadding_9.PaddingBottom = UDim.new(0, 30)
UIPadding_9.PaddingLeft = UDim.new(0, 10)
UIPadding_9.PaddingRight = UDim.new(0, 5)
UIPadding_9.PaddingTop = UDim.new(0, 25)

CloseBases.Name = "Close Bases"
CloseBases.Parent = Bases
CloseBases.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
CloseBases.BorderColor3 = Color3.fromRGB(0, 0, 0)
CloseBases.BorderSizePixel = 0
CloseBases.Position = UDim2.new(0.281765401, 0, 0.84773612, 0)
CloseBases.Size = UDim2.new(0, 110, 0, 30)
CloseBases.ZIndex = 502
CloseBases.Font = Enum.Font.SourceSans
CloseBases.Text = "Close"
CloseBases.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBases.TextScaled = true
CloseBases.TextSize = 14.000
CloseBases.TextWrapped = true

Alpha_40.CornerRadius = UDim.new(0, 3)
Alpha_40.Name = "Alpha"
Alpha_40.Parent = CloseBases

TextLabel.Parent = Bases
TextLabel.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0.230000004, 0, 0, 5)
TextLabel.Size = UDim2.new(0, 150, 0, 30)
TextLabel.ZIndex = 505
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Teleport to"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

Alpha_41.CornerRadius = UDim.new(0, 3)
Alpha_41.Name = "Alpha"
Alpha_41.Parent = TextLabel

Players.Name = "Players"
Players.Parent = WarTycoonbySayke
Players.BackgroundColor3 = Color3.fromRGB(24, 24, 24)
Players.BorderColor3 = Color3.fromRGB(0, 0, 0)
Players.BorderSizePixel = 0
Players.Position = UDim2.new(0.358123213, 0, 0.0642092749, 0)
Players.Size = UDim2.new(0, 487, 0, 387)
Players.Visible = false
Players.ZIndex = 501

UICorner_32.CornerRadius = UDim.new(0, 3)
UICorner_32.Parent = Players

Frame_6.Parent = Players
Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame_6.BackgroundTransparency = 1.000
Frame_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_6.BorderSizePixel = 0
Frame_6.Size = UDim2.new(0, 487, 0, 387)

UIGridLayout_7.Parent = Frame_6
UIGridLayout_7.FillDirection = Enum.FillDirection.Vertical
UIGridLayout_7.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout_7.CellPadding = UDim2.new(0, 5, 0, 15)
UIGridLayout_7.CellSize = UDim2.new(0, 150, 0, 40)
UIGridLayout_7.FillDirectionMaxCells = 5

UIPadding_10.Parent = Frame_6
UIPadding_10.PaddingLeft = UDim.new(0, 15)
UIPadding_10.PaddingTop = UDim.new(0, 15)

Teleportto.Name = "Teleport to"
Teleportto.Parent = Frame_6
Teleportto.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
Teleportto.BorderColor3 = Color3.fromRGB(0, 0, 0)
Teleportto.BorderSizePixel = 0
Teleportto.Size = UDim2.new(0, 150, 0, 40)
Teleportto.ZIndex = 503
Teleportto.Font = Enum.Font.SourceSans
Teleportto.Text = "Player Name"
Teleportto.TextColor3 = Color3.fromRGB(255, 255, 255)
Teleportto.TextScaled = true
Teleportto.TextSize = 14.000
Teleportto.TextWrapped = true

Alpha_42.CornerRadius = UDim.new(0, 3)
Alpha_42.Name = "Alpha"
Alpha_42.Parent = Teleportto

ClosePlayers.Name = "Close Players"
ClosePlayers.Parent = Players
ClosePlayers.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
ClosePlayers.BorderColor3 = Color3.fromRGB(0, 0, 0)
ClosePlayers.BorderSizePixel = 0
ClosePlayers.Position = UDim2.new(0.318275154, 0, 0.870801032, 0)
ClosePlayers.Size = UDim2.new(0, 150, 0, 30)
ClosePlayers.ZIndex = 550
ClosePlayers.Font = Enum.Font.SourceSans
ClosePlayers.Text = "Close"
ClosePlayers.TextColor3 = Color3.fromRGB(255, 255, 255)
ClosePlayers.TextScaled = true
ClosePlayers.TextSize = 14.000
ClosePlayers.TextWrapped = true

Alpha_43.CornerRadius = UDim.new(0, 3)
Alpha_43.Name = "Alpha"
Alpha_43.Parent = ClosePlayers

-- Scripts:

local function WTUI_fake_script() -- WarTycoonbySayke.LocalScript 
	local script = Instance.new('LocalScript', WarTycoonbySayke)

	local delta, dragInput
	local function update(input, gui:Frame, dragStart, startPos)
		delta = input.Position - dragStart
		gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), nil, nil, 0.3, true)
		delta = nil    
	end
	
	local function makeDraggable(gui)
		local dragging, dragStart, startPos, delta
	
		gui.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				dragging = true
				dragStart = input.Position
				startPos = gui.Position
	
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)
	
		gui.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
	
		game.UserInputService.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				update(input, gui, dragStart, startPos)
			end
		end)
	end
	
	makeDraggable(script.Parent.MainFrame)
end
coroutine.wrap(WTUI_fake_script)()
local function CEXTBFH_fake_script() -- WarTycoonbySayke.LocalScript 
	local script = Instance.new('LocalScript', WarTycoonbySayke)

	game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
		if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
		script.Parent.Enabled = not script.Parent.Enabled
	end)
end
coroutine.wrap(CEXTBFH_fake_script)()
local function GOFCGX_fake_script() -- WarTycoonbySayke.LocalScript 
	local script = Instance.new('LocalScript', WarTycoonbySayke)

	script.Parent.Parent = game.CoreGui
end
coroutine.wrap(GOFCGX_fake_script)()
local function HJAOB_fake_script() -- Guns.LocalScript 
	local script = Instance.new('LocalScript', Guns)

	local plr = game.Players.LocalPlayer
	local tycoons = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons")
	
	-- Функция получения оружия
	local function getWeapon(weaponName)
		local char = plr.Character
		if not char or not char:FindFirstChild("HumanoidRootPart") then return end
	
		local pastpos = char:GetPivot()
		local target = nil
	
		-- Перебираем все тайкуны на сервере
		for _, tycoon in ipairs(tycoons:GetChildren()) do
			local purchasedFolder = tycoon:FindFirstChild("PurchasedObjects")
	
			if purchasedFolder then
				-- Ищем гивер ТОЛЬКО внутри купленных объектов этого тайкуна
				for _, v in ipairs(purchasedFolder:GetDescendants()) do
					-- Проверяем совпадение имени или наличие "Giver" в названии
					if v.Name == weaponName or v.Name == weaponName .. " Giver" then
						target = v
						break
					end
				end
			end
			if target then break end -- Если нашли в одном тайкуне, дальше не ищем
		end
	
		if target then
			print("🚀 Лечу за купленным: " .. weaponName)
			char:PivotTo(target:GetPivot())
			task.wait(0.5)
	
			-- Ищем ProximityPrompt внутри найденного объекта
			local prompt = target:IsA("ProximityPrompt") and target or target:FindFirstChildWhichIsA("ProximityPrompt", true)
	
			if prompt then
				fireproximityprompt(prompt) -- В эксплоитах обычно не нужно менять HoldDuration, fire делает всё за тебя
			end
	
			task.wait(0.6)
			char:PivotTo(pastpos)
		else
			print("❌ " .. weaponName .. " не куплено или не найдено в PurchasedObjects")
		end
	end
	
	-- Привязка к кнопкам (используем GetDescendants, чтобы найти кнопки во всех вкладках)
	for _, object in ipairs(script.Parent:GetDescendants()) do
		if object:IsA("TextButton") then
			object.MouseButton1Click:Connect(function()
				-- Берем текст кнопки (например, "AK47")
				getWeapon(object.Text)
			end)
		end
	end
end
coroutine.wrap(HJAOB_fake_script)()
local function FVHEC_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(FVHEC_fake_script)()
local function OQDOW_fake_script() -- Frame_2.LocalScript 
	local script = Instance.new('LocalScript', Frame_2)

	local mainFrame = script.Parent
	local buttonFrame = mainFrame:WaitForChild("ButtonFrame")
	local functionFrame = mainFrame:WaitForChild("FunctonFrame")
	
	-- Функция для переключения вкладок
	local function openTab(tabName)
		-- 1. Сначала скрываем ВСЕ фреймы в FunctonFrame
		for _, frame in ipairs(functionFrame:GetChildren()) do
			if frame:IsA("Frame") or frame:IsA("ScrollingFrame") then
				frame.Visible = false
			end
		end
	
		-- 2. Открываем только тот, который нам нужен
		local targetFrame = functionFrame:FindFirstChild(tabName)
		if targetFrame then
			targetFrame.Visible = true
			print("📂 Открыт раздел: " .. tabName)
		else
			warn("⚠️ Раздел с названием '" .. tabName .. "' не найден в FunctonFrame!")
		end
	end
	
	-- Автоматически привязываем логику ко всем кнопкам в ButtonFrame
	for _, button in ipairs(buttonFrame:GetChildren()) do
		if button:IsA("TextButton") then
			button.MouseButton1Click:Connect(function()
				-- Скрипт берет ИМЯ кнопки и ищет ФРЕЙМ с таким же именем
				openTab(button.Name)
			end)
		end
	end
	
	-- Опционально: закрыть всё при старте, кроме первой вкладки
	-- openTab("Teleport")
end
coroutine.wrap(OQDOW_fake_script)()
local function SIFAH_fake_script() -- Frame_3.LocalScript 
	local script = Instance.new('LocalScript', Frame_3)

	local plr = game.Players.LocalPlayer
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local vim = game:GetService("VirtualInputManager") 
	local remote = ReplicatedStorage:WaitForChild("RocketSystem"):WaitForChild("Events"):WaitForChild("RocketHit")
	
	-- 1. ФУНКЦИЯ ПОДГОТОВКИ РПГ
	local function getRPG()
		local char = plr.Character
		if not char then return nil, nil end
	
		local hum = char:FindFirstChild("Humanoid")
		-- Запоминаем текущее оружие, чтобы вернуть его потом
		local currentTool = char:FindFirstChildOfClass("Tool")
		if currentTool and currentTool.Name == "RPG" then currentTool = nil end
	
		local rpg = char:FindFirstChild("RPG") or plr.Backpack:FindFirstChild("RPG")
	
		if rpg and hum then
			if rpg.Parent ~= char then
				hum:EquipTool(rpg)
				task.wait(0.3)
			end
			return rpg, currentTool
		end
		return nil, nil
	end
	
	-- 2. ОСНОВНАЯ ФУНКЦИЯ АТАКИ
	local function attackBase(baseName)
		-- ШАГ 0: Сначала проверяем щит, не трогая инвентарь
		local tycoons = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons")
		local base = tycoons:FindFirstChild(baseName)
		if not base then 
			warn("База " .. baseName .. " не найдена!")
			return 
		end
	
		local purchasedObjects = base:FindFirstChild("PurchasedObjects")
		local baseShield = purchasedObjects and purchasedObjects:FindFirstChild("Base Shield")
		local shieldFolder = baseShield and baseShield:FindFirstChild("Shield")
		local targetShield = shieldFolder and shieldFolder:FindFirstChild("Shield4")
	
		-- Константа цвета щита новичка
		local NEWBIE_COLOR = Color3.fromRGB(248, 248, 248)
	
		if targetShield then
			-- Если цвет совпадает — ВЫХОДИМ СРАЗУ
			if targetShield.Color == NEWBIE_COLOR then
				print("🛡️ У базы " .. baseName .. " щит новичка (248,248,248). Действие отменено.")
				return 
			end
		else
			print("❌ Щит на базе " .. baseName .. " не обнаружен.")
			return
		end
	
		-- ШАГ 1: Если проверка прошла, готовим РПГ
		local rpg, previousTool = getRPG()
		if not rpg then 
			print("Ошибка: РПГ не найдено в инвентаре!")
			return 
		end
	
		print("🚀 Начинаю штурм: " .. baseName)
	
		-- Виртуальный клик для активации инструмента
		vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
		task.wait(0.05)
		vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
	
		task.spawn(function()
			-- ШАГ 2: Цикл обстрела через RemoteEvent
			-- Условие: щит существует, он не прозрачный и он НЕ стал серым
			while targetShield and targetShield.Parent and targetShield.Transparency < 1 and targetShield.Color ~= NEWBIE_COLOR do
				rpg:Activate()
				local args = {{
					Normal = Vector3.yAxis,
					Player = plr,
					Label = plr.Name .. "_Attack_" .. math.random(1, 9999),
					HitPart = targetShield,
					Vehicle = rpg,
					Position = targetShield.Position,
					Weapon = rpg
				}}
				remote:FireServer(unpack(args))
				task.wait(0.1) -- Скорость стрельбы
			end
	
			-- ШАГ 3: ФИНАЛЬНЫЙ БЛОК (Возврат камеры и оружия)
			local char = plr.Character
			if char and char:FindFirstChild("Humanoid") then
				local camera = workspace.CurrentCamera
				local lastDistance = (camera.CFrame.Position - camera.Focus.Position).Magnitude
				local targetDist = lastDistance > 5 and lastDistance or 20
	
				-- Убираем РПГ
				char.Humanoid:UnequipTools()
				task.wait(0.1)
	
				-- Возвращаем то, что было в руках до этого
				if previousTool and previousTool.Parent == plr.Backpack then
					char.Humanoid:EquipTool(previousTool)
					print("🔄 Вернул оружие: " .. previousTool.Name)
				end
	
				-- Фикс камеры (Camera Zoom Fix)
				plr.CameraMaxZoomDistance = targetDist
				plr.CameraMinZoomDistance = targetDist
				task.wait(0.2)
				plr.CameraMaxZoomDistance = 128
				plr.CameraMinZoomDistance = 0.5
			end
		end)
	end
	
	-- 3. ПРИВЯЗКА К КНОПКАМ
	-- Скрипт проходит по всем кнопкам во фрейме и берет их Name как название базы
	for _, button in ipairs(script.Parent:GetChildren()) do
		if button:IsA("TextButton") then
			button.MouseButton1Click:Connect(function()
				attackBase(button.Name)
			end)
		end
	end
end
coroutine.wrap(SIFAH_fake_script)()
local function UAECIUE_fake_script() -- Teleporttoguns.LocalScript 
	local script = Instance.new('LocalScript', Teleporttoguns)

	local button = script.Parent
	-- Находим самый верхний контейнер (ScreenGui), где лежат и Guns, и MainFrame
	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local menu = screenGui:WaitForChild("Guns")
	
	button.MouseButton1Click:Connect(function()
		-- Просто делаем панель видимой
		menu.Visible = true
	
	end)
end
coroutine.wrap(UAECIUE_fake_script)()
local function EDNNTHV_fake_script() -- TeleporttoBases.LocalScript 
	local script = Instance.new('LocalScript', TeleporttoBases)

	local button = script.Parent
	-- Находим самый верхний контейнер (ScreenGui), где лежат и Guns, и MainFrame
	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local menu = screenGui:WaitForChild("Bases")
	
	button.MouseButton1Click:Connect(function()
		-- Просто делаем панель видимой
		menu.Visible = true
	
	end)
end
coroutine.wrap(EDNNTHV_fake_script)()
local function UEHMY_fake_script() -- TeleporttoPlayers.LocalScript 
	local script = Instance.new('LocalScript', TeleporttoPlayers)

	local button = script.Parent
	-- Находим самый верхний контейнер (ScreenGui), где лежат и Guns, и MainFrame
	local screenGui = button:FindFirstAncestorOfClass("ScreenGui")
	local menu = screenGui:WaitForChild("Players")
	
	button.MouseButton1Click:Connect(function()
		-- Просто делаем панель видимой
		menu.Visible = true
	
	end)
end
coroutine.wrap(UEHMY_fake_script)()
local function DOSE_fake_script() -- Frame_5.LocalScript 
	local script = Instance.new('LocalScript', Frame_5)

	local plr = game.Players.LocalPlayer
	
	-- Твоя база данных
	local Base = {
		Alpha = CFrame.new(-962.127747, 64.9872894, -4557.54932),
		Bravo = CFrame.new(-101.98233, 66.9996719, -4613.85986),
		Charlie = CFrame.new(939.624817, 66.9229889, -4353.25732),
		Delta = CFrame.new(1931.60559, 67.0836105, -3695.13916),
		Echo = CFrame.new(2510.25098, 67.8479614, -2768.38477),
		Foxtrot = CFrame.new(2791.06079, 66.1241379, -1633.56409),
		Golf = CFrame.new(3127.09888, 65.4874039, -431.153748),
		Hotel = CFrame.new(3017.87402, 67.0984497, 704.045593),
		Juliet = CFrame.new(2645.87036, 67.9649048, 1905.16345),
		Kilo = CFrame.new(2268.46094, 65.4831696, 2930.0376),
		Lima = CFrame.new(677.821533, 66.7408295, 3477.41333),
		Omega = CFrame.new(-464.778748, 65.8235855, 3688.26904),
		Romeo = CFrame.new(-1535.10571, 65.2430344, 3445.16919),
		Sierra = CFrame.new(-2360.58228, 66.1034927, 2196.28833),
		Tango = CFrame.new(-2814.26587, 66.5057297, 1174.16382),
		Victor = CFrame.new(-3388.17798, 69.9477234, 187.368713),
		Yankee = CFrame.new(-3612.96533, 65.4565277, -550.324463),
		Zulu = CFrame.new(-3652.28784, 65.9617844, -1489.39502)
	}
	
	-- Функция телепортации
	local function tpToBase(baseName)
		local char = plr.Character
		if char and char:FindFirstChild("HumanoidRootPart") then
			local targetCFrame = Base[baseName] -- Ищем CFrame по имени в таблице
	
			if targetCFrame then
				char:PivotTo(targetCFrame)
				print("🚀 Телепортация на базу: " .. baseName)
			else
				print("❌ База '" .. baseName .. "' не найдена в таблице!")
			end
		end
	end
	
	-- Автоматическая привязка ко всем кнопкам во фрейме
	for _, button in ipairs(script.Parent:GetChildren()) do
		if button:IsA("TextButton") then
			button.MouseButton1Click:Connect(function()
				-- Мы берем ИМЯ кнопки (button.Name) и используем его как ключ для таблицы
				tpToBase(button.Name)
			end)
		end
	end
end
coroutine.wrap(DOSE_fake_script)()
local function YRFQ_fake_script() -- CloseBases.LocalScript 
	local script = Instance.new('LocalScript', CloseBases)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(YRFQ_fake_script)()
local function WBCW_fake_script() -- Frame_6.LocalScript 
	local script = Instance.new('LocalScript', Frame_6)

	local Players = game:GetService("Players")
	local container = script.Parent 
	local template = container:WaitForChild("Teleport to") 
	
	-- Скрываем шаблон
	template.Visible = false
	
	-- Функция для создания кнопки игрока
	local function addPlayerButton(player)
		if player == Players.LocalPlayer then return end
	
		-- Копируем шаблон
		local newButton = template:Clone()
	
		-- Ставим техническое имя объекту (для поиска при удалении)
		newButton.Name = player.Name 
	
		-- СТАВИМ ТЕКСТ: Имя игрока (Display Name)
		newButton.Text = player.DisplayName
	
		newButton.Visible = true
		newButton.Parent = container
	
		-- Логика телепортации
		newButton.MouseButton1Click:Connect(function()
			local char = Players.LocalPlayer.Character
			local targetChar = player.Character
	
			if char and targetChar and targetChar:FindFirstChild("HumanoidRootPart") then
				print("🚀 Телепортация к " .. player.DisplayName)
				char:PivotTo(targetChar:GetPivot())
			else
				warn("❌ Не удалось телепортироваться к " .. player.Name)
			end
		end)
	end
	
	-- Удаление при выходе
	local function removePlayerButton(player)
		local button = container:FindFirstChild(player.Name)
		if button then
			button:Destroy()
		end
	end
	
	-- 1. Кто уже тут
	for _, player in ipairs(Players:GetPlayers()) do
		addPlayerButton(player)
	end
	
	-- 2. Новые зашедшие
	Players.PlayerAdded:Connect(addPlayerButton)
	
	-- 3. Вышедшие
	Players.PlayerRemoving:Connect(removePlayerButton)
end
coroutine.wrap(WBCW_fake_script)()
local function NKECJ_fake_script() -- ClosePlayers.LocalScript 
	local script = Instance.new('LocalScript', ClosePlayers)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Visible = false
	end)
end
coroutine.wrap(NKECJ_fake_script)()
