local games, found = {
    [286090429] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/286090429",
    [9759729519] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/9759729519",
    [10950541730] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/9759729519",
    [10950394697] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/9759729519",
    [2988554876] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/2988554876",
    [292439477] = "https://raw.githubusercontent.com/xxxloilpxxx/56u8vnbdfg3wrn-jfasd-6-/main/292439477",
}, false
local AkaliNotif = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/Dynissimo/main/Scripts/AkaliNotif.lua"))();
local Notify = AkaliNotif.Notify;

getgenv().gameid = game.PlaceId

for id, scriptstr in pairs(games) do
    if tonumber(id) == getgenv().gameid then
        found = true
        print(string.format("\n\n[mopsHub Loader]: Found script for gameid [%s]\n\n> Loading script from %s\n\n", getgenv().gameid,scriptstr))
        local _s, _e = pcall(function() 
            loadstring(game:HttpGet(scriptstr))()
        end)
        if not _s and _e then
            Notify({Title="<font color='#ff0000'>Error while loading script</font>",Description="Error: ".._e})
            warn(string.format("\n\n[mopsHub Loader Error]: Error while loading script for gameid [%s]\n\n> %s\n\n", getgenv().gameid,_e))
        elseif _s then
            Notify({Title="<font color='#00ff00'>Script loaded!</font>",Description="Enjoy!"})
        end
    end
end

if not found then
    Notify({Title="<font color='#ff0000'>Not supported</font>",Description="We currently don't have any script for this game!"})
    warn(string.format("[mopsHub Loader]: No script found for gameid [%s]\n> ", getgenv().gameid))
end