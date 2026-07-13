-- === GAG2 AutoHop (исправлено от ошибки 772) ===
if not game:IsLoaded() then game.Loaded:Wait() end

local ConfigURL = "https://raw.githubusercontent.com/groper99/geg/refs/heads/main/gag2_autohop.txt"

getgenv().AutoHopConfig = {
    Interval = 12,
    PlaceId = 97598239454123,
    MaxPlayersOnNewServer = 40,
    Enabled = true,
    Cooldown = 45,           -- минимальная пауза между hops (сек)
}

local config = getgenv().AutoHopConfig
local lastHopTime = 0
local lastInterval = 0

print("🚀 GAG2 AutoHop v2 (анти-772) запущен")

local function ServerHop()
    if tick() - lastHopTime < config.Cooldown then
        print("⏳ Cooldown: ждём перед следующим hop...")
        return
    end

    print("🔄 Попытка AutoHop...")
    lastHopTime = tick()

    pcall(function()
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
            print("✅ Переход на сервер | Игроков: " .. target.playing)
            game:GetService("TeleportService"):TeleportToPlaceInstance(config.PlaceId, target.id, game.Players.LocalPlayer)
        else
            print("⚠️ Нет подходящих серверов → Rejoin")
            task.wait(2)
            game:GetService("TeleportService"):Teleport(config.PlaceId)
        end
    end)
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
                    config.Interval = math.max(5, value)  -- минимум 5 минут
                    lastInterval = value
                    config.Enabled = true
                    print("🔄 Интервал: " .. config.Interval .. " минут")
                end
            end
        end)

        if config.Enabled then
            ServerHop()
        end

        task.wait(30)
    end
end)

print("✅ Исправленная версия загружена")
