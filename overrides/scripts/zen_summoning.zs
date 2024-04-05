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
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.command.ICommand;

print("Initializing 'zen_summoning'...");

function basicBossSummon(catalyst as IItemStack, reagents as IIngredient[], mob as string, mobNBT as IData, altarBlock as string, localSummonMessage as string = null) {
    SummoningDirector.addSummonInfo(
        SummoningInfo.create()
            .setCatalyst(catalyst)
            .setReagents(reagents)
            .addMob(MobInfo.create()
                .setMob(mob)
                .setCount(1)
                .setOffset(0,4,0)
                .setSpread(3,3,3)
                .setData(mobNBT)
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
                if (underBlockString != altarBlock) {
                    attempt.success = false;
                    attempt.message = "Altar block " + altarBlock + " not found moving on.";
                } else {
                    server.commandManager.executeCommand(server,"execute @a[x=" + x + ",y=" + y + ",z=" + z + ",r=15] ~ ~ ~ tellraw @a[x=~1,y=~1,z=~1,rm=0,r=15] [\"" + localSummonMessage + "\"]");
                    /* attempt.message = "X:" + x as string + " Y:" + y as string + " Z:" + z as string + " on " + underBlockString; */
                }
            })
    );
}

val customZombieNBT as IData = {Health:200.0f,Attributes:[{Base:200.0d,Name:"generic.maxHealth"},{Base:2.0d,Name:"generic.armor"}],ArmorItems:[{},{},{},{id:"minecraft:diamond_helmet",Count:1 as byte,Damage:0 as short}]};

/* basicBossSummon(catalyst,reagents,mob,mobNBT,alterBlock); */
basicBossSummon(<minecraft:stick>,[],"minecraft:zombie",customZombieNBT,"minecraft:stone:0", "you feel the air get cold");

/* SummoningDirector.addSummonInfo(
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
); */

print("Initialized 'zen_summoning'");