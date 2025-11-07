local player = game:GetService('Players').LocalPlayer.Character
local hrp = player:WaitForChild('HumanoidRootPart')
local pos1 = CFrame.new(-225, -22, -131)
hrp.CFrame = pos1
workspace.Gravity = 0
while task.wait(5) do
    hrp.CFrame = pos1
    if player then
        hrp.CFrame = pos1
        local n1 = [[!specialround Plushie Hell]]
        game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("\r" .. n1:gsub("\n", "\r") .. "")
    end
end
