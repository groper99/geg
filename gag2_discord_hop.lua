-- === GAG2 Discord ServerHop с кнопками ===
if not game:IsLoaded() then game.Loaded:Wait() end

getgenv().DiscordConfig = {
    Webhook = "https://discord.com/api/webhooks/1526236748664012972/nrb1Yin1mYSvkSGGPEsYegfXzeapjkSMS32JN4SXM_H4uQ0m5_3S1oMvDKLA-catpHhm",
    BotName = "GAG2 Control",
    GameName = "Grow A Garden 2",
    PlaceId = 97598239454123,
}

local webhook = getgenv().DiscordConfig.Webhook
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local function SendToDiscord(title, description, color, buttons)
    local embed = {
        title = title,
        description = description,
        color = color or 0x00ff00,
        footer = { text = player.Name .. " • " .. getgenv().DiscordConfig.GameName },
        timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
    }

    local data = {
        username = getgenv().DiscordConfig.BotName,
        embeds = {embed},
    }

    if buttons then
        data.components = {{ type = 1, components = buttons }}
    end

    pcall(function()
        HttpService:PostAsync(webhook, HttpService:JSONEncode(data), "application/json")
    end)
end

local function CreateButtons()
    return {
        { type = 2, label = "🔄 Hop", style = 1, custom_id = "hop" },
        { type = 2, label = "🔁 Rejoin", style = 1, custom_id = "rejoin" },
        { type = 2, label = "📊 Status", style = 3, custom_id = "status" },
        { type = 2, label = "⛔ Stop", style = 4, custom_id = "stop" }
    }
end

local function ServerHop()
    SendToDiscord("🔄 Server Hop", "Поиск лучшего сервера...", 0xffaa00)
    
    pcall(function()
        local servers = HttpService:JSONDecode(game:HttpGet(
            "https://games.roblox.com/v1/games/" .. getgenv().DiscordConfig.PlaceId .. "/servers/Public?sort=Desc&limit=100"
        ))

        local valid = {}
        for _, s in ipairs(servers.data) do
            if s.playing and s.playing <= 40 and s.id ~= game.JobId then
                table.insert(valid, s)
            end
        end

        if #valid > 0 then
            local target = valid[math.random(#valid)]
            SendToDiscord("✅ Переход выполнен", "Сервер: " .. target.playing .. " игроков", 0x00ff00)
            TeleportService:TeleportToPlaceInstance(getgenv().DiscordConfig.PlaceId, target.id)
        else
            SendToDiscord("⚠️ Rejoin", "Свободных серверов мало", 0xffff00)
            TeleportService:Teleport(getgenv().DiscordConfig.PlaceId)
        end
    end)
end

local function Rejoin()
    SendToDiscord("🔁 Rejoin", "Возвращаемся на текущий сервер...", 0xffaa00)
    TeleportService:Teleport(getgenv().DiscordConfig.PlaceId)
end

-- Запуск
SendToDiscord(
    "🟢 GAG2 Discord Control Запущен",
    "PlaceId: 97598239454123",
    0x00ff00,
    CreateButtons()
)

print("✅ GAG2 Discord Control запущен! Кнопки активны.")

-- Дублирование через чат
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local m = msg:lower()
    if m:find("hop") then ServerHop()
    elseif m:find("rejoin") then Rejoin()
    elseif m:find("status") then
        SendToDiscord("📊 Статус", "Скрипт работает нормально ✅", 0x00ff00, CreateButtons())
    end
end)
