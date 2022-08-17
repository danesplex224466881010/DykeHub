hookfunction(game:GetService("LogService").GetLogHistory, function()  return {} end)
for i,v in next, getconnections(game:GetService("ScriptContext").Error) do
	v:Disable()
end
repeat task.wait() until game:IsLoaded();
_G.start = os.clock();

local ids = {
    ["111111111"] = "https://raw.githubusercontent.com/danesplex224466881010/DykeHub/main/game"
}


for i,v in pairs(ids) do
    if tostring(game.GameId) == i or tostring(game.PlaceId) == i then
        loadstring(game:HttpGet(v))();
    end
end
