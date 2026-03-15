-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.3

--

-- Create objects
local parent = game:GetService("StarterGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui");
    ["Instance1"] = Instance.new("LocalScript");
    ["Instance2"] = Instance.new("LocalScript");
    ["Instance3"] = Instance.new("LocalScript");
    ["Instance4"] = Instance.new("Frame");
    ["Instance5"] = Instance.new("UICorner");
    ["Instance6"] = Instance.new("UIStroke");
    ["Instance7"] = Instance.new("Frame");
    ["Instance8"] = Instance.new("Frame");
    ["Instance9"] = Instance.new("TextButton");
    ["Instance10"] = Instance.new("LocalScript");
    ["Instance11"] = Instance.new("UICorner");
    ["Instance12"] = Instance.new("UIStroke");
    ["Instance13"] = Instance.new("TextButton");
    ["Instance14"] = Instance.new("LocalScript");
    ["Instance15"] = Instance.new("UICorner");
    ["Instance16"] = Instance.new("UIStroke");
    ["Instance17"] = Instance.new("TextButton");
    ["Instance18"] = Instance.new("LocalScript");
    ["Instance19"] = Instance.new("UICorner");
    ["Instance20"] = Instance.new("UIStroke");
    ["Instance21"] = Instance.new("TextButton");
    ["Instance22"] = Instance.new("LocalScript");
    ["Instance23"] = Instance.new("UICorner");
    ["Instance24"] = Instance.new("UIStroke");
    ["Instance25"] = Instance.new("TextButton");
    ["Instance26"] = Instance.new("LocalScript");
    ["Instance27"] = Instance.new("UICorner");
    ["Instance28"] = Instance.new("UIStroke");
};

do -- Set properties
    objects["Instance0"]["Enabled"] = true;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.CoreUISafeInsets;
    objects["Instance0"]["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension;
    objects["Instance0"]["ClipToDeviceSafeArea"] = true;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = false;
    objects["Instance0"]["Name"] = "Fly for Brainrot";
    objects["Instance0"]["DisplayOrder"] = 0;

    objects["Instance1"]["Parent"] = objects["Instance0"];
    objects["Instance1"]["Name"] = "LocalScript";
    objects["Instance1"]["Enabled"] = true;

    objects["Instance2"]["Parent"] = objects["Instance0"];
    objects["Instance2"]["Name"] = "LocalScript";
    objects["Instance2"]["Enabled"] = true;

    objects["Instance3"]["Parent"] = objects["Instance0"];
    objects["Instance3"]["Name"] = "LocalScript";
    objects["Instance3"]["Enabled"] = true;

    objects["Instance4"]["LayoutOrder"] = 0;
    objects["Instance4"]["Active"] = false;
    objects["Instance4"]["Parent"] = objects["Instance0"];
    objects["Instance4"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance4"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance4"]["ZIndex"] = 1;
    objects["Instance4"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance4"]["Size"] = UDim2.new(0, 500, 0, 344);
    objects["Instance4"]["Draggable"] = false;
    objects["Instance4"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance4"]["ClipsDescendants"] = false;
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance4"]["BackgroundTransparency"] = 0;
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["Rotation"] = 0;
    objects["Instance4"]["Transparency"] = 0;
    objects["Instance4"]["Name"] = "Frame";
    objects["Instance4"]["SelectionOrder"] = 0;
    objects["Instance4"]["Visible"] = true;
    objects["Instance4"]["Selectable"] = false;
    objects["Instance4"]["Position"] = UDim2.new(0.2665369212627411, 0, 0.250684916973114, 0);
    objects["Instance4"]["BackgroundColor3"] = Color3.new(0.611765, 0.611765, 0.611765);

    objects["Instance5"]["Parent"] = objects["Instance4"];
    objects["Instance5"]["Name"] = "UICorner";
    objects["Instance5"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance6"]["Enabled"] = true;
    objects["Instance6"]["Transparency"] = 0;
    objects["Instance6"]["Name"] = "UIStroke";
    objects["Instance6"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance6"]["Parent"] = objects["Instance4"];
    objects["Instance6"]["Thickness"] = 2;
    objects["Instance6"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual;

    objects["Instance7"]["LayoutOrder"] = 0;
    objects["Instance7"]["Active"] = false;
    objects["Instance7"]["Parent"] = objects["Instance4"];
    objects["Instance7"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance7"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance7"]["ZIndex"] = 1;
    objects["Instance7"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance7"]["Size"] = UDim2.new(0, 500, 0, -4);
    objects["Instance7"]["Draggable"] = false;
    objects["Instance7"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance7"]["ClipsDescendants"] = false;
    objects["Instance7"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance7"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance7"]["BackgroundTransparency"] = 0;
    objects["Instance7"]["BorderSizePixel"] = 0;
    objects["Instance7"]["Rotation"] = 0;
    objects["Instance7"]["Transparency"] = 0;
    objects["Instance7"]["Name"] = "Frame";
    objects["Instance7"]["SelectionOrder"] = 0;
    objects["Instance7"]["Visible"] = true;
    objects["Instance7"]["Selectable"] = false;
    objects["Instance7"]["Position"] = UDim2.new(0.0025369874201714993, 0, 0.14735350012779236, 0);
    objects["Instance7"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance8"]["LayoutOrder"] = 0;
    objects["Instance8"]["Active"] = false;
    objects["Instance8"]["Parent"] = objects["Instance4"];
    objects["Instance8"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance8"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance8"]["ZIndex"] = 1;
    objects["Instance8"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance8"]["Size"] = UDim2.new(0, -6, 0, -296);
    objects["Instance8"]["Draggable"] = false;
    objects["Instance8"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance8"]["ClipsDescendants"] = false;
    objects["Instance8"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance8"]["BackgroundTransparency"] = 0;
    objects["Instance8"]["BorderSizePixel"] = 0;
    objects["Instance8"]["Rotation"] = 0;
    objects["Instance8"]["Transparency"] = 0;
    objects["Instance8"]["Name"] = "Frame";
    objects["Instance8"]["SelectionOrder"] = 0;
    objects["Instance8"]["Visible"] = true;
    objects["Instance8"]["Selectable"] = false;
    objects["Instance8"]["Position"] = UDim2.new(0.5093986988067627, 0, 1.0093296766281128, 0);
    objects["Instance8"]["BackgroundColor3"] = Color3.new(0, 0, 0);

    objects["Instance9"]["Visible"] = true;
    objects["Instance9"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance9"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance9"]["Active"] = true;
    objects["Instance9"]["TextStrokeTransparency"] = 1;
    objects["Instance9"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance9"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance9"]["ZIndex"] = 1;
    objects["Instance9"]["BorderSizePixel"] = 0;
    objects["Instance9"]["Draggable"] = false;
    objects["Instance9"]["RichText"] = false;
    objects["Instance9"]["Modal"] = false;
    objects["Instance9"]["AutoButtonColor"] = true;
    objects["Instance9"]["Transparency"] = 0;
    objects["Instance9"]["SelectionOrder"] = 0;
    objects["Instance9"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance9"]["TextScaled"] = true;
    objects["Instance9"]["TextWrap"] = true;
    objects["Instance9"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance9"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance9"]["Parent"] = objects["Instance4"];
    objects["Instance9"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance9"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance9"]["Position"] = UDim2.new(0.0560000017285347, 0, 0.20710058510303497, 0);
    objects["Instance9"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance9"]["Selected"] = false;
    objects["Instance9"]["TextSize"] = 14;
    objects["Instance9"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance9"]["BackgroundTransparency"] = 0;
    objects["Instance9"]["TextWrapped"] = true;
    objects["Instance9"]["ClipsDescendants"] = false;
    objects["Instance9"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance9"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance9"]["Text"] = "Collect";
    objects["Instance9"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance9"]["LayoutOrder"] = 0;
    objects["Instance9"]["Rotation"] = 0;
    objects["Instance9"]["LineHeight"] = 1;
    objects["Instance9"]["Name"] = "Collect";
    objects["Instance9"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance9"]["Selectable"] = true;
    objects["Instance9"]["MaxVisibleGraphemes"] = -1;
    objects["Instance9"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance9"]["TextTransparency"] = 0;

    objects["Instance10"]["Parent"] = objects["Instance9"];
    objects["Instance10"]["Name"] = "LocalScript";
    objects["Instance10"]["Enabled"] = true;

    objects["Instance11"]["Parent"] = objects["Instance9"];
    objects["Instance11"]["Name"] = "UICorner";
    objects["Instance11"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance12"]["Enabled"] = true;
    objects["Instance12"]["Transparency"] = 0;
    objects["Instance12"]["Name"] = "UIStroke";
    objects["Instance12"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance12"]["Parent"] = objects["Instance9"];
    objects["Instance12"]["Thickness"] = 2;
    objects["Instance12"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance13"]["Visible"] = true;
    objects["Instance13"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance13"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance13"]["Active"] = true;
    objects["Instance13"]["TextStrokeTransparency"] = 1;
    objects["Instance13"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance13"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance13"]["ZIndex"] = 1;
    objects["Instance13"]["BorderSizePixel"] = 0;
    objects["Instance13"]["Draggable"] = false;
    objects["Instance13"]["RichText"] = false;
    objects["Instance13"]["Modal"] = false;
    objects["Instance13"]["AutoButtonColor"] = true;
    objects["Instance13"]["Transparency"] = 0;
    objects["Instance13"]["SelectionOrder"] = 0;
    objects["Instance13"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance13"]["TextScaled"] = true;
    objects["Instance13"]["TextWrap"] = true;
    objects["Instance13"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance13"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance13"]["Parent"] = objects["Instance4"];
    objects["Instance13"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance13"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance13"]["Position"] = UDim2.new(0.0560000017285347, 0, 0.3966561257839203, 0);
    objects["Instance13"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance13"]["Selected"] = false;
    objects["Instance13"]["TextSize"] = 14;
    objects["Instance13"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance13"]["BackgroundTransparency"] = 0;
    objects["Instance13"]["TextWrapped"] = true;
    objects["Instance13"]["ClipsDescendants"] = false;
    objects["Instance13"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["Text"] = "Tp to OG";
    objects["Instance13"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance13"]["LayoutOrder"] = 0;
    objects["Instance13"]["Rotation"] = 0;
    objects["Instance13"]["LineHeight"] = 1;
    objects["Instance13"]["Name"] = "Tp to OG";
    objects["Instance13"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance13"]["Selectable"] = true;
    objects["Instance13"]["MaxVisibleGraphemes"] = -1;
    objects["Instance13"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["TextTransparency"] = 0;

    objects["Instance14"]["Parent"] = objects["Instance13"];
    objects["Instance14"]["Name"] = "LocalScript";
    objects["Instance14"]["Enabled"] = true;

    objects["Instance15"]["Parent"] = objects["Instance13"];
    objects["Instance15"]["Name"] = "UICorner";
    objects["Instance15"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance16"]["Enabled"] = true;
    objects["Instance16"]["Transparency"] = 0;
    objects["Instance16"]["Name"] = "UIStroke";
    objects["Instance16"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance16"]["Parent"] = objects["Instance13"];
    objects["Instance16"]["Thickness"] = 2;
    objects["Instance16"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance17"]["Visible"] = true;
    objects["Instance17"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance17"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance17"]["Active"] = true;
    objects["Instance17"]["TextStrokeTransparency"] = 1;
    objects["Instance17"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance17"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance17"]["ZIndex"] = 1;
    objects["Instance17"]["BorderSizePixel"] = 0;
    objects["Instance17"]["Draggable"] = false;
    objects["Instance17"]["RichText"] = false;
    objects["Instance17"]["Modal"] = false;
    objects["Instance17"]["AutoButtonColor"] = true;
    objects["Instance17"]["Transparency"] = 0;
    objects["Instance17"]["SelectionOrder"] = 0;
    objects["Instance17"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance17"]["TextScaled"] = true;
    objects["Instance17"]["TextWrap"] = true;
    objects["Instance17"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance17"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance17"]["Parent"] = objects["Instance4"];
    objects["Instance17"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance17"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance17"]["Position"] = UDim2.new(0.0560000017285347, 0, 0.5864390730857849, 0);
    objects["Instance17"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance17"]["Selected"] = false;
    objects["Instance17"]["TextSize"] = 14;
    objects["Instance17"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance17"]["BackgroundTransparency"] = 0;
    objects["Instance17"]["TextWrapped"] = true;
    objects["Instance17"]["ClipsDescendants"] = false;
    objects["Instance17"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["Text"] = "Tp to base";
    objects["Instance17"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance17"]["LayoutOrder"] = 0;
    objects["Instance17"]["Rotation"] = 0;
    objects["Instance17"]["LineHeight"] = 1;
    objects["Instance17"]["Name"] = "Tp to base";
    objects["Instance17"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance17"]["Selectable"] = true;
    objects["Instance17"]["MaxVisibleGraphemes"] = -1;
    objects["Instance17"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance17"]["TextTransparency"] = 0;

    objects["Instance18"]["Parent"] = objects["Instance17"];
    objects["Instance18"]["Name"] = "LocalScript";
    objects["Instance18"]["Enabled"] = true;

    objects["Instance19"]["Parent"] = objects["Instance17"];
    objects["Instance19"]["Name"] = "UICorner";
    objects["Instance19"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance20"]["Enabled"] = true;
    objects["Instance20"]["Transparency"] = 0;
    objects["Instance20"]["Name"] = "UIStroke";
    objects["Instance20"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance20"]["Parent"] = objects["Instance17"];
    objects["Instance20"]["Thickness"] = 2;
    objects["Instance20"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance20"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance21"]["Visible"] = true;
    objects["Instance21"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance21"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance21"]["Active"] = true;
    objects["Instance21"]["TextStrokeTransparency"] = 1;
    objects["Instance21"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance21"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance21"]["ZIndex"] = 1;
    objects["Instance21"]["BorderSizePixel"] = 0;
    objects["Instance21"]["Draggable"] = false;
    objects["Instance21"]["RichText"] = false;
    objects["Instance21"]["Modal"] = false;
    objects["Instance21"]["AutoButtonColor"] = true;
    objects["Instance21"]["Transparency"] = 0;
    objects["Instance21"]["SelectionOrder"] = 0;
    objects["Instance21"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance21"]["TextScaled"] = true;
    objects["Instance21"]["TextWrap"] = true;
    objects["Instance21"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance21"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance21"]["Parent"] = objects["Instance4"];
    objects["Instance21"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance21"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance21"]["Position"] = UDim2.new(0.0560000017285347, 0, 0.7781484723091125, 0);
    objects["Instance21"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance21"]["Selected"] = false;
    objects["Instance21"]["TextSize"] = 14;
    objects["Instance21"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance21"]["BackgroundTransparency"] = 0;
    objects["Instance21"]["TextWrapped"] = true;
    objects["Instance21"]["ClipsDescendants"] = false;
    objects["Instance21"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["Text"] = "Tp to best";
    objects["Instance21"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance21"]["LayoutOrder"] = 0;
    objects["Instance21"]["Rotation"] = 0;
    objects["Instance21"]["LineHeight"] = 1;
    objects["Instance21"]["Name"] = "Tp to best";
    objects["Instance21"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance21"]["Selectable"] = true;
    objects["Instance21"]["MaxVisibleGraphemes"] = -1;
    objects["Instance21"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance21"]["TextTransparency"] = 0;

    objects["Instance22"]["Parent"] = objects["Instance21"];
    objects["Instance22"]["Name"] = "LocalScript";
    objects["Instance22"]["Enabled"] = true;

    objects["Instance23"]["Parent"] = objects["Instance21"];
    objects["Instance23"]["Name"] = "UICorner";
    objects["Instance23"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance24"]["Enabled"] = true;
    objects["Instance24"]["Transparency"] = 0;
    objects["Instance24"]["Name"] = "UIStroke";
    objects["Instance24"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance24"]["Parent"] = objects["Instance21"];
    objects["Instance24"]["Thickness"] = 2;
    objects["Instance24"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance24"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance25"]["Visible"] = true;
    objects["Instance25"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance25"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance25"]["Active"] = true;
    objects["Instance25"]["TextStrokeTransparency"] = 1;
    objects["Instance25"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance25"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance25"]["ZIndex"] = 1;
    objects["Instance25"]["BorderSizePixel"] = 0;
    objects["Instance25"]["Draggable"] = false;
    objects["Instance25"]["RichText"] = false;
    objects["Instance25"]["Modal"] = false;
    objects["Instance25"]["AutoButtonColor"] = true;
    objects["Instance25"]["Transparency"] = 0;
    objects["Instance25"]["SelectionOrder"] = 0;
    objects["Instance25"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance25"]["TextScaled"] = true;
    objects["Instance25"]["TextWrap"] = true;
    objects["Instance25"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance25"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance25"]["Parent"] = objects["Instance4"];
    objects["Instance25"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance25"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance25"]["Position"] = UDim2.new(0.5600000023841858, 0, 0.7781484723091125, 0);
    objects["Instance25"]["BackgroundColor3"] = Color3.new(1, 1, 1);
    objects["Instance25"]["Selected"] = false;
    objects["Instance25"]["TextSize"] = 14;
    objects["Instance25"]["Size"] = UDim2.new(0, 200, 0, 50);
    objects["Instance25"]["BackgroundTransparency"] = 0;
    objects["Instance25"]["TextWrapped"] = true;
    objects["Instance25"]["ClipsDescendants"] = false;
    objects["Instance25"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance25"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance25"]["Text"] = "Auto Equip";
    objects["Instance25"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance25"]["LayoutOrder"] = 0;
    objects["Instance25"]["Rotation"] = 0;
    objects["Instance25"]["LineHeight"] = 1;
    objects["Instance25"]["Name"] = "Auto Equip";
    objects["Instance25"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance25"]["Selectable"] = true;
    objects["Instance25"]["MaxVisibleGraphemes"] = -1;
    objects["Instance25"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance25"]["TextTransparency"] = 0;

    objects["Instance26"]["Parent"] = objects["Instance25"];
    objects["Instance26"]["Name"] = "LocalScript";
    objects["Instance26"]["Enabled"] = true;

    objects["Instance27"]["Parent"] = objects["Instance25"];
    objects["Instance27"]["Name"] = "UICorner";
    objects["Instance27"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance28"]["Enabled"] = true;
    objects["Instance28"]["Transparency"] = 0;
    objects["Instance28"]["Name"] = "UIStroke";
    objects["Instance28"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance28"]["Parent"] = objects["Instance25"];
    objects["Instance28"]["Thickness"] = 2;
    objects["Instance28"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
end;
local ___up, ___args = unpack, { ... }
-- Set scripts
do
    task.spawn(function(...) -- Instance10
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance10"];
script.Parent.MouseButton1Click:Connect(function()
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
    end, ___up(___args));

    task.spawn(function(...) -- Instance22
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance22"];
script.Parent.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer.Character

    for i,v in workspace.Brainrots:GetDescendants() do
        if v.Name == "DisplayName" then
            if v.Text == "Strawberry Elephant" or v.Text == "Tung Tung Tung Sahur" or v.Text == "67" then
                local model = v.Parent.Parent.Parent
                plr:PivotTo(model:GetPivot())
            end
        end
    end
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance14
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance14"];
script.Parent.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer.Character

    for i,v in workspace.Brainrots:GetDescendants() do
        if v.Name == "Rarity" then
            if v.Text == "OG" then
                local model = v.Parent.Parent.Parent
                plr:PivotTo(model:GetPivot())
            end
        end
    end
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance1
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
    end, ___up(___args));

    task.spawn(function(...) -- Instance3
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance3"];
script.Parent.Parent = game.CoreGui
    end, ___up(___args));

    task.spawn(function(...) -- Instance26
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance26"];
script.Parent.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer.Character
    local q = plr:GetPivot()
    local function a()    
        for i,v in workspace.Plots:GetDescendants() do
            if v.Name == "Name" then
                if v.Text:find(game.Players.LocalPlayer.Name) then
                    plr:PivotTo(v.Parent.Parent.Parent.Parent.Parent.BaseDisplay:GetPivot())
                end
            end
        end
        task.wait()
        plr:PivotTo(q)
    end
    for i,v in workspace.Brainrots:GetDescendants() do
        if v.Name == "DisplayName" then
            if v.Text == "Strawberry Elephant" then
                local model = v.Parent.Parent.Parent
                plr:PivotTo(model:GetPivot()) task.wait(.15)
                model.Carry.HoldDuration = 0
                fireproximityprompt(model.Carry, 15) task.wait(.01)
                a()
            end
        end
    end
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance2
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance2"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
end)
    end, ___up(___args));

    task.spawn(function(...) -- Instance18
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance18"];
script.Parent.MouseButton1Click:Connect(function()
    local plr = game.Players.LocalPlayer.Character

    for i,v in workspace.Plots:GetDescendants() do
        if v.Name == "Name" then
            if v.Text:find(game.Players.LocalPlayer.Name) then
                plr:PivotTo(v.Parent.Parent.Parent.Parent.Parent.BaseDisplay:GetPivot())
            end
        end
    end
end)
    end, ___up(___args));
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
