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
    ["Cherry"] = 3, ["Fire Fern"] = 3, ["Sunflower"] = 3, ["Venus Fly Trap"] = 3, ["Pomegranate"] = 3, ["Poison Apple"] = 3, ["Venom Spitter"] = 3, ["Moon Bloom"] = 3, ["Hypno Bloom"] = 3, ["Mushroom"] = 100,
    },

    DestroyPlants = {
        "Carrot", "Strawberry", "Blueberry", "Tulip", "Tomato", "Apple", "Corn",
        "Cactus", "Green Bean", "Banana",
    },

    BuyPets = {
        ["Monkey"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Golden Dragonfly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Deer"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bear"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bald Eagle"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Butterfly"] = math.huge,
        ["Frog"] = { Huge = 99, Rainbow = 99 },
        ["Turtle"] = { Normal = 6, Big = 99, Huge = 99, Rainbow = 99 },
        ["Rabbit"] = { Huge = 99 },
        ["Firefly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Unicorn"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Raccoon"] = math.huge,
    },

    EquipPets = {
        ["Turtle"] = { Priority = 1 },
    
        
    },

    SellPets = {},
    UseWateringCans = {},
    UseSprinklers = {
     "Unommon Sprinkler"
    },
    CollectSeedPacks = true,

        COLLECT_PLANT_IF_MUTATED = {"Sunflower", "Venus Fly Trap", "Fire Fern", "Mushroom", "Rocket Pop", "Bamboo", "Pomegranate", "Poison Apple", "Cherry", "Venom Spitter", "Moon Bloom", "Hypno Bloom"},
    SellFruitMultiplier = {
        ["Mushroom"] = 3,
         ["Sunflower"] = 3,
         ["Venus Fly Trap"] = 3,
         ["Fire Fern"] = 3,
         ["Star Fruit"] = 3,
         ["Dragon's Breath"] = 3,
         ["Hypno Bloom"] = 3,
         ["Sun Bloom"] = 3,
         ["Moon Bloom"] = 3,
        ["Pomegranate"] = 3,
         ["Poison Apple"] = 3,
         ["Venom Spitter"] = 3,
         
        

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
    
    },

    SeedInventoryLimit = {

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
        ["Trowel"] = { Amount = "999", To = { "Preparitozor" } },
        ["Corn"] = { Amount = "550", To = { "Preparitozor" } },
        ["Common Seed Pack"] = "3",
        ["Uncommon Seed Pack"] = "3",
        ["Rare Seed Pack"] = "All",
        ["Legendary Seed Pack"] = "All",
        ["Ghost Pepper Pack"] = "All",
        ["Raccoon"] = 1,
        ["Firefly"] = 1,
        ["Sun Bloom"] = "All",
        ["Star Fruit"] = "All",
        ["Dragon's Breath"] = "All",
        ["Rainbow"] = "3",
        ["Common Egg"] = { Amount = "All", To = { "AFK_MVP" } },
        ["Super Watering Can"] = { Amount = "All", To = { "Unitopikazf" } },
        ["Super Sprinkler"] = { Amount = "All", To = { "Unitopikazf" } },
        ["Mega"] = "3",
        ["Monkey"] = "All",
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
