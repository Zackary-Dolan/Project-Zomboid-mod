local MOD_ID = "LRN";
local MOD_NAME = "Learning";
local MOD_VERSION = "1.0.0";
local MOD_AUTHOR = "Zed";
local MOD_DESCRIPTION = "Learning mod for Project Zomboid";
local debugItems = true;

local function info()
    print("Mod loaded: " .. MOD_NAME .. " v" .. MOD_VERSION .. " by " .. MOD_AUTHOR);
end

local function giveItems()
    if debugItems then 
        local player = getSpecificPlayer(0);
        player:getInventory():AddItem("LRN.Mystical");
    end
end

Events.OnGameStart.Add(info);
-- Events.OnGameStart.Add(giveItems);