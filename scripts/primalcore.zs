import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

val dung = <betterwithmods:material:5>;
val coal_dust = [<ore:dustCoal>] as IIngredient[];
//val charcoal_dust = [<ore:dustCharcoal>] as IIngredient[];
//val slimeball = [<ore:slimeball>] as IIngredient[];
//val sugar = [<ore:listAllsugar>] as IIngredient[];

mods.primal.Cauldron.addRecipe("dung_tannin_tiny", 3, <liquid:water>*250, <liquid:tannin>*250, 
    [<betterwithmods:material:5>], 
    [null]
);

mods.primal.Cauldron.addRecipe("awkward_potion", 3, <liquid:water>, null, 
    [<betterwithmods:material:26>,<minecraft:glass_bottle>], 
    [<minecraft:potion>.withTag({Potion: "minecraft:awkward"})*2]
);

mods.primal.Cauldron.addRecipe("piper_potion", 1, <liquid:water>, null, 
    [<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <pyrotech:freckleberries>, <rustic:chamomile>], 
    [<minecraft:potion>.withTag({Potion: "extraalchemy:pyper_normal"})]
);

mods.primal.Cauldron.addRecipe("slowness_potion", 1, <liquid:water>, null, 
    [<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <pyrotech:freckleberries>, <rustic:wind_thistle>], 
    [<minecraft:potion>.withTag({Potion: "minecraft:slowness"})]
);

mods.primal.Cauldron.addRecipe("methanol", 3, <liquid:water>, <liquid:methanol>, 
    [<pyrotech:rock:7>], 
    [null]
);

mods.primal.Cauldron.addRecipe("horse_upgrade_variant", 2, <liquid:water>*1000, null, 
    [<biomesoplenty:berries>,<biomesoplenty:berries>,<biomesoplenty:berries>,<primitivemobs:camouflage_dye>], 
    [<cyclicmagic:horse_upgrade_variant>]
);
/*mods.primal.Cauldron.addRecipe("horse_upgrade_jump", 2, <liquid:water>*1000, null, 
    [<biomesoplenty:berries>,<biomesoplenty:berries>,<biomesoplenty:berries>,sugar], 
    [<cyclicmagic:horse_upgrade_jump>]
);
mods.primal.Cauldron.addRecipe("horse_upgrade_speed", 2, <liquid:water>*1000, null, 
    [<biomesoplenty:berries>,<biomesoplenty:berries>,<biomesoplenty:berries>,slimeball], 
    [<cyclicmagic:horse_upgrade_speed>]
);*/

//val copperDust = <contenttweaker:material_part:20>;
//val tinDust = <contenttweaker:material_part:21>;

mods.primal.Smelter.addRecipe("bronze_coal", 2, [<contenttweaker:raw_copper>,<contenttweaker:raw_copper>,<contenttweaker:raw_tin>,<minecraft:coal>], [<contenttweaker:material_part>*3, <contenttweaker:material_part:1>*6]);
mods.primal.Smelter.addRecipe("bronze_charcoal", 2, [<contenttweaker:raw_copper>,<contenttweaker:raw_copper>,<contenttweaker:raw_tin>,<minecraft:coal:1>], [<contenttweaker:material_part>*3, <contenttweaker:material_part:1>*6]);

//mods.primal.Smelter.addRecipe("crude_iron_coal-sand", 5, [<contenttweaker:raw_iron>*2,coal_dust|charcoal_dust,<minecraft:sand>], [<primal:crude_iron_ingot>, <minecraft:iron_nugget>*3]);
//mods.primal.Smelter.addRecipe("crude_iron_coal-slag", 5, [<contenttweaker:raw_iron>*2,coal_dust|charcoal_dust,<pyrotech:rock:8>], [<primal:crude_iron_ingot>, <minecraft:iron_nugget>*6]);
//
//mods.primal.Smelter.addRecipe("iron_coal-sand", 5, [<primal:crude_iron_ingot>,coal_dust|charcoal_dust,<minecraft:sand>], [<minecraft:iron_ingot>]);
//mods.primal.Smelter.addRecipe("iron_coal-slag", 5, [<primal:crude_iron_ingot>,coal_dust|charcoal_dust,<pyrotech:rock:8>], [<minecraft:iron_ingot>]);