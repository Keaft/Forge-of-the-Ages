#reloadable
// Author: Keaft
// Name: mutant_skeleton_boss.zs

import scripts.bosssummoning.basic_boss as BB;
import scripts.bosssummoning.generic_boss_names as GenericNames;

import crafttweaker.data.IData;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;

print("Initializing 'mutant_skeleton_boss'...");

static mutantSkeleton1 as BB.BasicBoss = BB.BasicBoss(0, // Armor Toughness
                            10, // Attack Damage
                            10, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton1",
                                "lootDrops": [
                                    {
                                        name :"certusQuartz",
                                        item: "appliedenergistics2:material",
                                        weight: 100,
                                        minDrop: 10,
                                        maxDrop: 15,
                                        damaged: false
                                    },
                                    {
                                        name :"certusQuartzChance1",
                                        item: "appliedenergistics2:material",
                                        weight: 20,
                                        minDrop: 6,
                                        maxDrop: 12,
                                        damaged: false
                                    },
                                    {
                                        name :"diamondChance1",
                                        item: "minecraft:diamond",
                                        weight: 50,
                                        minDrop: 1,
                                        maxDrop: 5,
                                        damaged: false
                                    },
                                    {
                                        name :"bowlimb1",
                                        item: "tconstruct:bow_limb",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "steel"
                                        }
                                    },
                                    {
                                        name :"bowlimb2",
                                        item: "tconstruct:bow_limb",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "steel"
                                        }
                                    },
                                    {
                                        name :"toughToolRod",
                                        item: "tconstruct:tough_tool_rod",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "wood"
                                        }
                                    },
                                    {
                                        name :"toughBinding",
                                        item: "tconstruct:tough_binding",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "iron"
                                        }
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            GenericNames.bossNames, // Name List
                            GenericNames.bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            150 // Total Health
);

static mutantSkeleton2 as BB.BasicBoss = BB.BasicBoss(0, // Armor Toughness
                            15, // Attack Damage
                            15, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton2",
                                "lootDrops": [
                                    {
                                        name :"certusQuartz",
                                        item: "appliedenergistics2:material",
                                        weight: 100,
                                        minDrop: 20,
                                        maxDrop: 30,
                                        damaged: false
                                    },
                                    {
                                        name :"certusQuartzChance1",
                                        item: "appliedenergistics2:material",
                                        weight: 30,
                                        minDrop: 10,
                                        maxDrop: 15,
                                        damaged: false
                                    },
                                    {
                                        name :"diamondChance1",
                                        item: "minecraft:diamond",
                                        weight: 60,
                                        minDrop: 4,
                                        maxDrop: 8,
                                        damaged: false
                                    },
                                    {
                                        name :"bowlimb1",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "steel"
                                        }
                                    },
                                    {
                                        name :"bowlimb2",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "steel"
                                        }
                                    },
                                    {
                                        name :"toughToolRod",
                                        item: "tconstruct:tough_tool_rod",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "livingwood"
                                        }
                                    },
                                    {
                                        name :"toughBinding",
                                        item: "tconstruct:tough_binding",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "steel"
                                        }
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            GenericNames.bossNames, // Name List
                            GenericNames.bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            225 // Total Health
);

static mutantSkeleton3 as BB.BasicBoss = BB.BasicBoss(0, // Armor Toughness
                            16, // Attack Damage
                            20, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton3",
                                "lootDrops": [
                                    {
                                        name :"certusQuartz",
                                        item: "appliedenergistics2:material",
                                        weight: 100,
                                        minDrop: 25,
                                        maxDrop: 35,
                                        damaged: false,
                                    },
                                    {
                                        name :"certusQuartzChance1",
                                        item: "appliedenergistics2:material",
                                        weight: 35,
                                        minDrop: 10,
                                        maxDrop: 25,
                                        damaged: false
                                    },
                                    {
                                        name :"diamondChance1",
                                        item: "minecraft:diamond",
                                        weight: 65,
                                        minDrop: 5,
                                        maxDrop: 13,
                                        damaged: false
                                    },
                                    {
                                        name :"bowlimb1",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "platinum"
                                        }
                                    },
                                    {
                                        name :"bowlimb2",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "platinum"
                                        }
                                    },
                                    {
                                        name :"toughToolRod",
                                        item: "tconstruct:tough_tool_rod",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "livingwood"
                                        }
                                    },
                                    {
                                        name :"toughBinding",
                                        item: "tconstruct:tough_binding",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "shadow_steel"
                                        }
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            GenericNames.bossNames, // Name List
                            GenericNames.bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            250 // Total Health
);

static mutantSkeleton4 as BB.BasicBoss = BB.BasicBoss(0, // Armor Toughness
                            18, // Attack Damage
                            30, // Base armor 1 is half a shield in game
                            <entity:mutantbeasts:mutant_skeleton>, // Entity to summon
                            null, // Chest armor
                            {
                                "bossVariable": "mutantSkeleton4",
                                "lootDrops": [
                                    {
                                        name :"certusQuartz",
                                        item: "appliedenergistics2:material",
                                        weight: 100,
                                        minDrop: 30,
                                        maxDrop: 45,
                                        damaged: false,
                                    },
                                    {
                                        name :"certusQuartzChance1",
                                        item: "appliedenergistics2:material",
                                        weight: 40,
                                        minDrop: 15,
                                        maxDrop: 28,
                                        damaged: false
                                    },
                                    {
                                        name :"diamondChance1",
                                        item: "minecraft:diamond",
                                        weight: 70,
                                        minDrop: 8,
                                        maxDrop: 16,
                                        damaged: false
                                    },
                                    {
                                        name :"bowlimb1",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "manasteel"
                                        }
                                    },
                                    {
                                        name :"bowlimb2",
                                        item: "tconstruct:bow_limb",
                                        weight: 15,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "manasteel"
                                        }
                                    },
                                    {
                                        name :"toughToolRod",
                                        item: "tconstruct:tough_tool_rod",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "silver"
                                        }
                                    },
                                    {
                                        name :"toughBinding",
                                        item: "tconstruct:tough_binding",
                                        weight: 10,
                                        minDrop: 1,
                                        maxDrop: 1,
                                        damaged: false,
                                        extraItemTags: {
                                            Material: "electrical_steel"
                                        }
                                    }
                                ]
                            },
                            null, // Feet armor
                            null, // Head Armor
                            null, // Legs armor
                            "You feel the ground shake beneath your feet", // Local distance message on summon
                            null, // Main hand item
                            null, // Custom name
                            GenericNames.bossNames, // Name List
                            GenericNames.bossSuffixes, // Name Suffix List
                            null, // Off hand item
                            300 // Total Health
);

print("Initialized 'mutant_skeleton_boss'");