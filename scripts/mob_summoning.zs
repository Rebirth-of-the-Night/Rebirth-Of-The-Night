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
        .setReagents([<minecraft:slime_ball>*25,<bountifulbaubles:crowngold>,<contenttweaker:ruby_ingot>,<contenttweaker:peridot_ingot>,<minecraft:gold_ingot>])
        .addMob(MobInfo.create()
            .setMob("null:king_slime")
            .setCount(1)
            .setData({"Health": 400, "Attributes":[{"Name":"generic.maxHealth","Base":400}]})
            .setData({ActiveEffects:[{Id:10,Amplifier:0,Duration:2147483647},{Id:12,Amplifier:0,Duration:2147483647}]})
        )
        .addMob(MobInfo.create()
            .setMob("minecraft:slime")
            .setCount(10)
            .setOffset(0,5,0)
            .setSpread(6,6,6)
            .setData({"Health": 10, "Attributes":[{"Name":"generic.maxHealth","Base":10}]})
        )
        .setMutator(function (attempt as SummoningAttempt) {
            if (attempt.world.raining) {
                attempt.success = true;
                attempt.message = "§cKing Slime has been summoned!";
            } else {
                attempt.success = false;
                attempt.message = "King Slime can only be summoned when raining";
            }
        })
);