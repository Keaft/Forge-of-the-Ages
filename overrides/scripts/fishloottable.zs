import crafttweaker.data.IData;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Functions;

val FreshwaterBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "LUSH",
                "JUNGLE",
                "PLAINS",
                "MOUNTAIN",
                "FOREST",
                "SWAMP",
                "RIVER",
                "MAGICAL",
                "DENSE",
                "HILLS",
                "OASIS",
                "CONIFEROUS",
                "DEAD",
                "SPARSE",
                "WASTELAND"
            ]
        }
    ]
};

val AridBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "SANDY",
                "HOT",
                "DRY",
                "MESA",
                "OASIS",
                "SAVANNA",
                "ATUM"
            ]
        }
    ]
};

val ArcticBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "COLD",
                "END",
                "SNOWY"
            ]
        }
    ]
};

val SaltwaterBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "OCEAN",
                "BEACH"
            ]
        }
    ]
};

val TropicalBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "JUNGLE",
                "LUSH"
            ]
        }
    ]
};

//Swamp, but fresh water
val BrackishBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "SWAMP"
            ]
        }
    ]
};

val MushroomBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "MUSHROOM"
            ]
        }
    ]
};

val AllBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome_type",
            "biome_type": [
                "COLD",
                "SNOWY",
                "SANDY",
                "LUSH",
                "DEAD",
                "SPARSE",
                "JUNGLE",
                "HOT",
                "DRY",
                "PLAINS",
                "OCEAN",
                "WASTELAND",
                "BEACH",
                "MOUNTAIN",
                "FOREST",
                "SWAMP",
                "RIVER",
                "MUSHROOM",
                "VOID",
                "MAGICAL",
                "TWILIGHT",
                "WET",
                "WATER",
                "RARE",
                "DENSE",
                "HILLS",
                "MESA",
                "SPOOKY",
                "END",
                "OASIS",
                "SAVANNA",
                "NETHER",
                "CONIFEROUS",
                "ATUM"
            ]
        }
    ]
};

//Fish Name, item, rarity [higher means more often], minWeight, maxWeight, Biome Types.
fishArray = [
["Bluegill",<aquaculture:fish:0>,30,1,5,"Freshwater"],
["Perch",<aquaculture:fish:1>,30,1,5,"Freshwater"],
["Gar",<aquaculture:fish:2>,20,1,10,"Freshwater"],
["Bass",<aquaculture:fish:3>,10,1,25,"Freshwater"],
["Muskellunge",<aquaculture:fish:4>,10,1,35,"Freshwater"],
["Brown Trout",<aquaculture:fish:5>,10,1,40,"Freshwater"],
["Catfish",<aquaculture:fish:6>,5,1,50,"Freshwater"],
["Carp",<aquaculture:fish:7>,1,1,100,"Freshwater"],
["Blowfish",<aquaculture:fish:8>,60,1,25,"Saltwater"],
["Red Grouper",<aquaculture:fish:9>,30,1,50,"Saltwater"],
["Salmon",<aquaculture:fish:10>,10,1,100,"Saltwater"],
["Tuna",<aquaculture:fish:11>,10,1,135,"Saltwater"],
["Sword Fish",<aquaculture:fish:12>,5,1,1400,"Saltwater"],
["Shark",<aquaculture:fish:13>,1,1,5000,"Saltwater"],
["Whale",<aquaculture:fish:14>,1,1,190000,"Saltwater"],
["Squid",<aquaculture:fish:15>,40,1,1000,"Saltwater"],
["Jellyfish",<aquaculture:fish:16>,40,1,500,"Saltwater"],
["Frog",<aquaculture:fish:17>,1,1,1,"Brackish"],
["Turtle",<aquaculture:fish:18>,1,1,5,"Brackishp"],
["Leech",<aquaculture:fish:19>,301,1,"Brackish"],
["Pirahna",<aquaculture:fish:20>,60,1,8,"Tropical"],
["Electric Eel",<aquaculture:fish:21>,25,1,45,"Tropical"],
["Tambaqui",<aquaculture:fish:22>,5,1,75,"Tropical"],
["Arapaima",<aquaculture:fish:23>,1,1,220,"Tropical"],
["Cod",<aquaculture:fish:24>,10,1,210,"Arctic"],
["Pollock",<aquaculture:fish:25>,25,1,45,"Arctic"],
["Herring",<aquaculture:fish:26>,60,1,3,"Arctic"],
["Halibut",<aquaculture:fish:27>,1,1,700,"Arctic"],
["Pink Salmon",<aquaculture:fish:28>,10,1,100,"Arctic"],
["Rainbow Trout",<aquaculture:fish:29>,20,1,50,"Arctic"],
["Blackfish",<aquaculture:fish:30>,45,1,10,"Arctic"],
["Capitaine",<aquaculture:fish:31>,1,1,450,"Arid"],
["Boulti",<aquaculture:fish:32>,30,1,10,"Arid"],
["Bagrid",<aquaculture:fish:33>,20,1,25,"Arid"],
["Syndontis",<aquaculture:fish:34>,60,1,3,"Arid"],
["Red Shrooma",<aquaculture:fish:35>,20,1,5,"Mushroom"],
["Brown Shrooma",<aquaculture:fish:36>,20,1,5,"Mushroom"],
["Goldfish",<aquaculture:fish:37>,10,1,4,"All"],
["Fish Bones",<aquaculture:fish:38>,20,1,1,"All"]
];


val fishing = LootTweaker.getTable("minecraft:gameplay/fishing/fish");
val fish = fishing.getPool("main");

for i in fishArray {
    var fishBiomeConditions = AllBiomes;
    if fishArray[i][5] = "Freshwater" {
        fishBiomeConditions = FreshwaterBiomes;
    }
    if fishArray[i][5] = "Saltwater" {
        fishBiomeConditions = SaltwaterBiomes;
    }
    if fishArray[i][5] = "Swamp" {
        fishBiomeConditions = BrackishBiomes;
    }
    if fishArray[i][5] = "Arid"{
        fishBiomeConditions = AridBiomes;
    }
    if fishArray[i][5] = "Arctic"{
        fishBiomeConditions = ArcticBiomes;
    }
    if fishArray[i][5] = "Tropical"{
        fishBiomeConditions = TropicalBiomes;
    }
    if fishArray[i][5] = "Mushroom"{
        fishBiomeConditions = MushroomBiomes;
    }
    
    fish.addItemEntry(fishArray[i][1], fishArray[i][2], 1, 
    [
        Functions.zenscript(function(stack, random, context)
        {
            return stack * random.nextInt(fishArray[i][3], fishArray[i][4]);
        })
    ], [fishBiomeConditions]);
}

// dungeonPool2.addItemEntry(<additions:greedycraft-reward_ticket_common>, 4, 1, [Functions.setCount(1, 2)], []);


    // [Conditions.parse(
        // {
            // "condition": 
                // "morelootstuff:in_bounds", 
                // "minX": -3000, 
                // "minY": 0, 
                // "minZ": -3000, 
                // "maxX": 3000, 
                // "maxY": 255, 
                // "maxZ":3000
        // }
    // )
// ]);

