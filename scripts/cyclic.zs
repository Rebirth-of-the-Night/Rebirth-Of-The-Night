import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.betterwithmods.Anvil;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//Removed items
JEI.removeAndHide(<cyclicmagic:block_fragile>);
JEI.removeAndHide(<cyclicmagic:block_fragile_weak>);

JEI.removeAndHide(<cyclicmagic:tool_trade>);
JEI.removeAndHide(<cyclicmagic:block_fragile_auto>);
JEI.removeAndHide(<cyclicmagic:item_pipe_sort>);
JEI.removeAndHide(<cyclicmagic:item_pipe>);
JEI.removeAndHide(<cyclicmagic:energy_pipe>);
JEI.removeAndHide(<cyclicmagic:item_pump>);
JEI.removeAndHide(<cyclicmagic:energy_pump>);
JEI.removeAndHide(<cyclicmagic:bundled_pipe>);
JEI.removeAndHide(<cyclicmagic:block_library>);
JEI.removeAndHide(<cyclicmagic:block_library_ctrl>);
JEI.removeAndHide(<cyclicmagic:magic_net>);
JEI.removeAndHide(<cyclicmagic:laser>);
JEI.removeAndHide(<cyclicmagic:imbuer>);
JEI.removeAndHide(<cyclicmagic:plate_push_slow>);
JEI.removeAndHide(<cyclicmagic:plate_push_slow_corner>);
JEI.removeAndHide(<cyclicmagic:plate_push_slow_angle>);
JEI.removeAndHide(<cyclicmagic:target>);
JEI.removeAndHide(<cyclicmagic:horse_upgrade_type>);
JEI.removeAndHide(<cyclicmagic:tool_mount>);
JEI.removeAndHide(<cyclicmagic:plate_push>);//add back
JEI.removeAndHide(<cyclicmagic:plate_push_corner>);//add back
JEI.removeAndHide(<cyclicmagic:plate_push_med_angle>);//add back
JEI.removeAndHide(<cyclicmagic:plate_push_fast>);//add back
JEI.removeAndHide(<cyclicmagic:plate_push_fast_corner>);//add back
JEI.removeAndHide(<cyclicmagic:plate_push_fast_angle>);//add back
JEI.removeAndHide(<cyclicmagic:block_fishing>);//add back
JEI.removeAndHide(<cyclicmagic:password_block>);//add back
JEI.removeAndHide(<cyclicmagic:fluid_placer>); //Requires RF
JEI.removeAndHide(<cyclicmagic:fluid_drain>); //Requires RF
//JEI.removeAndHide(<cyclicmagic:corrupted_chorus>);//add back in future update


recipes.remove(<cyclicmagic:fluid_pipe>);
recipes.remove(<cyclicmagic:fluid_pump>);
recipes.remove(<cyclicmagic:card_location>);
recipes.remove(<cyclicmagic:evoker_fang>);
recipes.remove(<cyclicmagic:ender_lightning>);
recipes.remove(<cyclicmagic:tool_spelunker>);
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
recipes.remove(<cyclicmagic:button_large>);
recipes.removeByRecipeName("cyclicmagic:item.carbon_paper_1_2");
// apple recipes on betterwithmods.zs

var vnugg = <ore:nuggetViridium>.firstItem;
var duracloth = <betterwithmods:material:4>;
var glue = <ore:glue>;
var leather_sheet = <pyrotech:material:38>;
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
var ord_run = <contenttweaker:order_rune>;
var cha_run = <contenttweaker:chaos_rune>;
var spirits = <betterwithaddons:ancestry_bottle>;
var ironrod = <quark:iron_rod>;
var lightarrow = <betterwithaddons:greatarrow_lightning>;
var destarrow = <betterwithaddons:greatarrow_destruction>;
var advpearl = <endreborn:item_advanced_ender_pearl>;
var dice = <cyclicmagic:dice>;
var stone = <ore:stone>;
var wax = <ore:materialPressedwax>;
var carbond = <ore:dustCarbon>;
var carpaper = <cyclicmagic:carbon_paper>;
var paper = <ore:paper>;
var obsi_shard = <endreborn:item_shard_obsidian>;
var obsi_shear = <cyclicmagic:shears_obsidian>;
var ore_locator = <cyclicmagic:tool_prospector>;
var blazerod = <minecraft:blaze_rod>;
var st_conveyor = <cyclicmagic:plate_push_slowest>;
var masonry_brick = <contenttweaker:masonry_brick>;
var button_wood = <ore:buttonWood>;
var white_metal_nugget = <ore:nuggetIron> | <ore:nuggetSilver> | <ore:nuggetTin>;
var dense_redstone = <pyrotech:material:36>;
var timber_framing = <earthworks:item_timber>;

// Chaos Scepter
# Change durability
<cyclicmagic:wand_hypno>.maxDamage = 64;

# Recipe
recipes.remove(<cyclicmagic:wand_hypno>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <defiledlands:defilement_powder>, <defiledlands:essence_destroyer>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <dynamictreesdefiledlands:tenebraseed>],
    [<contenttweaker:parity_peridot>, <contenttweaker:vis_sliver>, null]])
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .addOutput(<cyclicmagic:wand_hypno:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<cyclicmagic:water_spreader>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <contenttweaker:sapphire_ingot>, <contenttweaker:waterlogged_sapphire>],
    [null, <contenttweaker:vis_shard>, <contenttweaker:sapphire_ingot>],
    [<spartanweaponry:caestus_studded>, null, null]])
  .addTool(<contenttweaker:water_rune>, 1)
  .addTool(<contenttweaker:nature_rune>, 1)
  .addOutput(<cyclicmagic:water_spreader>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, <biomesoplenty:log_1:5>, <contenttweaker:electrified_zanite>],
    [null, <spartanfire:witherbone_pole>, <biomesoplenty:log_1:5>],
    [<contenttweaker:vis_shard>, null, null]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<cyclicmagic:ender_lightning>)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [null, spirits, <defiledlands:tears_shulker>],
    [null, bead, spirits],
    [ironrod, null, null]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<cyclicmagic:wand_missile>)
  .create();

recipes.addShaped("cyclic_large_button", <cyclicmagic:button_large>, [
    [masonry_brick, white_metal_nugget, masonry_brick],
    [white_metal_nugget, button_wood, white_metal_nugget],
    [masonry_brick, white_metal_nugget, masonry_brick]
]);

recipes.addShaped("climbing_gloves", <cyclicmagic:glove_climb>, [
	[vnugg, vnugg, leather_sheet],
    [vnugg, glue, leather_sheet],
    [leather_sheet, leather_sheet, duracloth]
]);

recipes.addShaped("immersive_carbon_paper", carpaper*6, [
	[paper, paper, paper],
    [wax, carbond, wax],
    [paper, paper, paper]
]);

recipes.addShaped("immersive_prospector", <cyclicmagic:tool_spelunker>, [
	[carpaper, <minecraft:stone_pickaxe>],
    [<minecraft:writable_book>, <artisanworktables:artisans_lens_gold>, <antiqueatlas:empty_antique_atlas>]
]);

recipes.addShaped("obsidian_shears", obsi_shear,[
	[null, obsi_shard, null],
    [obsi_shard, null, obsi_shard],
    [null, obsi_shard, null]
]);

recipes.addShaped("powered_conveyor", st_conveyor*12,[
	[timber_framing,timber_framing,timber_framing],
    [masonry_brick, dense_redstone, masonry_brick]
]);

recipes.addShaped("ore_locator", ore_locator,[
	[null, codex, <betterwithmods:material:45>],
    [null, blazerod, <cyclicmagic:tool_spelunker>],
    [blazerod, null, null]
]);

recipes.addShapeless("straight_conveyor_2_corner", <cyclicmagic:plate_push_slowest_corner>, [st_conveyor]);

recipes.addShapeless("straight_conveyor_2_ramp", <cyclicmagic:plate_push_slowest_angle>*2, [st_conveyor,st_conveyor]);

recipes.addShapeless("corner_conveyor_2_straight", st_conveyor, [<cyclicmagic:plate_push_slowest_corner>]);

recipes.addShapeless("ramp_conveyor_2_straight", st_conveyor*2, [<cyclicmagic:plate_push_slowest_angle>,<cyclicmagic:plate_push_slowest_angle>]);

//recipes.addShaped("durable_stirrups", stirrups,[
//	[null, <betterwithmods:material:9>, null],
//    [null, <harvestcraft:hardenedleatheritem>, <betterwithmods:material:9>],
//    [<ore:ingotSteel>, <ore:ingotSteel>, null]
//]);

//Spelunker potions with prospecting kit in rustic.zs

Anvil.addShaped(pipepump, 
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
Anvil.addShaped(pipeliquid * 12, 
[
	[null, reframat, reframat, null],
	[glue, item, item, glue],
	[glue, item, item, glue],
	[null, reframat, reframat, null]
]);
}

/* //Requires RF
Anvil.addShaped(<cyclicmagic:fluid_drain>,[
	[steel, screwpump , steel],
    [refratank, screwpump, pipepump],
    [steel, screwpump, steel]
]);
*/

recipes.addShaped("codex_anchor", gps,[
	[<minecraft:ender_pearl>, codex],
    [<contenttweaker:order_quintessence>, null],
    [null, <ore:stickWood>]
]);
recipes.addShaped("codex_anchor_ow_style", gps,[
	[<biomesoplenty:terrestrial_artifact>, codex],
    [null, <ore:stickWood>]
]);

RecipeBuilder.get("mage")
  .setShapeless([<ore:stone>])
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addOutput(dice)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:ender"}),<minecraft:slime_ball>);


brewing.addBrew(<minecraft:potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:potion>.withTag({Potion: "cyclicmagic:bounce"}));
brewing.addBrew(<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:splash_potion>.withTag({Potion: "cyclicmagic:bounce"}));
brewing.addBrew(<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:ender"}),<ore:slimeball>,<minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:bounce"}));
