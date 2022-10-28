hookfunction(game:GetService("LogService").GetLogHistory, function()  return {} end)
for i,v in next, getconnections(game:GetService("ScriptContext").Error) do
	v:Disable()
end
repeat task.wait() until game:IsLoaded();
_G.start = os.clock();

local ids = {
    ["7560156054"] = "https://raw.githubusercontent.com/danesplex224466881010/DykeHub/main/Clicker%20Simulator.lua"
}


for i,v in pairs(ids) do
    if tostring(game.GameId) == i or tostring(game.PlaceId) == i then
        loadstring(game:HttpGet(v))();
    else
        game.Players.LocalPlayer:Kick("This game is not supported for Dyke Hub. The link to our discord has been copied, if you would like to join.")
	setclipboard("https://discord.gg/ks4d3ZHT9Q")
    end
end
