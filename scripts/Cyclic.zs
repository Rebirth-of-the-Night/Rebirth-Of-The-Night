import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//Removed items
mods.jei.JEI.removeAndHide(<cyclicmagic:wireless_transmitter>);
mods.jei.JEI.removeAndHide(<cyclicmagic:wireless_receiver>);
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
//mods.jei.JEI.removeAndHide(<cyclicmagic:fluid_placer>); //Requires RF
//mods.jei.JEI.removeAndHide(<cyclicmagic:fluid_drain>); //Requires RF

recipes.remove(<cyclicmagic:fluid_pipe>);
recipes.remove(<cyclicmagic:fluid_pump>);
recipes.remove(<cyclicmagic:card_location>);
recipes.remove(<cyclicmagic:evoker_fang>);
recipes.remove(<cyclicmagic:ender_lightning>);
recipes.remove(<cyclicmagic:tool_spelunker>);
recipes.remove(<cyclicmagic:wand_hypno>);
recipes.remove(<cyclicmagic:corrupted_chorus>);
recipes.remove(<cyclicmagic:wand_missile>);
recipes.remove(<cyclicmagic:glove_climb>);
recipes.remove(<cyclicmagic:apple_lapis>);
recipes.remove(<cyclicmagic:apple_emerald>);
recipes.remove(<cyclicmagic:moon_sensor>);
recipes.remove(<cyclicmagic:builder_block>);
recipes.remove(<cyclicmagic:target>);
recipes.remove(<cyclicmagic:password_block>);
recipes.remove(<cyclicmagic:block_fishing>);
recipes.remove(<cyclicmagic:dice>);
recipes.remove(<cyclicmagic:water_candle>);
recipes.remove(<cyclicmagic:tool_trade>);
recipes.remove(<cyclicmagic:plate_push_fast>);
recipes.remove(<cyclicmagic:plate_push_fast_corner>);
recipes.remove(<cyclicmagic:plate_push_fast_angle>);
recipes.remove(<cyclicmagic:plate_push_slowest>);
recipes.remove(<cyclicmagic:plate_push_slowest_corner>);
recipes.remove(<cyclicmagic:plate_push_slowest_angle>);
recipes.remove(<cyclicmagic:plate_push>);
recipes.remove(<cyclicmagic:plate_push_corner>);
recipes.remove(<cyclicmagic:plate_push_med_angle>);
recipes.remove(<cyclicmagic:horse_upgrade_type>);
recipes.remove(<cyclicmagic:horse_upgrade_variant>);
recipes.remove(<cyclicmagic:horse_upgrade_health>);
recipes.remove(<cyclicmagic:horse_upgrade_speed>);
recipes.remove(<cyclicmagic:horse_upgrade_jump>);


recipes.removeByRecipeName("cyclicmagic:item.carbon_paper_1_2");

var vnugg = <contenttweaker:material_part:10>;
var duracloth = <betterwithmods:material:4>;
var glue = <ore:glue>;
var tanned = <ore:hideTanned>;
var pipe = <quark:pipe>;
var pipepump = <cyclicmagic:fluid_pump>;
var screwpump = <betterwithmods:screw_pump>;
var screw = <betterwithmods:material:24>;
var steel = <dungeontactics:steel_ingot>;
var reframat = <pyrotech:material:4>;
var refratank = <pyrotech:tank:1>;
var merchantalmanac = <cyclicmagic:tool_trade>;
var codex = <villagenames:codex>;
var gps = <cyclicmagic:card_location>;
var book = <ore:book>;
var endscale = <quark:enderdragon_scale>;
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
var paper =<ore:paper>;
var sbutton = <ore:buttonStone>;
var comet = <nyx:comet_shard>;
var receiver = <lwr:blockwirelessreciever>;

mods.betterwithaddons.Infuser.addTransmutation(<cyclicmagic:water_candle>, gcandle, 44);

mods.betterwithaddons.Infuser.addShaped(<cyclicmagic:wand_missile>,[
[null,lightarrow,arc_orb],
[null, destarrow,lightarrow],
[ironrod,null,null]], 50);

mods.betterwithaddons.Infuser.addShaped(<cyclicmagic:ender_lightning>,[
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
	[carpaper, <quark:glass_item_frame>, <minecraft:stone_pickaxe>],
    [<minecraft:writable_book>, <ore:stickWood>, <antiqueatlas:empty_antique_atlas>]
]);

//Spelunker potions with prospecting kit in rustic.zs

mods.betterwithmods.Anvil.addShaped(pipepump, 
[
	[reframat, pipe, reframat, null],
	[glue, screw, glue, null],
	[reframat, pipe, reframat, null],
	[null, null, null, null]
]);

/* //Requires RF
mods.betterwithmods.Anvil.addShaped(<cyclicmagic:fluid_drain>,[
	[steel, screwpump , steel],
    [refratank, screwpump, pipepump],
    [steel, screwpump, steel]
]);
*/

recipes.addShaped("merchant_almanac", merchantalmanac,[
	[codex],
    [vnugg],
    [book]
]);

recipes.addShaped("Codex anchor", gps,[
	[advpearl],
    [codex],
    [ord_run.anyDamage().transformDamage()]
]);

recipes.addShapeless("dice", dice,[
    stone,
    cha_run.anyDamage().transformDamage()
]);

recipes.addShaped("password_block", <cyclicmagic:password_block>,[
    [sbutton, receiver, sbutton],
    [receiver, comet, receiver],
    [sbutton, receiver, sbutton]
]);
