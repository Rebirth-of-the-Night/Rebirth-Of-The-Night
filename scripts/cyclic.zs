import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//Removed items
mods.jei.JEI.removeAndHide(<cyclicmagic:tool_trade>);
mods.jei.JEI.removeAndHide(<cyclicmagic:block_fragile_auto>);
mods.jei.JEI.removeAndHide(<cyclicmagic:item_pipe_sort>);
mods.jei.JEI.removeAndHide(<cyclicmagic:item_pipe>);
mods.jei.JEI.removeAndHide(<cyclicmagic:energy_pipe>);
mods.jei.JEI.removeAndHide(<cyclicmagic:item_pump>);
mods.jei.JEI.removeAndHide(<cyclicmagic:energy_pump>);
mods.jei.JEI.removeAndHide(<cyclicmagic:bundled_pipe>);
mods.jei.JEI.removeAndHide(<cyclicmagic:block_library>);
mods.jei.JEI.removeAndHide(<cyclicmagic:block_library_ctrl>);
mods.jei.JEI.removeAndHide(<cyclicmagic:magic_net>);
mods.jei.JEI.removeAndHide(<cyclicmagic:melter>);
mods.jei.JEI.removeAndHide(<cyclicmagic:laser>);
mods.jei.JEI.removeAndHide(<cyclicmagic:imbuer>);
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_slow>);
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_slow_corner>);
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_slow_angle>);
mods.jei.JEI.removeAndHide(<cyclicmagic:builder_block>);
mods.jei.JEI.removeAndHide(<cyclicmagic:target>);
mods.jei.JEI.removeAndHide(<cyclicmagic:horse_upgrade_type>);
mods.jei.JEI.removeAndHide(<cyclicmagic:horse_upgrade_health>);
mods.jei.JEI.removeAndHide(<cyclicmagic:tool_mount>);
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_corner>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_med_angle>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_fast>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_fast_corner>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:plate_push_fast_angle>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:wand_hypno>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:block_fishing>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:water_spreader>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:password_block>);//add back
mods.jei.JEI.removeAndHide(<cyclicmagic:fluid_placer>); //Requires RF
mods.jei.JEI.removeAndHide(<cyclicmagic:fluid_drain>); //Requires RF
//mods.jei.JEI.removeAndHide(<cyclicmagic:corrupted_chorus>);//add back in future update


recipes.remove(<cyclicmagic:fluid_pipe>);
recipes.remove(<cyclicmagic:fluid_pump>);
recipes.remove(<cyclicmagic:card_location>);
recipes.remove(<cyclicmagic:evoker_fang>);
recipes.remove(<cyclicmagic:ender_lightning>);
recipes.remove(<cyclicmagic:tool_spelunker>);
recipes.remove(<cyclicmagic:wand_hypno>);
//recipes.remove(<cyclicmagic:corrupted_chorus>);//add back in future update
recipes.remove(<cyclicmagic:wand_missile>);
recipes.remove(<cyclicmagic:glove_climb>);
recipes.remove(<cyclicmagic:apple_lapis>);
recipes.remove(<cyclicmagic:moon_sensor>);
recipes.remove(<cyclicmagic:builder_block>);
recipes.remove(<cyclicmagic:target>);
recipes.remove(<cyclicmagic:password_block>);
recipes.remove(<cyclicmagic:block_fishing>);
recipes.remove(<cyclicmagic:dice>);
recipes.remove(<cyclicmagic:water_candle>);
recipes.remove(<cyclicmagic:plate_push_fast>);
recipes.remove(<cyclicmagic:plate_push_fast_corner>);
recipes.remove(<cyclicmagic:plate_push_fast_angle>);
recipes.remove(<cyclicmagic:plate_push_slowest>);
recipes.remove(<cyclicmagic:plate_push_slowest_corner>);
recipes.remove(<cyclicmagic:plate_push_slowest_angle>);
recipes.remove(<cyclicmagic:plate_push>);
recipes.remove(<cyclicmagic:plate_push_corner>);
recipes.remove(<cyclicmagic:plate_push_med_angle>);
recipes.remove(<cyclicmagic:shears_obsidian>);
recipes.remove(<cyclicmagic:doorbell_simple>);
recipes.remove(<cyclicmagic:tool_prospector>);
recipes.remove(<cyclicmagic:horse_upgrade_type>);
recipes.remove(<cyclicmagic:horse_upgrade_variant>);
recipes.remove(<cyclicmagic:horse_upgrade_health>);
recipes.remove(<cyclicmagic:horse_upgrade_speed>);
recipes.remove(<cyclicmagic:horse_upgrade_jump>);
recipes.remove(<cyclicmagic:moon_sensor>);
recipes.removeByRecipeName("cyclicmagic:item.carbon_paper_1_2");
//apple recipes on betterwithmods.zs

var vnugg = <contenttweaker:material_part:10>;
var duracloth = <betterwithmods:material:4>;
var glue = <ore:glue>;
var tanned = <ore:hideTanned>;
var pipe = <quark:pipe>;
var pipepump = <cyclicmagic:fluid_pump>;
var pipeliquid = <cyclicmagic:fluid_pipe>;
var screwpump = <betterwithmods:screw_pump>;
var screw = <betterwithmods:material:24>;
var steel = <dungeontactics:steel_ingot>;
var reframat = <pyrotech:material:4>;
var refratank = <pyrotech:brick_tank>;
var codex = <villagenames:codex>;
var gps = <cyclicmagic:card_location>;
var book = <ore:book>;
var endscale = <endreborn:dragon_scales>;
var bead = <quark:soul_bead>;
var en_orb = <contenttweaker:energy_orb>;
var arc_orb = <contenttweaker:arcane_orb>;
var ord_run = <contenttweaker:order_rune>;
var cha_run = <contenttweaker:chaos_rune>;
var spirits = <betterwithaddons:ancestry_bottle>;
var ironrod = <quark:iron_rod>;
var lightarrow = <betterwithaddons:greatarrow_lightning>;
var destarrow = <betterwithaddons:greatarrow_destruction>;
var advpearl = <endreborn:item_advanced_ender_pearl>;
var dice = <cyclicmagic:dice>;
var stone = <ore:stone>;
var gcandle = <rustic:candle_gold>;
var wax = <ore:materialPressedwax>;
var carbond = <ore:dustCarbon>;
var carpaper = <cyclicmagic:carbon_paper>;
var paper = <ore:paper>;
var obsi_shard = <endreborn:item_shard_obsidian>;
var obsi_shear = <cyclicmagic:shears_obsidian>;
var ore_locator = <cyclicmagic:tool_prospector>;
var blazerod = <minecraft:blaze_rod>;
var st_conveyor = <cyclicmagic:plate_push_slowest>;

mods.betterwithaddons.Infuser.addTransmutation(<cyclicmagic:water_candle>, gcandle, 44);

mods.betterwithaddons.Infuser.addShaped(<cyclicmagic:ender_lightning>,[
[null,lightarrow,arc_orb],
[null, destarrow,lightarrow],
[ironrod,null,null]], 50);

mods.betterwithaddons.Infuser.addShaped(<cyclicmagic:wand_missile>,[
[null,spirits,en_orb],
[null,bead,spirits],
[ironrod,null,null]], 30);

recipes.addShaped("climbing_gloves", <cyclicmagic:glove_climb>,[
	[vnugg, vnugg, tanned],
    [vnugg, glue, tanned],
    [tanned, tanned, duracloth]
]);

recipes.addShaped("immersive_carbon_paper", carpaper*6,[
	[paper, paper, paper],
    [wax, carbond, wax],
    [paper, paper, paper]
]);

recipes.addShaped("immersive_prospector", <cyclicmagic:tool_spelunker>,[
	[carpaper, <minecraft:stone_pickaxe>],
    [<minecraft:writable_book>, <artisanworktables:artisans_lens_gold>, <antiqueatlas:empty_antique_atlas>]
]);

recipes.addShaped("obsidian_shears", obsi_shear,[
	[null, obsi_shard, null],
    [obsi_shard, null, obsi_shard],
    [null, obsi_shard, null]
]);

recipes.addShaped("powered_conveyor", st_conveyor*6,[
	[<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>],
    [<advancedliftingmethods:powered_ladder>, <advancedliftingmethods:powered_ladder>, <advancedliftingmethods:powered_ladder>],
    [<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>]
]);

recipes.addShaped("ore_locator", ore_locator,[
	[null, codex, <betterwithmods:material:45>],
    [null, blazerod, <cyclicmagic:tool_spelunker>],
    [blazerod, null, null]
]);

//recipes.addShaped("durable_stirrups", stirrups,[
//	[null, <betterwithmods:material:9>, null],
//    [null, <harvestcraft:hardenedleatheritem>, <betterwithmods:material:9>],
//    [<ore:ingotSteel>, <ore:ingotSteel>, null]
//]);

//Spelunker potions with prospecting kit in rustic.zs

mods.betterwithmods.Anvil.addShaped(pipepump, 
[
	[reframat, pipe, reframat, null],
	[glue, screw, glue, null],
	[reframat, pipe, reframat, null],
	[null, null, null, null]
]);

// Pipes
val paneGlass = <ore:paneGlass>;
paneGlass.addItems([<betternether:quartz_glass_pane>, <betternether:quartz_glass_framed_pane>,<netherex:soul_glass_pane>,<quark:framed_glass_pane>]);

for item in paneGlass.items{
mods.betterwithmods.Anvil.addShaped(pipeliquid * 12, 
[
	[null, reframat, reframat, null],
	[glue, item, item, glue],
	[glue, item, item, glue],
	[null, reframat, reframat, null]
]);
}

/* //Requires RF
mods.betterwithmods.Anvil.addShaped(<cyclicmagic:fluid_drain>,[
	[steel, screwpump , steel],
    [refratank, screwpump, pipepump],
    [steel, screwpump, steel]
]);
*/

recipes.addShaped("Codex anchor", gps,[
	[advpearl],
    [codex],
    [ord_run.anyDamage().transformDamage()]
]);

recipes.addShapeless("dice", dice,[
    stone,
    cha_run.anyDamage().transformDamage()
]);

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);


brewing.addBrew(<minecraft:potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:potion>.withTag({Potion: "cyclicmagic:bounce"}));
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:bounce"}));
brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:bounce"}));
