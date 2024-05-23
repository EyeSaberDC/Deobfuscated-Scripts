-- Deobfuscated code from https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/SapphinxHub.X

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Sapphinx Hub", "Ocean")

-- MAIN
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")

MainSection:NewButton("Auto Hatch", "Automatically hatches eggs", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/AutoHatch.X"))()
end)

MainSection:NewButton("Auto Farm", "Automatically farms coins and gems", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/AutoFarm.X"))()
end)

MainSection:NewButton("Auto Fuse", "Automatically fuses pets", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/AutoFuse.X"))()
end)

-- MISC
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

MiscSection:NewButton("Infinite Yield", "Loads infinite yield admin script", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

MiscSection:NewButton("Unlock All Gamepasses", "Unlocks all gamepasses", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Ichessfleisch/PetSim99Script/main/UnlockAllGamepasses.X"))()
end)

-- CREDITS
local Credits = Window:NewTab("Credits")
local CreditsSection = Credits:NewSection("Credits")

CreditsSection:NewLabel("Script made by Sapphinx")
CreditsSection:NewLabel("UI Library by xHeptc")
