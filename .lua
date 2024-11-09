local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/refs/heads/main/source.lua"))()
 
local Window = Library.CreateLib("Ozon script roblox", "DarkTheme")
 
 
--Plr tabs (done)
local PlrTab = Window:NewTab("Go to hell ozon")
local PlrSection = PlrTab:NewSection("Main")

Section:NewTextBox("Get money", "get money (enter value)", function(money)
	local args = {
    [1] = "Cash",
    [2] = money
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)

Section:NewTextBox("Get reputation", "Get reputation (enter value)", function(reputation)
	local args = {
    [1] = "\208\160\208\181\208\191\209\131\209\130\208\176\209\134\208\184\209\143",
    [2] = reputation
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)

PlrSection:NewButton("Delete you buyer", "Delete you buyer", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.DeleteNPC:FireServer()
end)

PlrSection:NewButton("Add you buyer", "Add you buyer", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.CreateNPC:FireServer()
end)
 
PlrSection:NewToggle("All boxes are issued", "all boxes are can getting or provided", function(state)
    if state then
        while wait() do
        game:GetService("ReplicatedStorage").Events.CreateBoxEvent:FireServer()
        end
    else
        break
    end
end)
 
PlrSection:NewSlider("Speed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)
 
PlrSection:NewSlider("Jump Power", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)
 
-- Others
local OthersTab = Window:NewTab("Others")
local OthersSection = OthersTab:NewSection("Scripts")
 
OthersSection:NewButton("Infinite yield", "Get Infinite yield", function()
    loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/Infinite%20Yield.txt"))()
end)
