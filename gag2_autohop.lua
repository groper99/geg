-- === GAG2 AutoHop + Retry при "Server is full" ===
if not game:IsLoaded() then game.Loaded:Wait() end

local ConfigURL = "https://raw.githubusercontent.com/groper99/geg/refs/heads/main/gag2_autohop.txt"

getgenv().AutoHopConfig = {
    Interval = 12,
    PlaceId = 97598239454123,
    MaxPlayersOnNewServer = 40,
    Enabled = true,
    MaxRetries = 5,           -- сколько раз пытаться при ошибке full
}

local config = getgenv().AutoHopConfig
local lastInterval = 0

print("🚀 GAG2 AutoHop + Retry on Full запущен")

local function FindAndJoinServer()
    local attempt = 0
    local maxAttempts = config.MaxRetries

    while attempt < maxAttempts do
        attempt = attempt + 1
        print("🔄 Попытка " .. attempt .. "/" .. maxAttempts)

        local success = pcall(function()
            local url = "https://games.roblox.com/v1/games/" .. config.PlaceId .. "/servers/Public?sort=Desc&limit=100"
            local servers = game.HttpService:JSONDecode(game:HttpGet(url))

            local valid = {}
            for _, s in ipairs(servers.data) do
                if s.playing and s.playing >= 5 and s.playing <= config.MaxPlayersOnNewServer and s.id ~= game.JobId then
                    table.insert(valid, s)
                end
            end

            if #valid > 0 then
                local target = valid[math.random(#valid)]
                print("✅ Подключаемся к серверу | Игроков: " .. target.playing)
                game:GetService("TeleportService"):TeleportToPlaceInstance(config.PlaceId, target.id)
                return true
            end
        end)

        if success then
            return true
        end

        task.wait(1.5) -- пауза между попытками
    end

    print("⚠️ Не удалось найти свободный сервер после " .. maxAttempts .. " попыток → Rejoin")
    task.wait(2)
    game:GetService("TeleportService"):Teleport(config.PlaceId)
    return false
end

task.spawn(function()
    while true do
        -- Обновление интервала
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
                    config.Interval = math.max(6, value)
                    lastInterval = value
                    config.Enabled = true
                    print("🔄 Интервал изменён на " .. config.Interval .. " минут")
                end
            end
        end)

        if config.Enabled then
            FindAndJoinServer()
        end

        task.wait(config.Interval * 60)
    end
end)

print("✅ Готово. При ошибке 772 будет автоматически искать другой сервер.")
