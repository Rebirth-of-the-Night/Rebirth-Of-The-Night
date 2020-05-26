import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.zensummoning.SummoningDirector;
import mods.zensummoning.SummoningAttempt;
import mods.zensummoning.SummoningInfo;
import mods.zensummoning.MobInfo;

SummoningDirector.enableDebugging();
SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:stick>)
        .setConsumeCatalyst(false)
        .setReagents([<minecraft:slime>*12])
        .addMob(MobInfo.create()
            .setMob("null:king_slime")
            .setCount(1)
            .setData({"Health": 200})
        )
        .addMob(MobInfo.create()
            .setMob("specialmobs:strawberryslime")
            .setCount(10)
            .setOffset(0,8,0)
            .setSpread(3,3,3)
            .setData({"Health": 10, "Attributes":[{"Name":"generic.maxHealth","Base":10}]})
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


SummoningDirector.addSummonInfo(
    SummoningInfo.create()
        .setCatalyst(<minecraft:stick>)
        .setConsumeCatalyst(false)
        .setReagents([<dungeontactics:silver_sword>])
        .addMob(MobInfo.create()
            .setMob("minecraft:zombie")
            .setCount(1)
            .setData({"Health": 200})
        )
        .addMob(MobInfo.create()
            .setMob("specialmobs:strawberryslime")
            .setCount(10)
            .setOffset(0,8,0)
            .setSpread(3,3,3)
            .setData({"Health": 10, "Attributes":[{"Name":"generic.maxHealth","Base":10}]})
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