-- [[ GENERATED WITH InfernoHub/Scriptify STUDIO PLUGIN ]] --
-- Scriptify Version: 1.3

--
if game.CoreGui:FindFirstChild("War Tycoon by Sayke") then
	game.CoreGui["War Tycoon by Sayke"]:Destroy()
end
-- Create objects
local parent = game:GetService("StarterGui");
local objects = {
    ["Instance0"] = Instance.new("ScreenGui");
    ["Instance1"] = Instance.new("LocalScript");
    ["Instance2"] = Instance.new("LocalScript");
    ["Instance3"] = Instance.new("LocalScript");
    ["Instance4"] = Instance.new("Frame");
    ["Instance5"] = Instance.new("Frame");
    ["Instance6"] = Instance.new("UICorner");
    ["Instance7"] = Instance.new("UIStroke");
    ["Instance8"] = Instance.new("Frame");
    ["Instance9"] = Instance.new("UICorner");
    ["Instance10"] = Instance.new("TextButton");
    ["Instance11"] = Instance.new("UICorner");
    ["Instance12"] = Instance.new("UIStroke");
    ["Instance13"] = Instance.new("TextButton");
    ["Instance14"] = Instance.new("UICorner");
    ["Instance15"] = Instance.new("UIStroke");
    ["Instance16"] = Instance.new("Frame");
    ["Instance17"] = Instance.new("UICorner");
    ["Instance18"] = Instance.new("Frame");
    ["Instance19"] = Instance.new("LocalScript");
    ["Instance20"] = Instance.new("TextButton");
    ["Instance21"] = Instance.new("UIStroke");
    ["Instance22"] = Instance.new("UICorner");
    ["Instance23"] = Instance.new("TextButton");
    ["Instance24"] = Instance.new("UICorner");
    ["Instance25"] = Instance.new("UIStroke");
    ["Instance26"] = Instance.new("TextButton");
    ["Instance27"] = Instance.new("UICorner");
    ["Instance28"] = Instance.new("UIStroke");
    ["Instance29"] = Instance.new("TextButton");
    ["Instance30"] = Instance.new("UICorner");
    ["Instance31"] = Instance.new("UIStroke");
    ["Instance32"] = Instance.new("TextButton");
    ["Instance33"] = Instance.new("UICorner");
    ["Instance34"] = Instance.new("UIStroke");
    ["Instance35"] = Instance.new("TextButton");
    ["Instance36"] = Instance.new("UICorner");
    ["Instance37"] = Instance.new("UIStroke");
    ["Instance38"] = Instance.new("TextButton");
    ["Instance39"] = Instance.new("UICorner");
    ["Instance40"] = Instance.new("UIStroke");
    ["Instance41"] = Instance.new("TextButton");
    ["Instance42"] = Instance.new("UICorner");
    ["Instance43"] = Instance.new("UIStroke");
    ["Instance44"] = Instance.new("TextButton");
    ["Instance45"] = Instance.new("UICorner");
    ["Instance46"] = Instance.new("UIStroke");
    ["Instance47"] = Instance.new("TextButton");
    ["Instance48"] = Instance.new("UICorner");
    ["Instance49"] = Instance.new("UIStroke");
    ["Instance50"] = Instance.new("TextButton");
    ["Instance51"] = Instance.new("UICorner");
    ["Instance52"] = Instance.new("UIStroke");
    ["Instance53"] = Instance.new("TextButton");
    ["Instance54"] = Instance.new("UICorner");
    ["Instance55"] = Instance.new("UIStroke");
    ["Instance56"] = Instance.new("TextButton");
    ["Instance57"] = Instance.new("UICorner");
    ["Instance58"] = Instance.new("UIStroke");
    ["Instance59"] = Instance.new("TextButton");
    ["Instance60"] = Instance.new("UICorner");
    ["Instance61"] = Instance.new("UIStroke");
    ["Instance62"] = Instance.new("TextButton");
    ["Instance63"] = Instance.new("UICorner");
    ["Instance64"] = Instance.new("UIStroke");
    ["Instance65"] = Instance.new("TextButton");
    ["Instance66"] = Instance.new("UICorner");
    ["Instance67"] = Instance.new("UIStroke");
    ["Instance68"] = Instance.new("TextButton");
    ["Instance69"] = Instance.new("UICorner");
    ["Instance70"] = Instance.new("UIStroke");
    ["Instance71"] = Instance.new("TextButton");
    ["Instance72"] = Instance.new("UICorner");
    ["Instance73"] = Instance.new("UIStroke");
    ["Instance74"] = Instance.new("UICorner");
    ["Instance75"] = Instance.new("UIGridLayout");
    ["Instance76"] = Instance.new("UIPadding");
    ["Instance77"] = Instance.new("Folder");
    ["Instance78"] = Instance.new("Frame");
};

do -- Set properties
    objects["Instance0"]["Enabled"] = true;
    objects["Instance0"]["ScreenInsets"] = Enum.ScreenInsets.CoreUISafeInsets;
    objects["Instance0"]["SafeAreaCompatibility"] = Enum.SafeAreaCompatibility.FullscreenExtension;
    objects["Instance0"]["ClipToDeviceSafeArea"] = true;
    objects["Instance0"]["Parent"] = parent;
    objects["Instance0"]["IgnoreGuiInset"] = false;
    objects["Instance0"]["Name"] = "War Tycoon by Sayke";
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
    objects["Instance4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
    objects["Instance4"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance4"]["ZIndex"] = 345673845;
    objects["Instance4"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance4"]["Size"] = UDim2.new(0, 442, 0, 350);
    objects["Instance4"]["Draggable"] = false;
    objects["Instance4"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance4"]["ClipsDescendants"] = false;
    objects["Instance4"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance4"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance4"]["BackgroundTransparency"] = 1;
    objects["Instance4"]["BorderSizePixel"] = 0;
    objects["Instance4"]["Rotation"] = 0;
    objects["Instance4"]["Transparency"] = 1;
    objects["Instance4"]["Name"] = "MainFrame";
    objects["Instance4"]["SelectionOrder"] = 0;
    objects["Instance4"]["Visible"] = true;
    objects["Instance4"]["Selectable"] = false;
    objects["Instance4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
    objects["Instance4"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance5"]["LayoutOrder"] = 0;
    objects["Instance5"]["Active"] = false;
    objects["Instance5"]["Parent"] = objects["Instance4"];
    objects["Instance5"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance5"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance5"]["ZIndex"] = 1;
    objects["Instance5"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance5"]["Size"] = UDim2.new(0, 442, 0, 350);
    objects["Instance5"]["Draggable"] = false;
    objects["Instance5"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance5"]["ClipsDescendants"] = false;
    objects["Instance5"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance5"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance5"]["BackgroundTransparency"] = 0;
    objects["Instance5"]["BorderSizePixel"] = 0;
    objects["Instance5"]["Rotation"] = 0;
    objects["Instance5"]["Transparency"] = 0;
    objects["Instance5"]["Name"] = "Frame";
    objects["Instance5"]["SelectionOrder"] = 0;
    objects["Instance5"]["Visible"] = true;
    objects["Instance5"]["Selectable"] = false;
    objects["Instance5"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance5"]["BackgroundColor3"] = Color3.new(0.0941177, 0.0941177, 0.0941177);

    objects["Instance6"]["Parent"] = objects["Instance5"];
    objects["Instance6"]["Name"] = "UICorner";
    objects["Instance6"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance7"]["Enabled"] = true;
    objects["Instance7"]["Transparency"] = 0;
    objects["Instance7"]["Name"] = "UIStroke";
    objects["Instance7"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance7"]["Parent"] = objects["Instance5"];
    objects["Instance7"]["Thickness"] = 3;
    objects["Instance7"]["Color"] = Color3.new(0.313726, 0.313726, 0.313726);
    objects["Instance7"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Contextual;

    objects["Instance8"]["LayoutOrder"] = 0;
    objects["Instance8"]["Active"] = false;
    objects["Instance8"]["Parent"] = objects["Instance5"];
    objects["Instance8"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance8"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance8"]["ZIndex"] = 1;
    objects["Instance8"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance8"]["Size"] = UDim2.new(0, 113, 0, 350);
    objects["Instance8"]["Draggable"] = false;
    objects["Instance8"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance8"]["ClipsDescendants"] = false;
    objects["Instance8"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance8"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance8"]["BackgroundTransparency"] = 1;
    objects["Instance8"]["BorderSizePixel"] = 0;
    objects["Instance8"]["Rotation"] = 0;
    objects["Instance8"]["Transparency"] = 1;
    objects["Instance8"]["Name"] = "ButtonFrame";
    objects["Instance8"]["SelectionOrder"] = 0;
    objects["Instance8"]["Visible"] = true;
    objects["Instance8"]["Selectable"] = false;
    objects["Instance8"]["Position"] = UDim2.new(0, 0, 0, 0);
    objects["Instance8"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance9"]["Parent"] = objects["Instance8"];
    objects["Instance9"]["Name"] = "UICorner";
    objects["Instance9"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance10"]["Visible"] = true;
    objects["Instance10"]["FontSize"] = Enum.FontSize.Size24;
    objects["Instance10"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance10"]["Active"] = true;
    objects["Instance10"]["TextStrokeTransparency"] = 1;
    objects["Instance10"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance10"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance10"]["ZIndex"] = 1;
    objects["Instance10"]["BorderSizePixel"] = 0;
    objects["Instance10"]["Draggable"] = false;
    objects["Instance10"]["RichText"] = false;
    objects["Instance10"]["Modal"] = false;
    objects["Instance10"]["AutoButtonColor"] = true;
    objects["Instance10"]["Transparency"] = 0;
    objects["Instance10"]["SelectionOrder"] = 0;
    objects["Instance10"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance10"]["TextScaled"] = false;
    objects["Instance10"]["TextWrap"] = false;
    objects["Instance10"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance10"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance10"]["Parent"] = objects["Instance8"];
    objects["Instance10"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance10"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance10"]["Position"] = UDim2.new(0.12389380484819412, 0, 0.05714285746216774, 0);
    objects["Instance10"]["BackgroundColor3"] = Color3.new(0.313726, 0.313726, 0.313726);
    objects["Instance10"]["Selected"] = false;
    objects["Instance10"]["TextSize"] = 20;
    objects["Instance10"]["Size"] = UDim2.new(0, 80, 0, 35);
    objects["Instance10"]["BackgroundTransparency"] = 0;
    objects["Instance10"]["TextWrapped"] = false;
    objects["Instance10"]["ClipsDescendants"] = false;
    objects["Instance10"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance10"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance10"]["Text"] = "Main";
    objects["Instance10"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance10"]["LayoutOrder"] = 0;
    objects["Instance10"]["Rotation"] = 0;
    objects["Instance10"]["LineHeight"] = 1;
    objects["Instance10"]["Name"] = "TextButton";
    objects["Instance10"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance10"]["Selectable"] = true;
    objects["Instance10"]["MaxVisibleGraphemes"] = -1;
    objects["Instance10"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance10"]["TextTransparency"] = 0;

    objects["Instance11"]["Parent"] = objects["Instance10"];
    objects["Instance11"]["Name"] = "UICorner";
    objects["Instance11"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance12"]["Enabled"] = true;
    objects["Instance12"]["Transparency"] = 0;
    objects["Instance12"]["Name"] = "UIStroke";
    objects["Instance12"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance12"]["Parent"] = objects["Instance10"];
    objects["Instance12"]["Thickness"] = 3;
    objects["Instance12"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance12"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance13"]["Visible"] = true;
    objects["Instance13"]["FontSize"] = Enum.FontSize.Size24;
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
    objects["Instance13"]["TextScaled"] = false;
    objects["Instance13"]["TextWrap"] = false;
    objects["Instance13"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance13"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance13"]["Parent"] = objects["Instance8"];
    objects["Instance13"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance13"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance13"]["Position"] = UDim2.new(0.12399999797344208, 0, 0.20000000298023224, 0);
    objects["Instance13"]["BackgroundColor3"] = Color3.new(0.313726, 0.313726, 0.313726);
    objects["Instance13"]["Selected"] = false;
    objects["Instance13"]["TextSize"] = 20;
    objects["Instance13"]["Size"] = UDim2.new(0, 80, 0, 35);
    objects["Instance13"]["BackgroundTransparency"] = 0;
    objects["Instance13"]["TextWrapped"] = false;
    objects["Instance13"]["ClipsDescendants"] = false;
    objects["Instance13"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance13"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["Text"] = "Bases";
    objects["Instance13"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance13"]["LayoutOrder"] = 0;
    objects["Instance13"]["Rotation"] = 0;
    objects["Instance13"]["LineHeight"] = 1;
    objects["Instance13"]["Name"] = "Bases";
    objects["Instance13"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance13"]["Selectable"] = true;
    objects["Instance13"]["MaxVisibleGraphemes"] = -1;
    objects["Instance13"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance13"]["TextTransparency"] = 0;

    objects["Instance14"]["Parent"] = objects["Instance13"];
    objects["Instance14"]["Name"] = "UICorner";
    objects["Instance14"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance15"]["Enabled"] = true;
    objects["Instance15"]["Transparency"] = 0;
    objects["Instance15"]["Name"] = "UIStroke";
    objects["Instance15"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance15"]["Parent"] = objects["Instance13"];
    objects["Instance15"]["Thickness"] = 3;
    objects["Instance15"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance15"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance16"]["LayoutOrder"] = 0;
    objects["Instance16"]["Active"] = false;
    objects["Instance16"]["Parent"] = objects["Instance5"];
    objects["Instance16"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance16"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance16"]["ZIndex"] = 1;
    objects["Instance16"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance16"]["Size"] = UDim2.new(0, 329, 0, 350);
    objects["Instance16"]["Draggable"] = false;
    objects["Instance16"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance16"]["ClipsDescendants"] = false;
    objects["Instance16"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance16"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance16"]["BackgroundTransparency"] = 1;
    objects["Instance16"]["BorderSizePixel"] = 0;
    objects["Instance16"]["Rotation"] = 0;
    objects["Instance16"]["Transparency"] = 1;
    objects["Instance16"]["Name"] = "FunctonFrame";
    objects["Instance16"]["SelectionOrder"] = 0;
    objects["Instance16"]["Visible"] = true;
    objects["Instance16"]["Selectable"] = false;
    objects["Instance16"]["Position"] = UDim2.new(0.2556561231613159, 0, 0, 0);
    objects["Instance16"]["BackgroundColor3"] = Color3.new(1, 1, 1);

    objects["Instance17"]["Parent"] = objects["Instance16"];
    objects["Instance17"]["Name"] = "UICorner";
    objects["Instance17"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance18"]["LayoutOrder"] = 0;
    objects["Instance18"]["Active"] = false;
    objects["Instance18"]["Parent"] = objects["Instance16"];
    objects["Instance18"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance18"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance18"]["ZIndex"] = 1;
    objects["Instance18"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance18"]["Size"] = UDim2.new(0, 280, 0, 290);
    objects["Instance18"]["Draggable"] = false;
    objects["Instance18"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance18"]["ClipsDescendants"] = false;
    objects["Instance18"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance18"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance18"]["BackgroundTransparency"] = 0;
    objects["Instance18"]["BorderSizePixel"] = 0;
    objects["Instance18"]["Rotation"] = 0;
    objects["Instance18"]["Transparency"] = 0;
    objects["Instance18"]["Name"] = "Bases";
    objects["Instance18"]["SelectionOrder"] = 0;
    objects["Instance18"]["Visible"] = true;
    objects["Instance18"]["Selectable"] = false;
    objects["Instance18"]["Position"] = UDim2.new(0.07902735471725464, 0, 0.08571428805589676, 0);
    objects["Instance18"]["BackgroundColor3"] = Color3.new(0.235294, 0.235294, 0.235294);

    objects["Instance19"]["Parent"] = objects["Instance18"];
    objects["Instance19"]["Name"] = "LocalScript";
    objects["Instance19"]["Enabled"] = true;

    objects["Instance20"]["Visible"] = true;
    objects["Instance20"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance20"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance20"]["Active"] = true;
    objects["Instance20"]["TextStrokeTransparency"] = 1;
    objects["Instance20"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance20"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance20"]["ZIndex"] = 1;
    objects["Instance20"]["BorderSizePixel"] = 0;
    objects["Instance20"]["Draggable"] = false;
    objects["Instance20"]["RichText"] = true;
    objects["Instance20"]["Modal"] = false;
    objects["Instance20"]["AutoButtonColor"] = true;
    objects["Instance20"]["Transparency"] = 0;
    objects["Instance20"]["SelectionOrder"] = 0;
    objects["Instance20"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance20"]["TextScaled"] = true;
    objects["Instance20"]["TextWrap"] = true;
    objects["Instance20"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance20"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance20"]["Parent"] = objects["Instance18"];
    objects["Instance20"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance20"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance20"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance20"]["BackgroundColor3"] = Color3.new(1, 0, 0);
    objects["Instance20"]["Selected"] = false;
    objects["Instance20"]["TextSize"] = 14;
    objects["Instance20"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance20"]["BackgroundTransparency"] = 0;
    objects["Instance20"]["TextWrapped"] = true;
    objects["Instance20"]["ClipsDescendants"] = false;
    objects["Instance20"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance20"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["Text"] = "Alpha";
    objects["Instance20"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance20"]["LayoutOrder"] = 0;
    objects["Instance20"]["Rotation"] = 0;
    objects["Instance20"]["LineHeight"] = 1;
    objects["Instance20"]["Name"] = "Alpha";
    objects["Instance20"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance20"]["Selectable"] = true;
    objects["Instance20"]["MaxVisibleGraphemes"] = -1;
    objects["Instance20"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance20"]["TextTransparency"] = 0;

    objects["Instance21"]["Enabled"] = true;
    objects["Instance21"]["Transparency"] = 0;
    objects["Instance21"]["Name"] = "UIStroke";
    objects["Instance21"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance21"]["Parent"] = objects["Instance20"];
    objects["Instance21"]["Thickness"] = 3;
    objects["Instance21"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance22"]["Parent"] = objects["Instance20"];
    objects["Instance22"]["Name"] = "Alpha";
    objects["Instance22"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance23"]["Visible"] = true;
    objects["Instance23"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance23"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance23"]["Active"] = true;
    objects["Instance23"]["TextStrokeTransparency"] = 1;
    objects["Instance23"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance23"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance23"]["ZIndex"] = 1;
    objects["Instance23"]["BorderSizePixel"] = 0;
    objects["Instance23"]["Draggable"] = false;
    objects["Instance23"]["RichText"] = true;
    objects["Instance23"]["Modal"] = false;
    objects["Instance23"]["AutoButtonColor"] = true;
    objects["Instance23"]["Transparency"] = 0;
    objects["Instance23"]["SelectionOrder"] = 0;
    objects["Instance23"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance23"]["TextScaled"] = true;
    objects["Instance23"]["TextWrap"] = true;
    objects["Instance23"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance23"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance23"]["Parent"] = objects["Instance18"];
    objects["Instance23"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance23"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance23"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance23"]["BackgroundColor3"] = Color3.new(0.854902, 0.521569, 0.254902);
    objects["Instance23"]["Selected"] = false;
    objects["Instance23"]["TextSize"] = 14;
    objects["Instance23"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance23"]["BackgroundTransparency"] = 0;
    objects["Instance23"]["TextWrapped"] = true;
    objects["Instance23"]["ClipsDescendants"] = false;
    objects["Instance23"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["Text"] = "Bravo";
    objects["Instance23"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance23"]["LayoutOrder"] = 0;
    objects["Instance23"]["Rotation"] = 0;
    objects["Instance23"]["LineHeight"] = 1;
    objects["Instance23"]["Name"] = "Bravo";
    objects["Instance23"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance23"]["Selectable"] = true;
    objects["Instance23"]["MaxVisibleGraphemes"] = -1;
    objects["Instance23"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance23"]["TextTransparency"] = 0;

    objects["Instance24"]["Parent"] = objects["Instance23"];
    objects["Instance24"]["Name"] = "Alpha";
    objects["Instance24"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance25"]["Enabled"] = true;
    objects["Instance25"]["Transparency"] = 0;
    objects["Instance25"]["Name"] = "UIStroke";
    objects["Instance25"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance25"]["Parent"] = objects["Instance23"];
    objects["Instance25"]["Thickness"] = 3;
    objects["Instance25"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance25"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance26"]["Visible"] = true;
    objects["Instance26"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance26"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance26"]["Active"] = true;
    objects["Instance26"]["TextStrokeTransparency"] = 1;
    objects["Instance26"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance26"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance26"]["ZIndex"] = 1;
    objects["Instance26"]["BorderSizePixel"] = 0;
    objects["Instance26"]["Draggable"] = false;
    objects["Instance26"]["RichText"] = true;
    objects["Instance26"]["Modal"] = false;
    objects["Instance26"]["AutoButtonColor"] = true;
    objects["Instance26"]["Transparency"] = 0;
    objects["Instance26"]["SelectionOrder"] = 0;
    objects["Instance26"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance26"]["TextScaled"] = true;
    objects["Instance26"]["TextWrap"] = true;
    objects["Instance26"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance26"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance26"]["Parent"] = objects["Instance18"];
    objects["Instance26"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance26"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance26"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance26"]["BackgroundColor3"] = Color3.new(1, 1, 0);
    objects["Instance26"]["Selected"] = false;
    objects["Instance26"]["TextSize"] = 14;
    objects["Instance26"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance26"]["BackgroundTransparency"] = 0;
    objects["Instance26"]["TextWrapped"] = true;
    objects["Instance26"]["ClipsDescendants"] = false;
    objects["Instance26"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["Text"] = "Charlie";
    objects["Instance26"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance26"]["LayoutOrder"] = 0;
    objects["Instance26"]["Rotation"] = 0;
    objects["Instance26"]["LineHeight"] = 1;
    objects["Instance26"]["Name"] = "Charlie";
    objects["Instance26"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance26"]["Selectable"] = true;
    objects["Instance26"]["MaxVisibleGraphemes"] = -1;
    objects["Instance26"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance26"]["TextTransparency"] = 0;

    objects["Instance27"]["Parent"] = objects["Instance26"];
    objects["Instance27"]["Name"] = "Alpha";
    objects["Instance27"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance28"]["Enabled"] = true;
    objects["Instance28"]["Transparency"] = 0;
    objects["Instance28"]["Name"] = "UIStroke";
    objects["Instance28"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance28"]["Parent"] = objects["Instance26"];
    objects["Instance28"]["Thickness"] = 3;
    objects["Instance28"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance28"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance29"]["Visible"] = true;
    objects["Instance29"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance29"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance29"]["Active"] = true;
    objects["Instance29"]["TextStrokeTransparency"] = 1;
    objects["Instance29"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance29"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance29"]["ZIndex"] = 1;
    objects["Instance29"]["BorderSizePixel"] = 0;
    objects["Instance29"]["Draggable"] = false;
    objects["Instance29"]["RichText"] = true;
    objects["Instance29"]["Modal"] = false;
    objects["Instance29"]["AutoButtonColor"] = true;
    objects["Instance29"]["Transparency"] = 0;
    objects["Instance29"]["SelectionOrder"] = 0;
    objects["Instance29"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance29"]["TextScaled"] = true;
    objects["Instance29"]["TextWrap"] = true;
    objects["Instance29"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance29"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance29"]["Parent"] = objects["Instance18"];
    objects["Instance29"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance29"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance29"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance29"]["BackgroundColor3"] = Color3.new(0.294118, 0.592157, 0.294118);
    objects["Instance29"]["Selected"] = false;
    objects["Instance29"]["TextSize"] = 14;
    objects["Instance29"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance29"]["BackgroundTransparency"] = 0;
    objects["Instance29"]["TextWrapped"] = true;
    objects["Instance29"]["ClipsDescendants"] = false;
    objects["Instance29"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance29"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance29"]["Text"] = "Delta";
    objects["Instance29"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance29"]["LayoutOrder"] = 0;
    objects["Instance29"]["Rotation"] = 0;
    objects["Instance29"]["LineHeight"] = 1;
    objects["Instance29"]["Name"] = "Delta";
    objects["Instance29"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance29"]["Selectable"] = true;
    objects["Instance29"]["MaxVisibleGraphemes"] = -1;
    objects["Instance29"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance29"]["TextTransparency"] = 0;

    objects["Instance30"]["Parent"] = objects["Instance29"];
    objects["Instance30"]["Name"] = "Alpha";
    objects["Instance30"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance31"]["Enabled"] = true;
    objects["Instance31"]["Transparency"] = 0;
    objects["Instance31"]["Name"] = "UIStroke";
    objects["Instance31"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance31"]["Parent"] = objects["Instance29"];
    objects["Instance31"]["Thickness"] = 3;
    objects["Instance31"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance31"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance32"]["Visible"] = true;
    objects["Instance32"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance32"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance32"]["Active"] = true;
    objects["Instance32"]["TextStrokeTransparency"] = 1;
    objects["Instance32"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance32"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance32"]["ZIndex"] = 1;
    objects["Instance32"]["BorderSizePixel"] = 0;
    objects["Instance32"]["Draggable"] = false;
    objects["Instance32"]["RichText"] = true;
    objects["Instance32"]["Modal"] = false;
    objects["Instance32"]["AutoButtonColor"] = true;
    objects["Instance32"]["Transparency"] = 0;
    objects["Instance32"]["SelectionOrder"] = 0;
    objects["Instance32"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance32"]["TextScaled"] = true;
    objects["Instance32"]["TextWrap"] = true;
    objects["Instance32"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance32"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance32"]["Parent"] = objects["Instance18"];
    objects["Instance32"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance32"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance32"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance32"]["BackgroundColor3"] = Color3.new(0.152941, 0.27451, 0.176471);
    objects["Instance32"]["Selected"] = false;
    objects["Instance32"]["TextSize"] = 14;
    objects["Instance32"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance32"]["BackgroundTransparency"] = 0;
    objects["Instance32"]["TextWrapped"] = true;
    objects["Instance32"]["ClipsDescendants"] = false;
    objects["Instance32"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance32"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance32"]["Text"] = "Echo";
    objects["Instance32"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance32"]["LayoutOrder"] = 0;
    objects["Instance32"]["Rotation"] = 0;
    objects["Instance32"]["LineHeight"] = 1;
    objects["Instance32"]["Name"] = "Echo";
    objects["Instance32"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance32"]["Selectable"] = true;
    objects["Instance32"]["MaxVisibleGraphemes"] = -1;
    objects["Instance32"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance32"]["TextTransparency"] = 0;

    objects["Instance33"]["Parent"] = objects["Instance32"];
    objects["Instance33"]["Name"] = "Alpha";
    objects["Instance33"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance34"]["Enabled"] = true;
    objects["Instance34"]["Transparency"] = 0;
    objects["Instance34"]["Name"] = "UIStroke";
    objects["Instance34"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance34"]["Parent"] = objects["Instance32"];
    objects["Instance34"]["Thickness"] = 3;
    objects["Instance34"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance34"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance35"]["Visible"] = true;
    objects["Instance35"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance35"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance35"]["Active"] = true;
    objects["Instance35"]["TextStrokeTransparency"] = 1;
    objects["Instance35"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance35"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance35"]["ZIndex"] = 1;
    objects["Instance35"]["BorderSizePixel"] = 0;
    objects["Instance35"]["Draggable"] = false;
    objects["Instance35"]["RichText"] = true;
    objects["Instance35"]["Modal"] = false;
    objects["Instance35"]["AutoButtonColor"] = true;
    objects["Instance35"]["Transparency"] = 0;
    objects["Instance35"]["SelectionOrder"] = 0;
    objects["Instance35"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance35"]["TextScaled"] = true;
    objects["Instance35"]["TextWrap"] = true;
    objects["Instance35"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance35"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance35"]["Parent"] = objects["Instance18"];
    objects["Instance35"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance35"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance35"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance35"]["BackgroundColor3"] = Color3.new(0.0705882, 0.933333, 0.831373);
    objects["Instance35"]["Selected"] = false;
    objects["Instance35"]["TextSize"] = 14;
    objects["Instance35"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance35"]["BackgroundTransparency"] = 0;
    objects["Instance35"]["TextWrapped"] = true;
    objects["Instance35"]["ClipsDescendants"] = false;
    objects["Instance35"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["Text"] = "Foxtrot";
    objects["Instance35"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance35"]["LayoutOrder"] = 0;
    objects["Instance35"]["Rotation"] = 0;
    objects["Instance35"]["LineHeight"] = 1;
    objects["Instance35"]["Name"] = "Foxtrot";
    objects["Instance35"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance35"]["Selectable"] = true;
    objects["Instance35"]["MaxVisibleGraphemes"] = -1;
    objects["Instance35"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance35"]["TextTransparency"] = 0;

    objects["Instance36"]["Parent"] = objects["Instance35"];
    objects["Instance36"]["Name"] = "Alpha";
    objects["Instance36"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance37"]["Enabled"] = true;
    objects["Instance37"]["Transparency"] = 0;
    objects["Instance37"]["Name"] = "UIStroke";
    objects["Instance37"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance37"]["Parent"] = objects["Instance35"];
    objects["Instance37"]["Thickness"] = 3;
    objects["Instance37"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance37"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance38"]["Visible"] = true;
    objects["Instance38"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance38"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance38"]["Active"] = true;
    objects["Instance38"]["TextStrokeTransparency"] = 1;
    objects["Instance38"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance38"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance38"]["ZIndex"] = 1;
    objects["Instance38"]["BorderSizePixel"] = 0;
    objects["Instance38"]["Draggable"] = false;
    objects["Instance38"]["RichText"] = true;
    objects["Instance38"]["Modal"] = false;
    objects["Instance38"]["AutoButtonColor"] = true;
    objects["Instance38"]["Transparency"] = 0;
    objects["Instance38"]["SelectionOrder"] = 0;
    objects["Instance38"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance38"]["TextScaled"] = true;
    objects["Instance38"]["TextWrap"] = true;
    objects["Instance38"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance38"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance38"]["Parent"] = objects["Instance18"];
    objects["Instance38"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance38"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance38"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance38"]["BackgroundColor3"] = Color3.new(0.0509804, 0.411765, 0.67451);
    objects["Instance38"]["Selected"] = false;
    objects["Instance38"]["TextSize"] = 14;
    objects["Instance38"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance38"]["BackgroundTransparency"] = 0;
    objects["Instance38"]["TextWrapped"] = true;
    objects["Instance38"]["ClipsDescendants"] = false;
    objects["Instance38"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance38"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["Text"] = "Golf";
    objects["Instance38"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance38"]["LayoutOrder"] = 0;
    objects["Instance38"]["Rotation"] = 0;
    objects["Instance38"]["LineHeight"] = 1;
    objects["Instance38"]["Name"] = "Golf";
    objects["Instance38"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance38"]["Selectable"] = true;
    objects["Instance38"]["MaxVisibleGraphemes"] = -1;
    objects["Instance38"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance38"]["TextTransparency"] = 0;

    objects["Instance39"]["Parent"] = objects["Instance38"];
    objects["Instance39"]["Name"] = "Alpha";
    objects["Instance39"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance40"]["Enabled"] = true;
    objects["Instance40"]["Transparency"] = 0;
    objects["Instance40"]["Name"] = "UIStroke";
    objects["Instance40"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance40"]["Parent"] = objects["Instance38"];
    objects["Instance40"]["Thickness"] = 3;
    objects["Instance40"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance41"]["Visible"] = true;
    objects["Instance41"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance41"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance41"]["Active"] = true;
    objects["Instance41"]["TextStrokeTransparency"] = 1;
    objects["Instance41"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance41"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance41"]["ZIndex"] = 1;
    objects["Instance41"]["BorderSizePixel"] = 0;
    objects["Instance41"]["Draggable"] = false;
    objects["Instance41"]["RichText"] = true;
    objects["Instance41"]["Modal"] = false;
    objects["Instance41"]["AutoButtonColor"] = true;
    objects["Instance41"]["Transparency"] = 0;
    objects["Instance41"]["SelectionOrder"] = 0;
    objects["Instance41"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance41"]["TextScaled"] = true;
    objects["Instance41"]["TextWrap"] = true;
    objects["Instance41"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance41"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance41"]["Parent"] = objects["Instance18"];
    objects["Instance41"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance41"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance41"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance41"]["BackgroundColor3"] = Color3.new(0, 0, 1);
    objects["Instance41"]["Selected"] = false;
    objects["Instance41"]["TextSize"] = 14;
    objects["Instance41"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance41"]["BackgroundTransparency"] = 0;
    objects["Instance41"]["TextWrapped"] = true;
    objects["Instance41"]["ClipsDescendants"] = false;
    objects["Instance41"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance41"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["Text"] = "Hotel";
    objects["Instance41"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance41"]["LayoutOrder"] = 0;
    objects["Instance41"]["Rotation"] = 0;
    objects["Instance41"]["LineHeight"] = 1;
    objects["Instance41"]["Name"] = "Hotel";
    objects["Instance41"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance41"]["Selectable"] = true;
    objects["Instance41"]["MaxVisibleGraphemes"] = -1;
    objects["Instance41"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance41"]["TextTransparency"] = 0;

    objects["Instance42"]["Parent"] = objects["Instance41"];
    objects["Instance42"]["Name"] = "Alpha";
    objects["Instance42"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance43"]["Enabled"] = true;
    objects["Instance43"]["Transparency"] = 0;
    objects["Instance43"]["Name"] = "UIStroke";
    objects["Instance43"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance43"]["Parent"] = objects["Instance41"];
    objects["Instance43"]["Thickness"] = 3;
    objects["Instance43"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance44"]["Visible"] = true;
    objects["Instance44"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance44"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance44"]["Active"] = true;
    objects["Instance44"]["TextStrokeTransparency"] = 1;
    objects["Instance44"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance44"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance44"]["ZIndex"] = 1;
    objects["Instance44"]["BorderSizePixel"] = 0;
    objects["Instance44"]["Draggable"] = false;
    objects["Instance44"]["RichText"] = true;
    objects["Instance44"]["Modal"] = false;
    objects["Instance44"]["AutoButtonColor"] = true;
    objects["Instance44"]["Transparency"] = 0;
    objects["Instance44"]["SelectionOrder"] = 0;
    objects["Instance44"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance44"]["TextScaled"] = true;
    objects["Instance44"]["TextWrap"] = true;
    objects["Instance44"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance44"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance44"]["Parent"] = objects["Instance18"];
    objects["Instance44"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance44"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance44"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance44"]["BackgroundColor3"] = Color3.new(0, 0.12549, 0.376471);
    objects["Instance44"]["Selected"] = false;
    objects["Instance44"]["TextSize"] = 14;
    objects["Instance44"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance44"]["BackgroundTransparency"] = 0;
    objects["Instance44"]["TextWrapped"] = true;
    objects["Instance44"]["ClipsDescendants"] = false;
    objects["Instance44"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance44"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance44"]["Text"] = "Juliet";
    objects["Instance44"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance44"]["LayoutOrder"] = 0;
    objects["Instance44"]["Rotation"] = 0;
    objects["Instance44"]["LineHeight"] = 1;
    objects["Instance44"]["Name"] = "Juliet";
    objects["Instance44"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance44"]["Selectable"] = true;
    objects["Instance44"]["MaxVisibleGraphemes"] = -1;
    objects["Instance44"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance44"]["TextTransparency"] = 0;

    objects["Instance45"]["Parent"] = objects["Instance44"];
    objects["Instance45"]["Name"] = "Alpha";
    objects["Instance45"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance46"]["Enabled"] = true;
    objects["Instance46"]["Transparency"] = 0;
    objects["Instance46"]["Name"] = "UIStroke";
    objects["Instance46"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance46"]["Parent"] = objects["Instance44"];
    objects["Instance46"]["Thickness"] = 3;
    objects["Instance46"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance46"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance47"]["Visible"] = true;
    objects["Instance47"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance47"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance47"]["Active"] = true;
    objects["Instance47"]["TextStrokeTransparency"] = 1;
    objects["Instance47"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance47"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance47"]["ZIndex"] = 1;
    objects["Instance47"]["BorderSizePixel"] = 0;
    objects["Instance47"]["Draggable"] = false;
    objects["Instance47"]["RichText"] = true;
    objects["Instance47"]["Modal"] = false;
    objects["Instance47"]["AutoButtonColor"] = true;
    objects["Instance47"]["Transparency"] = 0;
    objects["Instance47"]["SelectionOrder"] = 0;
    objects["Instance47"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance47"]["TextScaled"] = true;
    objects["Instance47"]["TextWrap"] = true;
    objects["Instance47"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance47"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance47"]["Parent"] = objects["Instance18"];
    objects["Instance47"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance47"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance47"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance47"]["BackgroundColor3"] = Color3.new(0.384314, 0.145098, 0.819608);
    objects["Instance47"]["Selected"] = false;
    objects["Instance47"]["TextSize"] = 14;
    objects["Instance47"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance47"]["BackgroundTransparency"] = 0;
    objects["Instance47"]["TextWrapped"] = true;
    objects["Instance47"]["ClipsDescendants"] = false;
    objects["Instance47"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance47"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance47"]["Text"] = "Kilo";
    objects["Instance47"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance47"]["LayoutOrder"] = 0;
    objects["Instance47"]["Rotation"] = 0;
    objects["Instance47"]["LineHeight"] = 1;
    objects["Instance47"]["Name"] = "Kilo";
    objects["Instance47"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance47"]["Selectable"] = true;
    objects["Instance47"]["MaxVisibleGraphemes"] = -1;
    objects["Instance47"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance47"]["TextTransparency"] = 0;

    objects["Instance48"]["Parent"] = objects["Instance47"];
    objects["Instance48"]["Name"] = "Alpha";
    objects["Instance48"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance49"]["Enabled"] = true;
    objects["Instance49"]["Transparency"] = 0;
    objects["Instance49"]["Name"] = "UIStroke";
    objects["Instance49"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance49"]["Parent"] = objects["Instance47"];
    objects["Instance49"]["Thickness"] = 3;
    objects["Instance49"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance49"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance50"]["Visible"] = true;
    objects["Instance50"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance50"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance50"]["Active"] = true;
    objects["Instance50"]["TextStrokeTransparency"] = 1;
    objects["Instance50"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance50"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance50"]["ZIndex"] = 1;
    objects["Instance50"]["BorderSizePixel"] = 0;
    objects["Instance50"]["Draggable"] = false;
    objects["Instance50"]["RichText"] = true;
    objects["Instance50"]["Modal"] = false;
    objects["Instance50"]["AutoButtonColor"] = true;
    objects["Instance50"]["Transparency"] = 0;
    objects["Instance50"]["SelectionOrder"] = 0;
    objects["Instance50"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance50"]["TextScaled"] = true;
    objects["Instance50"]["TextWrap"] = true;
    objects["Instance50"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance50"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance50"]["Parent"] = objects["Instance18"];
    objects["Instance50"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance50"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance50"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance50"]["BackgroundColor3"] = Color3.new(0.705882, 0.501961, 1);
    objects["Instance50"]["Selected"] = false;
    objects["Instance50"]["TextSize"] = 14;
    objects["Instance50"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance50"]["BackgroundTransparency"] = 0;
    objects["Instance50"]["TextWrapped"] = true;
    objects["Instance50"]["ClipsDescendants"] = false;
    objects["Instance50"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance50"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance50"]["Text"] = "Lima";
    objects["Instance50"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance50"]["LayoutOrder"] = 0;
    objects["Instance50"]["Rotation"] = 0;
    objects["Instance50"]["LineHeight"] = 1;
    objects["Instance50"]["Name"] = "Lima";
    objects["Instance50"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance50"]["Selectable"] = true;
    objects["Instance50"]["MaxVisibleGraphemes"] = -1;
    objects["Instance50"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance50"]["TextTransparency"] = 0;

    objects["Instance51"]["Parent"] = objects["Instance50"];
    objects["Instance51"]["Name"] = "Alpha";
    objects["Instance51"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance52"]["Enabled"] = true;
    objects["Instance52"]["Transparency"] = 0;
    objects["Instance52"]["Name"] = "UIStroke";
    objects["Instance52"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance52"]["Parent"] = objects["Instance50"];
    objects["Instance52"]["Thickness"] = 3;
    objects["Instance52"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance52"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance53"]["Visible"] = true;
    objects["Instance53"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance53"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance53"]["Active"] = true;
    objects["Instance53"]["TextStrokeTransparency"] = 1;
    objects["Instance53"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance53"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance53"]["ZIndex"] = 1;
    objects["Instance53"]["BorderSizePixel"] = 0;
    objects["Instance53"]["Draggable"] = false;
    objects["Instance53"]["RichText"] = true;
    objects["Instance53"]["Modal"] = false;
    objects["Instance53"]["AutoButtonColor"] = true;
    objects["Instance53"]["Transparency"] = 0;
    objects["Instance53"]["SelectionOrder"] = 0;
    objects["Instance53"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance53"]["TextScaled"] = true;
    objects["Instance53"]["TextWrap"] = true;
    objects["Instance53"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance53"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance53"]["Parent"] = objects["Instance18"];
    objects["Instance53"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance53"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance53"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance53"]["BackgroundColor3"] = Color3.new(1, 0, 0.74902);
    objects["Instance53"]["Selected"] = false;
    objects["Instance53"]["TextSize"] = 14;
    objects["Instance53"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance53"]["BackgroundTransparency"] = 0;
    objects["Instance53"]["TextWrapped"] = true;
    objects["Instance53"]["ClipsDescendants"] = false;
    objects["Instance53"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance53"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance53"]["Text"] = "Omega";
    objects["Instance53"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance53"]["LayoutOrder"] = 0;
    objects["Instance53"]["Rotation"] = 0;
    objects["Instance53"]["LineHeight"] = 1;
    objects["Instance53"]["Name"] = "Omega";
    objects["Instance53"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance53"]["Selectable"] = true;
    objects["Instance53"]["MaxVisibleGraphemes"] = -1;
    objects["Instance53"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance53"]["TextTransparency"] = 0;

    objects["Instance54"]["Parent"] = objects["Instance53"];
    objects["Instance54"]["Name"] = "Alpha";
    objects["Instance54"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance55"]["Enabled"] = true;
    objects["Instance55"]["Transparency"] = 0;
    objects["Instance55"]["Name"] = "UIStroke";
    objects["Instance55"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance55"]["Parent"] = objects["Instance53"];
    objects["Instance55"]["Thickness"] = 3;
    objects["Instance55"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance55"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance56"]["Visible"] = true;
    objects["Instance56"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance56"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance56"]["Active"] = true;
    objects["Instance56"]["TextStrokeTransparency"] = 1;
    objects["Instance56"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance56"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance56"]["ZIndex"] = 1;
    objects["Instance56"]["BorderSizePixel"] = 0;
    objects["Instance56"]["Draggable"] = false;
    objects["Instance56"]["RichText"] = true;
    objects["Instance56"]["Modal"] = false;
    objects["Instance56"]["AutoButtonColor"] = true;
    objects["Instance56"]["Transparency"] = 0;
    objects["Instance56"]["SelectionOrder"] = 0;
    objects["Instance56"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance56"]["TextScaled"] = true;
    objects["Instance56"]["TextWrap"] = true;
    objects["Instance56"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance56"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance56"]["Parent"] = objects["Instance18"];
    objects["Instance56"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance56"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance56"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance56"]["BackgroundColor3"] = Color3.new(0.686275, 0.580392, 0.513726);
    objects["Instance56"]["Selected"] = false;
    objects["Instance56"]["TextSize"] = 14;
    objects["Instance56"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance56"]["BackgroundTransparency"] = 0;
    objects["Instance56"]["TextWrapped"] = true;
    objects["Instance56"]["ClipsDescendants"] = false;
    objects["Instance56"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance56"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance56"]["Text"] = "Romeo";
    objects["Instance56"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance56"]["LayoutOrder"] = 0;
    objects["Instance56"]["Rotation"] = 0;
    objects["Instance56"]["LineHeight"] = 1;
    objects["Instance56"]["Name"] = "Romeo";
    objects["Instance56"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance56"]["Selectable"] = true;
    objects["Instance56"]["MaxVisibleGraphemes"] = -1;
    objects["Instance56"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance56"]["TextTransparency"] = 0;

    objects["Instance57"]["Parent"] = objects["Instance56"];
    objects["Instance57"]["Name"] = "Alpha";
    objects["Instance57"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance58"]["Enabled"] = true;
    objects["Instance58"]["Transparency"] = 0;
    objects["Instance58"]["Name"] = "UIStroke";
    objects["Instance58"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance58"]["Parent"] = objects["Instance56"];
    objects["Instance58"]["Thickness"] = 3;
    objects["Instance58"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance59"]["Visible"] = true;
    objects["Instance59"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance59"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance59"]["Active"] = true;
    objects["Instance59"]["TextStrokeTransparency"] = 1;
    objects["Instance59"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance59"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance59"]["ZIndex"] = 1;
    objects["Instance59"]["BorderSizePixel"] = 0;
    objects["Instance59"]["Draggable"] = false;
    objects["Instance59"]["RichText"] = true;
    objects["Instance59"]["Modal"] = false;
    objects["Instance59"]["AutoButtonColor"] = true;
    objects["Instance59"]["Transparency"] = 0;
    objects["Instance59"]["SelectionOrder"] = 0;
    objects["Instance59"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance59"]["TextScaled"] = true;
    objects["Instance59"]["TextWrap"] = true;
    objects["Instance59"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance59"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance59"]["Parent"] = objects["Instance18"];
    objects["Instance59"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance59"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance59"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance59"]["BackgroundColor3"] = Color3.new(0.588235, 0.403922, 0.4);
    objects["Instance59"]["Selected"] = false;
    objects["Instance59"]["TextSize"] = 14;
    objects["Instance59"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance59"]["BackgroundTransparency"] = 0;
    objects["Instance59"]["TextWrapped"] = true;
    objects["Instance59"]["ClipsDescendants"] = false;
    objects["Instance59"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance59"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance59"]["Text"] = "Sierra";
    objects["Instance59"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance59"]["LayoutOrder"] = 0;
    objects["Instance59"]["Rotation"] = 0;
    objects["Instance59"]["LineHeight"] = 1;
    objects["Instance59"]["Name"] = "Sierra";
    objects["Instance59"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance59"]["Selectable"] = true;
    objects["Instance59"]["MaxVisibleGraphemes"] = -1;
    objects["Instance59"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance59"]["TextTransparency"] = 0;

    objects["Instance60"]["Parent"] = objects["Instance59"];
    objects["Instance60"]["Name"] = "Alpha";
    objects["Instance60"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance61"]["Enabled"] = true;
    objects["Instance61"]["Transparency"] = 0;
    objects["Instance61"]["Name"] = "UIStroke";
    objects["Instance61"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance61"]["Parent"] = objects["Instance59"];
    objects["Instance61"]["Thickness"] = 3;
    objects["Instance61"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance61"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance62"]["Visible"] = true;
    objects["Instance62"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance62"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance62"]["Active"] = true;
    objects["Instance62"]["TextStrokeTransparency"] = 1;
    objects["Instance62"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance62"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance62"]["ZIndex"] = 1;
    objects["Instance62"]["BorderSizePixel"] = 0;
    objects["Instance62"]["Draggable"] = false;
    objects["Instance62"]["RichText"] = true;
    objects["Instance62"]["Modal"] = false;
    objects["Instance62"]["AutoButtonColor"] = true;
    objects["Instance62"]["Transparency"] = 0;
    objects["Instance62"]["SelectionOrder"] = 0;
    objects["Instance62"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance62"]["TextScaled"] = true;
    objects["Instance62"]["TextWrap"] = true;
    objects["Instance62"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance62"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance62"]["Parent"] = objects["Instance18"];
    objects["Instance62"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance62"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance62"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance62"]["BackgroundColor3"] = Color3.new(0.337255, 0.258824, 0.211765);
    objects["Instance62"]["Selected"] = false;
    objects["Instance62"]["TextSize"] = 14;
    objects["Instance62"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance62"]["BackgroundTransparency"] = 0;
    objects["Instance62"]["TextWrapped"] = true;
    objects["Instance62"]["ClipsDescendants"] = false;
    objects["Instance62"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance62"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance62"]["Text"] = "Tango";
    objects["Instance62"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance62"]["LayoutOrder"] = 0;
    objects["Instance62"]["Rotation"] = 0;
    objects["Instance62"]["LineHeight"] = 1;
    objects["Instance62"]["Name"] = "Tango";
    objects["Instance62"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance62"]["Selectable"] = true;
    objects["Instance62"]["MaxVisibleGraphemes"] = -1;
    objects["Instance62"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance62"]["TextTransparency"] = 0;

    objects["Instance63"]["Parent"] = objects["Instance62"];
    objects["Instance63"]["Name"] = "Alpha";
    objects["Instance63"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance64"]["Enabled"] = true;
    objects["Instance64"]["Transparency"] = 0;
    objects["Instance64"]["Name"] = "UIStroke";
    objects["Instance64"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance64"]["Parent"] = objects["Instance62"];
    objects["Instance64"]["Thickness"] = 3;
    objects["Instance64"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance64"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance65"]["Visible"] = true;
    objects["Instance65"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance65"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance65"]["Active"] = true;
    objects["Instance65"]["TextStrokeTransparency"] = 1;
    objects["Instance65"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance65"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance65"]["ZIndex"] = 1;
    objects["Instance65"]["BorderSizePixel"] = 0;
    objects["Instance65"]["Draggable"] = false;
    objects["Instance65"]["RichText"] = true;
    objects["Instance65"]["Modal"] = false;
    objects["Instance65"]["AutoButtonColor"] = true;
    objects["Instance65"]["Transparency"] = 0;
    objects["Instance65"]["SelectionOrder"] = 0;
    objects["Instance65"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance65"]["TextScaled"] = true;
    objects["Instance65"]["TextWrap"] = true;
    objects["Instance65"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance65"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance65"]["Parent"] = objects["Instance18"];
    objects["Instance65"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance65"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance65"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance65"]["BackgroundColor3"] = Color3.new(0.905882, 0.905882, 0.92549);
    objects["Instance65"]["Selected"] = false;
    objects["Instance65"]["TextSize"] = 14;
    objects["Instance65"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance65"]["BackgroundTransparency"] = 0;
    objects["Instance65"]["TextWrapped"] = true;
    objects["Instance65"]["ClipsDescendants"] = false;
    objects["Instance65"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance65"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance65"]["Text"] = "Victor";
    objects["Instance65"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance65"]["LayoutOrder"] = 0;
    objects["Instance65"]["Rotation"] = 0;
    objects["Instance65"]["LineHeight"] = 1;
    objects["Instance65"]["Name"] = "Victor";
    objects["Instance65"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance65"]["Selectable"] = true;
    objects["Instance65"]["MaxVisibleGraphemes"] = -1;
    objects["Instance65"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance65"]["TextTransparency"] = 0;

    objects["Instance66"]["Parent"] = objects["Instance65"];
    objects["Instance66"]["Name"] = "Alpha";
    objects["Instance66"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance67"]["Enabled"] = true;
    objects["Instance67"]["Transparency"] = 0;
    objects["Instance67"]["Name"] = "UIStroke";
    objects["Instance67"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance67"]["Parent"] = objects["Instance65"];
    objects["Instance67"]["Thickness"] = 3;
    objects["Instance67"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance67"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance68"]["Visible"] = true;
    objects["Instance68"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance68"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance68"]["Active"] = true;
    objects["Instance68"]["TextStrokeTransparency"] = 1;
    objects["Instance68"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance68"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance68"]["ZIndex"] = 1;
    objects["Instance68"]["BorderSizePixel"] = 0;
    objects["Instance68"]["Draggable"] = false;
    objects["Instance68"]["RichText"] = true;
    objects["Instance68"]["Modal"] = false;
    objects["Instance68"]["AutoButtonColor"] = true;
    objects["Instance68"]["Transparency"] = 0;
    objects["Instance68"]["SelectionOrder"] = 0;
    objects["Instance68"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance68"]["TextScaled"] = true;
    objects["Instance68"]["TextWrap"] = true;
    objects["Instance68"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance68"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance68"]["Parent"] = objects["Instance18"];
    objects["Instance68"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance68"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance68"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance68"]["BackgroundColor3"] = Color3.new(0.454902, 0.52549, 0.615686);
    objects["Instance68"]["Selected"] = false;
    objects["Instance68"]["TextSize"] = 14;
    objects["Instance68"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance68"]["BackgroundTransparency"] = 0;
    objects["Instance68"]["TextWrapped"] = true;
    objects["Instance68"]["ClipsDescendants"] = false;
    objects["Instance68"]["TextColor3"] = Color3.new(0, 0, 0);
    objects["Instance68"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance68"]["Text"] = "Yankee";
    objects["Instance68"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance68"]["LayoutOrder"] = 0;
    objects["Instance68"]["Rotation"] = 0;
    objects["Instance68"]["LineHeight"] = 1;
    objects["Instance68"]["Name"] = "Yankee";
    objects["Instance68"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance68"]["Selectable"] = true;
    objects["Instance68"]["MaxVisibleGraphemes"] = -1;
    objects["Instance68"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance68"]["TextTransparency"] = 0;

    objects["Instance69"]["Parent"] = objects["Instance68"];
    objects["Instance69"]["Name"] = "Alpha";
    objects["Instance69"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance70"]["Enabled"] = true;
    objects["Instance70"]["Transparency"] = 0;
    objects["Instance70"]["Name"] = "UIStroke";
    objects["Instance70"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance70"]["Parent"] = objects["Instance68"];
    objects["Instance70"]["Thickness"] = 3;
    objects["Instance70"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance71"]["Visible"] = true;
    objects["Instance71"]["FontSize"] = Enum.FontSize.Size14;
    objects["Instance71"]["TextDirection"] = Enum.TextDirection.Auto;
    objects["Instance71"]["Active"] = true;
    objects["Instance71"]["TextStrokeTransparency"] = 1;
    objects["Instance71"]["TextTruncate"] = Enum.TextTruncate.None;
    objects["Instance71"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance71"]["ZIndex"] = 1;
    objects["Instance71"]["BorderSizePixel"] = 0;
    objects["Instance71"]["Draggable"] = false;
    objects["Instance71"]["RichText"] = true;
    objects["Instance71"]["Modal"] = false;
    objects["Instance71"]["AutoButtonColor"] = true;
    objects["Instance71"]["Transparency"] = 0;
    objects["Instance71"]["SelectionOrder"] = 0;
    objects["Instance71"]["TextYAlignment"] = Enum.TextYAlignment.Center;
    objects["Instance71"]["TextScaled"] = true;
    objects["Instance71"]["TextWrap"] = true;
    objects["Instance71"]["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal, false);
    objects["Instance71"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance71"]["Parent"] = objects["Instance18"];
    objects["Instance71"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance71"]["Style"] = Enum.ButtonStyle.Custom;
    objects["Instance71"]["Position"] = UDim2.new(0.20666666328907013, 0, 0.23870967328548431, 0);
    objects["Instance71"]["BackgroundColor3"] = Color3.new(0.356863, 0.364706, 0.411765);
    objects["Instance71"]["Selected"] = false;
    objects["Instance71"]["TextSize"] = 14;
    objects["Instance71"]["Size"] = UDim2.new(0, 80, 0, 30);
    objects["Instance71"]["BackgroundTransparency"] = 0;
    objects["Instance71"]["TextWrapped"] = true;
    objects["Instance71"]["ClipsDescendants"] = false;
    objects["Instance71"]["TextColor3"] = Color3.new(1, 1, 1);
    objects["Instance71"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance71"]["Text"] = "Zulu";
    objects["Instance71"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance71"]["LayoutOrder"] = 0;
    objects["Instance71"]["Rotation"] = 0;
    objects["Instance71"]["LineHeight"] = 1;
    objects["Instance71"]["Name"] = "Zulu";
    objects["Instance71"]["TextXAlignment"] = Enum.TextXAlignment.Center;
    objects["Instance71"]["Selectable"] = true;
    objects["Instance71"]["MaxVisibleGraphemes"] = -1;
    objects["Instance71"]["TextStrokeColor3"] = Color3.new(0, 0, 0);
    objects["Instance71"]["TextTransparency"] = 0;

    objects["Instance72"]["Parent"] = objects["Instance71"];
    objects["Instance72"]["Name"] = "Alpha";
    objects["Instance72"]["CornerRadius"] = UDim.new(0, 3);

    objects["Instance73"]["Enabled"] = true;
    objects["Instance73"]["Transparency"] = 0;
    objects["Instance73"]["Name"] = "UIStroke";
    objects["Instance73"]["LineJoinMode"] = Enum.LineJoinMode.Round;
    objects["Instance73"]["Parent"] = objects["Instance71"];
    objects["Instance73"]["Thickness"] = 3;
    objects["Instance73"]["Color"] = Color3.new(0, 0, 0);
    objects["Instance73"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;

    objects["Instance74"]["Parent"] = objects["Instance18"];
    objects["Instance74"]["Name"] = "UICorner";
    objects["Instance74"]["CornerRadius"] = UDim.new(0, 8);

    objects["Instance75"]["FillDirectionMaxCells"] = 0;
    objects["Instance75"]["CellPadding"] = UDim2.new(0, 7, 0, 7);
    objects["Instance75"]["Parent"] = objects["Instance18"];
    objects["Instance75"]["CellSize"] = UDim2.new(0, 80, 0, 30);
    objects["Instance75"]["Name"] = "UIGridLayout";
    objects["Instance75"]["StartCorner"] = Enum.StartCorner.TopLeft;

    objects["Instance76"]["PaddingTop"] = UDim.new(0, 5);
    objects["Instance76"]["Name"] = "UIPadding";
    objects["Instance76"]["Parent"] = objects["Instance18"];
    objects["Instance76"]["PaddingBottom"] = UDim.new(0, 20);
    objects["Instance76"]["PaddingLeft"] = UDim.new(0, 10);
    objects["Instance76"]["PaddingRight"] = UDim.new(0, 10);

    objects["Instance77"]["Name"] = "Debris";
    objects["Instance77"]["Parent"] = objects["Instance4"];

    objects["Instance78"]["LayoutOrder"] = 0;
    objects["Instance78"]["Active"] = false;
    objects["Instance78"]["Parent"] = objects["Instance77"];
    objects["Instance78"]["AnchorPoint"] = Vector2.new(0, 0);
    objects["Instance78"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXY;
    objects["Instance78"]["ZIndex"] = 2;
    objects["Instance78"]["AutomaticSize"] = Enum.AutomaticSize.None;
    objects["Instance78"]["Size"] = UDim2.new(0, 3, 0, 350);
    objects["Instance78"]["Draggable"] = false;
    objects["Instance78"]["Style"] = Enum.FrameStyle.Custom;
    objects["Instance78"]["ClipsDescendants"] = false;
    objects["Instance78"]["BorderColor3"] = Color3.new(0, 0, 0);
    objects["Instance78"]["BorderMode"] = Enum.BorderMode.Outline;
    objects["Instance78"]["BackgroundTransparency"] = 0;
    objects["Instance78"]["BorderSizePixel"] = 0;
    objects["Instance78"]["Rotation"] = 0;
    objects["Instance78"]["Transparency"] = 0;
    objects["Instance78"]["Name"] = "Frame";
    objects["Instance78"]["SelectionOrder"] = 0;
    objects["Instance78"]["Visible"] = true;
    objects["Instance78"]["Selectable"] = false;
    objects["Instance78"]["Position"] = UDim2.new(0, 110, 0, 0);
    objects["Instance78"]["BackgroundColor3"] = Color3.new(0.313726, 0.313726, 0.313726);
end;
local ___up, ___args = unpack, { ... }
-- Set scripts
do
    task.spawn(function(...) -- Instance19
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance19"];
local plr = game.Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local vim = game:GetService("VirtualInputManager") 
local remote = ReplicatedStorage:WaitForChild("RocketSystem"):WaitForChild("Events"):WaitForChild("RocketHit")

-- 1. Функция подготовки РПГ (с запоминанием текущего оружия)
local function getRPG()
    local char = plr.Character
    if not char then return nil, nil end

    local hum = char:FindFirstChild("Humanoid")
    -- Ищем, что сейчас в руках (кроме самого РПГ)
    local currentTool = char:FindFirstChildOfClass("Tool")
    if currentTool and currentTool.Name == "RPG" then currentTool = nil end

    local rpg = char:FindFirstChild("RPG") or plr.Backpack:FindFirstChild("RPG")

    if rpg and hum then
        if rpg.Parent ~= char then
            hum:EquipTool(rpg)
            task.wait(0.3)
        end
        return rpg, currentTool -- Возвращаем РПГ и то, что было в руках до него
    end
    return nil, nil
end

-- 2. Основная функция атаки
local function attackBase(baseName)
    local rpg, previousTool = getRPG()
    if not rpg then 
        print("Ошибка: РПГ не найдено!")
        return 
    end

    local tycoons = workspace:WaitForChild("Tycoon"):WaitForChild("Tycoons")
    local base = tycoons:FindFirstChild(baseName)
    if not base then return end

    local purchasedObjects = base:FindFirstChild("PurchasedObjects")
    local baseShield = purchasedObjects and purchasedObjects:FindFirstChild("Base Shield")
    local shieldFolder = baseShield and baseShield:FindFirstChild("Shield")
    local targetShield = shieldFolder and shieldFolder:FindFirstChild("Shield4")

    if targetShield then
        print("Штурм базы: " .. baseName)

        vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
        task.wait(0.05)
        vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)

        task.spawn(function()
            while targetShield and targetShield.Parent and targetShield.Transparency < 1 do
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
                task.wait(0.1)
            end

            -- --- ФИНАЛЬНЫЙ БЛОК: ВОЗВРАТ ОРУЖИЯ И КАМЕРЫ ---
            local char = plr.Character
            if char and char:FindFirstChild("Humanoid") then
                local camera = workspace.CurrentCamera
                local lastDistance = (camera.CFrame.Position - camera.Focus.Position).Magnitude
                local targetDist = lastDistance > 5 and lastDistance or 20

                -- Убираем РПГ
                char.Humanoid:UnequipTools()
                task.wait(0.1)

                -- Если до штурма в руках что-то было — возвращаем это
                if previousTool and previousTool.Parent == plr.Backpack then
                    char.Humanoid:EquipTool(previousTool)
                    print("Вернул в руки: " .. previousTool.Name)
                end

                -- Фикс камеры (чтобы не прыгала из-за смены оружия)
                plr.CameraMaxZoomDistance = targetDist
                plr.CameraMinZoomDistance = targetDist
                task.wait(0.2)
                plr.CameraMaxZoomDistance = 128
                plr.CameraMinZoomDistance = 0.5
            end
        end)
    end
end

-- 3. Привязка к кнопкам
for _, button in ipairs(script.Parent:GetChildren()) do
    if button:IsA("TextButton") then
        button.MouseButton1Click:Connect(function()
            attackBase(button.Name)
        end)
    end
end
    end, ___up(___args));

    task.spawn(function(...) -- Instance3
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance3"];
script.Parent.Parent = game.CoreGui
    end, ___up(___args));

    task.spawn(function(...) -- Instance2
if not game:GetService("RunService"):IsClient() then return end
local script = objects["Instance2"];
game:GetService("UserInputService").InputBegan:Connect(function(kk, c)
    if kk.KeyCode ~= Enum.KeyCode.LeftControl or c then return end
    script.Parent.Enabled = not script.Parent.Enabled
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

makeDraggable(script.Parent.MainFrame)
    end, ___up(___args));
end;

-- YOUR CODE DOWN HERE --

local obj = objects["Instance0"];
