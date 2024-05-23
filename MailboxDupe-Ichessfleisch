-- Pet Duplication Script for Pet Simulator X (PSX)
-- Version 2.0

-- Fetch the required services and variables
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local player = Players.LocalPlayer

-- Function to duplicate pets
local function duplicatePets()
    -- Check if the player is in the game
    if not player.Character or not player.Character.Parent then
        return
    end

    -- Get the player's pets
    local pets = player.PlayerGui.Scripts.Parent.Pets.Pets

    -- Loop through each pet and duplicate it
    for _, pet in ipairs(pets:GetChildren()) do
        -- Check if the pet is not a folder
        if not pet:IsA("Folder") then
            -- Duplicate the pet
            local duplicatedPet = pet:Clone()
            duplicatedPet.Parent = pets
        end
    end
end

-- Connect the duplicatePets function to the RunService's Heartbeat event
RunService.Heartbeat:Connect(duplicatePets)

-- Notify the player that the script is running
print("Pet Duplication Script is running!")
