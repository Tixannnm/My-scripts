-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.1

--

-- Create objects
local parent = game:GetService("CoreGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- knopka
    ["Instance1"] = Instance.new("Frame"); -- Frame
    ["Instance2"] = Instance.new("UICorner"); -- UICorner
    ["Instance3"] = Instance.new("TextButton"); -- Teleport
    ["Instance4"] = Instance.new("UICorner"); -- UICorner
    ["Instance5"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance6"] = Instance.new("TextLabel"); -- TextLabel
    ["Instance7"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance8"] = Instance.new("LocalScript"); -- LocalScript
};

do -- Set properties
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["Name"] = "knopka";
    objects["Instance0"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["Position"] = UDim2.new(0.329686373, 0, 0.322274894, 0);
    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["Size"] = UDim2.new(0, 403, 0, 247);
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["BackgroundColor3"] = Color3.new(0.568627, 0.568627, 0.568627);

    objects["Instance2"]["Parent"] = objects["Instance1"];

    objects["Instance3"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance3"]["TextWrap"] = true;
    objects["Instance3"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance3"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance3"]["Text"] = "Teleport";
    objects["Instance3"]["TextSize"] = 14;
    objects["Instance3"]["TextScaled"] = true;
    objects["Instance3"]["Parent"] = objects["Instance1"];
    objects["Instance3"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance3"]["Name"] = "Teleport";
    objects["Instance3"]["Position"] = UDim2.new(0.250620335, 0, 0.396761119, 0);
    objects["Instance3"]["TextWrapped"] = true;
    objects["Instance3"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance3"]["BorderSizePixel"] = 0;
    objects["Instance3"]["BackgroundColor3"] = Color3.new(0.227451, 0.227451, 0.227451);

    objects["Instance4"]["Parent"] = objects["Instance3"];

    objects["Instance5"]["Parent"] = objects["Instance3"];

    objects["Instance6"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance6"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance6"]["Parent"] = objects["Instance1"];
    objects["Instance6"]["Text"] = "Press LEFT CTRL for close menu";
    objects["Instance6"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance6"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance6"]["BackgroundTransparency"] = 1;
    objects["Instance6"]["Position"] = UDim2.new(-0.0471464023, 0, -0.0566801615, 0);
    objects["Instance6"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance6"]["TextSize"] = 14;
    objects["Instance6"]["BorderSizePixel"] = 0;
    objects["Instance6"]["Size"] = UDim2.new(0, 200, 0, 50);

    objects["Instance7"]["Parent"] = objects["Instance0"];

    objects["Instance8"]["Parent"] = objects["Instance0"];
end;

-- Set scripts
do
    task.spawn(function() -- Instance8
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance8"];
local delta, dragInput
local function update(input, gui, dragStart, startPos)
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

    game:GetService("UserInputService").InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input, gui, dragStart, startPos)
        end
    end)
end

makeDraggable(script.Parent.Frame)
    end);

    task.spawn(function() -- Instance5
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance5"];
script.Parent.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer.Character.HumanoidRootPart
    plr.CFrame = CFrame.new(-43.86, 4.64, -124.32)
end)
    end);

    task.spawn(function() -- Instance7
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance7"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
end)
    end);
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
