-- GAG2 Public Config
getgenv().GAG2 = {
    Fps = 8,
    AutoBuySeed = true,
    BuyGearShop = {
        "Common Sprinkler", "Uncommon Sprinkler", "Common Watering Can", "Rare Sprinkler",
        "Super Sprinkler", "Super Watering Can", "Trowel", "Legendary Sprinkler", 
    },
    BuyGearMinSheckles = 500000,

    PlantSeeds = {
    ["Cherry"] = 3, ["Fire Fern"] = 3, ["Sunflower"] = 3, ["Venus Fly Trap"] = 3, ["Pomegranate"] = 3, ["Poison Apple"] = 3, ["Venom Spitter"] = 3, ["Moon Bloom"] = 3, ["Hypno Bloom"] = 3,
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
         ["Sunflower"] = 4,
         ["Venus Fly Trap"] = 4,
         ["Fire Fern"] = 4,
         ["Star Fruit"] = 4,
         ["Dragon's Breath"] = 4,
         ["Hypno Bloom"] = 4,
         ["Sun Bloom"] = 4,
         ["Moon Bloom"] = 4,
        ["Pomegranate"] = 4,
         ["Poison Apple"] = 4,
         ["Venom Spitter"] = 4,
         
        

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
                    ["Common Watering Can"] = { Amount = "4000", To = { "Unitopikazf" } },
        ["Uncommon Sprinkler"] = { Amount = "500", To = { "Unitopikazf" } },
       ["Rare Sprinkler"] = { Amount = "60", To = { "Unitopikazf" } },
	     ["Common Sprinkler"] = { Amount = "300", To = { "Unitopikazf" } },
         ["Legendary Sprinkler"] = { Amount = "15", To = { "Unitopikazf" } },

		   ["Sunflower"] = { Amount = "5", To = { "1skladd" } },
        ["Pomegranate"] = { Amount = "5", To = { "1skladd" } },
        ["Venus Fly Trap"] = { Amount = "5", To = { "1skladd" } },
        ["Poison Apple"] = { Amount = "5", To = { "1skladd" } },
        ["Moon Bloom"] = { Amount = "All", To = { "1skladd" } },
        ["Venom Spitter"] = { Amount = "All", To = { "1skladd" } },
		
        ["Gnome"] = { Amount = "All", To = { "3skladd" } },
         ["Strawberry Sniper"] = "All",
        ["Cherry"] = { Amount = "8", To = { "Preparitozor" } },
         ["Coconut"] = "20",
        ["Acorn"] = "10",
        ["Fire Fern"] = "8",
        ["Mango"] = "50",
        ["Dragon Fruit"] = "13",
        ["Trowel"] = { Amount = "999", To = { "Preparitozor" } },
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
