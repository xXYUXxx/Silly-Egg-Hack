-- Silly Egg Exploit (GitHub Loader Version)
local Players = game:GetService("Players")
local player = Players.LocalPlayer
local ReplicatedStorage = game:GetService("ReplicatedStorage")

-- Anti-Detection
script.Name = "CameraSystem"
delay(5, function()
    script.Name = "PlayerModule"
end)

-- Main Hack
local function Main()
    -- Movement Hacks
    local humanoid = player.Character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = 50
    humanoid.JumpPower = 100

    -- Find Target
    local egg = workspace:FindFirstChild("Silly Egg") or workspace:WaitForChild("Silly Egg")
    if egg then
        -- Teleport
        player.Character.HumanoidRootPart.CFrame = egg.CFrame + Vector3.new(0, 3, 0)
        
        -- Auto-Farm Loop
        while task.wait(0.5) do
            firetouchinterest(player.Character.HumanoidRootPart, egg, 0)
            firetouchinterest(player.Character.HumanoidRootPart, egg, 1)
            ReplicatedStorage:FindFirstChild("CollectEgg"):FireServer()
        end
    end
end

-- Execute
Main()