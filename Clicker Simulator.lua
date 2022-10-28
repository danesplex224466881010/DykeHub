if _G.KeyEntered == true then
	local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

	local Player = game.Players.LocalPlayer

	Player.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)

	local Window = OrionLib:MakeWindow({Name = "Dyke Hub |"..Player.UserId.."メ", HidePremium = true, IntroEnabled = false})

	OrionLib:MakeNotification({
		Name = "Dyke Hub | "..Player.UserId.."メ",
		Content = "Welcome "..Player.Name..", Clicker Simulator script has loaded!",
		Image = "rbxassetid://4483345998",
		Time = 5
	})

	_G.Input = "string"
	
	

	OrionLib:Init()
else
	game.Players.LocalPlayer:Kick("wahhh")
end
