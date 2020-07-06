import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//remove and hide original BB disint tablet
mods.jei.JEI.removeAndHide(<bountifulbaubles:disintegrationtablet>);

//remove all original quark rune recipes
recipes.remove(<quark:rune:*>);

//changes to end rune behavior
recipes.remove(<endreborn:item_end_rune>);
val endrune = <endreborn:item_end_rune>;
endrune.maxStackSize = 1;
endrune.maxDamage = 8;

//make quark runes non stackable
val quarkrune = (<quark:rune:*>);
quarkrune.maxStackSize = 1;

// vis

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:vis_sliver>, [
[null, <contenttweaker:vis_speck>, null],[<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>], [null, <contenttweaker:vis_speck>, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:vis_shard>, [
[null, <contenttweaker:vis_sliver>, null],[<contenttweaker:vis_sliver>, null, <contenttweaker:vis_sliver>], [null, <contenttweaker:vis_sliver>, null]],8);


//inert
recipes.addShapeless(<contenttweaker:blank_rune>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [<ore:stone>, <contenttweaker:vis_speck>]);
recipes.addShaped(<contenttweaker:magic_orb>.withTag({"Quark:RuneColor": 7, ench: [{lvl: 1 as short, id: 57 as short}], RepairCost: 1, "Quark:RuneAttached": 1 as byte}), [[<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>],[<dungeontactics:magic_powder>, <minecraft:clay_ball>, <dungeontactics:magic_powder>], [<dungeontactics:magic_powder>, <dungeontactics:magic_powder>, <dungeontactics:magic_powder>]]);


//mundane

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:luna_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:luna_quintessence>*4, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:sol_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:sol_quintessence>*4, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:fire_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:fire_quintessence>*4, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:water_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:water_quintessence>*4, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:earth_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:earth_quintessence>*4, null]],4);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:air_rune>, [
[null, <contenttweaker:vis_speck>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:air_quintessence>*4, null]],4);

//arcane
//recipes.addShaped(<contenttweaker:spectral_shard>, [[<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>],[<bountifulbaubles:spectralsilt>, <minecraft:prismarine_shard>, <bountifulbaubles:spectralsilt>], [<bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>, <bountifulbaubles:spectralsilt>]]);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:soul_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:soul_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:death_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:death_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:mind_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:mind_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:balance_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:balance_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:creation_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:creation_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:order_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:order_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:life_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:life_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:chaos_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:chaos_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:energy_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:energy_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:poison_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:poison_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:strength_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:strength_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:disint_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:disint_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:knowledge_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:knowledge_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:trans_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:trans_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:illusion_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:illusion_quintessence>*6, null]],8);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:nature_rune>, [
[null, <contenttweaker:vis_sliver>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:nature_quintessence>*6, null]],8);

recipes.addShaped(<quark:rune:0>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeWhite>], [null, null, null]]);
recipes.addShaped(<quark:rune:1>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeOrange>], [null, null, null]]);
recipes.addShaped(<quark:rune:2>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeMagenta>], [null, null, null]]);
recipes.addShaped(<quark:rune:3>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:4>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeYellow>], [null, null, null]]);
recipes.addShaped(<quark:rune:5>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLime>], [null, null, null]]);
recipes.addShaped(<quark:rune:6>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyePink>], [null, null, null]]);
recipes.addShaped(<quark:rune:7>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeGray>], [null, null, null]]);
recipes.addShaped(<quark:rune:6>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeLightGray>], [null, null, null]]);
recipes.addShaped(<quark:rune:9>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeCyan>], [null, null, null]]);
recipes.addShaped(<quark:rune:10>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyePurple>], [null, null, null]]);
recipes.addShaped(<quark:rune:11>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlue>], [null, null, null]]);
recipes.addShaped(<quark:rune:12>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBrown>], [null, null, null]]);
recipes.addShaped(<quark:rune:13>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeGreen>], [null, null, null]]);
recipes.addShaped(<quark:rune:14>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeRed>], [null, null, null]]);
recipes.addShaped(<quark:rune:15>, [[null, <dungeontactics:magic_powder>, null],[<contenttweaker:illusion_rune>.anyDamage().transformDamage(), <contenttweaker:blank_rune>, <ore:dyeBlack>], [null, null, null]]);
recipes.addShaped(<quark:rune:16>, [[<ore:dyeRed>, <ore:dyeBlue>, <ore:dyeLime>],[<ore:dyeYellow>, <contenttweaker:blank_rune>, <ore:dyeLightBlue>], [<ore:dyeMagenta>, <ore:dyeOrange>, <ore:dyeWhite>]]);


//mystical

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:plague_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:plague_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:holding_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:holding_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:fae_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:fae_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:draconic_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:draconic_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:aether_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:aether_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:nether_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:nether_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<contenttweaker:arcane_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:arcane_quintessence>*8, null]],16);

mods.betterwithaddons.Infuser.addShaped(<endreborn:item_end_rune>, [
[null, <contenttweaker:vis_shard>, null],[null, <contenttweaker:blank_rune>, null], [null, <contenttweaker:end_quintessence>*8, null]],16);


//for 2.8 when these are available
// <betternether:eye_seed>|<betternether:stalagnate_stem>,<betternether:ink_bush_seed>|<betternether:smoker>|<betternether:wart_seed>|
