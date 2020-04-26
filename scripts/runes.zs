import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

//misc
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);
recipes.remove(<quark:rune:*>);
//recipes.removeShaped(<endreborn:item_end_rune>, [[<endreborn:item_end_shard>, <endreborn:item_end_shard>, <endreborn:item_end_shard>],[<endreborn:item_end_shard>, <endreborn:item_advanced_ender_pearl>, <endreborn:item_end_shard>],[<endreborn:item_end_shard>, <endreborn:item_end_shard>, <endreborn:item_end_shard>]]);
recipes.remove(<endreborn:item_end_rune>);
val endrune = <endreborn:item_end_rune>;
endrune.maxDamage = 8;

//inert
recipes.addShapeless(<contenttweaker:blank_rune>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [<ore:stone>, <dungeontactics:magic_powder>]);
recipes.addShaped(<contenttweaker:magic_orb>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [[<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>],[<dungeontactics:magic_powder>, <minecraft:clay_ball>, <dungeontactics:magic_powder>], [<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>]]);


//mundane
recipes.addShaped(<contenttweaker:sol_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:yellow_flower>, <contenttweaker:blank_rune>, <minecraft:gold_ingot>], [null, null, null]]);
recipes.addShaped(<contenttweaker:luna_rune>, [[null, <dungeontactics:magic_powder>, null],[<rustic:mooncap_mushroom>, <contenttweaker:blank_rune>, <nyx:fallen_star>], [null, null, null]]);
recipes.addShaped(<contenttweaker:water_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:water_bucket>, <contenttweaker:blank_rune>, <minecraft:ice>], [null, null, null]]);
recipes.addShaped(<contenttweaker:air_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:glass_bottle>, <contenttweaker:blank_rune>, <rustic:cloudsbluff>], [null, null, null]]);
recipes.addShaped(<contenttweaker:fire_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:coal>, <contenttweaker:blank_rune>, <minecraft:flint>], [null, null, null]]);
recipes.addShaped(<contenttweaker:earth_rune>, [[null, <dungeontactics:magic_powder>, null],[<ore:dirt>, <contenttweaker:blank_rune>, <ore:cobblestone>], [null, null, null]]);

recipes.addShapeless(<contenttweaker:air_orb>, [<contenttweaker:air_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:sol_orb>, [<contenttweaker:sol_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:earth_orb>, [<contenttweaker:earth_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:water_orb>, [<contenttweaker:water_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fire_orb>, [<contenttweaker:fire_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:luna_orb>, [<contenttweaker:luna_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);

//arcane
recipes.addShaped(<contenttweaker:spectral_shard>, [[<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>],[<bountifulbaubles:spectralsilt>, <minecraft:prismarine_shard>, <bountifulbaubles:spectralsilt>], [<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>]]);

recipes.addShaped(<contenttweaker:balance_rune>, [[<dungeontactics:magic_powder>, <contenttweaker:air_rune>.anyDamage().transformDamage(), <contenttweaker:sol_rune>.anyDamage().transformDamage()],[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:earth_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>]]);
recipes.addShaped(<contenttweaker:chaos_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:air_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [null, <minecraft:gunpowder>, null]]);
recipes.addShaped(<contenttweaker:energy_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<contenttweaker:disint_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [null, <biomesoplenty:ash>, null]]);
recipes.addShaped(<contenttweaker:creation_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [null, <biomesoplenty:mud>, null]]);
recipes.addShaped(<contenttweaker:death_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:fire_rune>.anyDamage().transformDamage()], [null, <quark:black_ash>, null]]);
recipes.addShaped(<contenttweaker:illusion_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:water_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], [null, <endreborn:block_phantom>, null]]);
recipes.addShaped(<contenttweaker:order_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], [null, <ore:StoneHugeBrick>, null]]);
recipes.addShaped(<contenttweaker:trans_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], [null, <dynamictrees:dendropotion:6>, null]]);
recipes.addShaped(<contenttweaker:knowledge_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:air_rune>.anyDamage().transformDamage()], [null, <iceandfire:manuscript>, null]]);
recipes.addShaped(<contenttweaker:poison_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], [null, <minecraft:fermented_spider_eye>, null]]);
recipes.addShaped(<contenttweaker:soul_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], [null, <quark:soul_powder>, null]]);
recipes.addShaped(<contenttweaker:life_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:water_rune>.anyDamage().transformDamage()], [null, <scalinghealth:heartdust>, null]]);
recipes.addShaped(<contenttweaker:nature_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:earth_rune>.anyDamage().transformDamage()], [null, <minecraft:grass>, null]]);
recipes.addShaped(<contenttweaker:strength_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:earth_rune>.anyDamage().transformDamage()], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<contenttweaker:mind_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:luna_rune>.anyDamage().transformDamage()], [null, <betterwithmods:material:15>, null]]);

recipes.addShaped(<quark:rune:16>, [[<ore:dyeRed>, <ore:dyeBlue>, <ore:dyeLime>],[<ore:dyeYellow>, <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [<ore:dyeMagenta>, <ore:dyeOrange>, <ore:dyeWhite>]]);
recipes.addShaped(<quark:rune:15>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlack>], [null, null, null]]);
recipes.addShaped(<quark:rune:14>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeRed>], [null, null, null]]);
recipes.addShaped(<quark:rune:11>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:5>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLime>], [null, null, null]]);
recipes.addShaped(<quark:rune:4>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeYellow>], [null, null, null]]);
recipes.addShaped(<quark:rune:3>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:2>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeMagenta>], [null, null, null]]);
recipes.addShaped(<quark:rune:1>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeOrange>], [null, null, null]]);
recipes.addShaped(<quark:rune:0>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeWhite>], [null, null, null]]);

recipes.addShapeless(<contenttweaker:disint_orb>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:poison_orb>, [<contenttweaker:poison_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:soul_orb>, [<contenttweaker:soul_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:life_orb>, [<contenttweaker:life_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nature_orb>, [<contenttweaker:nature_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:death_orb>, [<contenttweaker:death_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:trans_orb>, [<contenttweaker:trans_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:knowledge_orb>, [<contenttweaker:knowledge_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:creation_orb>, [<contenttweaker:creation_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:order_orb>, [<contenttweaker:order_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:mind_orb>, [<contenttweaker:mind_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:energy_orb>, [<contenttweaker:energy_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:balance_orb>, [<contenttweaker:balance_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:illusion_orb>, [<contenttweaker:illusion_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:chaos_orb>, [<contenttweaker:chaos_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);


//mystical
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:draconic_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:strength_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage()], [<bountifulbaubles:brokenblackdragonscale>, <iceandfire:dragonbone>, <rats:dragon_wing>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:aether_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:mind_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:balance_rune>.anyDamage().transformDamage()], [<aether_legacy:ambrosium_shard>, <aether_legacy:zanite_gemstone>, <aether_legacy:aercloud>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:holding_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:order_rune>.anyDamage().transformDamage()], [<endreborn:item_shard_obsidian>, <minecraft:ender_pearl>, <arcanearchives:shaped_quartz>]],8);
mods.betterwithaddons.Infuser.addShaped(<endreborn:item_end_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:creation_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:life_rune>.anyDamage().transformDamage()], [<endreborn:item_end_essence>, <endreborn:item_ingot_endorium>, <minecraft:ender_eye>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:nether_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:soul_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:disint_rune>.anyDamage().transformDamage()], [<minecraft:ghast_tear>, <minecraft:blaze_powder>, <betternether:cincinnasite>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:plague_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:death_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:poison_rune>.anyDamage().transformDamage()], [<rats:herb_bundle>, <rats:plague_leech>, <minecraft:poisonous_potato>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:arcane_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:chaos_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:energy_rune>.anyDamage().transformDamage()], [<biomesoplenty:sapling_0:3>, <simpleores:mythril_ingot>, <arcanearchives:radiant_dust>]],8);
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:fae_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:nature_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <contenttweaker:trans_rune>.anyDamage().transformDamage()], [<minecraft:red_mushroom>, <iceandfire:pixie_dust>, <minecraft:brown_mushroom>]],8);


recipes.addShapeless(<contenttweaker:end_orb>, [<endreborn:item_end_rune>.anyDamage().transformDamage(), <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:arcane_orb>, [<contenttweaker:arcane_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:plague_orb>, [<contenttweaker:plague_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fae_orb>, [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:holding_orb>, [<contenttweaker:holding_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:draconic_orb>, [<contenttweaker:draconic_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:aether_orb>, [<contenttweaker:aether_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nether_orb>, [<contenttweaker:nether_rune>.anyDamage().transformDamage(),<contenttweaker:magic_orb>]);
