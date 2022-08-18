if _G.KeyEntered == true then
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Player = game.Players.LocalPlayer

	local Window = OrionLib:MakeWindow({Name = "Dyke Hub |"..Player.UserId.."メ", HidePremium = true, IntroEnabled = false})

	OrionLib:MakeNotification({
		Name = "Dyke Hub | "..Player.UserId.."メ",
		Content = "Welcome "..Player.Name..", Clicker Simulator script has loaded!",
		Image = "rbxassetid://4483345998",
		Time = 5
	})

	_G.Input = "string"

	local MainTab = Window:MakeTab({
		Name = "MainTab",
		Icon = "rbxassetid://4483345998",
		PremiumOnly = false
	})

	OrionLib:Init()
else
	game.Players.LocalPlayer:Kick("INVALID REQUEST | REQUEST SENT TO OUR DISCORD TEAM")
end