if _G.KeyEntered == true then
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Player = game.Players.LocalPlayer

	Player.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	local EggTable = {}
	local ZoneTable = {}
	for _,Egg in pairs(game:GetService("Workspace").Eggs:GetChildren()) do
    	table.insert(EggTable, Egg.Name)
	end
	for _,Zone in pairs(game:GetService("Workspace").Zones:GetChildren()) do
    	table.insert(ZoneTable, Zone.Name)
	end

	local Window = OrionLib:MakeWindow({Name = "Dyke Hub |"..Player.UserId.."メ", HidePremium = true, IntroEnabled = false})

	OrionLib:MakeNotification({
		Name = "Dyke Hub | "..Player.UserId.."メ",
		Content = "Welcome "..Player.Name..", Clicker Simulator script has loaded!",
		Image = "rbxassetid://4483345998",
		Time = 5
	})

	_G.Input = "string"
	
	local CharTab = Window:MakeTab({
		Name = "Character",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	local MainTab = Window:MakeTab({
		Name = "Main",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	MainTab:AddToggle({
		Name = "Autoclick",
		Default = false,
		Callback = function(Value)
			autoclick = Value
		end    
	})

	OrionLib:Init()

	spawn(function()
		while true do wait()
			if autoclick then
				getsenv(game:GetService("Players").LocalPlayer.PlayerGui.mainUI.LocalScript).activateClick()
			end
		end
	end)

else
	game.Players.LocalPlayer:Kick("wahhh")
end
