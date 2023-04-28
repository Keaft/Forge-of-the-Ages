#Name: zen_summoning.zs
#Author: Keaft

import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

print("Initializing 'zen_summoning'...");

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:stick>)
        .setReagents([<minecraft:stone>, <minecraft:egg>*12])
        .addMob(MobInfo.create()
            .setMob("minecraft:cow")
            .setCount(4)
            .setOffset(0,4,0)
            .setSpread(3,3,3)
            .setData({"Health": 200, "Attributes":[{"Name":"generic.maxHealth","Base":200}]})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            if (attempt.world.raining) {
                attempt.success = false;
                attempt.message = "Can't summon this in the rain!";
            } else {
                attempt.message = "Woohoo!";
            }
        })
);

print("Initialized 'zen_summoning'");