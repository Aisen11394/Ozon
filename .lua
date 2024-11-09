local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("Ozon script", "RJTheme3")

local Tab = Window:NewTab("Im hate ozon WB better")

local Section = Tab:NewSection("Main")

Section:NewLabel("LabelText")

Section:NewButton("Add npc", "Add npc to you", function()
    game:GetService("ReplicatedStorage").Events.NPCEvents.CreateNPC:FireServer()
end)

-- Переключатель
Section:NewToggle("ToggleText", "ToggleInfo", function(state)
    if state then
        print("Toggle On")
    else
        print("Toggle Off")
    end
end)

Section:NewTextBox("TextboxText", "TextboxInfo", function(mon)
	local args = {
    [1] = "Cash",
    [2] = mon
}

game:GetService("ReplicatedStorage").Events.DataManage:FireServer(unpack(args))
end)
