import crafttweaker.block.IBlockState;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import mods.advancedmortars.Mortar;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Turntable;
import mods.betterwithmods.FilteredHopper;
import mods.betterwithmods.Anvil;
import mods.betterwithmods.HeatRegistry;
import mods.betterwithmods.PulleyManager;
import mods.betterwithmods.MiniBlocks;

furnace.setFuel(<betterwithmods:aesthetic:13>, 28800);
<ore:cobblestone>.add(<betterwithmods:aesthetic:7>);
<ore:stone>.add(<betterwithmods:aesthetic:6>);

recipes.removeByRecipeName("betterwithmods:quark/spruce_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/birch_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/acacia_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/dark_oak_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/jungle_trapdoor");
recipes.removeByRecipeName("betterwithmods:decompress/ender_pearl_decompress");
recipes.removeByRecipeName("betterwithmods:decompress/melon_decompress");
recipes.removeByRecipeName("betterwithmods:blocks/shaft-back");
recipes.removeByRecipeName("betterwithmods:piles/sand_0");
recipes.removeByRecipeName("betterwithmods:piles/gravel");
recipes.removeByRecipeName("betterwithmods:piles/red_sand_pile");
recipes.removeByRecipeName("betterwithmods:piles/dirt_0");
recipes.removeByRecipeName("betterwithmods:items/patchouli_manual");

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding_feather", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);
recipes.addShapeless("betterwithmods_items/material/material_padding_wool", <betterwithmods:material:41>, [<ore:wool>,<betterwithmods:material:4>]);

JEI.removeAndHide(<betterwithmods:bark:*>);
JEI.removeAndHide(<betterwithmods:nether_growth>);
JEI.removeAndHide(<betterwithmods:steel_saw>);
JEI.removeAndHide(<betterwithmods:material:52>);
JEI.removeAndHide(<betterwithmods:material:53>);
JEI.removeAndHide(<betterwithmods:fertile_farmland>);

JEI.removeAndHide(<betterwithmods:leather_tanned_boots>);
JEI.removeAndHide(<betterwithmods:leather_tanned_chest>);
JEI.removeAndHide(<betterwithmods:leather_tanned_helmet>);
JEI.removeAndHide(<betterwithmods:leather_tanned_pants>);


JEI.removeAndHide(<betterwithmods:shaft>);
JEI.removeAndHide(<betterwithmods:material>);
JEI.removeAndHide(<betterwithmods:material:48>);
JEI.removeAndHide(<betterwithmods:material:44>);

JEI.removeAndHide(<betterwithmods:material:40>);

JEI.removeAndHide(<betterwithmods:steel_sword>);
JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

JEI.removeAndHide(<betterwithmods:candle_holder>); 
JEI.removeAndHide(<betterwithmods:aesthetic:8>);
JEI.removeAndHide(<betterwithmods:material:46>);

JEI.removeAndHide(<betterwithmods:raw_egg>);
JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
JEI.removeAndHide(<betterwithmods:ham_and_eggs>);
JEI.removeAndHide(<betterwithmods:raw_scrambled_egg>);
JEI.removeAndHide(<betterwithmods:cooked_scrambled_egg>);
furnace.remove(<betterwithmods:cooked_scrambled_egg>);
JEI.removeAndHide(<betterwithmods:raw_pastry:4>);
JEI.removeAndHide(<betterwithmods:apple_pie>);
furnace.remove(<betterwithmods:apple_pie>);
JEI.removeAndHide(<betterwithmods:raw_omelet>);
JEI.removeAndHide(<betterwithmods:cooked_omelet>);
furnace.remove(<betterwithmods:cooked_omelet>);
JEI.removeAndHide(<betterwithmods:raw_kebab>);
JEI.removeAndHide(<betterwithmods:cooked_kebab>);
furnace.remove(<betterwithmods:cooked_kebab>);
JEI.removeAndHide(<betterwithmods:creeper_oyster>);
LootTable.removeGlobalItem("betterwithmods:creeper_oyster");
JEI.removeAndHide(<betterwithmods:stump_remover>);
JEI.removeAndHide(<betterwithmods:beef_dinner>);
JEI.removeAndHide(<betterwithmods:beef_potatoes>);
JEI.removeAndHide(<betterwithmods:chocolate>);
Cauldron.remove([<betterwithmods:chocolate>]);
Cauldron.remove([<betterwithaddons:thorn_rose>]);
JEI.removeAndHide(<betterwithmods:chowder>);
Cauldron.remove([<betterwithmods:chowder>]);
JEI.removeAndHide(<betterwithmods:hearty_stew>);
Cauldron.remove([<betterwithmods:hearty_stew>]);
JEI.removeAndHide(<betterwithmods:pork_dinner>);
JEI.removeAndHide(<betterwithmods:mystery_meat>);
LootTable.removeGlobalItem("betterwithmods:mystery_meat");
JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooking_pot>);
recipes.remove(<betterwithmods:donut>);
JEI.removeAndHide(<betterwithmods:donut>);
Cauldron.remove([<betterwithmods:donut>]);

recipes.removeByRecipeName("betterwithmods:piles/dirt_slab_0");
JEI.removeAndHide(<betterwithmods:infernal_enchanter>);
JEI.removeAndHide(<betterwithmods:arcane_scroll>);
LootTable.removeGlobalItem("betterwithmods:arcane_scroll");
recipes.removeByRecipeName("betterwithmods:blocks/redstone/comparator");
recipes.removeByRecipeName("betterwithmods:decompress/wicker_decompress");
recipes.remove(<betterwithmods:metal_chime:*>);
recipes.remove(<betterwithmods:bamboo_chime:*>);

//Turntable
Turntable.removeAll();
Turntable.add(<minecraft:clay>, <betterwithmods:unfired_pottery:1>, [<minecraft:clay_ball>]);
Turntable.add(<betterwithmods:unfired_pottery:1>, <contenttweaker:pot_unfired>, []);
Turntable.add(<contenttweaker:pot_unfired>, <betterwithmods:unfired_pottery:3>, [<minecraft:clay_ball>]);
Turntable.add(<betterwithmods:unfired_pottery:3>, <betterwithmods:unfired_pottery:2>, [<minecraft:clay_ball>]);
//Turntable.add(<betterwithmods:unfired_pottery:2>, null, [<minecraft:clay_ball>]);

Turntable.add(<contenttweaker:modelingrefractory>, <contenttweaker:crucible>, [<pyrotech:material:4>*4]);
Turntable.add(<contenttweaker:crucible>, <ceramics:clay_barrel_unfired>, [<pyrotech:material:4>*4]);
Turntable.add(<ceramics:clay_barrel_unfired>, <ceramics:clay_barrel_unfired:1>, [<pyrotech:material:4>*4]);

recipes.addShaped("hardened_nether_sludge", <betterwithmods:aesthetic:2>, [
    [<betterwithmods:nether_clay>, <betterwithmods:nether_clay>],
    [<betterwithmods:nether_clay>, <betterwithmods:nether_clay>]
]);

recipes.addShaped("fiery_nether_sludge", <contenttweaker:fiery_nether_sludge>, [
    [<contenttweaker:fiery_sludge>, <contenttweaker:fiery_sludge>],
    [<contenttweaker:fiery_sludge>, <contenttweaker:fiery_sludge>]
]);

recipes.addShaped("hardened_fiery_nether_block", <contenttweaker:hardened_fiery_nether_sludge>, [
    [<contenttweaker:fiery_nether_sludge>, <contenttweaker:fiery_nether_sludge>],
    [<contenttweaker:fiery_nether_sludge>, <contenttweaker:fiery_nether_sludge>]
]);

var latch = <betterwithmods:material:34>;
var copper = <ore:ingotCopper>;
var gnugg = <minecraft:gold_nugget>;
var rstone = <minecraft:redstone>;
var plank_wood = <ore:plankWood>;
var rope = <betterwithmods:rope>;
var cattail = <biomesoplenty:plant_1:4>; 
var wicker = <betterwithmods:wicker>;
var driedf = <pyrotech:tinder>;
var rice = <harvestcraft:riceitem>;
var millstone = <betterwithmods:single_machine>;
var hellfire = <betterwithmods:material:17>;
var heating = <betterwithmods:material:27>;
var crstone = <pyrotech:material:36>;
var sail = <betterwithmods:material:11>;
var cloth = <betterwithmods:material:4>;
var slab_wood = <ore:slabWood>;
var cooking_cauldron = <betterwithmods:cooking_pot:1>;
var cauldron = <minecraft:cauldron>;
var bone = <ore:bone>;
var bucket = <pyrotech:bucket_wood>|<pyrotech:bucket_clay>|<pyrotech:bucket_stone>|<minecraft:bucket>;
var corner_wood = MiniBlocks.getMiniBlock("corner", <ore:plankWood>);
var moulding_wood = MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
var siding_wood = MiniBlocks.getMiniBlock("siding", <ore:plankWood>);
var gear_wood = <pyrotech:cog_wood>;
var gear_steel = <pyrotech:cog_bone>;
var generic_metal = <ore:genericMetal>;
var archimedes = <betterwithmods:material:24>;
var glue = <ore:glue>;
var blade = <pyrotech:sawmill_blade_iron>;
var belt = <ore:hideBelt>;
var stone = <ore:stone>;
var timber = <earthworks:item_timber>;
var dense_redstone = <pyrotech:material:36>;
var cobblestone = <ore:cobblestone>;
var stick = <ore:stickWood>;
var durable_fiber = <ore:durableFiber>;
var tanned_hide = <ore:hideTanned>;
var paper = <ore:paper>;
var spring = <betterwithmods:material:49>;
val bark_strips = <primallib:bark_strips_generic>;
// guide
recipes.remove(<betterwithmods:manual>);
recipes.addShaped("the_book_of_single", <betterwithmods:manual>, [
    [paper, paper],
    [paper, gear_wood]
]);
// gear wood
recipes.remove(gear_wood);
recipes.addShaped("gear_wood_block", gear_wood*4, [
    [stick, plank_wood, stick],
    [plank_wood, null, plank_wood],
	[stick, plank_wood, stick]
]);
recipes.addShaped("gear_wood_corner", gear_wood*4, [
    [stick, corner_wood, stick],
    [corner_wood, null, corner_wood],
	[stick, corner_wood, stick]
]);
// pulley
recipes.remove(<betterwithmods:single_machine:1>);
recipes.addShaped("pulley_block", <betterwithmods:single_machine:1>, [
    [plank_wood, generic_metal, plank_wood],
    [gear_wood, latch, gear_wood],
	[plank_wood, generic_metal, plank_wood]
]);
recipes.addShaped("pulley_siding", <betterwithmods:single_machine:1>, [
    [siding_wood, generic_metal, siding_wood],
    [gear_wood, latch, gear_wood],
	[siding_wood, generic_metal, siding_wood]
]);
// pump
recipes.remove(<betterwithmods:screw_pump>);
recipes.addShaped("pump_block", <betterwithmods:screw_pump>, [
    [plank_wood, null, plank_wood],
    [glue, archimedes, glue],
	[plank_wood, gear_wood, plank_wood]
]);
recipes.addShaped("pump_siding", <betterwithmods:screw_pump>, [
    [siding_wood, null, siding_wood],
    [glue, archimedes, glue],
	[siding_wood, gear_wood, siding_wood]
]);
// saw
recipes.remove(<betterwithmods:saw>);
recipes.addShaped("saw_block", <betterwithmods:saw>, [
    [null, blade, null],
    [gear_wood, belt, gear_wood],
	[plank_wood, gear_wood, plank_wood]
]);
recipes.addShaped("saw_siding", <betterwithmods:saw>, [
    [null, blade, null],
    [gear_wood, belt, gear_wood],
	[siding_wood, gear_wood, siding_wood]
]);
// stone cutter
recipes.remove(<futuremc:stonecutter>);
recipes.addShaped("stone_cutter", <futuremc:stonecutter>,[
	[timber, blade, timber],
    [gear_wood, belt, gear_wood],
	[stone, dense_redstone, stone]
]);
// hand crank
recipes.remove(<betterwithmods:hand_crank>);
recipes.addShaped("hand_crank", <betterwithmods:hand_crank>,[
	[null, null, stick],
    [null, stick, null],
	[cobblestone, gear_wood, cobblestone]
]);
// gearboxes
recipes.remove(<betterwithmods:wooden_gearbox>);
recipes.addShaped("gearbox_wood_block", <betterwithmods:wooden_gearbox>, [
    [plank_wood, gear_wood, plank_wood],
    [gear_wood, latch, gear_wood],
	[plank_wood, gear_wood, plank_wood]
]);
recipes.addShaped("gearbox_wood_siding", <betterwithmods:wooden_gearbox>, [
    [siding_wood, gear_wood, siding_wood],
    [gear_wood, latch, gear_wood],
	[siding_wood, gear_wood, siding_wood]
]);
recipes.addShapeless("gearbox_wood_repair", <betterwithmods:wooden_gearbox>, [<betterwithmods:wooden_broken_gearbox>, gear_wood, gear_wood]);
recipes.addShapeless("gearbox_steel_repair", <betterwithmods:steel_gearbox>, [<betterwithmods:steel_broken_gearbox>, gear_steel, gear_steel]);
// mechanical booster rail
recipes.remove(<betterwithmods:booster>);
recipes.addShaped("mech_booster_rail_4", <betterwithmods:booster>*4, [
    [<ore:ingotTin>, gear_wood, <ore:ingotTin>],
    [<ore:ingotTin>, durable_fiber, <ore:ingotTin>],
	[<ore:ingotTin>, gear_wood, <ore:ingotTin>]
]);
recipes.addShaped("mech_booster_rail_8", <betterwithmods:booster>*8, [
    [<ore:ingotIron>, gear_wood, <ore:ingotIron>],
    [<ore:ingotIron>, durable_fiber, <ore:ingotIron>],
	[<ore:ingotIron>, gear_wood, <ore:ingotIron>]
]);
recipes.addShaped("mech_booster_rail_16", <betterwithmods:booster>*16, [
    [<ore:ingotCrucibleSteel>, gear_wood, <ore:ingotCrucibleSteel>],
    [<ore:ingotCrucibleSteel>, durable_fiber, <ore:ingotCrucibleSteel>],
	[<ore:ingotCrucibleSteel>, gear_wood, <ore:ingotCrucibleSteel>]
]);
recipes.addShaped("mech_booster_rail_32", <betterwithmods:booster>*32, [
    [<ore:ingotSoulforgedSteel>, gear_wood, <ore:ingotSoulforgedSteel>],
    [<ore:ingotSoulforgedSteel>, durable_fiber, <ore:ingotSoulforgedSteel>],
	[<ore:ingotSoulforgedSteel>, gear_wood, <ore:ingotSoulforgedSteel>]
]);
// bellows
recipes.remove(<betterwithmods:bellows>);
recipes.addShaped("bellows_block", <betterwithmods:bellows>, [
    [plank_wood, plank_wood, plank_wood],
    [tanned_hide, tanned_hide, tanned_hide],
	[belt, gear_wood, belt]
]);
recipes.addShaped("bellows_siding", <betterwithmods:bellows>, [
    [siding_wood, siding_wood, siding_wood],
    [tanned_hide, tanned_hide, tanned_hide],
	[belt, gear_wood, belt]
]);
recipes.remove(<betterwithmods:bellows:1>);
recipes.addShaped("bellows_spring_block", <betterwithmods:bellows:1>, [
    [null, <minecraft:clock>, null],
    [spring, <betterwithmods:bellows>, spring],
	[null, gear_steel, null]
]);
// redstone Latch
recipes.remove(<betterwithmods:material:34>);
recipes.addShaped("Latch", latch,
  [[null,gnugg,null],
  [gnugg,copper,gnugg],
  [null,rstone,null]]);
// funnier rope
recipes.remove(<betterwithmods:rope>);
recipes.addShaped("benign_rope", rope*6,
  [[durable_fiber,durable_fiber],
  [durable_fiber,durable_fiber],
  [durable_fiber,durable_fiber]]);

recipes.remove(<betterwithmods:bucket>);
recipes.addShaped("well_bucket", <betterwithmods:bucket>,
  [[<betterwithmods:rope>],
  [<ore:genericMetal>,<pyrotech:bucket_stone>,<ore:genericMetal>],
  [<ore:genericMetal>]]);

recipes.addShaped("wicker1", wicker*4,
  [[bark_strips, bark_strips, bark_strips],
  [bark_strips, bark_strips, bark_strips]]);

recipes.addShaped("wicker2", wicker*4,
  [[cattail,cattail,cattail],
  [cattail,cattail,cattail]]);
  
recipes.addShaped("wicker3", wicker*3,
  [[driedf,driedf],
  [driedf,driedf],
  [driedf,driedf]]);
  
recipes.addShaped("wicker4", wicker*3,
  [[rice,rice,rice],
  [rice,rice,rice]]);
	
recipes.removeByRecipeName("betterwithmods:items/material/material.hemp_fibers");

// fitting mill stone
recipes.remove(<betterwithmods:single_machine>);
recipes.addShaped("millstone", millstone,
  [[cobblestone, <ore:stoneSlab>, cobblestone],
  [<ore:rock>, gear_wood, <ore:rock>],
  [cobblestone, <ore:stoneSlab>, cobblestone]]);

// powerful hibachi
recipes.removeByRecipeName("betterwithmods:blocks/redstone/hibachi");
recipes.addShaped("blocks/redstone/hibachi", <betterwithmods:hibachi>,
  [[hellfire,hellfire,hellfire],
  [stone,heating,stone],
  [stone,crstone,stone]]);
 
// archimedes screw
recipes.removeByRecipeName("betterwithmods:items/material/material.screw");
recipes.addShaped("archimedes_screw", archimedes*3,
  [[<ore:genericMetal>,<ore:genericMetal>,null],
  [null,<ore:genericMetal>,<ore:genericMetal>],
  [<ore:genericMetal>,<ore:genericMetal>,null]]);
  
// dynamite
recipes.removeShapeless(<betterwithmods:dynamite>);

recipes.addShapeless("betterwithmodsDynamite", <betterwithmods:dynamite>*64, 
[<ore:paper>, <ore:paper>, <ore:paper>, 
<betterwithmods:material:28>, <betterwithmods:material:29>, <spartanweaponry:material:2>]);

// put wind sail recipe using slabs above recipe using siding so noobs dont ask questions
recipes.remove(<betterwithmods:material:11>);
recipes.addShaped("Wind Sail Slab", <betterwithmods:material:11>,
  [[cloth,cloth,cloth],
  [cloth,cloth,cloth],
  [slab_wood,slab_wood,slab_wood]]);

recipes.addShaped("Wind Sail Siding", <betterwithmods:material:11>,
  [[cloth,cloth,cloth],
  [cloth,cloth,cloth],
  [siding_wood,siding_wood,siding_wood]]); 

// cauldron
recipes.remove(<betterwithmods:cooking_pot:1>);
recipes.addShaped("cooking_cauldron", cooking_cauldron,
  [[bone],
  [bucket],
  [cauldron]]);

// turntable uses Moulding
recipes.remove(<betterwithmods:single_machine:3>);
recipes.addShaped("turntable", <betterwithmods:single_machine:3>,
  [[moulding_wood,moulding_wood,moulding_wood],
  [<ore:stone>,<minecraft:clock>,<ore:stone>],
  [<ore:stone>,gear_wood,<ore:stone>]]);

// vine Trap + Mossy
recipes.remove(<betterwithmods:vine_trap>);
recipes.addShaped("vine_trap", <betterwithmods:vine_trap>,
  [[null,null,null],
  [<ore:vine>,<ore:vine>,<ore:vine>],
  [null,null,null]]);

recipes.remove(<fairylights:garland>);
recipes.addShaped("vine_garland", <fairylights:garland>,
  [[null,null,null],
  [<ore:genericMetal>,<ore:vine>,<ore:genericMetal>],
  [null,null,null]]);

recipes.remove(<betterwithmods:raw_pastry:0>);
recipes.addShaped("cake_batter",<betterwithmods:raw_pastry:0>,[
  [<ore:listAllsugar>,<ore:listAllsugar>,<ore:listAllsugar>],
  [<ore:listAllmilk>,<ore:listAllegg>,<ore:listAllmilk>],
  [<ore:foodFlour>,<ore:foodFlour>,<ore:foodFlour>]
]);

recipes.remove(<betterwithmods:raw_pastry:1>);
recipes.addShapeless("oven_ready_pumpkin_pie",<betterwithmods:raw_pastry:1>,[<minecraft:pumpkin>,<ore:listAllsugar>,<ore:listAllegg>,<ore:foodFlour>]);

val arrayMoulding = [
    MiniBlocks.getMiniBlock("moulding", <ore:genericPlanks>),
    MiniBlocks.getMiniBlock("moulding", <minecraft:planks:1>),
    MiniBlocks.getMiniBlock("moulding", <minecraft:planks:2>),
    MiniBlocks.getMiniBlock("moulding", <minecraft:planks:3>),
    MiniBlocks.getMiniBlock("moulding", <minecraft:planks:4>),
    MiniBlocks.getMiniBlock("moulding", <minecraft:planks:5>)
] as IIngredient[];

val arrayWindChime = [
    <betterwithmods:metal_chime:0>,
    <betterwithmods:metal_chime:1>,
    <betterwithmods:metal_chime:2>,
    <betterwithmods:metal_chime:3>,
    <betterwithmods:metal_chime:4>,
    <betterwithmods:metal_chime:5>
] as IItemStack[];

val arrayBambooChime = [
    <betterwithmods:bamboo_chime:0>,
    <betterwithmods:bamboo_chime:1>,
    <betterwithmods:bamboo_chime:2>,
    <betterwithmods:bamboo_chime:3>,
    <betterwithmods:bamboo_chime:4>,
    <betterwithmods:bamboo_chime:5>
] as IItemStack[];

for i, output in arrayWindChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:genericMetal>,arrayMoulding[i],<ore:genericMetal>]
    ]);
}

for i, output in arrayBambooChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:hollowReed>,arrayMoulding[i],<ore:hollowReed>]
    ]);
}

recipes.remove(<betterwithmods:broadhead_arrow>);
recipes.addShaped("broadhead_arrow", <betterwithmods:broadhead_arrow>, [
    [<betterwithmods:material:43>],
    [<ore:stickWood>],
    [<ore:feather>]
]);

recipes.remove(<betterwithmods:single_machine:2>);
recipes.addShaped("filtered_hopper",<betterwithmods:single_machine:2>,[
    [null,<chutes:chute_wood>,null],
    [gear_wood,<quark:chute>,gear_wood]
]);

val haft = <betterwithmods:material:36>;
val woodMoulding =MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);

recipes.remove(haft);
recipes.addShaped("glued_haft",haft*2,[
    [<betterwithmods:material:8>],
    [<ore:slimeball>],
	[woodMoulding]
]);
recipes.addShaped("sewed_haft",haft*2,[
    [<betterwithmods:material:8>],
    [durable_fiber],
	[woodMoulding]
]);

recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

Cauldron.remove([<minecraft:mushroom_stew>]);
Cauldron.remove([<minecraft:rabbit_stew>]);
Cauldron.addUnstoked([<minecraft:cooked_rabbit>|<animania:cooked_prime_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);
Cauldron.addUnstoked([<betteranimalsplus:turkey_raw>],[<betteranimalsplus:turkey_cooked>]);

Cauldron.addStoked([<betterwithaddons:material:1>*8,<betterwithaddons:material:3>*2,<ore:dung>*8,<betterwithmods:urn:8>],[<betterwithaddons:thorn_rose>,<betterwithmods:urn>]);

// horse Upgrades
Cauldron.addUnstoked([<biomesoplenty:berries>*32,<primitivemobs:camouflage_dye>],[<cyclicmagic:horse_upgrade_variant>]);
Cauldron.addUnstoked([<biomesoplenty:berries>*6,<ore:slimeball>*4],[<cyclicmagic:horse_upgrade_jump>]);
Cauldron.addUnstoked([<biomesoplenty:berries>*4,<ore:listAllsugar>*4],[<cyclicmagic:horse_upgrade_speed>]);

JEI.removeAndHide(<betterwithmods:material:13>); // tallow
Cauldron.remove([<betterwithmods:material:13>]);

JEI.removeAndHide(<betterwithmods:material:47>); // chainmail
Anvil.removeShaped(<betterwithmods:material:47>);

Cauldron.remove([<betterwithmods:material:29>]); // blasting oil
Cauldron.remove([<betterwithmods:material:50>]); // soap
Cauldron.remove([<betterwithmods:material:1>]); // nethercoal
Cauldron.remove([<betterwithaddons:material:5>]); // bone ingot


Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustCarbon>],[<betterwithmods:material:1>]) // coal nethercoal
.setIgnoreHeat(false)
.setPriority(12)
.build();
Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustRichCarbon>],[<betterwithmods:material:1>*4]) // coke nethercoal
.setIgnoreHeat(false)
.setPriority(3)
.build();

Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);

// Cyclic Apple
FilteredHopper.addFilter("modtweaker:livingSoul", <pyrotech:living_tar>);
// FilteredHopper.addFilter("modtweaker:soulsand", <minecraft:soul_sand>);

// Removal of sawdust, changed in recipes_saw.zs for wood chips from Pyrotech instead
// Cauldron.remove([<minecraft:netherrack>,<betterwithmods:material:22>]); // netherrack and sawdust
Cauldron.addStoked([<pyrotech:rock:7>*16],[<betterwithmods:material:21>]); // chips to potash
FilteredHopper.removeRecipeByInput(<betterwithmods:material:23>); // sawdust from soul dust
FilteredHopper.addSoulUrnRecipe(<betterwithmods:material:23>*8,[<pyrotech:rock:7>*8],[]);
FilteredHopper.addSoulUrnRecipe(<quark:soul_bead>*1,[<betterwithmods:material:38>*1],[<betterwithaddons:congealed>*5]);
FilteredHopper.addFilterRecipe("betterwithmods:soul_sand",<contenttweaker:ardicite>,[<betterwithmods:material:16>*3],[<betterwithmods:material:15>]); 

Cauldron.remove([<betterwithmods:material:6>]); // remove default BWM bark-tanned leather recipe as well as dung variants
Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:7>],[<betterwithmods:material:6>]); // tanned leather
Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:7>],[<betterwithmods:material:6>]);
Cauldron.remove([<betterwithmods:material:32>]); // remove default BWM bark-cut tanned leather recipe as well as dung variants
Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]); // tanned cut leather
Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]);

JEI.removeAndHide(<betterwithmods:wool_boots>);
JEI.removeAndHide(<betterwithmods:wool_chest>);
JEI.removeAndHide(<betterwithmods:wool_helmet>);
JEI.removeAndHide(<betterwithmods:wool_pants>);

recipes.remove(<betterwithmods:material:45>); // diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*3,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

JEI.removeAndHide(<betterwithmods:chicken_soup>);
JEI.removeAndHide(<betterwithmods:cobblestone:0>);
JEI.removeAndHide(<betterwithmods:cobblestone:1>);
JEI.removeAndHide(<betterwithmods:cobblestone:2>);
furnace.remove(<minecraft:stone:1>);
furnace.remove(<minecraft:stone:3>);
furnace.remove(<minecraft:stone:5>);

// better mining charge
recipes.remove(<betterwithmods:mining_charge>);
recipes.addShaped("betterminingcharge",<betterwithmods:mining_charge>*4,[
    [null,<betterwithmods:rope>,<ore:slimeball>],
    [null,<betterwithmods:dynamite_bundle>,null],
    [null,<betterwithmods:dynamite_bundle>,null]
]);

// Dusts
Mortar.addRecipe(["diamond"], <betterwithmods:material:18>, 12, [<minecraft:coal:0>]);
Mortar.addRecipe(["diamond"], <betterwithmods:material:37>, 12, [<minecraft:coal:1>]);
Mortar.addRecipe(["diamond"], <betterwithmods:material:15>*8, 12, [<minecraft:netherrack>*8]); //netherrack sludge
Mortar.addRecipe(["diamond"], <betterwithmods:material:15>, 12, [<minecraft:netherrack>]); 
Mortar.addRecipe(["diamond"], <contenttweaker:ground_fiery_netherrack>*8, 12, [<netherex:fiery_netherrack>*8]); //fiery sludge
Mortar.addRecipe(["diamond"], <contenttweaker:ground_fiery_netherrack>, 12, [<netherex:fiery_netherrack>]);


// Remove unused refined weapons
JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
Anvil.removeShaped(<betterwithmods:steel_battleaxe>);

JEI.removeAndHide(<betterwithmods:steel_sword>);
Anvil.removeShaped(<betterwithmods:steel_sword>);


// Heat sources
// HeatRegistry.addHeatSource([blockstates], displayStack, heatLevel);
HeatRegistry.addHeatSource([
    <blockstate:pyrotech:campfire:ash=0,variant=lit>,
    <blockstate:pyrotech:campfire:ash=1,variant=lit>,
    <blockstate:pyrotech:campfire:ash=2,variant=lit>,
    <blockstate:pyrotech:campfire:ash=3,variant=lit>,
    <blockstate:pyrotech:campfire:ash=4,variant=lit>,
    <blockstate:pyrotech:campfire:ash=5,variant=lit>,
    <blockstate:pyrotech:campfire:ash=6,variant=lit>,
    <blockstate:pyrotech:campfire:ash=7,variant=lit>,
    <blockstate:pyrotech:campfire:ash=8,variant=lit>
], <pyrotech:campfire>, 1);

HeatRegistry.addHeatSource([
    <blockstate:futuremc:campfire:facing=north,lit=true>,
    <blockstate:futuremc:campfire:facing=east,lit=true>,
    <blockstate:futuremc:campfire:facing=south,lit=true>,
    <blockstate:futuremc:campfire:facing=west,lit=true>
], <futuremc:campfire>, 1);

HeatRegistry.addHeatSource([
    <blockstate:betternether:cincinnasite_fire_bowl:state=true>
], <betternether:cincinnasite_fire_bowl>, 1);
HeatRegistry.addHeatSource(<arcanearchives:brazier_of_hoarding>, 1);
HeatRegistry.addHeatSource([
    <blockstate:minecraft:fire>,
    <blockstate:contenttweaker:fire_block>
], <contenttweaker:fire_block>, 1);

// Pulley blocks
// PulleyManager.addPulleyBlock(blockState);
var pulleyBlocks as IBlockState[] = [
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=true,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=true,north=false,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=true,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=true,east=false,north=false,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=true,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=true,north=false,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=true,south=false,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=true,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=true,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=true,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=true,up=false,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=false,up=true,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=false,up=true,west=false>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=false,up=false,west=true>,
    <blockstate:betterwithaddons:lattice:down=false,east=false,north=false,south=false,up=false,west=false>,
    <blockstate:quark:sturdy_stone>,
    <blockstate:minecraft:bookshelf>,
    <blockstate:aether_legacy:skyroot_bookshelf>,
    <blockstate:quark:custom_bookshelf:variant=bookshelf_spruce>,
    <blockstate:quark:custom_bookshelf:variant=bookshelf_birch>,
    <blockstate:quark:custom_bookshelf:variant=bookshelf_jungle>,
    <blockstate:quark:custom_bookshelf:variant=bookshelf_acacia>,
    <blockstate:quark:custom_bookshelf:variant=bookshelf_dark_oak>,
    <blockstate:inspirations:bookshelf:facing=north,type=normal>,
    <blockstate:inspirations:bookshelf:facing=north,type=rainbow>,
    <blockstate:inspirations:bookshelf:facing=north,type=tomes>,
    <blockstate:inspirations:bookshelf:facing=north,type=ancient>,
    <blockstate:inspirations:bookshelf:facing=south,type=normal>,
    <blockstate:inspirations:bookshelf:facing=south,type=rainbow>,
    <blockstate:inspirations:bookshelf:facing=south,type=tomes>,
    <blockstate:inspirations:bookshelf:facing=south,type=ancient>,
    <blockstate:inspirations:bookshelf:facing=west,type=normal>,
    <blockstate:inspirations:bookshelf:facing=west,type=rainbow>,
    <blockstate:inspirations:bookshelf:facing=west,type=tomes>,
    <blockstate:inspirations:bookshelf:facing=west,type=ancient>,
    <blockstate:inspirations:bookshelf:facing=east,type=normal>,
    <blockstate:inspirations:bookshelf:facing=east,type=rainbow>,
    <blockstate:inspirations:bookshelf:facing=east,type=tomes>,
    <blockstate:inspirations:bookshelf:facing=east,type=ancient>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=true,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=true,north=false,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=true,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:grate:east=false,north=false,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=true,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=true,north=false,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=true,south=false,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=true,type=dark_oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=oak,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=spruce,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=spruce,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=birch,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=birch,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=jungle,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=jungle,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=acacia,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=acacia,west=false>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=dark_oak,west=true>,
    <blockstate:betterwithmods:slats:east=false,north=false,south=false,type=dark_oak,west=false>,
    <blockstate:quark:blaze_lantern>,
    <blockstate:minecraft:sea_lantern:enabled=false>,
    <blockstate:minecraft:sea_lantern:enabled=true>,
    <blockstate:quark:elder_sea_lantern>,
    <blockstate:betternether:cincinnasite_lantern>,
    <blockstate:quark:carved_wood:variant=carved_oak_wood>,
    <blockstate:quark:carved_wood:variant=carved_spruce_wood>,
    <blockstate:quark:carved_wood:variant=carved_birch_wood>,
    <blockstate:quark:carved_wood:variant=carved_jungle_wood>,
    <blockstate:quark:carved_wood:variant=carved_acacia_wood>,
    <blockstate:quark:carved_wood:variant=carved_dark_oak_wood>,
    <blockstate:quark:iron_plate:variant=iron_plate>,
    <blockstate:quark:iron_plate:variant=rusty_iron_plate>,
    <blockstate:quark:iron_plate_slab_double:prop=blarg>,
    <blockstate:minecraft:iron_bars:east=true,north=true,south=true,west=true>,
    <blockstate:minecraft:iron_bars:east=true,north=true,south=true,west=false>,
    <blockstate:minecraft:iron_bars:east=true,north=true,south=false,west=true>,
    <blockstate:minecraft:iron_bars:east=true,north=true,south=false,west=false>,
    <blockstate:minecraft:iron_bars:east=true,north=false,south=true,west=true>,
    <blockstate:minecraft:iron_bars:east=true,north=false,south=true,west=false>,
    <blockstate:minecraft:iron_bars:east=true,north=false,south=false,west=true>,
    <blockstate:minecraft:iron_bars:east=true,north=false,south=false,west=false>,
    <blockstate:minecraft:iron_bars:east=false,north=true,south=true,west=true>,
    <blockstate:minecraft:iron_bars:east=false,north=true,south=true,west=false>,
    <blockstate:minecraft:iron_bars:east=false,north=true,south=false,west=true>,
    <blockstate:minecraft:iron_bars:east=false,north=true,south=false,west=false>,
    <blockstate:minecraft:iron_bars:east=false,north=false,south=true,west=true>,
    <blockstate:minecraft:iron_bars:east=false,north=false,south=true,west=false>,
    <blockstate:minecraft:iron_bars:east=false,north=false,south=false,west=true>,
    <blockstate:minecraft:iron_bars:east=false,north=false,south=false,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=true,south=true,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=true,south=true,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=true,south=false,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=true,south=false,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=false,south=true,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=false,south=true,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=false,south=false,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=true,north=false,south=false,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=true,south=true,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=true,south=true,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=true,south=false,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=true,south=false,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=false,south=true,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=false,south=true,west=false>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=false,south=false,west=true>,
    <blockstate:betterwithaddons:wrought_bars:east=false,north=false,south=false,west=false>,
    <blockstate:futuremc:smooth_stone>
] as IBlockState[];
for pBlock in pulleyBlocks {
    PulleyManager.addPulleyBlock(pBlock);
}
