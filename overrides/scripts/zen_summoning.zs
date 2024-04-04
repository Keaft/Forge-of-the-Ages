#Name: zen_summoning.zs
#Author: Keaft

import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlock;
import crafttweaker.data.IData;

print("Initializing 'zen_summoning'...");

val customZombieNBT as IData = {Health:200.0f,Attributes:[{Base:200.0d,Name:"generic.maxHealth"},{Base:2.0d,Name:"generic.armor"}],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1 as byte,Damage:0 as short}]};

SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:stick>)
        .setReagents([])
        .addMob(MobInfo.create()
            .setMob("minecraft:zombie")
            .setCount(1)
            .setOffset(0,4,0)
            .setSpread(3,3,3)
            .setData(customZombieNBT)
        )
        .setMutator(function (attempt as SummoningAttempt) {
            var pos = attempt.pos;
            var x = pos.x as int;
            var y = pos.y as int;
            var z = pos.z as int;
            var underBlockPos = crafttweaker.util.Position3f.create(pos.x, pos.y - 1, pos.z);
            var underBlock = attempt.world.getBlockState(underBlockPos);
            var underBlockName = underBlock.block.definition.id;
            var underBlockMeta = underBlock.block.meta;
            var underBlockString as string = underBlockName + ":" + underBlockMeta;
            if (attempt.world.raining) {
                attempt.success = false;
                attempt.message = "Can't summon this in the rain!";
            } else {
                attempt.message = "X:" + x as string + " Y:" + y as string + " Z:" + z as string + " on " + underBlockString;
            }
        })
);

print("Initialized 'zen_summoning'");