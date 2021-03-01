#priority 400
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.rockytweaks.Anvil;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ltt.LootTable;

// brewing.addBrew(IIngredient input, IIngredient ingredient, IItemStack output, @Optional boolean hidden);
// brewing.addBrew(<minecraft:splash_potion>, <minecraft:emerald>, <minecraft:experience_bottle>);

recipes.remove(<minecraft:minecart>);
recipes.addShaped("minecart", <minecraft:minecart>, [
    [null, null, null],
    [<ore:genericMetal>, null, <ore:genericMetal>],
    [<ore:genericMetal>, <ore:genericMetal>, <ore:genericMetal>]
]);

<minecraft:mushroom_stew>.maxStackSize = 4;

recipes.remove(<minecraft:mushroom_stew>);
JEI.removeAndHide(<minecraft:knowledge_book>);
JEI.removeAndHide(<gbook_snapshot:guidebook>);
JEI.removeAndHide(<toolprogression:magic_mushroom>);
JEI.removeAndHide(<cd4017be_lib:energy_supp>);
JEI.removeAndHide(<cd4017be_lib:item_supp>);
JEI.removeAndHide(<cd4017be_lib:fluid_supp>);
JEI.removeAndHide(<cd4017be_lib:m>);
JEI.removeAndHide(<cd4017be_lib:rrwi>);
JEI.removeAndHide(<inspirations:materials:0>);
JEI.removeAndHide(<rotm:debug_damages>);
JEI.removeAndHide(<rotm:debug_entities>);
JEI.removeAndHide(<rotm:debug_potions>);
JEI.removeAndHide(<redstoneplusplus:dummy_clock_hover>);

// Contenttweaker icons
JEI.removeAndHide(<contenttweaker:info>);
JEI.removeAndHide(<contenttweaker:four_gem_ingots>);
JEI.removeAndHide(<contenttweaker:four_gems>);
JEI.removeAndHide(<contenttweaker:scaffolding>);

//for charcoal see pyrotech_recipes_kiln.zs
furnace.remove(<minecraft:coal:1>);

furnace.remove(<minecraft:leather>);
furnace.remove(<ore:nuggetIron>);
furnace.remove(<minecraft:brick>);

furnace.setFuel(<ore:barkWood>, 100);

// remove post-nether bucket from chests (couldnt find the specific loot table it was spawning in)
LootTable.removeGlobalItem("minecraft:bucket");

recipes.addShapeless("gravel_to_flint", <minecraft:flint>*2, [<ore:gravel>, <ore:gravel>]);

val stone = <ore:stone>;
stone.add(<aether_legacy:holystone>);

val gbars = <ore:genericMetalBars>;
gbars.add(<minecraft:iron_bars>);
gbars.add(<aesthetics:copper_bars>);
gbars.add(<aesthetics:tin_bars>);
gbars.add(<betterwithaddons:wrought_bars:0>);

val gnugs = <ore:genericMetalNuggets>;
gnugs.addAll(<ore:nuggetCopper>);
gnugs.addAll(<ore:nuggetTin>);
gnugs.addAll(<ore:nuggetIron>);
gnugs.addAll(<ore:nuggetBronze>);
gnugs.addAll(<ore:nuggetSilver>);
gnugs.addAll(<ore:nuggetSteel>);

val bars = <ore:bars>;
bars.addAll(<ore:genericMetalBars>);
bars.add(<aesthetics:mythril_bars>);
bars.add(<aesthetics:adamantium_bars>);
bars.add(<aesthetics:onyx_bars>);
bars.add(<aether_legacy:zanite_bars>);
bars.add(<betternether:cincinnasite_bars>);

val buckets = <ore:bucket>;
buckets.add(<minecraft:bucket>);
buckets.add(<pyrotech:bucket_wood>);
buckets.add(<pyrotech:bucket_stone>);
buckets.add(<pyrotech:bucket_clay>);
buckets.add(<aether_legacy:skyroot_bucket:0>);

JEI.removeAndHide(<redstoneplusplus:dummy_compass>);
JEI.removeAndHide(<redstoneplusplus:dummy_compass_hover>);

recipes.removeByRecipeName("minecraft:hopper");
recipes.addShaped("metal_hopper",<minecraft:hopper>,[
    [<ore:genericMetal>,null,<ore:genericMetal>],
    [<ore:genericMetal>,<ore:chest>,<ore:genericMetal>],
    [null,<ore:genericMetal>,null]
]);

recipes.removeByRecipeName("minecraft:furnace");
recipes.addShaped("furnace",<minecraft:furnace>,[
    [<pyrotech:material:16>,<pyrotech:material:16>,<pyrotech:material:16>],
    [<pyrotech:material:16>,null,<pyrotech:material:16>],
    [<pyrotech:material:16>,<pyrotech:material:16>,<pyrotech:material:16>]
]);

recipes.remove(<minecraft:jukebox>);
recipes.addShaped("jukebox",<minecraft:jukebox>,[
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>],
    [<ore:plankWood>,<ore:ingotableGem>,<ore:plankWood>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]
]);

recipes.addShapeless("spider_silk_to_string",<minecraft:string>,[<contenttweaker:spider_silk>,<contenttweaker:spider_silk>,<contenttweaker:spider_silk>]);

recipes.remove(<minecraft:tipped_arrow>);
JEI.hide(<minecraft:tipped_arrow>);

// Serene Seasons
recipes.remove(<sereneseasons:season_sensor_spring>);
recipes.addShaped("season_sensor",<sereneseasons:season_sensor_spring>,[
    [<ore:blockGlass>,<ore:blockGlass>,<ore:blockGlass>],
    [<minecraft:quartz>,<sereneseasons:season_clock>,<minecraft:quartz>],
    [<ore:stoneSlab>,<ore:stoneSlab>,<ore:stoneSlab>]
]);

recipes.remove(<sereneseasons:greenhouse_glass>);
RecipeBuilder.get("mage")
  .setName("botanic_glass")
  .setShapeless([<quark:framed_glass>])
  .addOutput(<sereneseasons:greenhouse_glass>)
  .addTool(<contenttweaker:nature_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mage")
  .setName("botanic_glass_x4")
  .setShaped([
    [null,<quark:framed_glass>,null],
	[<quark:framed_glass>,<contenttweaker:vis_speck>,<quark:framed_glass>],
	[null,<quark:framed_glass>,null]])
  .addOutput(<sereneseasons:greenhouse_glass>*4)
  .addTool(<contenttweaker:nature_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
RecipeBuilder.get("mage")
  .setName("botanic_glass_x8")
  .setShaped([
    [<quark:framed_glass>,<quark:framed_glass>,<quark:framed_glass>],
	[<quark:framed_glass>,<contenttweaker:vis_sliver>,<quark:framed_glass>],
	[<quark:framed_glass>,<quark:framed_glass>,<quark:framed_glass>]])
  .addOutput(<sereneseasons:greenhouse_glass>*8)
  .addTool(<contenttweaker:nature_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.removeByRecipeName("aether_legacy:saddle");
recipes.removeByRecipeName("animania:saddle");

recipes.removeByRecipeName("minecraft:rabbit_stew_from_red_mushroom");
recipes.removeByRecipeName("minecraft:rabbit_stew_from_brown_mushroom");
recipes.addShaped("minecraft_rabbit_stew_from_mushroom", <minecraft:rabbit_stew>,
  [[null,<minecraft:cooked_rabbit>,null],
  [<minecraft:carrot>,<minecraft:baked_potato>,<ore:listAllmushroom>],
  [null,<minecraft:bowl>,null]]);

recipes.removeByRecipeName("minecraft:cake");
recipes.removeByRecipeName("minecraft:painting");
recipes.removeByRecipeName("minecraft:purple_shulker_box");
recipes.removeByRecipeName("minecraft:yellow_wool");
recipes.removeByRecipeName("minecraft:red_wool");
recipes.removeByRecipeName("minecraft:purple_wool");
recipes.removeByRecipeName("minecraft:pink_wool");
recipes.removeByRecipeName("minecraft:orange_wool");
recipes.removeByRecipeName("minecraft:magenta_wool");
recipes.removeByRecipeName("minecraft:lime_wool");
recipes.removeByRecipeName("minecraft:light_gray_wool");
recipes.removeByRecipeName("minecraft:light_blue_wool");
recipes.removeByRecipeName("minecraft:green_wool");
recipes.removeByRecipeName("minecraft:gray_wool");
recipes.removeByRecipeName("minecraft:cyan_wool");
recipes.removeByRecipeName("minecraft:brown_wool");
recipes.removeByRecipeName("minecraft:blue_wool");
recipes.removeByRecipeName("minecraft:black_wool");
recipes.removeByRecipeName("minecraft:bone_meal_from_block");
recipes.removeByRecipeName("minecraft:granite");
recipes.removeByRecipeName("minecraft:diorite");
recipes.removeByRecipeName("minecraft:andesite");

recipes.remove(<minecraft:tnt>);
recipes.addShapeless("tnt_dynamite",<minecraft:tnt>,[ <betterwithmods:dynamite_bundle>, <betterwithmods:dynamite_bundle>, <betterwithmods:dynamite_bundle>, <betterwithmods:dynamite_bundle>, <ore:glue> ]);

recipes.removeByRecipeName("quark:color_slime_1");
recipes.removeByRecipeName("quark:color_slime");
recipes.removeByRecipeName("quark:color_slime_3");


recipes.removeByRecipeName("minecraft:slime");
recipes.addShaped("green_slime_block",<minecraft:slime>,[
    [<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],
    [<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>],
    [<minecraft:slime_ball>,<minecraft:slime_ball>,<minecraft:slime_ball>]
]);


recipes.remove(<quark:color_slime:2>);
recipes.addShaped("black_slime_block",<quark:color_slime:2>,[
    [<betterslimes:black_slime>,<betterslimes:black_slime>,<betterslimes:black_slime>],
    [<betterslimes:black_slime>,<betterslimes:black_slime>,<betterslimes:black_slime>],
    [<betterslimes:black_slime>,<betterslimes:black_slime>,<betterslimes:black_slime>]
]);

val coarseMatArray = [<minecraft:dirt:0>,<biomesoplenty:dirt:2>,<biomesoplenty:dirt:1>,<biomesoplenty:dirt:0>] as IItemStack[];
val coarseDirtArray = [<minecraft:dirt:1>,<biomesoplenty:dirt:10>,<biomesoplenty:dirt:9>,<biomesoplenty:dirt:8>] as IItemStack[];

for i, dirt in coarseDirtArray {
    recipes.remove(dirt);
    recipes.addShaped(dirt * 4, [
        [coarseMatArray[i], <ore:gravel>],
        [<ore:gravel>, coarseMatArray[i]]
    ]);
}

// Bucket Recipes
var flimsywaterbucket = <pyrotech:bucket_stone>.withTag({durability: 32767, fluids: {FluidName: "water", Amount: 1000}}).transformReplace(<pyrotech:bucket_stone>);
var qualitybucket = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>);

recipes.removeByRecipeName("biomesoplenty:sand_from_dried_sand");
recipes.addShapeless("sand_from_dried_sand_quality",<minecraft:sand>,[
    <biomesoplenty:dried_sand>, flimsywaterbucket
]);
recipes.addShapeless("sand_from_dried_sand_flimsy",<minecraft:sand>,[
    <biomesoplenty:dried_sand>, qualitybucket
]);

recipes.removeByRecipeName("animania:salt_lick_0");
recipes.addShapeless("salt_lick_0",<animania:salt_lick>,[
    <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, flimsywaterbucket
]);
recipes.addShapeless("salt_lick_1",<animania:salt_lick>,[
    <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, qualitybucket
]);

recipes.removeByRecipeName("doggytalents:dog_bath");
recipes.addShaped("dog_bath_0",<doggytalents:dog_bath>,[
   [<ore:genericMetal>,<ore:genericMetal>,<ore:genericMetal>],
    [<ore:genericMetal>,flimsywaterbucket,<ore:genericMetal>],
    [<ore:genericMetal>,<ore:genericMetal>,<ore:genericMetal>]
]);
recipes.addShaped("dog_bath_1",<doggytalents:dog_bath>,[
   [<ore:genericMetal>,<ore:genericMetal>,<ore:genericMetal>],
    [<ore:genericMetal>,qualitybucket,<ore:genericMetal>],
    [<ore:genericMetal>,<ore:genericMetal>,<ore:genericMetal>]
]);

recipes.removeByRecipeName("quark:iron_plate_2");
recipes.addShaped("iron_plate_2_0",<quark:iron_plate:1>*8,[
   [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],
    [<quark:iron_plate>,flimsywaterbucket,<quark:iron_plate>],
    [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]
]);
recipes.addShaped("iron_plate_2_1",<quark:iron_plate:1>*8,[
   [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>],
    [<quark:iron_plate>,qualitybucket,<quark:iron_plate>],
    [<quark:iron_plate>,<quark:iron_plate>,<quark:iron_plate>]
]);

recipes.removeByRecipeName("cyclicmagic:item.bucketfilled");
recipes.addShapeless("bucket_poison_0",<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "poison", Amount: 1000}}),[
    flimsywaterbucket,<ore:poisonQuintessenceA>,<ore:poisonQuintessenceB>,<ore:listAllsugar>
]);
recipes.addShapeless("bucket_poison_1",<forge:bucketfilled>.withTag({FluidName: "poison", Amount: 1000}),[
    qualitybucket,<ore:poisonQuintessenceA>,<ore:poisonQuintessenceB>,<ore:listAllsugar>
]);

recipes.removeByRecipeName("rustic:ale_wort");
recipes.addShapeless("ale_wort_0",<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "alewort", Amount: 1000}}),[
    flimsywaterbucket,<ore:foodFlour>,<ore:listAllsugar>
]);
recipes.addShapeless("ale_wort_1",<forge:bucketfilled>.withTag({FluidName: "alewort", Amount: 1000}),[
    qualitybucket,<ore:foodFlour>,<ore:listAllsugar>
]);


recipes.remove(<minecraft:name_tag>);
recipes.addShapeless("name_tag",<minecraft:name_tag>,[
    <ore:string>, <ore:nuggetGold>, <minecraft:paper>
]);

recipes.remove(<minecraft:fish:0>);
recipes.remove(<minecraft:stone_slab:5>);
recipes.addShaped("stone_brick_slab",<minecraft:stone_slab:5>*6,[
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>]
]);
recipes.remove(<minecraft:stone_brick_stairs>);
recipes.addShapedMirrored("stone_brick_stairs_brick",<minecraft:stone_brick_stairs>*8,[
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,null,null],
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,null],
    [<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>,<minecraft:stonebrick:0>|<minecraft:stonebrick:2>|<minecraft:stonebrick:3>]
]);
recipes.addShapedMirrored("stone_brick_stairs_slab",<minecraft:stone_brick_stairs>*4,[
    [<minecraft:stone_slab:5>,null,null],
    [<minecraft:stone_slab:5>,<minecraft:stone_slab:5>,null],
    [<minecraft:stone_slab:5>,<minecraft:stone_slab:5>,<minecraft:stone_slab:5>]
]);
recipes.addShapeless("stone_brick_from_stairs",<minecraft:stonebrick:0>*3,[<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>,<minecraft:stone_brick_stairs>]);

recipes.remove(<minecraft:armor_stand>);
recipes.addShaped("armor_stand",<minecraft:armor_stand>,[
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [null,<ore:stickWood>,null],
    [<ore:stickWood>,<ore:stoneSlab>,<ore:stickWood>]
]);

recipes.remove(<minecraft:fishing_rod>);
recipes.addShaped("fishing_rod",<minecraft:fishing_rod>,[
    [null,null,<ore:stickWood>],
    [null,<ore:stickWood>,<minecraft:string>],
    [<ore:stickWood>,<ore:nuggetIron>|<ore:nuggetTin>.firstItem,<minecraft:string>]
]);

recipes.remove(<chutes:chute_wood>);
recipes.addShaped("wooden_chute",<chutes:chute_wood>*16,[
    [null,<ore:barkWood>,null],
    [<ore:barkWood>,null,<ore:barkWood>],
    [null,<ore:barkWood>,null]
]);

// Fences use stick oredict

recipes.removeByRecipeName("minecraft:fence");
recipes.addShaped("oak_fence",<minecraft:fence>*3,[
    [<minecraft:planks:0>,<ore:stickWood>,<minecraft:planks:0>],
    [<minecraft:planks:0>,<ore:stickWood>,<minecraft:planks:0>]
]);

recipes.removeByRecipeName("minecraft:fence_gate");
recipes.addShaped("oak_fence_gate",<minecraft:fence_gate>,[
    [<ore:stickWood>,<minecraft:planks:0>,<ore:stickWood>],
    [<ore:stickWood>,<minecraft:planks:0>,<ore:stickWood>]
]);

val fenceStickMap = {
    <minecraft:planks:1> : [<minecraft:spruce_fence>,<minecraft:spruce_fence_gate>],
    <minecraft:planks:2> : [<minecraft:birch_fence>,<minecraft:birch_fence_gate>],
    <minecraft:planks:3> : [<minecraft:jungle_fence>,<minecraft:jungle_fence_gate>],
    <minecraft:planks:4> : [<minecraft:acacia_fence>,<minecraft:acacia_fence_gate>],
    <minecraft:planks:5> : [<minecraft:dark_oak_fence>,<minecraft:dark_oak_fence_gate>],
    <aether_legacy:skyroot_plank> : [<aether_legacy:skyroot_fence>,<aether_legacy:skyroot_fence_gate>],
    <biomesoplenty:planks_0:0> : [<biomesoplenty:sacred_oak_fence:0>,<biomesoplenty:sacred_oak_fence_gate:0>],
    <biomesoplenty:planks_0:1> : [<biomesoplenty:cherry_fence:0>,<biomesoplenty:cherry_fence_gate:0>],
    <biomesoplenty:planks_0:2> : [<biomesoplenty:umbran_fence:0>,<biomesoplenty:umbran_fence_gate:0>],
    <biomesoplenty:planks_0:3> : [<biomesoplenty:fir_fence:0>,<biomesoplenty:fir_fence_gate:0>],
    <biomesoplenty:planks_0:4> : [<biomesoplenty:ethereal_fence:0>,<biomesoplenty:ethereal_fence_gate:0>],
    <biomesoplenty:planks_0:5> : [<biomesoplenty:magic_fence:0>,<biomesoplenty:magic_fence_gate:0>],
    <biomesoplenty:planks_0:6> : [<biomesoplenty:mangrove_fence:0>,<biomesoplenty:mangrove_fence_gate:0>],
    <biomesoplenty:planks_0:7> : [<biomesoplenty:palm_fence:0>,<biomesoplenty:palm_fence_gate:0>],
    <biomesoplenty:planks_0:8> : [<biomesoplenty:redwood_fence:0>,<biomesoplenty:redwood_fence_gate:0>],
    <biomesoplenty:planks_0:9> : [<biomesoplenty:willow_fence:0>,<biomesoplenty:willow_fence_gate:0>],
    <biomesoplenty:planks_0:10> : [<biomesoplenty:pine_fence:0>,<biomesoplenty:pine_fence_gate:0>],
    <biomesoplenty:planks_0:11> : [<biomesoplenty:hellbark_fence:0>,<biomesoplenty:hellbark_fence_gate:0>],
    <biomesoplenty:planks_0:12> : [<biomesoplenty:jacaranda_fence:0>,<biomesoplenty:jacaranda_fence_gate:0>],
    <biomesoplenty:planks_0:13> : [<biomesoplenty:mahogany_fence:0>,<biomesoplenty:mahogany_fence_gate:0>],
    <biomesoplenty:planks_0:14> : [<biomesoplenty:ebony_fence:0>,<biomesoplenty:ebony_fence_gate:0>],
    <biomesoplenty:planks_0:15> : [<biomesoplenty:eucalyptus_fence:0>,<biomesoplenty:eucalyptus_fence_gate:0>],
    <betternether:stalagnate_planks> : [<betternether:stalagnate_planks_fence>,<betternether:stalagnate_planks_gate>],
    <betternether:reeds_block> : [<betternether:reeds_fence>,<betternether:reeds_gate>]
} as IItemStack[][IItemStack];

for plank, fenceArray in fenceStickMap{
    recipes.remove(fenceArray[0]);
    recipes.addShaped(fenceArray[0]*3,[
        [plank,<ore:stickWood>,plank],
        [plank,<ore:stickWood>,plank]
    ]);

    recipes.remove(fenceArray[1]);
    recipes.addShaped(fenceArray[1],[
        [<ore:stickWood>,plank,<ore:stickWood>],
        [<ore:stickWood>,plank,<ore:stickWood>]
    ]);
}

// Rebirth of the Bed

recipes.remove(<minecraft:bed:*>);

var moulding_wood = mods.betterwithmods.MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);

recipes.addShaped("Rebirth_of_the_Bed",<minecraft:bed>,[
    [<minecraft:carpet:*>,<minecraft:carpet:*>,<betterwithmods:material:41>],
    [<ore:blockWool>,<betterwithmods:aesthetic:9>,<ore:blockWool>],
    [moulding_wood,<ore:slabWood>,moulding_wood]
]);

var BedColors = <minecraft:bed:0>|<minecraft:bed:1>|<minecraft:bed:2>|<minecraft:bed:3>|<minecraft:bed:4>|<minecraft:bed:5>|<minecraft:bed:6>|<minecraft:bed:7>|<minecraft:bed:8>|<minecraft:bed:9>|<minecraft:bed:10>|<minecraft:bed:11>|<minecraft:bed:12>|<minecraft:bed:13>|<minecraft:bed:14>|<minecraft:bed:15>;

recipes.addShapeless("white_bed",<minecraft:bed:0>,[BedColors,<ore:dyeWhite>]);
recipes.addShapeless("orange_bed",<minecraft:bed:1>,[BedColors,<ore:dyeOrange>]);
recipes.addShapeless("magenta_bed",<minecraft:bed:2>,[BedColors,<ore:dyeMagenta>]);
recipes.addShapeless("light_blue_bed",<minecraft:bed:3>,[BedColors,<ore:dyeLightBlue>]);
recipes.addShapeless("yellow_bed",<minecraft:bed:4>,[BedColors,<ore:dyeYellow>]);
recipes.addShapeless("lime_bed",<minecraft:bed:5>,[BedColors,<ore:dyeLime>]);
recipes.addShapeless("pink_bed",<minecraft:bed:6>,[BedColors,<ore:dyePink>]);
recipes.addShapeless("gray_bed",<minecraft:bed:7>,[BedColors,<ore:dyeGray>]);
recipes.addShapeless("light_gray_bed",<minecraft:bed:8>,[BedColors,<ore:dyeLightGray>]);
recipes.addShapeless("cyan_bed",<minecraft:bed:9>,[BedColors,<ore:dyeCyan>]);
recipes.addShapeless("purple_bed",<minecraft:bed:10>,[BedColors,<ore:dyePurple>]);
recipes.addShapeless("blue_bed",<minecraft:bed:11>,[BedColors,<ore:dyeBlue>]);
recipes.addShapeless("brown_bed",<minecraft:bed:12>,[BedColors,<ore:dyeBrown>]);
recipes.addShapeless("green_bed",<minecraft:bed:13>,[BedColors,<ore:dyeGreen>]);
recipes.addShapeless("red_bed",<minecraft:bed:14>,[BedColors,<ore:dyeRed>]);
recipes.addShapeless("black_bed",<minecraft:bed:15>,[BedColors,<ore:dyeBlack>]);

recipes.removeByRecipeName("aether_legacy_addon:white_skyroot_bed");



// Rail Overhaul

recipes.remove(<minecraft:detector_rail>);
recipes.addShaped("detector_rail",<minecraft:detector_rail>*6,[
    [<ore:ingotIron>,null,<ore:ingotIron>],
    [<ore:ingotIron>,<ore:pressurePlateWood>,<ore:ingotIron>],
    [<ore:ingotIron>,<minecraft:redstone>,<ore:ingotIron>]
]);
recipes.addShaped("tinrail",<minecraft:rail>*8,[
    [<ore:ingotTin>,null,<ore:ingotTin>],
    [<ore:ingotTin>,<ore:stickWood>,<ore:ingotTin>],
    [<ore:ingotTin>,null,<ore:ingotTin>]
]);
recipes.addShaped("steelrail",<minecraft:rail>*64,[
    [<dungeontactics:steel_ingot>,null,<dungeontactics:steel_ingot>],
    [<dungeontactics:steel_ingot>,<ore:stickWood>,<dungeontactics:steel_ingot>],
    [<dungeontactics:steel_ingot>,null,<dungeontactics:steel_ingot>]
]);
recipes.addShaped("silverboosterrail",<minecraft:golden_rail>*4,[
    [<iceandfire:silver_ingot>,null,<iceandfire:silver_ingot>],
    [<iceandfire:silver_ingot>,<ore:stickWood>,<iceandfire:silver_ingot>],
    [<iceandfire:silver_ingot>,<minecraft:redstone>,<iceandfire:silver_ingot>]
]);


// other tin uses
recipes.remove(<sereneseasons:season_clock>);

recipes.addShaped("tintripwirehook", <minecraft:tripwire_hook> * 2,[
	[null, <ore:ingotTin>, null],
	[null, <ore:stickWood>, null],
	[null, <ore:plankWood>, null]
]);

recipes.addShaped("tincompass", <minecraft:compass>,[
	[null, <ore:ingotTin>, null],
	[<ore:ingotTin>, <minecraft:redstone>, <ore:ingotTin>],
	[null, <ore:ingotTin>, null]
]);

recipes.addShaped("seasonclock1", <sereneseasons:season_clock>, [
	[<minecraft:quartz>, <ore:ingotTin>, <minecraft:quartz>],
	[<ore:ingotTin>, <minecraft:redstone>, <ore:ingotTin>],
	[<minecraft:quartz>, <ore:ingotTin>, <minecraft:quartz>]
]);

// new bucket recipe
recipes.remove(<minecraft:bucket>);
recipes.addShaped("iron_bucket", <pyrotech:bucket_stone>.withTag({Unbreakable: 1,HideFlags: 36}),[
	[null, null, null],
    [<ore:ingotIron>, null, <ore:ingotIron>],
    [null, <ore:ingotIron>, null]
]);
recipes.addShaped("bronze_bucket", <pyrotech:bucket_stone>.withTag({Unbreakable: 1,HideFlags: 36}),[
	[null, null, null],
    [<ore:ingotBronze>, null, <ore:ingotBronze>],
    [null, <ore:ingotBronze>, null]
]);

recipes.addShaped("quality_bucket", <minecraft:bucket>,[
	[<pyrotech:material:4>, <pyrotech:bucket_stone>, <pyrotech:material:4>],
	[<ore:glue>,<ore:glue>,<ore:glue>],
    [<pyrotech:material:4>, <contenttweaker:crucible>, <pyrotech:material:4>]
]);


recipes.remove(<minecraft:concrete_powder:*>);
recipes.addShapeless("white_concrete_powder",<minecraft:concrete_powder:0>*8,[<ore:dyeWhite>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("orange_concrete_powder",<minecraft:concrete_powder:1>*8,[<ore:dyeOrange>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("magenta_concrete_powder",<minecraft:concrete_powder:2>*8,[<ore:dyeMagenta>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_blue_concrete_powder",<minecraft:concrete_powder:3>*8,[<ore:dyeLightBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("yellow_concrete_powder",<minecraft:concrete_powder:4>*8,[<ore:dyeYellow>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("lime_concrete_powder",<minecraft:concrete_powder:5>*8,[<ore:dyeLime>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("pink_concrete_powder",<minecraft:concrete_powder:6>*8,[<ore:dyePink>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("gray_concrete_powder",<minecraft:concrete_powder:7>*8,[<ore:dyeGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("light_gray_concrete_powder",<minecraft:concrete_powder:8>*8,[<ore:dyeLightGray>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("cyan_concrete_powder",<minecraft:concrete_powder:9>*8,[<ore:dyeCyan>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("purple_concrete_powder",<minecraft:concrete_powder:10>*8,[<ore:dyePurple>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("blue_concrete_powder",<minecraft:concrete_powder:11>*8,[<ore:dyeBlue>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("brown_concrete_powder",<minecraft:concrete_powder:12>*8,[<ore:dyeBrown>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("green_concrete_powder",<minecraft:concrete_powder:13>*8,[<ore:dyeGreen>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("red_concrete_powder",<minecraft:concrete_powder:14>*8,[<ore:dyeRed>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);
recipes.addShapeless("black_concrete_powder",<minecraft:concrete_powder:15>*8,[<ore:dyeBlack>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:sand>,<ore:gravel>,<ore:gravel>,<ore:gravel>,<ore:gravel>]);


Anvil.remove(<minecraft:wooden_sword>);

LootTable.removeGlobalItem("minecraft:barrier");

// Chain Recipes
var chainlink = <iceandfire:chain_link>;
var chain = <quark:chain>;
var bigchain = <iceandfire:chain>;
var decochain = <rustic:chain>;

recipes.removeByRecipeName("iceandfire:chain");
recipes.remove(<minecraft:chainmail_helmet>);
recipes.remove(<minecraft:chainmail_chestplate>);
recipes.remove(<minecraft:chainmail_leggings>);
recipes.remove(<minecraft:chainmail_boots>);
recipes.remove(<quark:chain>);
recipes.remove(<iceandfire:chain_link>);

recipes.addShaped("Chainlinks", chainlink*2,[
	[null, <ore:nuggetIron>, null],
    [<ore:nuggetIron>, null, <ore:nuggetIron>],
    [null, <ore:nuggetIron>, null]
]);

recipes.addShapeless("Quark_chain", <quark:chain>, 
[chainlink, chainlink]);

recipes.addShaped("iceandfire_chain", bigchain,[
	[<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>],
	[chain, chainlink, chain],
	[<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>,<ore:nuggetSoulforgedSteel>]
]);

recipes.addShaped("rustic_chain", decochain*16,[
	[chainlink, chainlink, chainlink],
    [chainlink, null, chainlink],
    [chainlink, chainlink, chainlink]
]);


recipes.addShaped("Chainmail Helmet", <minecraft:chainmail_helmet>,[
	[chain, chain, chain],
    [chain, null, chain],
    [null, null, null]
]);

recipes.addShaped("Chainmail Chestplate", <minecraft:chainmail_chestplate>,[
	[chain, null, chain],
    [chain, chain, chain],
    [chain, chain, chain]
]);

recipes.addShaped("Chainmail Leggings", <minecraft:chainmail_leggings>,[
	[chain, chain, chain],
    [chain, null, chain],
    [chain, null, chain]
]);

recipes.addShaped("Chainmail Boots", <minecraft:chainmail_boots>,[
	[null, null, null],
    [chain, null, chain],
    [chain, null, chain]
]);


val flint = <minecraft:flint>;
val stick = <ore:stickWood>;

recipes.addShapedMirrored("flintstone_axe", <minecraft:stone_axe>,[
	[flint, flint, null],
    [flint, stick, null],
    [null, stick, null]
]);

recipes.addShapedMirrored("flintstone_hoe", <minecraft:stone_hoe>,[
	[flint, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("flintstone_shovel", <minecraft:stone_shovel>,[
	[null, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("flintstone_pickaxe", <minecraft:stone_pickaxe>,[
	[flint, flint, flint],
    [null, stick, null],
    [null, stick, null]
]);

JEI.removeAndHide(<aether_legacy:skyroot_chest>);
JEI.removeAndHide(<quark:custom_chest:0>);
JEI.removeAndHide(<quark:custom_chest:1>);
JEI.removeAndHide(<quark:custom_chest:2>);
JEI.removeAndHide(<quark:custom_chest:3>);
JEI.removeAndHide(<quark:custom_chest:4>);

JEI.removeAndHide(<quark:custom_chest_trap:0>);
JEI.removeAndHide(<quark:custom_chest_trap:1>);
JEI.removeAndHide(<quark:custom_chest_trap:2>);
JEI.removeAndHide(<quark:custom_chest_trap:3>);
JEI.removeAndHide(<quark:custom_chest_trap:4>);

var chestMat = <biomesoplenty:planks_0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|<biomesoplenty:planks_0:15>|<rustic:planks>|<rustic:planks:1>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>;

recipes.remove(<minecraft:chest>);
recipes.addShapeless("charset_chest_to_vanilla", <minecraft:chest>, [<ore:chestWood>]);

var woodenDoorMat = <betternether:stalagnate_planks>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_door",<minecraft:wooden_door>*3,[
    [woodenDoorMat,woodenDoorMat],
    [woodenDoorMat,woodenDoorMat],
    [woodenDoorMat,woodenDoorMat]
]);

var woodenBoatMat = <betternether:stalagnate_planks>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<betternether:reeds_block>|<rustic:planks>|<rustic:planks:1>|<twilightforest:twilight_oak_planks>|<twilightforest:canopy_planks>|<twilightforest:mangrove_planks>|<twilightforest:dark_planks>|<twilightforest:time_planks>|<twilightforest:trans_planks>|<twilightforest:mine_planks>|<twilightforest:sort_planks>|<aether_legacy:skyroot_plank>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_boat",<minecraft:boat>,[
    [woodenBoatMat,null,woodenBoatMat],
    [woodenBoatMat,woodenBoatMat,woodenBoatMat]
]);

var woodenButtonMat = <biomesoplenty:planks_0:0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:6>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|
<biomesoplenty:planks_0:14>|<biomesoplenty:planks_0:15>|<rustic:planks>|<rustic:planks:1>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShapeless("wooden_button",<minecraft:wooden_button>,[woodenButtonMat]);

val stickMats = <ore:stickMat>;
stickMats.mirror(<ore:plankWood>);
stickMats.remove(<aether_legacy:skyroot_plank>);

recipes.remove(<minecraft:stick>);
recipes.addShaped("stick",<minecraft:stick>*4,[
    [<ore:stickMat>],
    [<ore:stickMat>]
]);

recipes.remove(<minecraft:bowl>);
recipes.addShaped("bowl",<minecraft:bowl>*4,[
    [<ore:stickMat>,null,<ore:stickMat>],
    [null,<ore:stickMat>,null]
]);

JEI.removeAndHide(<minecraft:wooden_shovel>);
JEI.removeAndHide(<minecraft:wooden_pickaxe>);
JEI.removeAndHide(<minecraft:wooden_axe>);
JEI.removeAndHide(<minecraft:wooden_hoe>);
LootTable.removeGlobalItem("minecraft:wooden_pickaxe");
LootTable.removeGlobalItem("minecraft:wooden_axe");
LootTable.removeGlobalItem("minecraft:wooden_hoe");
LootTable.removeGlobalItem("minecraft:wooden_shovel");

recipes.remove(<dungeontactics:sharp_stick>);
JEI.removeAndHide(<minecraft:wooden_sword>);
recipes.addShaped("sharp_stick", <dungeontactics:sharp_stick>,[
    [<ore:stickMat>],
    [<ore:stickMat>],
    [<ore:stickWood>]
]);

var woodenStairMat = <stygian:endplanks>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShapedMirrored("wooden_stairs",<minecraft:oak_stairs>*8,[
    [woodenStairMat,null,null],
    [woodenStairMat,woodenStairMat,null],
    [woodenStairMat,woodenStairMat,woodenStairMat]
]);

recipes.addShaped("wooden_slab",<minecraft:wooden_slab>*6,[
    [woodenStairMat,woodenStairMat,woodenStairMat]
]);

var woodenFenceMat = <stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_fence",<minecraft:fence>*3,[
    [woodenFenceMat,<ore:stickWood>,woodenFenceMat],
    [woodenFenceMat,<ore:stickWood>,woodenFenceMat]
]);

recipes.addShaped("wooden_fence_gate",<minecraft:fence_gate>,[
    [<ore:stickWood>,woodenFenceMat,<ore:stickWood>],
    [<ore:stickWood>,woodenFenceMat,<ore:stickWood>]
]);

var woodenPressurePlateMat = <biomesoplenty:planks_0:0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:6>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|<biomesoplenty:planks_0:14>|<biomesoplenty:planks_0:15>|<rustic:planks>|<rustic:planks:1>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_pressure_plate",<minecraft:wooden_pressure_plate>,[
    [woodenPressurePlateMat,woodenPressurePlateMat]
]);

recipes.remove(<minecraft:bookshelf>);
recipes.addShaped("bookshelf", <minecraft:bookshelf>,[
    [woodenPressurePlateMat, woodenPressurePlateMat, woodenPressurePlateMat],
    [<ore:book>, <ore:book>, <ore:book>],
    [woodenPressurePlateMat, woodenPressurePlateMat, woodenPressurePlateMat]
]);

var woodenPodiumMat = <biomesoplenty:planks_0:0>|<biomesoplenty:planks_0:1>|<biomesoplenty:planks_0:2>|<biomesoplenty:planks_0:3>|<biomesoplenty:planks_0:4>|<biomesoplenty:planks_0:5>|<biomesoplenty:planks_0:6>|<biomesoplenty:planks_0:7>|<biomesoplenty:planks_0:8>|<biomesoplenty:planks_0:9>|<biomesoplenty:planks_0:10>|<biomesoplenty:planks_0:11>|<biomesoplenty:planks_0:12>|<biomesoplenty:planks_0:13>|<biomesoplenty:planks_0:14>|<biomesoplenty:planks_0:15>|<betternether:stalagnate_planks>|<betternether:reeds_block>|<rustic:planks>|<rustic:planks:1>|<stygian:endplanks>|<quark:stained_planks:*>|<quark:vertical_planks:*>|<quark:vertical_stained_planks:*>|<twilightforest:tower_wood:*>|<twilightforest:twilight_oak_planks>|<twilightforest:canopy_planks>|<twilightforest:mangrove_planks>|<twilightforest:dark_planks>|<twilightforest:time_planks>|<twilightforest:trans_planks>|<twilightforest:mine_planks>|<twilightforest:sort_planks>|<aether_legacy:skyroot_plank>|<betterwithaddons:planks_sakura>|<betterwithaddons:planks_mulberry>;

recipes.addShaped("wooden_podium",<iceandfire:podium:0>,[
    [<minecraft:wooden_slab>,woodenPodiumMat,<minecraft:wooden_slab>],
    [null,woodenPodiumMat,null],
    [<minecraft:wooden_slab>,woodenPodiumMat,<minecraft:wooden_slab>]
]);

recipes.removeByRecipeName("dungeontactics:misc/convenience/books_from_shelves");
recipes.addShapeless("book_from_bookshelf",<minecraft:book>,[<ore:bookshelf>]);

JEI.removeAndHide(<minecraft:shield>);
LootTable.removeGlobalItem("minecraft:shield");


var potions = <minecraft:potion>;
var potions_splash = <minecraft:splash_potion>;
var potions_lingering = <minecraft:lingering_potion>;
var elixir = <rustic:elixir>;

potions.maxStackSize = 8;
potions_splash.maxStackSize = 8;
potions_lingering.maxStackSize = 8;
elixir.maxStackSize = 8;

RecipeBuilder.get("mage")
  .setName("holy_stake")
  .setShaped([
    [null, <iceandfire:silver_nugget>, <iceandfire:silverpile>],
    [<iceandfire:silver_nugget>, <betterwithmods:stake>, <iceandfire:silver_nugget>], 
    [<iceandfire:silver_nugget>, <iceandfire:silver_nugget>, null]])
  .addOutput(<dungeontactics:bone_cestus>)
  .addTool(<contenttweaker:aether_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.addShaped("monster_leather", <betterwithmods:material:31>, 
[[<contenttweaker:monster_hide>, <contenttweaker:monster_hide>, <contenttweaker:monster_hide>],
[<contenttweaker:monster_hide>, <contenttweaker:monster_hide>, <contenttweaker:monster_hide>]]);

recipes.addShaped("scrapped_leather", <betterwithmods:material:31>, 
[[<contenttweaker:tattered_hide>, <contenttweaker:tattered_hide>, <contenttweaker:tattered_hide>],
[<contenttweaker:tattered_hide>, <contenttweaker:tattered_hide>, <contenttweaker:tattered_hide>]]);

//Ore Dictionary Entries

val ingotableGem = <ore:ingotableGem>;
ingotableGem.add(
  <minecraft:diamond>,
  <biomesoplenty:gem:2>,
  <biomesoplenty:gem:6>,
  <biomesoplenty:gem:1>
);

val gemIngot = <ore:gemIngot>;
gemIngot.add(
  <betterwithmods:material:45>,
  <contenttweaker:sapphire_ingot>,
  <contenttweaker:ruby_ingot>,
  <contenttweaker:peridot_ingot>
);

<ore:stoneWithoutHolystone>.mirror(<ore:stone>);
<ore:stoneWithoutHolystone>.remove(<aether_legacy:holystone>);

<ore:plankWood>.add(<aether_legacy:skyroot_plank>);
<ore:sand>.add(<minecraft:sand:1>);
<ore:ingotCrucibleSteel>.add(<dungeontactics:steel_ingot>);
<ore:hardReed>.addItems([<biomesoplenty:bamboo>,<minecraft:reeds>,<betternether:nether_reed>]);
<ore:hollowReed>.addItems([<biomesoplenty:bamboo>,<biomesoplenty:plant_1:8>,<rustic:horsetail>,<futuremc:bamboo>]);
<ore:listAllmilk>.addItems([<aether_legacy:skyroot_bucket:4>]);
<ore:listAllmilk>.remove(<aether_legacy:skyroot_bucket>);
<ore:milkBucket>.remove(<aether_legacy:skyroot_bucket>);

<ore:blockGlass>.addItems([<iceandfire:myrmex_desert_resin_glass>,<iceandfire:myrmex_jungle_resin_glass>,<betternether:quartz_glass>,<betternether:quartz_glass_framed>,<betternether:quartz_stained_glass:*>,<betternether:quartz_stained_glass_framed:*>,<dungeontactics:dungeon_glass>,<quark:framed_glass>,<sereneseasons:greenhouse_glass>,<twilightforest:auroralized_glass>]);

<ore:grass>.addItems([<minecraft:grass_path>,<aether_legacy:aether_grass>,<aether_legacy:enchanted_aether_grass>,<betterwithaddons:extra_grass:0>,<betterwithaddons:extra_grass:1>,<betterwithaddons:extra_grass:2>,<betterwithaddons:extra_grass:3>,<biomesoplenty:grass:1>,<biomesoplenty:grass:2>,<biomesoplenty:grass:3>,<biomesoplenty:grass:4>,<biomesoplenty:grass:5>,<biomesoplenty:grass:6>,<biomesoplenty:grass:7>,<biomesoplenty:grass:8>,<biomesoplenty:grass_path:0>,<stygian:endgrass>]);

<ore:bed>.add(<aether_legacy:skyroot_bed_item>);

<ore:mat>.addItems([<harvestcraft:wovencottonitem>]);
<ore:mat>.addAll(<ore:wool>);
<ore:mat>.addAll(<ore:leather>);

<ore:nailedWood>.addItems([<contenttweaker:hellbark_boards>,<contenttweaker:tenebra_boards>,<contenttweaker:pine_boards>,<contenttweaker:oak_boards>,<contenttweaker:mangrove_boards>,<contenttweaker:umbran_boards>,<contenttweaker:dark_oak_boards>,<contenttweaker:birch_boards>,<contenttweaker:acacia_boards>,<contenttweaker:magic_boards>,<contenttweaker:dreadwood_boards>,<contenttweaker:fir_boards>,<contenttweaker:ironwood_boards>,<contenttweaker:jungle_boards>,<contenttweaker:wyrmwood_boards>,<contenttweaker:stalagnate_boards>,<contenttweaker:sacred_oak_boards>,<contenttweaker:eucalyptus_boards>,<contenttweaker:cherry_boards>,<contenttweaker:spruce_boards>,<contenttweaker:olive_boards>,<contenttweaker:jacaranda_boards>,<contenttweaker:mahogany_boards>,<contenttweaker:redwood_boards>,<contenttweaker:palm_boards>,<contenttweaker:ebony_boards>,<contenttweaker:willow_boards>,<contenttweaker:skywood_boards>]);

<ore:refractoryBlock>.addItems([<pyrotech:refractory_brick_block>,<ceramics:clay_barrel:*>,<ceramics:clay_barrel_stained:*>,<ceramics:clay_barrel_stained_extension:*>,<contenttweaker:refracotta>,<contenttweaker:refracotta_green>,<contenttweaker:refracotta_light_gray>,<contenttweaker:refracotta_light_blue>,<contenttweaker:refracotta_yellow>,<contenttweaker:refracotta_cyan>,<contenttweaker:refracotta_purple>,<contenttweaker:refracotta_pink>,<contenttweaker:refracotta_brown>,<contenttweaker:refracotta_magenta>,<contenttweaker:refracotta_lime>,<contenttweaker:refracotta_white>,<contenttweaker:refracotta_black>,<contenttweaker:refracotta_red>,<contenttweaker:refracotta_orange>,<contenttweaker:refracotta_blue>,<contenttweaker:refracotta_gray>,<pyrotech:refractory_door>,<pyrotech:refractory_glass>,<pyrotech:igniter:1>,<pyrotech:brick_tank>,<pyrotech:faucet_brick>,<pyrotech:tar_collector:1>,<pyrotech:tar_drain:1>]);

val dirt = <ore:dirt>;
dirt.addItems([<biomesoplenty:dirt:1>,<biomesoplenty:dirt:2>,<aether_legacy:aether_dirt>]);

val wool = <ore:wool>;
wool.remove(<minecraft:wool>);

val brown = <ore:dyeBrown>;
brown.remove(<betterwithmods:material:5>);

<ore:blockCharcoal>.add(<pyrotech:charcoal_block>);

<ore:listAllSeed>.addItems([<betterwithmods:hemp>,<rustic:ironwoodseed>, <dynamictreesbop:palmseed>]);
<ore:bookshelf>.addItems([<aether_legacy:skyroot_bookshelf>,<inspirations:bookshelf:*>]);

<ore:slabWood>.addItems([<quark:stained_planks_white_slab:*>,<quark:stained_planks_orange_slab:*>,<quark:stained_planks_magenta_slab:*>,<quark:stained_planks_light_blue_slab:*>,<quark:stained_planks_yellow_slab:*>,<quark:stained_planks_lime_slab:*>,<quark:stained_planks_pink_slab:*>,<quark:stained_planks_gray_slab:*>,<quark:stained_planks_silver_slab:*>,<quark:stained_planks_cyan_slab:*>,<quark:stained_planks_purple_slab:*>,<quark:stained_planks_blue_slab:*>,<quark:stained_planks_brown_slab:*>,<quark:stained_planks_green_slab:*>,<quark:stained_planks_red_slab:*>,<quark:stained_planks_black_slab:*>,<quark:bark_oak_slab:*>,<quark:bark_spruce_slab:*>,<quark:bark_birch_slab:*>,<quark:bark_jungle_slab:*>,<quark:bark_acacia_slab:*>,<quark:bark_dark_oak_slab:*>]);

<ore:stairWood>.addItems([<betternether:stalagnate_planks_stairs>,<betternether:reeds_stairs>,<quark:stained_planks_white_stairs>,<quark:stained_planks_orange_stairs>,<quark:stained_planks_magenta_stairs>,<quark:stained_planks_light_blue_stairs>,<quark:stained_planks_yellow_stairs>,<quark:stained_planks_lime_stairs>,<quark:stained_planks_pink_stairs>,<quark:stained_planks_gray_stairs>,<quark:stained_planks_silver_stairs>,<quark:stained_planks_cyan_stairs>,<quark:stained_planks_purple_stairs>,<quark:stained_planks_blue_stairs>,<quark:stained_planks_brown_stairs>,<quark:stained_planks_green_stairs>,<quark:stained_planks_red_stairs>,<quark:stained_planks_black_stairs>,<quark:bark_oak_stairs>,<quark:bark_spruce_stairs>,<quark:bark_birch_stairs>,<quark:bark_jungle_stairs>,<quark:bark_acacia_stairs>,<quark:bark_dark_oak_stairs>]);

<ore:fenceWood>.addItems([<betternether:stalagnate_planks_fence>,<betternether:reeds_fence>,<rustic:fence_olive>,<rustic:fence_ironwood>]);

<ore:fenceGateWood>.addItems([<betternether:stalagnate_planks_gate>,<betternether:reeds_gate>,<rustic:fence_gate_olive>,<rustic:fence_gate_ironwood>]);

val trapdoorWood = <ore:trapdoorWood>;
trapdoorWood.addItems([<twilightforest:twilight_oak_trapdoor>,<twilightforest:canopy_trapdoor>,<twilightforest:mangrove_trapdoor>,<twilightforest:dark_trapdoor>,<twilightforest:time_trapdoor>,<twilightforest:trans_trapdoor>,<twilightforest:mine_trapdoor>,<twilightforest:sort_trapdoor>,<aether_legacy:skyroot_trapdoor>]);

val pressurePlateWood = <ore:pressurePlateWood>;
pressurePlateWood.addItems([<aether_legacy:skyroot_pressure_plate>,<betternether:stalagnate_planks_plate>,<betternether:reeds_plate>,<twilightforest:twilight_oak_plate>,<twilightforest:canopy_plate>,<twilightforest:mangrove_plate>,<twilightforest:dark_plate>,<twilightforest:time_plate>,<twilightforest:trans_plate>,<twilightforest:mine_plate>,<twilightforest:sort_plate>]);

val buttonWood = <ore:buttonWood>;
buttonWood.addItems([<aether_legacy:skyroot_button>,<betternether:reeds_button>,<betternether:stalagnate_planks_button>]);

val allStoneSlab = <ore:stoneSlab>;
allStoneSlab.addItems([<minecraft:stone_slab:*>, <undergroundbiomes:igneous_stone_halfslab:*>, <undergroundbiomes:metamorphic_stone_halfslab:*>, <undergroundbiomes:igneous_cobble_halfslab:*>, <undergroundbiomes:metamorphic_cobble_halfslab:*>, <undergroundbiomes:sedimentary_stone_halfslab:*>, <quark:sandstone_smooth_slab:*>, <quark:red_sandstone_smooth_slab:*>, <biomesoplenty:other_slab:1>, <minecraft:stone_slab2:*>, <aether_legacy:holystone_slab:*>, <aether_legacy:mossy_holystone_slab:*>, <quark:fire_stone_slab:*>, <quark:icy_stone_slab:*>, <quark:cobbed_stone_slab:*>, <quark:soul_sandstone_slab:*>, <minecraft:purpur_slab:*>, <aether_legacy:carved_slab:*>, <aether_legacy:angelic_slab:*>, <aether_legacy:hellfire_slab:*>, <aether_legacy:holystone_brick_slab:*>, <betternether:nether_brick_tile_slab_half:*>, <netherex:red_nether_brick_slab:*>, <netherex:gloomy_nether_brick_slab:*>, <netherex:lively_nether_brick_slab:*>, <netherex:fiery_nether_brick_slab:*>, <netherex:icy_nether_brick_slab:*>, <netherex:basalt_slab:*>, <netherex:smooth_basalt_slab:*>, <netherex:basalt_brick_slab:*>, <netherex:basalt_pillar_slab:*>, <quark:biotite_slab:*>, <quark:fire_stone_brick_slab:*>, <quark:icy_stone_brick_slab:*>, <quark:elder_prismarine_slab:*>, <quark:elder_prismarine_bricks_slab:*>, <quark:elder_prismarine_dark_slab:*>, <quark:sandstone_bricks_slab:*>, <quark:red_sandstone_bricks_slab:*>, <quark:soul_sandstone_smooth_slab:*>, <quark:soul_sandstone_bricks_slab:*>, <quark:sandy_bricks_slab:*>, <quark:stone_granite_slab:*>, <quark:stone_diorite_slab:*>, <quark:stone_andesite_slab:*>, <quark:end_bricks_slab:*>, <quark:prismarine_slab:*>, <quark:prismarine_bricks_slab:*>, <quark:prismarine_dark_slab:*>, <quark:cobblestone_mossy_slab:*>, <quark:stonebrick_mossy_slab:*>, <quark:charred_nether_brick_slab:*>, <quark:stone_granite_bricks_slab:*>, <quark:stone_diorite_bricks_slab:*>, <quark:stone_andesite_bricks_slab:*>, <quark:midori_block_slab:*>, <quark:magma_bricks_slab:*>, <quark:duskbound_block_slab:*>, <quark:polished_netherrack_bricks_slab:*>, <undergroundbiomes:igneous_brick_halfslab:*>, <undergroundbiomes:metamorphic_brick_halfslab:*>]);

val StoneHugeBrick = <ore:StoneHugeBrick>;
StoneHugeBrick.addItems([<undergroundbiomes:igneous_brick:2>,<undergroundbiomes:igneous_brick:3>,<undergroundbiomes:igneous_brick:4>,<undergroundbiomes:igneous_brick:5>,<undergroundbiomes:igneous_brick:6>,<undergroundbiomes:igneous_brick:7>,<undergroundbiomes:metamorphic_brick>,<undergroundbiomes:metamorphic_brick:2>,<undergroundbiomes:metamorphic_brick:3>,<undergroundbiomes:metamorphic_brick:5>,<undergroundbiomes:metamorphic_brick:6>,<minecraft:stonebrick>,<quark:biome_brick>,<quark:world_stone_bricks>,<quark:world_stone_bricks:1>,<undergroundbiomes:metamorphic_brick:7>,<quark:biome_brick:1>,<quark:world_stone_bricks:2>,<undergroundbiomes:igneous_brick:1>,<undergroundbiomes:metamorphic_brick:1>,<undergroundbiomes:igneous_brick>,<undergroundbiomes:metamorphic_brick:4>]);

val toolAxe = <ore:toolAxe>;
toolAxe.addItems([<minecraft:wooden_axe:*>,<aether_legacy:holystone_axe:*>,<aether_legacy:zanite_axe:*>,<aether_legacy:gravitite_axe:*>,<aether_legacy:valkyrie_axe:*>,<atop:mud_axe:*>,<betterwithmods:steel_axe:*>,<mowziesmobs:wrought_axe:*>,<netherex:frosted_amedian_axe:*>,<simpleores:copper_axe:*>,<simpleores:mythril_axe:*>,<simpleores:adamantium_axe:*>,<simpleores:onyx_axe:*>,<twilightforest:ironwood_axe:*>,<twilightforest:steeleaf_axe:*>,<twilightforest:minotaur_axe_gold:*>,<twilightforest:minotaur_axe:*>,<twilightforest:knightmetal_axe:*>,<spartancompat:battleaxe_onyx:*>,<spartancompat:battleaxe_holystone:*>,<spartancompat:battleaxe_zanite:*>,<spartancompat:battleaxe_gravitite:*>,<spartancompat:battleaxe_soulforged_steel:*>,<spartanfire:battleaxe_dragonbone:*>,<spartanfire:battleaxe_fire_dragonbone:*>,<spartanfire:battleaxe_ice_dragonbone:*>,<spartanfire:battleaxe_jungle:*>,<spartanfire:battleaxe_desert:*>,<spartanfire:battleaxe_jungle_venom:*>,<spartanfire:battleaxe_desert_venom:*>,<spartanfire:battleaxe_ice_dragonsteel:*>,<spartanfire:battleaxe_fire_dragonsteel:*>,<spartanweaponry:battleaxe_stone:*>,<spartanweaponry:battleaxe_iron:*>,<spartanweaponry:battleaxe_gold:*>,<spartanweaponry:battleaxe_diamond:*>,<spartanweaponry:battleaxe_bronze:*>,<spartanweaponry:battleaxe_silver:*>]);

val hammerTool = <ore:hammerTool>;
hammerTool.addItems([<aether_legacy:notch_hammer:*>,<pyrotech:stone_hammer:*>,<pyrotech:iron_hammer:*>,<pyrotech:diamond_hammer:*>,<pyrotech:obsidian_hammer:*>]);

val shears = <ore:shears>;
shears.addItems([<minecraft:shears>, <ceramics:clay_shears>, <cyclicmagic:shears_obsidian>, <simpleores:mythril_shears>, <simpleores:adamantium_shears>, <simpleores:onyx_shears>]);

val anvilAny = <ore:anvilAny>;
anvilAny.addItems([<minecraft:anvil>,<betterwithmods:steel_anvil>,<pyrotech:anvil_granite>]);

val vine = <ore:vine>;
vine.addItems([<biomesoplenty:willow_vine>,<biomesoplenty:ivy>]);

val twine = <ore:twine>;
twine.add(<betterwithmods:material:3>);

val durableFiber = <ore:durableFiber>;
durableFiber.addAll(<ore:fiberHemp>);
durableFiber.add(<betterwithmods:material:3>);
durableFiber.add(<pyrotech:material:26>);

val genericMetal = <ore:genericMetal>;
genericMetal.addAll(<ore:ingotCopper>);
genericMetal.addAll(<ore:ingotTin>);
genericMetal.addAll(<ore:ingotIron>);
genericMetal.addAll(<ore:ingotBronze>);
genericMetal.addAll(<ore:ingotSilver>);
genericMetal.addAll(<ore:ingotSteel>);

val wolfCape = <ore:wolfCape>;
wolfCape.addItems([<betteranimalsplus:wolf_cape_classic>,<betteranimalsplus:wolf_cape_timber>,<betteranimalsplus:wolf_cape_black>,<betteranimalsplus:wolf_cape_arctic>,<betteranimalsplus:wolf_cape_red>,<betteranimalsplus:wolf_cape_brown>]);

val bearCape = <ore:bearCape>;
bearCape.addItems([<betteranimalsplus:bear_cape_brown>,<betteranimalsplus:bear_cape_black>,<betteranimalsplus:bear_cape_kermode>]);

val fang = <ore:fang>;
fang.addItems([<mod_lavacow:sharptooth>,<mowziesmobs:naga_fang>,<iceandfire:sea_serpent_fang>,<netherex:coolmar_spider_fang>]);

val coal = <ore:gemCoal>;
coal.addItems([<minecraft:coal>,<betterwithmods:material:1>]);

val cokedust = <ore:dustCoalCoke>;
cokedust.add(<pyrotech:material:32>);

val fuelcoke = <ore:fuelCoke>;
fuelcoke.add(<pyrotech:material:32>);

val carbon = <ore:dustRichCarbon>;
carbon.add(<pyrotech:material:32>);

val qualityGem = <ore:Gem_highQuality>;
qualityGem.addItems([<aether_legacy:zanite_gemstone>,<quark:biotite>]);
qualityGem.addAll(<ore:gemOnyx>);
qualityGem.add(<rotn_blocks:exorite_crystal>);

val gemAmethyst = <ore:gemAmethyst>;
gemAmethyst.add(<netherex:amethyst_crystal>);

val blockGravitite = <ore:blockGravitite>;
blockGravitite.addAll(<ore:blockEnchantedGravitite>);

val heartCrystalOre = <ore:oreHeartCrystal>;
heartCrystalOre.add(<scalinghealth:crystalore>);

val viridiumOre = <ore:oreViridium>;
viridiumOre.add(<simpleores:adamantium_ore>);
viridiumOre.addAll(<ore:oreAdamantium>);

val viridiumIngot = <ore:ingotViridium>;
viridiumIngot.add(<simpleores:adamantium_ingot>);
viridiumIngot.addAll(<ore:ingotAdamantium>);

val biotiteOre = <ore:oreBiotite>;
biotiteOre.add(<quark:biotite_ore>);

val redstone = <ore:gemRedstone>;
redstone.add(<minecraft:redstone>);

val hellfireIngot = <ore:ingotHellfire>;
hellfireIngot.addAll(<ore:ingotConcentratedHellfire>);

val arrowSfS = <ore:arrowSoulforgedSteel>;
arrowSfS.remove(<betterwithmods:material:43>);
arrowSfS.add(<betterwithaddons:material:0>);

val glue = <ore:glue>;
glue.addItems([<mod_lavacow:silky_sludge>,<mod_lavacow:holy_sludge>]);

val flower = <ore:flower>;
flower.addItems([<biomesoplenty:flower_0:*>,<biomesoplenty:plant_1:10>,<biomesoplenty:double_plant:0>,<iceandfire:fire_lily>,<iceandfire:frost_lily>,<futuremc:lily_of_the_valley>,<futuremc:cornflower>,<aether_legacy:purple_flower>,<aether_legacy:white_flower>,<minecraft:double_plant:0>,<minecraft:double_plant:1>,<minecraft:double_plant:4>,<minecraft:double_plant:5>,<biomesoplenty:flower_1:*>]);

val pixieJar = <ore:jarPixieAny>;
pixieJar.addItems([<iceandfire:jar_pixie>,<iceandfire:jar_pixie:1>,<iceandfire:jar_pixie:2>,<iceandfire:jar_pixie:3>,<iceandfire:jar_pixie:4>]);

val mushroom = <ore:mushroomAny>;
mushroom.addItems([<biomesoplenty:mushroom>,<biomesoplenty:mushroom:1>,<biomesoplenty:mushroom:2>,<biomesoplenty:mushroom:3>,<biomesoplenty:mushroom:4>,<harvestcraft:whitemushroomitem>,<rustic:deathstalk_mushroom>,<rustic:mooncap_mushroom>,<netherex:brown_elder_mushroom>,<netherex:red_elder_mushroom>,<betternether:orange_mushroom>]);

for item in mushroom.items{
    if(!(<ore:listAllmushroom> has item)){
        <ore:listAllmushroom>.add(item);
    }
}

val stewCondiment = <ore:listAllStewcondiment>;
stewCondiment.add(<harvestcraft:onionitem>,<harvestcraft:bellpepperitem>,<minecraft:carrot>,<harvestcraft:cornitem>,<harvestcraft:scallionitem>,<harvestcraft:leekitem>);

val foodJelly = <ore:foodJelly>;
foodJelly.addItems([<harvestcraft:grapejellyitem>,<harvestcraft:applejellyitem>,<harvestcraft:blackberryjellyitem>,<harvestcraft:blueberryjellyitem>,<harvestcraft:cherryjellyitem>,<harvestcraft:cranberryjellyitem>,<harvestcraft:kiwijellyitem>,<harvestcraft:lemonjellyitem>,<harvestcraft:limejellyitem>,<harvestcraft:mangojellyitem>,<harvestcraft:orangejellyitem>,<harvestcraft:papayajellyitem>,<harvestcraft:peachjellyitem>,<harvestcraft:pomegranatejellyitem>,<harvestcraft:raspberryjellyitem>,<harvestcraft:starfruitjellyitem>,<harvestcraft:strawberryjellyitem>,<harvestcraft:watermelonjellyitem>,<harvestcraft:apricotjellyitem>,<harvestcraft:figjellyitem>,<harvestcraft:grapefruitjellyitem>,<harvestcraft:persimmonjellyitem>,<harvestcraft:gooseberryjellyitem>,<harvestcraft:pearjellyitem>,<harvestcraft:plumjellyitem>,<harvestcraft:pepperjellyitem>]);

val tuber = <ore:listAllTuber>;
tuber.addAll(<ore:listAllrootveggie>);
tuber.add(<minecraft:potato>,<harvestcraft:beetitem>,<minecraft:beetroot>,<inspirations:edibles>,<pyrotech:strange_tuber>,<quark:root>,<rustic:marsh_mallow>,<rustic:ginseng>,<rustic:core_root>,<twilightforest:liveroot>);

val rawBeef = <ore:listAllbeefraw>;
rawBeef.add(<twilightforest:raw_meef>);
rawBeef.remove(<harvestcraft:groundbeefitem>);

val cookedBeef = <ore:listAllbeefcooked>;
cookedBeef.add(<twilightforest:cooked_meef>);

val rawChicken = <ore:listAllchickenraw>;
rawChicken.addItems([<primitivemobs:dodo>,<animania:raw_prime_chicken>,<animania:raw_peacock>,<animania:raw_prime_peacock>,<aether_legacy:cockatrice>,<aether_legacy:enchanted_cockatrice>]);
rawChicken.remove(<harvestcraft:groundchickenitem>);

val cookedChicken = <ore:listAllchickencooked>;
cookedChicken.addItems([<primitivemobs:cooked_dodo>,<animania:cooked_prime_chicken>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<aether_legacy:cooked_enchanted_cockatrice>]);

val rawMutton = <ore:listAllmuttonraw>;
rawMutton.add(<animania:raw_prime_mutton>);
rawMutton.remove(<harvestcraft:groundmuttonitem>);

val cookedMutton = <ore:listAllmuttoncooked>;
cookedMutton.add(<animania:cooked_prime_mutton>);

val rawFrog = <ore:listAllfrograw>;
rawFrog.addItems([<animania:raw_frog_legs>,<harvestcraft:frograwitem>]);

val cookedFrog = <ore:listAllfrogcooked>;
cookedFrog.addItems([<animania:cooked_frog_legs>,<harvestcraft:frogcookeditem>]);

val rawCrab = <ore:foodCrabraw>;
rawCrab.addItems([<betteranimalsplus:crab_meat_raw>,<mod_lavacow:mimic_claw>,<quark:crab_leg>]);

val cookedCrab = <ore:foodCrabcooked>;
cookedCrab.addItems([<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<quark:cooked_crab_leg>]);

val rawFish = <ore:listAllfishraw>;
rawFish.addItems([<harvestcraft:crabrawitem>,<mod_lavacow:piranha>,<mod_lavacow:cheirolepis>,<betteranimalsplus:eel_meat_raw>]);
rawFish.addAll(<ore:rawCrab>);
rawFish.remove(<harvestcraft:groundfishitem>);

val cookedFish = <ore:listAllfishcooked>;
cookedFish.addItems([<harvestcraft:crabcookeditem>,<mod_lavacow:piranha_cooked>,<mod_lavacow:cheirolepis_cooked>,<betteranimalsplus:eel_meat_cooked>]);
cookedFish.addAll(<ore:cookedCrab>);
cookedFish.remove(<mod_lavacow:zombiepiranha_item_cooked>);

val fish = <ore:fish>;
fish.addAll(<ore:listAllfishraw>);

val rawDuck = <ore:listAllduckraw>;
rawDuck.remove(<harvestcraft:groundduckitem>);

val rawVenison = <ore:listAllvenisonraw>;
rawVenison.add(<twilightforest:raw_venison>);
rawVenison.add(<betteranimalsplus:venisonraw>);
rawVenison.add(<harvestcraft:venisonrawitem>);
rawVenison.addAll(<ore:rawVenison>);
rawVenison.remove(<harvestcraft:groundvenisonitem>);

val cookedVenison = <ore:listAllvenisoncooked>;
cookedVenison.add(<twilightforest:cooked_venison>);
cookedVenison.add(<betteranimalsplus:venisoncooked>);
cookedVenison.add(<harvestcraft:venisoncookeditem>);
cookedVenison.addAll(<ore:cookedVenison>);

val rawRabbit = <ore:listAllrabbitraw>;
rawRabbit.remove(<harvestcraft:groundrabbititem>);

val rawPork = <ore:listAllporkraw>;
rawPork.remove(<harvestcraft:groundporkitem>);

val rawTurkey = <ore:listAllturkeyraw>;
rawTurkey.add(<betteranimalsplus:turkey_leg_raw>);
rawTurkey.remove(<harvestcraft:groundturkeyitem>);

val cookedTurkey = <ore:listAllturkeycooked>;
cookedTurkey.add(<betteranimalsplus:turkey_leg_cooked>);

val egg = <ore:listAllegg>;
egg.addItems([<betterwithmods:raw_egg>,<aether_legacy:moa_egg>]);

val rawMeat = <ore:listAllmeatraw>;
rawMeat.addItems([<betterwithmods:mystery_meat>,<betterwithmods:bat_wing>,<mod_lavacow:mousse>,<mod_lavacow:canepork>,<betterwithmods:wolf_chop>,<betteranimalsplus:eel_meat_raw>]);
rawMeat.addAll(rawBeef);
rawMeat.addAll(rawChicken);
rawMeat.addAll(rawMutton);
rawMeat.addAll(rawFrog);
rawMeat.addAll(rawFish);
rawMeat.addAll(rawVenison);
rawMeat.remove([<mod_lavacow:ptera_wing>,<mod_lavacow:plagued_porkchop>]);

val cookedMeat = <ore:listAllmeatcooked>;
cookedMeat.addItems([<betterwithmods:cooked_mystery_meat>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:meatball>,<betterwithmods:cooked_wolf_chop>,<betteranimalsplus:eel_meat_cooked>]);
cookedMeat.addAll(cookedBeef);
cookedMeat.addAll(cookedChicken);
cookedMeat.addAll(cookedMutton);
cookedMeat.addAll(cookedFrog);
cookedMeat.addAll(cookedFish);
cookedMeat.addAll(cookedVenison);
cookedMeat.remove([<mod_lavacow:moltenbeef>,<mod_lavacow:ptera_wing_cooked>]);

val BaconEggs = <ore:foodBaconandeggs>;
BaconEggs.remove(<mod_lavacow:green_bacon_and_eggs>);

val Mushroom = <ore:listAllmushroom>;
Mushroom.remove([<mod_lavacow:glowshroom>,<mod_lavacow:bloodtooth_shroom>,<mod_lavacow:cordy_shroom>,<mod_lavacow:veil_shroom>,<mod_lavacow:glowshroom_block_stem>,<mod_lavacow:glowshroom_block_cap>]);

val glassShards = <ore:shardGlass>;
glassShards.add(<quark:glass_shards:*>);

val water = <ore:listAllwater>;
water.addItems([<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "water", Amount: 1000}}),<aether_legacy:skyroot_bucket:1>]);

val small_knife = <ore:smallKnife>;
small_knife.addItems([<animania:carving_knife>,<spartanweaponry:dagger_iron>,<spartanweaponry:dagger_bronze>,<spartanweaponry:dagger_gold>,<spartanweaponry:dagger_silver>,<spartanweaponry:dagger_diamond>,<spartancompat:dagger_holystone>,<spartancompat:dagger_zanite>,<spartancompat:dagger_gravitite>,<spartancompat:dagger_adamantium>,<spartanfire:dagger_dragonbone>,<spartanfire:dagger_fire_dragonbone>,<spartanfire:dagger_ice_dragonbone>,<spartanfire:dagger_jungle>,<spartanfire:dagger_desert>,<spartanfire:dagger_jungle_venom>,<spartanfire:dagger_desert_venom>,<spartanfire:dagger_ice_dragonsteel>,<spartanfire:dagger_fire_dragonsteel>,<mod_lavacow:famine>,<iceandfire:stymphalian_bird_dagger>]);

val nitrogen = <ore:mulchNitrogen>;
nitrogen.addAll(<ore:listAllmeat>);
nitrogen.addAll(<ore:listAllbeefraw>);
nitrogen.addAll(<ore:listAllmeatraw>);

val foundryclay = <ore:foundryClayblock>;
foundryclay.add(<contenttweaker:unfiredrefractory>);

val refracotta = <ore:refracotta>;
refracotta.addItems([<contenttweaker:refracotta>,<contenttweaker:refracotta_gray>,<contenttweaker:refracotta_yellow>,<contenttweaker:refracotta_cyan>,<contenttweaker:refracotta_magenta>,<contenttweaker:refracotta_lime>,<contenttweaker:refracotta_white>,<contenttweaker:refracotta_pink>,<contenttweaker:refracotta_brown>,<contenttweaker:refracotta_light_blue>,<contenttweaker:refracotta_red>,<contenttweaker:refracotta_green>,<contenttweaker:refracotta_blue>,<contenttweaker:refracotta_black>,<contenttweaker:refracotta_purple>,<contenttweaker:refracotta_light_gray>,<contenttweaker:refracotta_orange>]);

val copperBlock = <ore:blockCopper>;
copperBlock.addItems([<rotn_blocks:copper_block>,<rotn_blocks:slightly_weathered_copper_block>,<rotn_blocks:semi_wheatered_copper_block>,<rotn_blocks:weathered_copper_block>,<simpleores:copper_block>]);

val bronzeBlock = <ore:blockBronze>;
bronzeBlock.add(<contenttweaker:block_bronze>);

val electrumBlock = <ore:blockElectrum>;
electrumBlock.add(<contenttweaker:block_electrum>);

val anyAsh = <ore:dustAsh>;
anyAsh.add(<biomesoplenty:ash>);

val componentWheel = <ore:componentWheel>;
componentWheel.addItems([<animania:wheel>,<betterwithmods:material:0>,<betterwithmods:material:48>,<pyrotech:cog_bone>]);

val scaleChestplate = <ore:scaleChestplate>;
scaleChestplate.addItems([<iceandfire:armor_red_chestplate>,<iceandfire:armor_green_chestplate>,<iceandfire:armor_bronze_chestplate>,<iceandfire:armor_gray_chestplate>]);

val scaleHelmet = <ore:scaleHelmet>;
scaleHelmet.addItems([<iceandfire:armor_red_helmet>,<iceandfire:armor_green_helmet>,<iceandfire:armor_bronze_helmet>,<iceandfire:armor_gray_helmet>]);

val scaleLeggings = <ore:scaleLeggings>;
scaleLeggings.addItems([<iceandfire:armor_red_leggings>,<iceandfire:armor_green_leggings>,<iceandfire:armor_bronze_leggings>,<iceandfire:armor_gray_leggings>]);

val scaleBoots = <ore:scaleBoots>;
scaleBoots.addItems([<iceandfire:armor_red_boots>,<iceandfire:armor_green_boots>,<iceandfire:armor_bronze_boots>,<iceandfire:armor_gray_boots>]);

val scaleLightChestplate = <ore:scaleLightChestplate>;
scaleLightChestplate.addItems([<iceandfire:armor_blue_chestplate>,<iceandfire:armor_white_chestplate>,<iceandfire:armor_sapphire_chestplate>,<iceandfire:armor_silver_chestplate>]);

val scaleLightHelmet = <ore:scaleLightHelmet>;
scaleLightHelmet.addItems([<iceandfire:armor_blue_helmet>,<iceandfire:armor_white_helmet>,<iceandfire:armor_sapphire_helmet>,<iceandfire:armor_silver_helmet>]);

val scaleLightLeggings = <ore:scaleLightLeggings>;
scaleLightLeggings.addItems([<iceandfire:armor_blue_leggings>,<iceandfire:armor_white_leggings>,<iceandfire:armor_sapphire_leggings>,<iceandfire:armor_silver_leggings>]);

val scaleLightBoots = <ore:scaleLightBoots>;
scaleLightBoots.addItems([<iceandfire:armor_blue_boots>,<iceandfire:armor_white_boots>,<iceandfire:armor_sapphire_boots>,<iceandfire:armor_silver_boots>]);



val trollChestplate = <ore:trollChestplate>;
trollChestplate.addItems([<iceandfire:mountain_troll_leather_chestplate>,<iceandfire:forest_troll_leather_chestplate>,<iceandfire:frost_troll_leather_chestplate>]);

val trollHelmet = <ore:trollHelmet>;
trollHelmet.addItems([<iceandfire:mountain_troll_leather_helmet>,<iceandfire:forest_troll_leather_helmet>,<iceandfire:frost_troll_leather_helmet>]);

val trollLeggings = <ore:trollLeggings>;
trollLeggings.addItems([<iceandfire:mountain_troll_leather_leggings>,<iceandfire:forest_troll_leather_leggings>,<iceandfire:frost_troll_leather_leggings>]);

val trollBoots = <ore:trollBoots>;
trollBoots.addItems([<iceandfire:mountain_troll_leather_boots>,<iceandfire:forest_troll_leather_boots>,<iceandfire:frost_troll_leather_boots>]);


val deathWormChestplate = <ore:deathWormChestplate>;
deathWormChestplate.addItems([<iceandfire:deathworm_yellow_chestplate>,<iceandfire:deathworm_white_chestplate>,<iceandfire:deathworm_red_chestplate>]);

val deathWormHelmet = <ore:deathWormHelmet>;
deathWormHelmet.addItems([<iceandfire:deathworm_yellow_helmet>,<iceandfire:deathworm_white_helmet>,<iceandfire:deathworm_red_helmet>]);

val deathWormLeggings = <ore:deathWormLeggings>;
deathWormLeggings.addItems([<iceandfire:deathworm_yellow_leggings>,<iceandfire:deathworm_white_leggings>,<iceandfire:deathworm_red_leggings>]);

val deathWormBoots = <ore:deathWormBoots>;
deathWormBoots.addItems([<iceandfire:deathworm_yellow_boots>,<iceandfire:deathworm_white_boots>,<iceandfire:deathworm_red_boots>]);


val tideChestplate = <ore:tideChestplate>;
tideChestplate.addItems([<iceandfire:tide_blue_chestplate>,<iceandfire:tide_bronze_chestplate>,<iceandfire:tide_green_chestplate>,<iceandfire:tide_red_chestplate>,<iceandfire:tide_purple_chestplate>,<iceandfire:tide_teal_chestplate>]);

val tideHelmet = <ore:tideHelmet>;
tideHelmet.addItems([<iceandfire:tide_blue_helmet>,<iceandfire:tide_bronze_helmet>,<iceandfire:tide_green_helmet>,<iceandfire:tide_red_helmet>,<iceandfire:tide_purple_helmet>,<iceandfire:tide_teal_helmet>]);

val tideLeggings = <ore:tideLeggings>;
tideLeggings.addItems([<iceandfire:tide_blue_leggings>,<iceandfire:tide_bronze_leggings>,<iceandfire:tide_green_leggings>,<iceandfire:tide_red_leggings>,<iceandfire:tide_purple_leggings>,<iceandfire:tide_teal_leggings>]);

val tideBoots = <ore:tideBoots>;
tideBoots.addItems([<iceandfire:tide_blue_boots>,<iceandfire:tide_bronze_boots>,<iceandfire:tide_green_boots>,<iceandfire:tide_red_boots>,<iceandfire:tide_purple_boots>,<iceandfire:tide_teal_boots>]);


val myrmexChestplate = <ore:myrmexChestplate>;
myrmexChestplate.addItems([<iceandfire:myrmex_jungle_chestplate>,<iceandfire:myrmex_desert_chestplate>]);

val myrmexHelmet = <ore:myrmexHelmet>;
myrmexHelmet.addItems([<iceandfire:myrmex_jungle_helmet>,<iceandfire:myrmex_desert_helmet>]);

val myrmexLeggings = <ore:myrmexLeggings>;
myrmexLeggings.addItems([<iceandfire:myrmex_jungle_leggings>,<iceandfire:myrmex_desert_leggings>]);

val myrmexBoots = <ore:myrmexBoots>;
myrmexBoots.addItems([<iceandfire:myrmex_jungle_boots>,<iceandfire:myrmex_desert_boots>]);

val runes = <ore:runeItem>;
runes.addItems([<contenttweaker:fae_rune>,<contenttweaker:chaos_rune>,<contenttweaker:mind_rune>,<contenttweaker:balance_rune>,<contenttweaker:water_rune>,<contenttweaker:creation_rune>,<contenttweaker:holding_rune>,<contenttweaker:order_rune>,<contenttweaker:nature_rune>,<contenttweaker:plague_rune>,<contenttweaker:illusion_rune>,<contenttweaker:trans_rune>,<contenttweaker:air_rune>,<contenttweaker:knowledge_rune>,<contenttweaker:disint_rune>,<contenttweaker:draconic_rune>,<contenttweaker:blank_rune>,<contenttweaker:strength_rune>,<contenttweaker:aether_rune>,<contenttweaker:luna_rune>,<contenttweaker:poison_rune>,<contenttweaker:energy_rune>,<contenttweaker:sol_rune>,<contenttweaker:nether_rune>,<contenttweaker:life_rune>,<contenttweaker:time_rune>,<contenttweaker:fire_rune>,<contenttweaker:soul_rune>,<contenttweaker:death_rune>,<contenttweaker:earth_rune>,<contenttweaker:arcane_rune>,<endreborn:item_end_rune>,<quark:rune>]
);


// ContentTweaker extra blocks recipes
//All Lunarin bricks
recipes.remove(<villagenames:lunaringoldbrick>);
recipes.remove(<villagenames:lunarinironbrick>);
recipes.removeByRecipeName("villagenames:lunaringoldbrick_toingots");
recipes.removeByRecipeName("villagenames:lunarinironbrick_toingots");

recipes.addShapeless("lunarin iron", <villagenames:lunarinironbrick>*24,
	[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>,<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]
);
recipes.addShapeless("lunarin bronze", <contenttweaker:lunarinbronzebrick>*24,
 [<ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>]
);
recipes.addShapeless("lunarin silver", <contenttweaker:lunarinsilverbrick>*24,
	[<ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>]
);
recipes.addShapeless("lunarin gold", <villagenames:lunaringoldbrick>*24,
	[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]
);
recipes.addShapeless("lunarin viridium", <contenttweaker:lunarinviridiumbrick>*24,
	[<ore:ingotViridium>, <ore:ingotViridium>, <ore:ingotViridium>,<ore:ingotViridium>, <ore:ingotViridium>, <ore:ingotViridium>]
);
recipes.addShapeless("lunarin mythril", <contenttweaker:lunarinmythrilbrick>*24,
	[<ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>]
);
recipes.addShapeless("lunarin endorium", <contenttweaker:lunarinendoriumbrick>*24,
	[<endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>, <endreborn:item_ingot_endorium>]
);
recipes.addShapeless("lunarin steel", <contenttweaker:lunarinsteelbrick>*24,
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>]
);
/*recipes.addShapeless("lunarin_SFS", <contenttweaker:lunarinsfsbrick>*24,
	[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>]
);
*/
mods.betterwithmods.Anvil.addShapeless(<contenttweaker:lunarinsfsbrick>*24, 
[<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>]
);

recipes.addShapeless("lunarin_crystal_heart", <contenttweaker:lunarinheartbrick>*24,
	[<scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>, <scalinghealth:crystalshard>]
);
recipes.addShapeless("lunarin_fiery", <contenttweaker:lunarinfierybrick>*24,
	[<ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>]
);
//Farlander
recipes.addShapeless("farlander_exorite", <contenttweaker:farlanderexoritebrick>*24,
	[<rotn_blocks:exorite_crystal>, <rotn_blocks:exorite_crystal>, <rotn_blocks:exorite_crystal>, <rotn_blocks:exorite_crystal>, <rotn_blocks:exorite_crystal>, <rotn_blocks:exorite_crystal>]
);
recipes.addShapeless("farlander_zanite", <contenttweaker:farlanderzanitebrick>*24,
	[<ore:gemZanite>, <ore:gemZanite>, <ore:gemZanite>, <ore:gemZanite>, <ore:gemZanite>, <ore:gemZanite>]
);
recipes.addShapeless("farlander_diamond", <contenttweaker:farlanderdiamondbrick>*24,
	[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]
);
//Other
recipes.addShapeless("witheredblock_to_dust>", <quark:black_ash>*9, 
   [<contenttweaker:witheredblock>]
);
recipes.addShaped("dust_to_witheredblock", <contenttweaker:witheredblock>,[
	[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    	[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>],
    	[<quark:black_ash>, <quark:black_ash>, <quark:black_ash>]
]);
recipes.addShaped("HBBB", <contenttweaker:baguettebrick>,[
	[<dungeontactics:toast>, <dungeontactics:toast>],
    [<dungeontactics:toast>, <dungeontactics:toast>]
]);
//L'egg recipe is in inspirations.zs

// Enchanting Table change

recipes.remove(<minecraft:enchanting_table>);
RecipeBuilder.get("mage")
  .setName("enchanting_table")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:book>, <contenttweaker:vis_speck>],
    [<ore:gemDiamond>, <nyx:fallen_star>, <ore:gemDiamond>], 
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]])
  .addOutput(<minecraft:enchanting_table>)
  .addTool(<contenttweaker:luna_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.addShapeless("broken_stick", <contenttweaker:broken_stick> * 2, [<minecraft:stick>]);
recipes.addShapeless("broken_stick_to_stick", <minecraft:stick>, [<contenttweaker:broken_stick>, <contenttweaker:broken_stick>, <ore:glue> | <ore:slimeball>]);
