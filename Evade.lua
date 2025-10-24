game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
    CFrame.new(0, 10000, 0)
workspace.Gravity = 0
while task.wait(.8) do
    local player = game:GetService('Players').LocalPlayer.Character
    for i, v in workspace.Game.Effects.Tickets:GetChildren() do
        if v.Name == 'Visual' then
            player:PivotTo(v:GetPivot())
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(0, 10000, 0)
        end
    end
    local n1 = [[
    !specialround Plushie Hell
    ]]
    game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("\r" .. n1:gsub("\n", "\r"))
end
