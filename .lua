local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Script", "RJTheme3")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Im hate ozon WB better")

Section:NewLabel("OzonBAD")

Section:NewButton("Add npc", "Add npc to you", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.CreateNPC:FireServer()
end)

Section:NewButton("delete npc", "delete npc from you", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.DeleteNPC:FireServer()
end)

Section:NewButton("boxes giveable", "boxes giveable for npc", function()
game:GetService("ReplicatedStorage").Events.CreateBoxEvent:FireServer()
end)

Section:NewTextBox("Give money", "Get money (enter value)", function(mon)
	local args = {
    [1] = "Cash",
    [2] = mon
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)
