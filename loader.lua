local Games = {
    [112863874972771] = "https://raw.githubusercontent.com/Napoleon-Roblox/NapoleonScript/refs/heads/main/features/warning.lua",
}

local ID = game.GameId
local Link = Games[ID] or Games[game.PlaceId]

if Link then
    loadstring(game:HttpGet(Link))()
else
    warn("Game not supported!")
end
