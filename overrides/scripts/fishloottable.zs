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
                "FOREST",
                "PLAINS",
                "MOUNTAIN",
                "HILLS",
                "RIVER",
                "SWAMP",
                "WET",
                "WATER"
            ]
        }
    ]
};

val AridBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome",
            "biome_type": [
                "SANDY",
                "HOT",
                "DRY"
            ]
        }
    ]
};

val ArcticBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome",
            "biome_type": [
                "WASTELAND",
                "COLD",
                "SPARSE",
                "SNOWY"
            ]
        }
    ]
};

ArcticBiomes = ["Tundra","Taiga"];
SaltwaterBiomes = ["Beach","Ocean","Deep Ocean"];
TropicalBiomes = ["Jungle"];
BrackishBiomes = ["Swamp"];
BrackishBiomes += FreshwaterBiomes;
MushroomBiomes = ["Mushroom Island"];
MushroomBiomes += FreshwaterBiomes;

val AllBiomes as IData = {
    "conditions": [
        {
            "condition": "lootoverhaul:biome",
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

fishArray = [
["Bluegill",<aquaculture:fish:0>,0.8,4.5,"Freshwater"],
["Perch",<aquaculture:fish:1>,0.5,6,"Freshwater"],
["Gar",<aquaculture:fish:2>,8,100,"Freshwater"],
["Bass",<aquaculture:fish:3>,1,12,"Freshwater"],
["Muskellunge",<aquaculture:fish:4>,5,70,"Freshwater"],
["Brown Trout",<aquaculture:fish:5>,1.5,44,"Freshwater"],
["Catfish",<aquaculture:fish:6>,10,220,"Freshwater"],
["Carp",<aquaculture:fish:7>,2,40,"Freshwater"],
//["Blowfish",<aquaculture:fish:8>,0.1,100,"Saltwater"],
["Red Grouper",<aquaculture:fish:9>,4,50,"Saltwater"],
["Salmon",<aquaculture:fish:10>,0.6,15,"Saltwater"],
["Tuna",<aquaculture:fish:11>,30,1508,"Saltwater"],
//["Sword Fish",<aquaculture:fish:12>,0.1,100,"Saltwater"],
//["Shark",<aquaculture:fish:13>,0.1,100,"Saltwater"],
//["Whale",<aquaculture:fish:14>,0.1,100,"Saltwater"],
//["Squid",<aquaculture:fish:15>,0.1,100,"Saltwater"],
["Jellyfish",<aquaculture:fish:16>,5,400,"Saltwater"],
//["Frog",<aquaculture:fish:17>,0.1,100,"Swamp"],
//["Turtle",<aquaculture:fish:18>,0.1,100,"Swamp"],
//["Leech",<aquaculture:fish:19>,0.1,100,"Swamp"],
["Pirahna",<aquaculture:fish:20>,0.5,7.7,"Tropical"],
//["Electric Eel",<aquaculture:fish:21>,0.1,100,"Tropical"],
["Tambaqui",<aquaculture:fish:22>,7,97,"Tropical"],
["Arapaima",<aquaculture:fish:23>,20,440,"Tropical"],
["Cod",<aquaculture:fish:24>,10,211,"Arctic"],
["Pollock",<aquaculture:fish:25>,3,46,"Arctic"],
["Herring",<aquaculture:fish:26>,0.5,2.4,"Arctic"],
["Halibut",<aquaculture:fish:27>,50,710,"Arctic"],
["Pink Salmon",<aquaculture:fish:28>,1.5,15,"Arctic"],
["Rainbow Trout",<aquaculture:fish:29>,2,27,"Arctic"],
["Blackfish",<aquaculture:fish:30>,1,28,"Arctic"],
["Capitaine",<aquaculture:fish:31>,20,440,"Arid"],
["Boulti",<aquaculture:fish:32>,1,9.5,"Arid"],
//["Bagrid",<aquaculture:fish:33>,0.1,100,"Arid"],
["Syndontis",<aquaculture:fish:34>,0.5,2.5,"Arid"],
["Red Shrooma",<aquaculture:fish:35>,1,5,"Mushroom"],
["Brown Shrooma",<aquaculture:fish:36>,1,5,"Mushroom"],
["Goldfish",<aquaculture:fish:37>,0.05,5,"All"],
//["Fish Bones",<aquaculture:fish:38>,0.1,100,"All"]
];


val fishing = LootTweaker.getTable("minecraft:gameplay/fishing/fish");
val fish = fishing.getPool("main");

for i in fishArray {
    var fishBiomeConditions = AllBiomes;
    if fishArray[i][4] = "Freshwater" {
        fishBiomeConditions = FreshwaterBiomes;
    }
    if fishArray[i][4] = "Saltwater" {
        fishBiomeConditions = SaltwaterBiomes;
    }
    if fishArray[i][4] = "Swamp" {
        fishBiomeConditions = BrackishBiomes;
    }
    if fishArray[i][4] = "Arid"{
        fishBiomeConditions = AridBiomes;
    }
    if fishArray[i][4] = "Arctic"{
        fishBiomeConditions = ArcticBiomes
    }
    if fishArray[i][4] = "Tropical"{
        fishBiomeConditions = TropicalBiomes
    }
    if fishArray[i][4] = "Mushroom"{
        fishBiomeConditions = MushroomBiomes
    }
    
    fish.addItemEntry(fishArray[i][1], 75, 0, 
    [
        Functions.zenscript(function(stack, random, context)
        {
            return stack * random.nextInt(fishArray[i][2], fishArray[i][3]);
        })
    ], [fishBiomeConditions]);
}


[Conditions.parse({"condition": "morelootstuff:in_bounds", "minX": -3000, "minY": 0, "minZ": -3000, "maxX": 3000, "maxY": 255, "maxZ":3000})]);