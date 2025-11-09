workspace.Gravity = 0
while task.wait(1) do
    local player = game:GetService('Players').LocalPlayer.Character
    local hrp = player:WaitForChild('HumanoidRootPart')
    local pos1 = CFrame.new(-225, -22, -131)
    hrp.CFrame = pos1
    if player then
        for a = 1,14 do
            hrp.CFrame = pos1
            wait(0.5)
        end
        local n1 = "!specialround Plushie Hell"
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(n1)
    end
end
