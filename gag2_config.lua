-- GAG2 Public Config
getgenv().GAG2 = {
    Fps = 8,
    AutoBuySeed = true,
    BuyGearShop = {
        "Common Sprinkler", "Uncommon Sprinkler", "Common Watering Can",
        "Super Sprinkler", "Super Watering Can", "Trowel",
    },
    BuyGearMinSheckles = 500000,

    PlantSeeds = {
        ["Strawberry"] = 1, ["Blueberry"] = 1,
        ["Tomato"] = 1, ["Apple"] = 1, ["Corn"] = 1,
        ["Cactus"] = 1, ["Pineapple"] = 25, ["Green Bean"] = 1,
        ["Banana"] = 15, ["Grape"] = 25, ["Coconut"] = 25, ["Mango"] = 45,
        ["Rocket Pop"] = 200, ["Dragon Fruit"] = 25, ["Acorn"] = 25, ["Cherry"] = 25,
        ["Sunflower"] = 10, ["Fire Fern"] = 10, ["Mushroom"] = 200, ["Bamboo"] = 200, 
    },

    DestroyPlants = {
        "Carrot", "Strawberry", "Blueberry", "Tulip", "Tomato", "Apple", "Corn",
        "Cactus", "Green Bean", "Banana",
    },

    BuyPets = {
        ["Monkey"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Golden Dragonfly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Deer"] = { Normal = 4, Big = 99, Huge = 99, Rainbow = 99 },
        ["Bear"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bald Eagle"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Butterfly"] = math.huge,
        ["Frog"] = { Huge = 99, Rainbow = 99 },
        ["Turtle"] = "6",
        ["Rabbit"] = { Huge = 99 },
        ["Firefly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Unicorn"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Raccoon"] = math.huge,
    },

    EquipPets = {
        ["Turtle"] = { Priority = 1 },
        ["Unicorn"] = { Priority = 2 },
        ["Deer"] = { Priority = 3 },
    },

    SellPets = {},
    UseWateringCans = {},
    UseSprinklers = {
        "Common Sprinkler", "Unommon Sprinkler"
    },
    CollectSeedPacks = true,

        COLLECT_PLANT_IF_MUTATED = {"Sunflower", "Venus Fly Trap", "Fire Fern", "Mushroom", "Rocket Pop", "Bamboo", "Pomegranate", "Mango"},
    SellFruitMultiplier = {
        ["Mushroom"] = 3,
        ["Bamboo"] = 0.83,
        ["Mango"] = 0.83,

    },


    BuyAuction = {
        ["Common Seed Pack"] = 25000,
        ["Uncommon Seed Pack"] = 150000,
        ["Rare Seed Pack"] = 1000000,
        ["Legendary Seed Pack"] = 10000000,
        ["Ghost Pepper Pack"] = 10000000,
        ["Common Egg"] = 6000000,
        ["Moon Bloom"] = 8000000,
        ["Sun Bloom"] = 200000000,
        ["Hypno Bloom"] = 10000000,
        ["Dragon's Breath"] = 10000000,
        ["Star Fruit"] = 400000000,
        ["Super Watering Can"] = 2000000,
        ["Super Sprinkler"] = 1000000,
    },

    ["seed dont buy"] = {
        "Venus Fly Trap", "Pomegranate", "Poison Apple", "Venom Spitter",
        "Moon Bloom", "Hypno Bloom", "Fire Fern", "Sunflower",
        "Dragon's Breath", "Acorn", "Cherry", "Coconut",
    },

    SeedInventoryLimit = {
        ["Cactus"] = 10, ["Green Bean"] = 1, ["Banana"] = 1,
        ["Grape"] = 1, ["Coconut"] = 1, ["Mango"] = 999,
        ["Dragon Fruit"] = 1, ["Acorn"] = 1, ["Cherry"] = 1,
        ["Sunflower"] = 1, ["Fire Fern"] = 999,
    },

    GearInventoryLimit = {},
    BuyCrateShop = {},
    CrateInventoryLimit = {},
    OpenSeedPacks = {},
    OpenEggs = {},

    DestroyUntilMinPlants = 400,
    LimitPlants = 400,
    PlantOverLimit = { "Bamboo", "Mushroom", "Rocket Pop" },

    ExpandLimit = 3,
    MaxPetSlots = 6,
    MailReceivers = {"Prdeparitozo"},
    MailSendItems = {
        ["Trowel"] = { Amount = "900", To = { "Preparitozor" } },
        ["Corn"] = { Amount = "450", To = { "1skladd" } },
        ["Common Seed Pack"] = "3",
        ["Uncommon Seed Pack"] = "3",
        ["Rare Seed Pack"] = "All",
        ["Legendary Seed Pack"] = "All",
        ["Ghost Pepper Pack"] = "All",
        ["Raccoon"] = 1,
        ["Firefly"] = 1,
        ["Moon Bloom"] = "All",
        ["Sun Bloom"] = "All",
        ["Star Fruit"] = "All",
        ["Dragon's Breath"] = "All",
        ["Rainbow"] = "3",
        ["Common Egg"] = { Amount = "All", To = { "AFK_MVP" } },
        ["Super Watering Can"] = { Amount = "All", To = { "Unitopikazf" } },
        ["Super Sprinkler"] = { Amount = "All", To = { "Unitopikazf" } },
        ["Mega"] = "3",
        ["Hypno Bloom"] = "All",
        ["Monkey"] = "All",
        ["Deer"] = "All",
        ["Bald Eagle"] = "All",
        ["Butterfly"] = "All",
        ["Frog"] = "All",
        ["Bear"] = "All",
        ["Unicorn"] = "All",
    },

    ShowUserWebhook = true,
    WebhookUrl = "https://discord.com/api/webhooks/1521560645529764013/AL7LzY7ZEXnFDNFpyCAkRQ2vtfZrLebLJEVg2fzoKB4Of6kM1ejanGwelFu8HOZVu2Xj",
    DiscordId = "",
    ServerSpread = false,
    UUID = "",
    RamKickLimit = 6000,
}
