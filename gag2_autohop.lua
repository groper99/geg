-- === GAG2 AutoHop (только публичные серверы) ===
if not game:IsLoaded() then game.Loaded:Wait() end

local ConfigURL = "https://raw.githubusercontent.com/groper99/geg/refs/heads/main/gag2_autohop.txt"

getgenv().AutoHopConfig = {
    Interval = 12,                    -- минут (по умолчанию)
    PlaceId = 97598239454123,
    MaxPlayersOnNewServer = 40,
    Enabled = true,
}

local config = getgenv().AutoHopConfig
local lastInterval = 0

print("🚀 GAG2 AutoHop (только Public сервера) запущен")

local function ServerHop()
    print("🔄 AutoHop: поиск публичного сервера...")
    
    pcall(function()
        -- Явно запрашиваем только публичные серверы
        local url = "https://games.roblox.com/v1/games/" .. config.PlaceId .. "/servers/Public?sort=Desc&limit=100"
        local servers = game.HttpService:JSONDecode(game:HttpGet(url))

        local valid = {}
        for _, s in ipairs(servers.data) do
            if s.playing 
                and s.playing > 0 
                and s.playing <= config.MaxPlayersOnNewServer 
                and s.id ~= game.JobId then
                
                table.insert(valid, s)
            end
        end

        if #valid > 0 then
            local target = valid[math.random(#valid)]
            print("✅ Переход на публичный сервер | Игроков: " .. target.playing)
            game:GetService("TeleportService"):TeleportToPlaceInstance(config.PlaceId, target.id)
        else
            print("⚠️ Нет подходящих публичных серверов → Rejoin")
            game:GetService("TeleportService"):Teleport(config.PlaceId)
        end
    end)
end

-- Listener + AutoHop
task.spawn(function()
    while true do
        -- Обновляем настройки с GitHub
        pcall(function()
            local raw = game:HttpGet(ConfigURL, true)
            local value = tonumber(raw:match("^%s*(.-)%s*$"))
            
            if value then
                if value == 0 then
                    if config.Enabled then
                        config.Enabled = false
                        print("⛔ AutoHop отключён")
                    end
                elseif value ~= lastInterval then
                    config.Interval = value
                    lastInterval = value
                    config.Enabled = true
                    print("🔄 Интервал изменён: " .. value .. " минут")
                end
            end
        end)

        -- Выполняем hop если включено
        if config.Enabled then
            ServerHop()
        end

        task.wait(30) -- проверка каждые 30 секунд
    end
end)

print("✅ AutoHop готов. Управляй через gag2_autohop.txt")
