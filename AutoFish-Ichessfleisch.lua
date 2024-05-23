-- Deobfuscated code from https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/AutoFish

-- Roblox Services
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

-- Variables
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local humanoid = character:WaitForChild("Humanoid")

-- Settings
local fishingSpot = workspace.FishingSpots.FishingSpot
local fishingRange = 20

-- Function to teleport to the fishing spot
local function teleportToFishingSpot()
    humanoidRootPart.CFrame = fishingSpot.CFrame * CFrame.new(0, 0, fishingRange)
end

-- Function to start fishing
local function startFishing()
    local tool = player.Backpack:FindFirstChild("FishingRod") or character:FindFirstChild("FishingRod")
    if tool then
        humanoid:EquipTool(tool)
        tool:Activate()
    end
end

-- Main loop
RunService.Heartbeat:Connect(function()
    if humanoid.Health > 0 then
        teleportToFishingSpot()
        startFishing()
    end
end)
