if game.PlaceId == 6447798030 then
    loadstring(game:HttpGet('https://raw.githubusercontent.com/SuperCode747/supported/main/FunkyFridayFree'))()
else
    local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
    Fluent:Notify({Title = "Uni Hub", Content = "Unsupported Game", Duration = 3})
end
