-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.1

--

-- Create objects
local parent = game:GetService("CoreGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- Brookhaven Hub
    ["Instance1"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance2"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance3"] = Instance.new("Frame"); -- Frame
    ["Instance4"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance5"] = Instance.new("TextButton"); -- Sound
    ["Instance6"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance7"] = Instance.new("UICorner"); -- UICorner
    ["Instance8"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance9"] = Instance.new("TextButton"); -- Dex
    ["Instance10"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance11"] = Instance.new("UICorner"); -- UICorner
    ["Instance12"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance13"] = Instance.new("TextButton"); -- Invis
    ["Instance14"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance15"] = Instance.new("UICorner"); -- UICorner
    ["Instance16"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance17"] = Instance.new("TextButton"); -- Infinity Yeild
    ["Instance18"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance19"] = Instance.new("UICorner"); -- UICorner
    ["Instance20"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance21"] = Instance.new("Frame"); -- Frame
    ["Instance22"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance23"] = Instance.new("Frame"); -- Frame
    ["Instance24"] = Instance.new("TextButton"); -- Alien
    ["Instance25"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance26"] = Instance.new("UICorner"); -- UICorner
    ["Instance27"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance28"] = Instance.new("TextButton"); -- Black
    ["Instance29"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance30"] = Instance.new("UICorner"); -- UICorner
    ["Instance31"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance32"] = Instance.new("UIAspectRatioConstraint"); -- UIAspectRatioConstraint
    ["Instance33"] = Instance.new("Frame"); -- Frame
    ["Instance34"] = Instance.new("TextButton"); -- Random Name
    ["Instance35"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance36"] = Instance.new("UICorner"); -- UICorner
    ["Instance37"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance38"] = Instance.new("TextButton"); -- Rainbow Name
    ["Instance39"] = Instance.new("UIStroke"); -- UIStroke
    ["Instance40"] = Instance.new("UICorner"); -- UICorner
    ["Instance41"] = Instance.new("LocalScript"); -- LocalScript
};

do -- Set properties
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["Name"] = "Brookhaven Hub";
    objects["Instance0"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    objects["Instance1"]["Parent"] = objects["Instance0"];

    objects["Instance2"]["Parent"] = objects["Instance0"];

    objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance3"]["Position"] = UDim2.new(0.394881874, 0, 0.313398182, 0);
    objects["Instance3"]["Parent"] = objects["Instance0"];
    objects["Instance3"]["Size"] = UDim2.new(0.209784061, 0, 0.29502371, 0);
    objects["Instance3"]["BorderSizePixel"] = 2;
    objects["Instance3"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance4"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance4"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance4"]["Parent"] = objects["Instance3"];
    objects["Instance4"]["Text"] = "Raid Script";
    objects["Instance4"]["TextSize"] = 14;
    objects["Instance4"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["Size"] = UDim2.new(1, 0, 0.200000033, 0);
    objects["Instance4"]["BackgroundTransparency"] = 1;
    objects["Instance4"]["TextWrapped"] = true;
    objects["Instance4"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance4"]["TextScaled"] = true;
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["TextWrap"] = true;

    objects["Instance5"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance5"]["TextWrap"] = true;
    objects["Instance5"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance5"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance5"]["Text"] = "Sound";
    objects["Instance5"]["TextSize"] = 14;
    objects["Instance5"]["TextScaled"] = true;
    objects["Instance5"]["Parent"] = objects["Instance3"];
    objects["Instance5"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance5"]["Name"] = "Sound";
    objects["Instance5"]["Position"] = UDim2.new(0.268431008, 0, 0.276785702, 0);
    objects["Instance5"]["TextWrapped"] = true;
    objects["Instance5"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance5"]["BorderSizePixel"] = 0;
    objects["Instance5"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance6"]["Parent"] = objects["Instance5"];
    objects["Instance6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance6"]["Thickness"] = 1.5;
    objects["Instance6"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance7"]["Parent"] = objects["Instance5"];
    objects["Instance7"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance8"]["Parent"] = objects["Instance5"];

    objects["Instance9"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance9"]["TextWrap"] = true;
    objects["Instance9"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance9"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance9"]["Text"] = "Dex";
    objects["Instance9"]["TextSize"] = 14;
    objects["Instance9"]["TextScaled"] = true;
    objects["Instance9"]["Parent"] = objects["Instance3"];
    objects["Instance9"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance9"]["Name"] = "Dex";
    objects["Instance9"]["Position"] = UDim2.new(0.725897908, 0, 0.276785702, 0);
    objects["Instance9"]["TextWrapped"] = true;
    objects["Instance9"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance9"]["BorderSizePixel"] = 0;
    objects["Instance9"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance10"]["Parent"] = objects["Instance9"];
    objects["Instance10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance10"]["Thickness"] = 1.5;
    objects["Instance10"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance11"]["Parent"] = objects["Instance9"];
    objects["Instance11"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance12"]["Parent"] = objects["Instance9"];

    objects["Instance13"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance13"]["TextWrap"] = true;
    objects["Instance13"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance13"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["Text"] = "Invis ";
    objects["Instance13"]["TextSize"] = 14;
    objects["Instance13"]["TextScaled"] = true;
    objects["Instance13"]["Parent"] = objects["Instance3"];
    objects["Instance13"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance13"]["Name"] = "Invis";
    objects["Instance13"]["Position"] = UDim2.new(0.499054819, 0, 0.276785702, 0);
    objects["Instance13"]["TextWrapped"] = true;
    objects["Instance13"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance13"]["BorderSizePixel"] = 0;
    objects["Instance13"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance14"]["Parent"] = objects["Instance13"];
    objects["Instance14"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance14"]["Thickness"] = 1.5;
    objects["Instance14"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance15"]["Parent"] = objects["Instance13"];
    objects["Instance15"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance16"]["Parent"] = objects["Instance13"];

    objects["Instance17"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance17"]["TextWrap"] = true;
    objects["Instance17"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance17"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["Text"] = "Infinity Yeild";
    objects["Instance17"]["TextSize"] = 14;
    objects["Instance17"]["TextScaled"] = true;
    objects["Instance17"]["Parent"] = objects["Instance3"];
    objects["Instance17"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance17"]["Name"] = "Infinity Yeild";
    objects["Instance17"]["Position"] = UDim2.new(0.0415879004, 0, 0.276785702, 0);
    objects["Instance17"]["TextWrapped"] = true;
    objects["Instance17"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance17"]["BorderSizePixel"] = 0;
    objects["Instance17"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance18"]["Parent"] = objects["Instance17"];
    objects["Instance18"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance18"]["Thickness"] = 1.5;
    objects["Instance18"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance19"]["Parent"] = objects["Instance17"];
    objects["Instance19"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance20"]["Parent"] = objects["Instance17"];

    objects["Instance21"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["Position"] = UDim2.new(0, 0, 0.400000006, 5);
    objects["Instance21"]["Parent"] = objects["Instance3"];
    objects["Instance21"]["Size"] = UDim2.new(0.999999762, 0, 0.0077381134, 0);
    objects["Instance21"]["BorderSizePixel"] = 0;
    objects["Instance21"]["BackgroundColor3"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance22"]["Parent"] = objects["Instance3"];
    objects["Instance22"]["Thickness"] = 3;

    objects["Instance23"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["Position"] = UDim2.new(2.3075674e-07, 0, 0.208333328, 0);
    objects["Instance23"]["Parent"] = objects["Instance3"];
    objects["Instance23"]["Size"] = UDim2.new(0.999999762, 0, 0.0077381134, 0);
    objects["Instance23"]["BorderSizePixel"] = 0;
    objects["Instance23"]["BackgroundColor3"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance24"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance24"]["TextWrap"] = true;
    objects["Instance24"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance24"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance24"]["Text"] = "Alien";
    objects["Instance24"]["TextSize"] = 14;
    objects["Instance24"]["TextScaled"] = true;
    objects["Instance24"]["Parent"] = objects["Instance3"];
    objects["Instance24"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance24"]["Name"] = "Alien";
    objects["Instance24"]["Position"] = UDim2.new(0.266070366, 0, 0.481604993, 0);
    objects["Instance24"]["TextWrapped"] = true;
    objects["Instance24"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance24"]["BorderSizePixel"] = 0;
    objects["Instance24"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance25"]["Parent"] = objects["Instance24"];
    objects["Instance25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance25"]["Thickness"] = 1.5;
    objects["Instance25"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance26"]["Parent"] = objects["Instance24"];
    objects["Instance26"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance27"]["Parent"] = objects["Instance24"];

    objects["Instance28"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance28"]["TextWrap"] = true;
    objects["Instance28"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance28"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance28"]["Text"] = "Black";
    objects["Instance28"]["TextSize"] = 14;
    objects["Instance28"]["TextScaled"] = true;
    objects["Instance28"]["Parent"] = objects["Instance3"];
    objects["Instance28"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance28"]["Name"] = "Black";
    objects["Instance28"]["Position"] = UDim2.new(0.496607989, 0, 0.481604993, 0);
    objects["Instance28"]["TextWrapped"] = true;
    objects["Instance28"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance28"]["BorderSizePixel"] = 0;
    objects["Instance28"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance29"]["Parent"] = objects["Instance28"];
    objects["Instance29"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance29"]["Thickness"] = 1.5;
    objects["Instance29"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance30"]["Parent"] = objects["Instance28"];
    objects["Instance30"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance31"]["Parent"] = objects["Instance28"];

    objects["Instance32"]["Parent"] = objects["Instance3"];

    objects["Instance33"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance33"]["Position"] = UDim2.new(0, 0, 0.600000024, 5);
    objects["Instance33"]["Parent"] = objects["Instance3"];
    objects["Instance33"]["Size"] = UDim2.new(0.999999762, 0, 0.0077381134, 0);
    objects["Instance33"]["BorderSizePixel"] = 0;
    objects["Instance33"]["BackgroundColor3"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance34"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance34"]["TextWrap"] = true;
    objects["Instance34"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance34"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance34"]["Text"] = "Random Name";
    objects["Instance34"]["TextSize"] = 14;
    objects["Instance34"]["TextScaled"] = true;
    objects["Instance34"]["Parent"] = objects["Instance3"];
    objects["Instance34"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance34"]["Name"] = "Random Name";
    objects["Instance34"]["Position"] = UDim2.new(0.0411707833, 0, 0.670359969, 0);
    objects["Instance34"]["TextWrapped"] = true;
    objects["Instance34"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance34"]["BorderSizePixel"] = 0;
    objects["Instance34"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance35"]["Parent"] = objects["Instance34"];
    objects["Instance35"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance35"]["Thickness"] = 1.5;
    objects["Instance35"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance36"]["Parent"] = objects["Instance34"];
    objects["Instance36"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance37"]["Parent"] = objects["Instance34"];

    objects["Instance38"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance38"]["TextWrap"] = true;
    objects["Instance38"]["TextColor3"] = Color3.new(0.705882, 0.705882, 0.705882);
    objects["Instance38"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["Text"] = "Rainbow Name";
    objects["Instance38"]["TextSize"] = 14;
    objects["Instance38"]["TextScaled"] = true;
    objects["Instance38"]["Parent"] = objects["Instance3"];
    objects["Instance38"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance38"]["Name"] = "Rainbow Name";
    objects["Instance38"]["Position"] = UDim2.new(0.30221495, 0, 0.670359969, 0);
    objects["Instance38"]["TextWrapped"] = true;
    objects["Instance38"]["Size"] = UDim2.new(0.191871449, 0, 0.110119045, 0);
    objects["Instance38"]["BorderSizePixel"] = 0;
    objects["Instance38"]["BackgroundColor3"] = Color3.new(0.0392157, 0.0392157, 0.0784314);

    objects["Instance39"]["Parent"] = objects["Instance38"];
    objects["Instance39"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
    objects["Instance39"]["Thickness"] = 1.5;
    objects["Instance39"]["Color"] = Color3.new(0.282353, 0.282353, 0.282353);

    objects["Instance40"]["Parent"] = objects["Instance38"];
    objects["Instance40"]["CornerRadius"] = UDim.new(0, 5);

    objects["Instance41"]["Parent"] = objects["Instance38"];
end;

-- Set scripts
do
    task.spawn(function() -- Instance8
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance8"];
script.Parent.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/nmalka01/nmalka01/refs/heads/main/Brookhaven_audio"))()
end)
    end);

    task.spawn(function() -- Instance12
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance12"];
script.Parent.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()
end)
    end);

    task.spawn(function() -- Instance1
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance1"];
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

makeDraggable(script.Parent.Frame)
    end);

    task.spawn(function() -- Instance2
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance2"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
end)
    end);

    task.spawn(function() -- Instance20
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance20"];
script.Parent.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)
    end);

    task.spawn(function() -- Instance16
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance16"];
script.Parent.MouseButton1Click:Connect(function()
    loadstring(game:HttpGet('https://pastebin.com/raw/3Rnd9rHf'))()
end)
    end);

    task.spawn(function() -- Instance37
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance37"];
local opened = false

script.Parent.MouseButton1Click:Connect(function()
    opened = not opened
end)
local function generateRandomSymbol()
    return (math.random(1, 2) == 1 and string.upper or string.lower)(string.char(math.random(65, 90)))
end

local l = 6
while task.wait(.1) do
    if opened then        
    local s = ""
    for i = 1, l do
        s ..= generateRandomSymbol()
    end

    local args = {
        "RolePlayName",
        s
    }
    game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eTex1t"):FireServer(unpack(args))
    end    
end
    end);

    task.spawn(function() -- Instance41
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance41"];
function GetRainbowColor()
    -- Получаем текущее время
    local time = tick()

    -- Настраиваем скорость вращения радуги
    local speed = 1/3 -- увеличь, чтобы радуга крутилась быстрее

    -- Угол в радианах, вращающийся со временем
    local hue = (time * speed) % 1

    -- Преобразуем hue (оттенок) в цвет
    local color = Color3.fromHSV(hue, 1, 1)

    return color
end
local opened = false

script.Parent.MouseButton1Click:Connect(function()
    opened = not opened
end)

local l = 6
while task.wait(.1) do
    if opened then        
        local args = {
            "PickingRPNameColor",
            GetRainbowColor()
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1RPNam1eColo1r"):FireServer(unpack(args))

    end    
end
    end);

    task.spawn(function() -- Instance31
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance31"];
script.Parent.MouseButton1Click:Connect(function()
    local args = {
        {
            27112025,
            27112039,
            27112052,
            27112068,
            27112056,
            0
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(args))
    local args = {
        "Really black"
    }
    local args = {
        10900068822,
        7091370275
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("WearOutfit"):InvokeServer(unpack(args))
    local args = {
        "Really black"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(unpack(args))
    local args = {
        376548738
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
    local args = {
        376548738
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))

end)
    end);

    task.spawn(function() -- Instance27
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance27"];
script.Parent.MouseButton1Click:Connect(function()
    local args = {
        {
            27112025,
            27112039,
            27112052,
            27112068,
            27112056,
            0
        }
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeCharacterBody"):InvokeServer(unpack(args))
    task.wait()
    local args = {
        5696706729
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
    local args = {
        5696713893
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
    local args = {
        20908888
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Wear"):InvokeServer(unpack(args))
    local args = {
        "Slime green"
    }
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ChangeBodyColor"):FireServer(unpack(args))

end)
    end);
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
