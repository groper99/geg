-- GAG2 Config (загружается через GAG2 Loader, автообновление каждые 2 мин)
getgenv().GAG2 = {
    Fps = 10,
    MergeEclipseMoon = true,
    MailDelay = 150,
    World = "FallHarvest", -- or Main
    MovementMethod = "Tween", -- или "Teleport"
    AutoBuySeed = true,
    BuyGearShop = {
     "Syrup Watering Can", "Syrup Sprinkler", "Super Syrup Sprinkler", "Trowel",
    },
    BuyGearMinSheckles = 5000000,
    PlantSeeds = {
    ["Maple Carrot"] = 3, ["Maple Strawberry"] = 5, ["Maple Blueberry"] = 5, ["Maple Tulip"] = 200,
    ["Maple Tomato"] = 5, ["Maple Apple"] = 10, ["Maple Bamboo"] = 0, ["Maple Corn"] = 8,
    ["Maple Cactus"] = 1, ["Maple Pineapple"] = 4, ["Maple Mushroom"] = 0, ["Maple Green Bean"] = 0,
    ["Maple Banana"] = 2, ["Maple Grape"] = 3, ["Maple Coconut"] = 1, ["Maple Mango"] = 1, ["Maple Rocket Pop"] = 200,
    ["Maple Dragon Fruit"] = 2, ["Maple Acorn"] = 10, ["Maple Cherry"] = 10, ["Maple Sunflower"] = 10, ["Maple Fire Fern"] = 0,
    ["Maple Gold"] = 0, ["Maple Rainbow"] = 0, ["Maple Venus Fly Trap"] = 0, ["Maple Pomegranate"] = 0, ["Maple Poison Apple"] = 0,
    ["Maple Venom Spitter"] = 0, ["Atlantic Giant Pumpkin"] = 4, 
},
    SeedInventoryLimit = {
        ["Maple Strawberry"] = 30,
        ["Maple Blueberry"] = 30,
        ["Maple Tomato"] = 1,
        ["Maple Apple"] = 1,
        ["Maple Corn"] = 1,
        ["Maple Cactus"] = 1,
        ["Maple Pineapple"] = 2,
        ["Maple Green Bean"] = 2,
        ["Maple Banana"] = 1,
        ["Maple Grape"] = 1,
        ["Maple Coconut"] = 1,
        ["Maple Mango"] = 1,
        ["Maple Dragon Fruit"] = 1,
        ["Maple Acorn"] = 1,
        ["Maple Cherry"] = 1,
        ["Maple Sunflower"] = 999,
        ["Atlantic Giant Pumpkin"] = 999,
        ["Maple Venus Fly Trap"] = 999,
        ["Maple Pomegranate"] = 999,
        ["Maple Poison Apple"] = 999,
        ["Maple Venom Spitter"] = 999,
        ["Conifer Cone"] = 999,
        ["Amber Cranberry"] = 999,
    },
    ["seed dont buy"] = {
       "Maple Acorn", "Maple Coconut", "Maple Mango", "Maple Dragon Fruit",
    },
 DONT_SHOVEL_PLANTS = {"Maple Bamboo", "Maple Dragon Fruit", "Maple Coconut", "Maple Mango", "Maple Cherry", "Maple Sunflower", "Maple Fire Fern", "Maple Venus Fly Trap", "Maple Pomegranate", "Maple Poison Apple", "Maple Venom Spitter", "Maple Moon Bloom", "Maple Hypno Bloom", "Maple Dragon's Breath", "Atlantic Giant Pumpkin", "Conifer Cone"},
    
    BuyPets = {
        ["Frog"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bunny"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Owl"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Deer"] = { Normal = 6, Big = 99, Huge = 99, Rainbow = 99 },
        ["Turtle"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Robin"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bee"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Butterfly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Monkey"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Golden Dragonfly"] = { Normal = 6, Big = 99, Huge = 99, Rainbow = 99 },
        ["Bear"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Bald Eagle"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Firefly"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Unicorn"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Raccoon"] = math.huge,
         ["Dog"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Turkey"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Squirrel"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Hedgehog"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Swan"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Fox"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Wolf"] = { Big = 99, Huge = 99, Rainbow = 99 },
        ["Shadow Dragon"] = math.huge,
        ["Red Fox"] = math.huge,
        ["Kitsune"] = math.huge,
    },
       EquipPets = {
        ["Swan"] = { Priority = 1, Amount = 3 },
        ["Turkey"] = { Priority = 2, Amount = 3 },
    },
    SellPets = {
    },
    UseGear = {
       
    },
        AutoUseHarp = {
        Enabled = false,
        MinSheckles = 500000,
    },
    AutoUseCornucopia = true,
    CollectSeedPacks = true,
     ["Seed Dont Collect From Turkey"] = {
        "Maple Corn",
        "Maple Carrot",
    },
    
     ["Wait plant reach target kilogram"] = {
        ["Atlantic Giant Pumpkin"] = 100,
    },
    COLLECT_PLANT_IF_MUTATED = {"Conifer Cone", "Maple Mushroom", "Rocket Pop", "Maple Cherry", "Maple Sunflower", "Maple Fire Fern", "Maple Venus Fly Trap", "Maple Pomegranate", "Maple Poison Apple", "Maple Venom Spitter", "Moon Bloom", "Hypno Bloom", "Dragon's Breath", "Sun Bloom", "Star Fruit"},
     SellFruitMultiplier = {
        ["Maple Pomegranate"] = 2, ["Atlantic Giant Pumpkin"] = 4, ["Conifer Cone"] = 2, ["Maple Venom Spitter"] = 2, ["Maple Venus Fly Trap"] = 2, ["Maple Dragon's Breath"] = 2, ["Maple Hypno Bloom"] = 2, ["Maple Moon Bloom"] = 2, ["Maple Rocket Pop"] = 2, ["Maple Mushroom"] = 2,
        ["Maple Poison Apple"] = 2, ["Maple Sunflower"] = 2, ["Maple Fire Fern"] = 2,
    },
    BuyAuction = {
        ["Atlantic Giant Pumpkin"] = 5000000,
        ["Common Egg"] = 5000000,
        ["Sun Bloom"] = 150000000,
        ["Star Fruit"] = 500000000,
    },
    GearInventoryLimit = {
        ["Common Sprinkler"] = 20,
        ["Uncommon Sprinkler"] = 20,
        ["Common Watering Can"] = 20,
        ["Rare Sprinkler"] = 20,
        ["Legendary Sprinkler"] = 20,
    },
    BuyCrateShop = {
        -- "Light Crate", "Arch Crate",
    },
    CrateInventoryLimit = {
        -- ["Light Crate"] = 5,
    },
    OpenSeedPacks = {
        --"Common Seed Pack", "Uncommon Seed Pack", "Rare Seed Pack",
    },
    OpenEggs = {
       
    },
    LimitPlants = 500,
    ExpandLimit = 2,
    MaxPetSlots = 6,
    MailReceivers = {"AFK_MVP"},
    MailSendItems = {
          ["Common Egg"] = "All",
        ["Atlantic Giant Pumpkin"] = "3",
         ["Maple Pomegranate"] = "All",
         ["Maple Poison Apple"] = "All",
        ["Maple Venus Fly Trap"] = "All",
         ["Maple Venom Spitter"] = "All",

        
      
        
         
        ["Raccoon"] = 1,---{ Amount = 1, To = {"account"} },
       ["Maple Pineapple"] = { Amount = "35", To = {"4skladd"} },
        ["Maple Carrot"] = { Amount = "4000", To = {"4skladd"} },
        ["Maple Bamboo"] = { Amount = "2000", To = {"4skladd"} },
        ["Maple Cherry"] = { Amount = "10", To = {"4skladd"} },

        ["Maple Sunflower"] = { Amount = "4", To = {"Gragufinicuz_2"} },
         ["Maple Mushroom"] = { Amount = "90", To = {"Gragufinicuz_2"} },
         

         ["Trowel"] = { Amount = "500", To = {"Gragufinicuz_1"} },

    
         ["Super Syrup Watering Can"] = { Amount = "3", To = {"Preparitozor"} },
        ["Syrup Watering Can"] = { Amount = "1000", To = {"Preparitozor"} },
        ["Syrup Sprinkler"] = { Amount = "100", To = {"Preparitozor"} },
        ["Super Syrup Sprinkler"] = { Amount = "2", To = {"Preparitozor"} },

["Raccoon"] = { Amount = "All", To = {"AFK_MVP"} },
 ["Red Fox"] = { Amount = "All", To = {"AFK_MVP"} },
 ["Kitsune"] = { Amount = "All", To = {"AFK_MVP"} },
["Swan"] = { Amount = "All", To = {"AFK_MVP"} },
["Fox"] = { Amount = "All", To = {"AFK_MVP"} },
["Wolf"] = { Amount = "All", To = {"AFK_MVP"} },
["Raccoon"] = { Amount = "All", To = {"AFK_MVP"} },
["Shadow Dragon"] = { Amount = "All", To = {"AFK_MVP"} },       
["Big Dog"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Dog"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Dog"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Turkey"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Turkey"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Turkey"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Squirrel"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Squirrel"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Squirrel"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Hedgehog"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Hedgehog"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Hedgehog"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Swan"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Swan"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Swan"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Fox"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Fox"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Fox"] = { Amount = "All", To = {"AFK_MVP"} },
["Big Wolf"] = { Amount = "All", To = {"AFK_MVP"} },
["Huge Wolf"] = { Amount = "All", To = {"AFK_MVP"} },
["Rainbow Wolf"] = { Amount = "All", To = {"AFK_MVP"} },
        
    },

    ShowUserWebhook = true,
    WebhookUrl = "https://discord.com/api/webhooks/1521560645529764013/AL7LzY7ZEXnFDNFpyCAkRQ2vtfZrLebLJEVg2fzoKB4Of6kM1ejanGwelFu8HOZVu2Xj",
    DiscordId = "",
    RamKickLimit = 7000,
}
