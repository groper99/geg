-- === GAG2 ServerHop (только команды в чат) ===
if not game:IsLoaded() then game.Loaded:Wait() end

getgenv().ServerHopConfig = {
    Webhook = "https://discord.com/api/webhooks/1526236748664012972/nrb1Yin1mYSvkSGGPEsYegfXzeapjkSMS32JN4SXM_H4uQ0m5_3S1oMvDKLA-catpHhm",
    GameName = "Grow A Garden 2",
    PlaceId = 97598239454123,
    MaxPlayers = 40,        -- максимум игроков на новом сервере
}

local config = getgenv().ServerHopConfig
local player = game.Players.LocalPlayer
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local function SendToDiscord(title, desc, color)
    local data = {
        username = "GAG2 Hop",
        embeds = {{
            title = title,
            description = desc,
            color = color or 0x00ff00,
            footer = { text = player.Name },
            timestamp = os.date("!%Y-%m-%dT%H:%M:%SZ")
        }}
    }
    pcall(function()
        HttpService:PostAsync(config.Webhook, HttpService:JSONEncode(data), "application/json")
    end)
end

local function ServerHop()
    SendToDiscord("🔄 Server Hop", "Ищем новый сервер...", 0xffaa00)
    
    pcall(function()
        local servers = HttpService:JSONDecode(game:HttpGet(
            "https://games.roblox.com/v1/games/" .. config.PlaceId .. "/servers/Public?sort=Desc&limit=100"
        ))

        local valid = {}
        for _, s in ipairs(servers.data) do
            if s.playing and s.playing <= config.MaxPlayers and s.id ~= game.JobId then
                table.insert(valid, s)
            end
        end

        if #valid > 0 then
            local target = valid[math.random(#valid)]
            SendToDiscord("✅ Hop выполнен", "Новый сервер: " .. target.playing .. " игроков", 0x00ff00)
            TeleportService:TeleportToPlaceInstance(config.PlaceId, target.id)
        else
            SendToDiscord("⚠️ Rejoin", "Не найдено свободных серверов", 0xffff00)
            TeleportService:Teleport(config.PlaceId)
        end
    end)
end

local function Rejoin()
    SendToDiscord("🔁 Rejoin", "Перезаход на текущий сервер", 0xffaa00)
    TeleportService:Teleport(config.PlaceId)
end

-- Команды в чате
game.Players.LocalPlayer.Chatted:Connect(function(msg)
    local m = msg:lower():gsub("%s+", "")
    
    if m == ".hop" or m == "hop" then
        ServerHop()
    elseif m == ".rejoin" or m == "rejoin" then
        Rejoin()
    elseif m == ".status" or m == "status" then
        SendToDiscord("📊 Статус", "ServerHop работает нормально ✅", 0x00ff00)
    end
end)

SendToDiscord("🟢 ServerHop запущен", "Команды:\n`.hop` — смена сервера\n`.rejoin` — перезаход\n`.status` — проверка", 0x00ff00)

print("✅ ServerHop готов!")
print("Команды: .hop | .rejoin | .status")
