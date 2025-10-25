workspace.Gravity = 0
while task.wait(1) do
    local player = game:GetService('Players').LocalPlayer.Character
    local hrp = player:WaitForChild('HumanoidRootPart')
    local pos1 = CFrame.new(0, 500, 0)
    local pos2 = CFrame.new(500, 150, 0)
    local pos3 = CFrame.new(-500, 400, 0)
    if player then
        hrp.CFrame = pos1
        for i, v in workspace.Game.Effects.Tickets:GetChildren() do
            if v.Name == 'Visual' then
                player:PivotTo(v:GetPivot())
                workspace.Gravity = 196
                task.wait(0.1)
                workspace.Gravity = 0
                player:PivotTo(v:GetPivot() + Vector3.new(0, 13, 0))
                task.wait(1)
                hrp.CFrame = pos1 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5) hrp.CFrame = pos1 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5)
                hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos1 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5) hrp.CFrame = pos1 task.wait(.5) hrp.CFrame = pos2 task.wait(.5) hrp.CFrame = pos3 task.wait(.5) hrp.CFrame = pos2 
            end
        end
    end
end
