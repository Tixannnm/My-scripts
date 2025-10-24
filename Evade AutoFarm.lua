game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
    CFrame.new(0, 500, 0)
workspace.Gravity = 0
while task.wait(1) do
    local player = game:GetService('Players').LocalPlayer.Character
    for i, v in workspace.Game.Effects.Tickets:GetChildren() do
        if v.Name == 'Visual' then
            player:PivotTo(v:GetPivot())
            workspace.Gravity = 196
            task.wait(0.1)
            workspace.Gravity = 0
            player:PivotTo(v:GetPivot() + Vector3.new(0, 13, 0))
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(500, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(-500, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(500, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(-500, 500, 0)
            task.wait(1)
            player.HumanoidRootPart.CFrame = CFrame.new(0, 500, 0)
        end
    end
end
