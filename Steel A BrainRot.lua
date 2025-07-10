-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.1

--

-- Create objects
local parent = game:GetService("CoreGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui"); -- Steel A BrainRoot
    ["Instance1"] = Instance.new("Frame"); -- Frame
    ["Instance2"] = Instance.new("TextButton"); -- TextButton
    ["Instance3"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance4"] = Instance.new("TextButton"); -- TextButton
    ["Instance5"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance6"] = Instance.new("UICorner"); -- UICorner
    ["Instance7"] = Instance.new("LocalScript"); -- LocalScript
    ["Instance8"] = Instance.new("LocalScript"); -- LocalScript
};

do -- Set properties
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["Name"] = "Steel A BrainRoot";
    objects["Instance0"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["Position"] = UDim2.new(0.394509792, 0, 0.369668245, 0);
    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["Size"] = UDim2.new(0.138961717, 0, 0.299739331, 0);
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["BackgroundColor3"] = Color3.new(0.192157, 0.192157, 0.192157);

    objects["Instance2"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance2"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["Text"] = "Up";
    objects["Instance2"]["TextWrap"] = true;
    objects["Instance2"]["TextSize"] = 14;
    objects["Instance2"]["Parent"] = objects["Instance1"];
    objects["Instance2"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance2"]["TextScaled"] = true;
    objects["Instance2"]["Position"] = UDim2.new(0.140441746, 0, 0.181832552, 0);
    objects["Instance2"]["TextWrapped"] = true;
    objects["Instance2"]["Size"] = UDim2.new(0.709972143, 0, 0.128978938, 0);
    objects["Instance2"]["BorderSizePixel"] = 0;
    objects["Instance2"]["BackgroundColor3"] = Color3.new(0.407843, 0.407843, 0.407843);

    objects["Instance3"]["Parent"] = objects["Instance2"];

    objects["Instance4"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance4"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["Text"] = "Down";
    objects["Instance4"]["TextWrap"] = true;
    objects["Instance4"]["TextSize"] = 14;
    objects["Instance4"]["Parent"] = objects["Instance1"];
    objects["Instance4"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal);
    objects["Instance4"]["TextScaled"] = true;
    objects["Instance4"]["Position"] = UDim2.new(0.140441746, 0, 0.604790926, 0);
    objects["Instance4"]["TextWrapped"] = true;
    objects["Instance4"]["Size"] = UDim2.new(0.709972143, 0, 0.128978938, 0);
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["BackgroundColor3"] = Color3.new(0.407843, 0.407843, 0.407843);

    objects["Instance5"]["Parent"] = objects["Instance4"];

    objects["Instance6"]["Parent"] = objects["Instance1"];

    objects["Instance7"]["Parent"] = objects["Instance0"];

    objects["Instance8"]["Parent"] = objects["Instance0"];
end;

-- Set scripts
do
    task.spawn(function() -- Instance8
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance8"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
end)
    end);

    task.spawn(function() -- Instance3
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance3"];
script.Parent.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(game.Players.LocalPlayer.Character:GetPivot() + Vector3.new(0,140,0))
end)
    end);

    task.spawn(function() -- Instance5
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance5"];
script.Parent.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character:PivotTo(game.Players.LocalPlayer.Character:GetPivot() - Vector3.new(0,140,0))
end)
    end);

    task.spawn(function() -- Instance7
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance7"];
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
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
