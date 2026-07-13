-- === GAG2 AutoHop + Remote Control (проверка каждые 30 сек) ===
if not game:IsLoaded() then game.Loaded:Wait() end

local ConfigURL = "https://raw.githubusercontent.com/groper99/geg/refs/heads/main/gag2_autohop.txt"

getgenv().AutoHopConfig = {
    Interval = 2,                    -- минут (по умолчанию)
    PlaceId = 97598239454123,
    MaxPlayersOnNewServer = 40,
    Enabled = true,
}

local config = getgenv().AutoHopConfig
local lastInterval = 0
local lastCheck = 0

print("🚀 GAG2 AutoHop Listener запущен (проверка каждые 30 секунд)")

local function ServerHop()
    print("🔄 AutoHop: поиск нового сервера...")
    
    pcall(function()
        local servers = game.HttpService:JSONDecode(game:HttpGet(
            "https://games.roblox.com/v1/games/" .. config.PlaceId .. "/servers/Public?sort=Desc&limit=100"
        ))

        local valid = {}
        for _, s in ipairs(servers.data) do
            if s.playing and s.playing <= config.MaxPlayersOnNewServer and s.id ~= game.JobId then
                table.insert(valid, s)
            end
        end

        if #valid > 0 then
            local target = valid[math.random(#valid)]
            print("✅ AutoHop → сервер с " .. target.playing .. " игроками")
            game:GetService("TeleportService"):TeleportToPlaceInstance(config.PlaceId, target.id)
        else
            print("⚠️ AutoHop → Rejoin")
            game:GetService("TeleportService"):Teleport(config.PlaceId)
        end
    end)
end

-- Главный listener
task.spawn(function()
    while true do
        pcall(function()
            local raw = game:HttpGet(ConfigURL, true)  -- true = bypass cache
            local value = tonumber(raw:match("^%s*(.-)%s*$"))

            if value then
                if value == 0 then
                    if config.Enabled then
                        config.Enabled = false
                        print("⛔ AutoHop отключён (0 в файле)")
                    end
                else
                    if not config.Enabled or value ~= lastInterval then
                        config.Interval = value
                        lastInterval = value
                        config.Enabled = true
                        print("🔄 AutoHop интервал изменён на: " .. value .. " минут")
                    end
                end
            end
        end)

        -- Выполняем hop, если включено
        if config.Enabled then
            ServerHop()
        end

        task.wait(30)  -- проверка каждые 30 секунд
    end
end)

print("✅ Listener активен!")
print("Управление: меняй число в gag2_autohop.txt (в минутах)")
print("0 = отключить AutoHop")
