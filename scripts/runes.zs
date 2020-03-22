import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;

//misc
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);
recipes.remove(<quark:rune:*>);
recipes.remove(<endreborn:item_end_rune>);

//inert
recipes.addShapeless(<contenttweaker:blank_rune>, [<ore:stone>, <dungeontactics:magic_powder>]);
recipes.addShaped(<contenttweaker:magic_orb>, [[<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>],[<dungeontactics:magic_powder>, <minecraft:clay_ball>, <dungeontactics:magic_powder>], [<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>]]);


//mundane
recipes.addShaped(<contenttweaker:sol_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:double_plant:0>, <contenttweaker:blank_rune>, <minecraft:gold_ingot>], [null, null, null]]);
recipes.addShaped(<contenttweaker:luna_rune>, [[null, <dungeontactics:magic_powder>, null],[<rustic:mooncap_mushroom>, <contenttweaker:blank_rune>, <nyx:fallen_star>], [null, null, null]]);
recipes.addShaped(<contenttweaker:water_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:water_bucket>, <contenttweaker:blank_rune>, <minecraft:ice>], [null, null, null]]);
recipes.addShaped(<contenttweaker:air_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:glass_bottle>, <contenttweaker:blank_rune>, <rustic:cloudsbluff>], [null, null, null]]);
recipes.addShaped(<contenttweaker:fire_rune>, [[null, <dungeontactics:magic_powder>, null],[<minecraft:coal>, <contenttweaker:blank_rune>, <minecraft:flint>], [null, null, null]]);
recipes.addShaped(<contenttweaker:earth_rune>, [[null, <dungeontactics:magic_powder>, null],[<ore:dirt>, <contenttweaker:blank_rune>, <ore:cobblestone>], [null, null, null]]);

recipes.addShapeless(<contenttweaker:air_orb>, [<contenttweaker:air_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:sol_orb>, [<contenttweaker:sol_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:earth_orb>, [<contenttweaker:earth_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:water_orb>, [<contenttweaker:water_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fire_orb>, [<contenttweaker:fire_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:luna_orb>, [<contenttweaker:luna_rune>,<contenttweaker:magic_orb>]);

//arcane
recipes.addShaped(<contenttweaker:spectral_shard>, [[<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>],[<bountifulbaubles:spectralsilt>, <endreborn:item_shard_obsidian>, <bountifulbaubles:spectralsilt>], [<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>]]);

recipes.addShaped(<contenttweaker:balance_rune>, [[<dungeontactics:magic_powder>, <contenttweaker:air_rune>, <contenttweaker:sol_rune>],[<contenttweaker:water_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [<contenttweaker:luna_rune>, <contenttweaker:earth_rune>, <dungeontactics:magic_powder>]]);
recipes.addShaped(<contenttweaker:chaos_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:air_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [null, <minecraft:gunpowder>, null]]);
recipes.addShaped(<contenttweaker:energy_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:water_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [null, <minecraft:redstone>, null]]);
recipes.addShaped(<contenttweaker:disint_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [null, <biomesoplenty:ash>, null]]);
recipes.addShaped(<contenttweaker:creation_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [null, <biomesoplenty:mud>, null]]);
recipes.addShaped(<contenttweaker:death_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>, <contenttweaker:blank_rune>, <contenttweaker:fire_rune>], [null, <quark:black_ash>, null]]);
recipes.addShaped(<contenttweaker:illusion_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:water_rune>, <contenttweaker:blank_rune>, <contenttweaker:air_rune>], [null, <endreborn:block_phantom>, null]]);
recipes.addShaped(<contenttweaker:order_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>, <contenttweaker:blank_rune>, <contenttweaker:air_rune>], [null, <minecraft:stonebrick>, null]]);
recipes.addShaped(<contenttweaker:trans_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>, <contenttweaker:blank_rune>, <contenttweaker:air_rune>], [null, <dynamictrees:dendropotion:6>, null]]);
recipes.addShaped(<contenttweaker:knowledge_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>, <contenttweaker:blank_rune>, <contenttweaker:air_rune>], [null, <wards:enchanted_paper>, null]]);
recipes.addShaped(<contenttweaker:poison_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:earth_rune>, <contenttweaker:blank_rune>, <contenttweaker:water_rune>], [null, <minecraft:fermented_spider_eye>, null]]);
recipes.addShaped(<contenttweaker:soul_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>, <contenttweaker:blank_rune>, <contenttweaker:water_rune>], [null, <quark:soul_powder>, null]]);
recipes.addShaped(<contenttweaker:life_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>, <contenttweaker:blank_rune>, <contenttweaker:water_rune>], [null, <scalinghealth:heartdust>, null]]);
recipes.addShaped(<contenttweaker:nature_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:luna_rune>, <contenttweaker:blank_rune>, <contenttweaker:earth_rune>], [null, <minecraft:grass>, null]]);
recipes.addShaped(<contenttweaker:strength_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>, <contenttweaker:blank_rune>, <contenttweaker:earth_rune>], [null, <betterwithmods:material:14>, null]]);
recipes.addShaped(<contenttweaker:mind_rune>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:sol_rune>, <contenttweaker:blank_rune>, <contenttweaker:luna_rune>], [null, <betterwithmods:material:15>, null]]);

recipes.addShaped(<quark:rune:16>*7, [[<quark:rune:1>, <quark:rune>, <quark:rune:2>],[<quark:rune:3>, <contenttweaker:blank_rune>, <quark:rune:4>], [<quark:rune:5>, <quark:rune:11>, <quark:rune:14>]]);
recipes.addShaped(<quark:rune:15>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <biomesoplenty:black_dye>], [null, null, null]]);
recipes.addShaped(<quark:rune:14>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:1>], [null, null, null]]);
recipes.addShaped(<quark:rune:11>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <biomesoplenty:blue_dye>], [null, null, null]]);
recipes.addShaped(<quark:rune:5>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:10>], [null, null, null]]);
recipes.addShaped(<quark:rune:4>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:11>], [null, null, null]]);
recipes.addShaped(<quark:rune:3>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:12>], [null, null, null]]);
recipes.addShaped(<quark:rune:2>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:13>], [null, null, null]]);
recipes.addShaped(<quark:rune:1>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <minecraft:dye:14>], [null, null, null]]);
recipes.addShaped(<quark:rune:0>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <biomesoplenty:white_dye>], [null, null, null]]);

recipes.addShapeless(<contenttweaker:disint_orb>, [<contenttweaker:disint_rune>, <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>, <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:poison_orb>, [<contenttweaker:poison_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:soul_orb>, [<contenttweaker:soul_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:life_orb>, [<contenttweaker:life_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nature_orb>, [<contenttweaker:nature_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:death_orb>, [<contenttweaker:death_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:trans_orb>, [<contenttweaker:trans_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:knowledge_orb>, [<contenttweaker:knowledge_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:creation_orb>, [<contenttweaker:creation_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:order_orb>, [<contenttweaker:order_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:mind_orb>, [<contenttweaker:mind_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:energy_orb>, [<contenttweaker:energy_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:balance_orb>, [<contenttweaker:balance_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:illusion_orb>, [<contenttweaker:illusion_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:strength_orb>, [<contenttweaker:strength_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:chaos_orb>, [<contenttweaker:chaos_rune>,<contenttweaker:magic_orb>]);


//mystical
recipes.addShaped(<contenttweaker:draconic_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:strength_rune>, <contenttweaker:blank_rune>, <contenttweaker:knowledge_rune>], [<bountifulbaubles:brokenblackdragonscale>, <iceandfire:dragonbone>, <rats:dragon_wing>]]);
recipes.addShaped(<contenttweaker:aether_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:mind_rune>, <contenttweaker:blank_rune>, <contenttweaker:balance_rune>], [<aether_legacy:ambrosium_shard>, <aether_legacy:zanite_gemstone>, <aether_legacy:aercloud>]]);
recipes.addShaped(<contenttweaker:holding_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:illusion_rune>, <contenttweaker:blank_rune>, <contenttweaker:order_rune>], [<endreborn:item_shard_obsidian>, <minecraft:ender_pearl>, <arcanearchives:shaped_quartz>]]);
recipes.addShaped(<endreborn:item_end_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:creation_rune>, <contenttweaker:blank_rune>, <contenttweaker:life_rune>], [<endreborn:item_end_essence>, <endreborn:item_ingot_endorium>, <minecraft:ender_eye>]]);
recipes.addShaped(<contenttweaker:nether_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:soul_rune>, <contenttweaker:blank_rune>, <contenttweaker:disint_rune>], [<minecraft:ghast_tear>, <minecraft:blaze_powder>, <betternether:cincinnasite>]]);
recipes.addShaped(<contenttweaker:plague_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:death_rune>, <contenttweaker:blank_rune>, <contenttweaker:poison_rune>], [<rats:herb_bundle>, <rats:plague_leech>, <minecraft:poisonous_potato>]]);
recipes.addShaped(<contenttweaker:arcane_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:chaos_rune>, <contenttweaker:blank_rune>, <contenttweaker:energy_rune>], [<biomesoplenty:sapling_0:3>, <simpleores:mythril_ingot>, <arcanearchives:radiant_dust>]]);
recipes.addShaped(<contenttweaker:fae_rune>, [[<dungeontactics:magic_powder>, <bountifulbaubles:spectralsilt>, <dungeontactics:magic_powder>],[<contenttweaker:nature_rune>, <contenttweaker:blank_rune>, <contenttweaker:trans_rune>], [<minecraft:red_mushroom>, <iceandfire:pixie_dust>, <minecraft:brown_mushroom>]]);


recipes.addShapeless(<contenttweaker:end_orb>, [<endreborn:item_end_rune>, <contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:arcane_orb>, [<contenttweaker:arcane_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:plague_orb>, [<contenttweaker:plague_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:fae_orb>, [<contenttweaker:fae_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:holding_orb>, [<contenttweaker:holding_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:draconic_orb>, [<contenttweaker:draconic_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:aether_orb>, [<contenttweaker:aether_rune>,<contenttweaker:magic_orb>]);
recipes.addShapeless(<contenttweaker:nether_orb>, [<contenttweaker:nether_rune>,<contenttweaker:magic_orb>]);
