-- === GAG2 AutoHop — Только очень пустые серверы (max 5 игроков) ===
if not game:IsLoaded() then game.Loaded:Wait() end

local ConfigURL = "https://raw.githubusercontent.com/groper99/geg/refs/heads/main/gag2_autohop.txt"

getgenv().AutoHopConfig = {
    Interval = 12,
    PlaceId = 97598239454123,
    MaxPlayers = 5,            -- ← Изменено по твоей просьбе
    MinPlayers = 1,
    Enabled = true,
    MaxRetries = 8,            -- увеличил попытки
}

local config = getgenv().AutoHopConfig
local lastInterval = 0

print("🚀 GAG2 AutoHop — поиск серверов с ≤5 игроками")

local function FindAndJoinServer()
    local attempt = 0
    local maxAttempts = config.MaxRetries

    while attempt < maxAttempts do
        attempt = attempt + 1
        print("🔍 Попытка " .. attempt .. "/" .. maxAttempts)

        local success = pcall(function()
            local url = "https://games.roblox.com/v1/games/" .. config.PlaceId .. "/servers/Public?sort=Desc&limit=100"
            local servers = game.HttpService:JSONDecode(game:HttpGet(url))

            local valid = {}
            for _, s in ipairs(servers.data) do
                if s.playing 
                    and s.playing >= config.MinPlayers 
                    and s.playing <= config.MaxPlayers 
                    and s.id ~= game.JobId then
                    
                    table.insert(valid, s)
                end
            end

            -- Сортируем от самого пустого
            table.sort(valid, function(a, b) return a.playing < b.playing end)

            if #valid > 0 then
                local target = valid[1]   -- самый пустой сервер
                print("✅ Подключаемся | Игроков: " .. target.playing)
                game:GetService("TeleportService"):TeleportToPlaceInstance(config.PlaceId, target.id)
                return true
            end
        end)

        if success then return true end
        
        task.wait(2.5) -- пауза между попытками
    end

    print("⚠️ Не найдено серверов с ≤5 игроками → Rejoin")
    task.wait(3)
    game:GetService("TeleportService"):Teleport(config.PlaceId)
end

task.spawn(function()
    while true do
        pcall(function()
            local raw = game:HttpGet(ConfigURL, true)
            local value = tonumber(raw:match("^%s*(.-)%s*$"))
            
            if value then
                if value == 0 then
                    config.Enabled = false
                    print("⛔ AutoHop отключён")
                elseif value ~= lastInterval then
                    config.Interval = math.max(6, value)
                    lastInterval = value
                    config.Enabled = true
                    print("🔄 Интервал: " .. config.Interval .. " минут")
                end
            end
        end)

        if config.Enabled then
            FindAndJoinServer()
        end

        task.wait(config.Interval * 60)
    end
end)

print("✅ AutoHop запущен | MaxPlayers = 5")
