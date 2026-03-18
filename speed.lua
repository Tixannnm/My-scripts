-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.3

--

-- Create objects
local parent = game:GetService("StarterGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui");
    ["Instance1"] = Instance.new("Frame");
    ["Instance2"] = Instance.new("TextBox");
    ["Instance3"] = Instance.new("UICorner");
    ["Instance4"] = Instance.new("UIStroke");
    ["Instance5"] = Instance.new("LocalScript");
    ["Instance6"] = Instance.new("UICorner");
    ["Instance7"] = Instance.new("UIStroke");
    ["Instance8"] = Instance.new("TextBox");
    ["Instance9"] = Instance.new("UICorner");
    ["Instance10"] = Instance.new("UIStroke");
    ["Instance11"] = Instance.new("LocalScript");
    ["Instance12"] = Instance.new("LocalScript");
    ["Instance13"] = Instance.new("LocalScript");
    ["Instance14"] = Instance.new("LocalScript");
};

do -- Set properties
    objects["Instance0"]["Enabled"] = true;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.CoreUISafeInsets;
    objects["Instance0"]["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension;
    objects["Instance0"]["ClipToDeviceSafeArea"] = true;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = false;
    objects["Instance0"]["Name"] = "speed";
    objects["Instance0"]["DisplayOrder"] = 0;

    objects["Instance1"]["LayoutOrder"] = 0;
    objects["Instance1"]["Active"] = false;
    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance1"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance1"]["ZIndex"] = 1;
    objects["Instance1"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance1"]["Size"] = UDim2.new(0, 286, 0, 214);
    objects["Instance1"]["Draggable"] = false;
    objects["Instance1"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance1"]["ClipsDescendants"] = false;
    objects["Instance1"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance1"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance1"]["BackgroundTransparency"] = 0;
    objects["Instance1"]["BorderSizePixel"] = 0;
    objects["Instance1"]["Rotation"] = 0;
    objects["Instance1"]["Transparency"] = 0;
    objects["Instance1"]["Name"] = "Frame";
    objects["Instance1"]["SelectionOrder"] = 0;
    objects["Instance1"]["Visible"] = true;
    objects["Instance1"]["Selectable"] = false;
    objects["Instance1"]["Position"] = UDim2.new(0.45937249064445496, 0, 0.5160523056983948, 0);
    objects["Instance1"]["BackgroundColor3"] = Color3.new(0.317647, 0.317647, 0.317647);

    objects["Instance2"]["LayoutOrder"] = 0;
    objects["Instance2"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance2"]["LineHeight"] = 1;
    objects["Instance2"]["Active"] = true;
    objects["Instance2"]["TextStrokeTransparency"] = 1;
    objects["Instance2"]["SelectionStart"] = -1;
    objects["Instance2"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7);
    objects["Instance2"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance2"]["ZIndex"] = 1;
    objects["Instance2"]["BorderSizePixel"] = 0;
    objects["Instance2"]["TextEditable"] = true;
    objects["Instance2"]["Draggable"] = false;
    objects["Instance2"]["RichText"] = false;
    objects["Instance2"]["Transparency"] = 0;
    objects["Instance2"]["SelectionOrder"] = 0;
    objects["Instance2"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance2"]["TextScaled"] = true;
    objects["Instance2"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance2"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance2"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance2"]["Parent"] = objects["Instance1"];
    objects["Instance2"]["TextWrapped"] = true;
    objects["Instance2"]["MaxVisibleGraphemes"] = -1;
    objects["Instance2"]["Name"] = "Speed";
    objects["Instance2"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance2"]["TextTransparency"] = 0;
    objects["Instance2"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance2"]["CursorPosition"] = -1;
    objects["Instance2"]["ClipsDescendants"] = false;
    objects["Instance2"]["PlaceholderText"] = "";
    objects["Instance2"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance2"]["Size"] = UDim2.new(0.7692307829856873, 0, 0.2710280418395996, 0);
    objects["Instance2"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["Selectable"] = true;
    objects["Instance2"]["ShowNativeInput"] = true;
    objects["Instance2"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance2"]["Text"] = "Write ur speed";
    objects["Instance2"]["TextSize"] = 14;
    objects["Instance2"]["Visible"] = true;
    objects["Instance2"]["Rotation"] = 0;
    objects["Instance2"]["MultiLine"] = false;
    objects["Instance2"]["BackgroundTransparency"] = 0;
    objects["Instance2"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance2"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance2"]["ClearTextOnFocus"] = true;
    objects["Instance2"]["Position"] = UDim2.new(0, 33, 0, 30);
    objects["Instance2"]["TextWrap"] = true;

    objects["Instance3"]["Parent"] = objects["Instance2"];
    objects["Instance3"]["Name"] = "UICorner";
    objects["Instance3"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance4"]["Enabled"] = true;
    objects["Instance4"]["Transparency"] = 0;
    objects["Instance4"]["Name"] = "UIStroke";
    objects["Instance4"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance4"]["Parent"] = objects["Instance2"];
    objects["Instance4"]["Thickness"] = 3;
    objects["Instance4"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance4"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance5"]["Parent"] = objects["Instance2"];
    objects["Instance5"]["Name"] = "LocalScript";
    objects["Instance5"]["Enabled"] = true;

    objects["Instance6"]["Parent"] = objects["Instance1"];
    objects["Instance6"]["Name"] = "UICorner";
    objects["Instance6"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance7"]["Enabled"] = true;
    objects["Instance7"]["Transparency"] = 0;
    objects["Instance7"]["Name"] = "UIStroke";
    objects["Instance7"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance7"]["Parent"] = objects["Instance1"];
    objects["Instance7"]["Thickness"] = 3;
    objects["Instance7"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance8"]["LayoutOrder"] = 0;
    objects["Instance8"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance8"]["LineHeight"] = 1;
    objects["Instance8"]["Active"] = true;
    objects["Instance8"]["TextStrokeTransparency"] = 1;
    objects["Instance8"]["SelectionStart"] = -1;
    objects["Instance8"]["PlaceholderColor3"] = Color3.new(0.7, 0.7, 0.7);
    objects["Instance8"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance8"]["ZIndex"] = 1;
    objects["Instance8"]["BorderSizePixel"] = 0;
    objects["Instance8"]["TextEditable"] = true;
    objects["Instance8"]["Draggable"] = false;
    objects["Instance8"]["RichText"] = false;
    objects["Instance8"]["Transparency"] = 0;
    objects["Instance8"]["SelectionOrder"] = 0;
    objects["Instance8"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance8"]["TextScaled"] = true;
    objects["Instance8"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance8"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance8"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance8"]["Parent"] = objects["Instance1"];
    objects["Instance8"]["TextWrapped"] = true;
    objects["Instance8"]["MaxVisibleGraphemes"] = -1;
    objects["Instance8"]["Name"] = "JumpPower";
    objects["Instance8"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance8"]["TextTransparency"] = 0;
    objects["Instance8"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance8"]["CursorPosition"] = 1;
    objects["Instance8"]["ClipsDescendants"] = false;
    objects["Instance8"]["PlaceholderText"] = "";
    objects["Instance8"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance8"]["Size"] = UDim2.new(0.7692307829856873, 0, 0.2710280418395996, 0);
    objects["Instance8"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["Selectable"] = true;
    objects["Instance8"]["ShowNativeInput"] = true;
    objects["Instance8"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["Text"] = "Write ur JumpPower";
    objects["Instance8"]["TextSize"] = 14;
    objects["Instance8"]["Visible"] = true;
    objects["Instance8"]["Rotation"] = 0;
    objects["Instance8"]["MultiLine"] = false;
    objects["Instance8"]["BackgroundTransparency"] = 0;
    objects["Instance8"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance8"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance8"]["ClearTextOnFocus"] = true;
    objects["Instance8"]["Position"] = UDim2.new(0, 33, 0, 120);
    objects["Instance8"]["TextWrap"] = true;

    objects["Instance9"]["Parent"] = objects["Instance8"];
    objects["Instance9"]["Name"] = "UICorner";
    objects["Instance9"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance10"]["Enabled"] = true;
    objects["Instance10"]["Transparency"] = 0;
    objects["Instance10"]["Name"] = "UIStroke";
    objects["Instance10"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance10"]["Parent"] = objects["Instance8"];
    objects["Instance10"]["Thickness"] = 3;
    objects["Instance10"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance11"]["Parent"] = objects["Instance8"];
    objects["Instance11"]["Name"] = "LocalScript";
    objects["Instance11"]["Enabled"] = true;

    objects["Instance12"]["Parent"] = objects["Instance0"];
    objects["Instance12"]["Name"] = "LocalScript";
    objects["Instance12"]["Enabled"] = true;

    objects["Instance13"]["Parent"] = objects["Instance0"];
    objects["Instance13"]["Name"] = "LocalScript";
    objects["Instance13"]["Enabled"] = true;

    objects["Instance14"]["Parent"] = objects["Instance0"];
    objects["Instance14"]["Name"] = "LocalScript";
    objects["Instance14"]["Enabled"] = true;
end;
local ___up, ___args = unpack, { ... }
-- Set scripts
do
    task.spawn(function(...) -- Instance12
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance12"];
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
    end, ___up(___args));

    task.spawn(function(...) -- Instance14
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance14"];
script.Parent.Parent = game.CoreGui
    end, ___up(___args));

    task.spawn(function(...) -- Instance11
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance11"];
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

-- Функция для получения числового значения из текста
local function getTargetJump()
    -- Если в поле пусто или текст, ставим стандартные 50 (для JumpPower) или 7.2 (для JumpHeight)
    return tonumber(script.Parent.Text) or (hum.UseJumpPower and 50 or 7.2)
end

-- Основной цикл "удержания" прыжка
task.spawn(function()
    while true do
        local target = getTargetJump()

        if hum and hum.Parent then
            -- Проверяем, какой параметр прыжка использует игра (Power или Height)
            if hum.UseJumpPower then
                if hum.JumpPower ~= target then
                    hum.JumpPower = target
                end
            else
                if hum.JumpHeight ~= target then
                    hum.JumpHeight = target
                end
            end
        else
            -- Обновление ссылок при респавне
            char = plr.Character or plr.CharacterAdded:Wait()
            hum = char:WaitForChild("Humanoid")
        end

        task.wait(0.1) -- Частота проверки
    end
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance5
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance5"];
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()
local hum = char:WaitForChild("Humanoid")

-- Функция для получения числового значения из текста
local function getTargetSpeed()
    return tonumber(script.Parent.Text) or 16 -- 16 - стандартная скорость
end

-- Основной цикл "удержания" скорости
task.spawn(function()
    while true do
        local target = getTargetSpeed()

        -- Проверяем, существует ли гуманоид (на случай респавна)
        if hum and hum.Parent then
            if hum.WalkSpeed ~= target then
                hum.WalkSpeed = target
            end
        else
            -- Если персонаж обновился, находим нового гуманоида
            char = plr.Character or plr.CharacterAdded:Wait()
            hum = char:WaitForChild("Humanoid")
        end

        task.wait(0.1) -- Частота проверки (0.1 сек оптимально, чтобы не лагало)
    end
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance13
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance13"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
end)
    end, ___up(___args));
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
