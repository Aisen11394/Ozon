local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Ozon script", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Im hate ozon WB better")

Section:NewLabel("OzonBAD")

Section:NewButton("Add npc", "Add npc to you", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.CreateNPC:FireServer()
end)

Section:NewButton("delete npc", "delete npc from you", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.DeleteNPC:FireServer()
end)

Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        while wait() do
	game:GetService("ReplicatedStorage").Events.CreateBoxEvent:FireServer()
	end
    else
        break
    end
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(mon)
	local args = {
    [1] = "Cash",
    [2] = mon
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)

Section:NewTextBox("Get you orders", "Get for you orders", function(ord)
	local args = {
    [1] = "\208\151\208\176\208\186\208\176\208\183\209\139",
    [2] = ord
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)

Section:NewTextBox("Change you wallpaper", "Change you Wallpaper in pc (with rbxassetid)", function(wal)
	local args = {
    [1] = "CurrentWallpaper",
    [2] = wal
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)
