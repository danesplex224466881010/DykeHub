_G.KeyEntered = false

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Player = game.Players.LocalPlayer

local Window = OrionLib:MakeWindow({Name = "Dyke Hub |"..Player.UserId.."メ", HidePremium = true, IntroEnabled = false})

OrionLib:MakeNotification({
    Name = "Dyke Hub | "..Player.UserId.."メ",
    Content = "Welcome "..Player.Name..", our key can be found in our discord server.",
    Image = "rbxassetid://4483345998",
    Time = 5
})

_G.Input = "string"

local KeyTab = Window:MakeTab({
    Name = "Key",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local KeySection = KeyTab:AddSection({
    Name = "Key"
})

KeySection:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = false,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})

KeySection:AddButton({
    Name = "Check Key",
    Callback = function()
          if _G.KeyInput == "TestKey123" then
            OrionLib:MakeNotification({
                Name = "Dyke Hub | "..Player.UserId.."メ",
                Content = "Customer key accepted.. Main Hub loading..",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            _G.KeyEntered = true
            wait(1)
            game.CoreGui.Orion:Destroy()
            wait(1)
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/danesplex224466881010/DykeHub/main/Main.lua'),true))()
        elseif _G.KeyInput == "AdminKey" then
            OrionLib:MakeNotification({
                Name = "Dyke Hub | "..Player.UserId.."メ",
                Content = "Admin key accepted.. Main hub loading..",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            _G.KeyEntered = true
            wait(1)
            game.CoreGui.Orion:Destroy()
            wait(1)
            loadstring(game:HttpGet(('https://raw.githubusercontent.com/danesplex224466881010/DykeHub/main/Main.lua'),true))()
        else
            OrionLib:MakeNotification({
                Name = "Dyke Hub | "..Player.UserId.."メ",
                Content = "Incorrect Key. Make sure to join our discord, the key refreshes every couple days!",
                Image = "rbxassetid://4483345998",
                Time = 3
            })
            _G.KeyEntered = false
        end
      end    
})

local DiscordTab = Window:MakeTab({
    Name = "Discord",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local DiscordSection = DiscordTab:AddSection({
    Name = "Discord"
})

DiscordSection:AddButton({
    Name = "Copy Invite Link",
    Callback = function()
        setclipboard("https://discord.gg/ks4d3ZHT9Q")
        OrionLib:MakeNotification({
            Name = "Dyke Hub | "..Player.UserId.."メ",
            Content = "Copied the invite link to your clipboard!",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
      end
})
