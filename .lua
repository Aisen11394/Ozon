local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Ozon script", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Im hate ozon WB better")

Section:NewLabel("Make by a weirdman2112")

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
