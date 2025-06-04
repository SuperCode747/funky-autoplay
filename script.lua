if game.PlaceId == 6447798030 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SuperCode747/funky-autoplay/refs/heads/main/FunkyFriday.lua'))()
elseif game.PlaceId == 6520999642 then
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
    Fluent:Notify({Title = "Funky Hub", Content = gamename + " 's script not ready yet.", Duration = 3})
else
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    Fluent:Notify({Title = "Funky Hub", Content = "Unsupported Game", Duration = 3})
end
