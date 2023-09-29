import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("pyrotech");
recipes.removeByMod("pyrotech_compat");
recipes.remove(<pyrotech:crude_hammer>);
recipes.remove(<pyrotech:bone_hammer>);
recipes.remove(<pyrotech:flint_hammer>);
recipes.remove(<pyrotech:gold_hammer>);
recipes.remove(<pyrotech:obsidian_hammer>);
recipes.remove(<pyrotech:bag_durable>);
recipes.remove(<pyrotech:drying_rack>);
recipes.remove(<pyrotech:mechanical_hopper>);
recipes.remove(<pyrotech:mechanical_bellows>);
recipes.remove(<pyrotech:mechanical_compacting_bin>);
recipes.remove(<pyrotech:mechanical_mulch_spreader>);
recipes.remove(<pyrotech:bellows>);
recipes.remove(<pyrotech:rock:*>);
JEI.removeAndHide(<pyrotech:sawmill_blade_stone>);
JEI.removeAndHide(<pyrotech:sawmill_blade_flint>);
JEI.removeAndHide(<pyrotech:sawmill_blade_bone>);
recipes.remove(<pyrotech:sawmill_blade_iron>);
JEI.removeAndHide(<pyrotech:sawmill_blade_gold>);
JEI.removeAndHide(<pyrotech:sawmill_blade_diamond>);
JEI.removeAndHide(<pyrotech:sawmill_blade_obsidian>);
recipes.remove(<pyrotech:wood_tar_block>);
recipes.remove(<pyrotech:living_tar>);
recipes.remove(<pyrotech:mushroom_brown_roasted>);
recipes.remove(<pyrotech:mushroom_red_roasted>);
/* JEI.removeAndHide(<pyrotech:apple_baked>); */
recipes.remove(<pyrotech:burned_food>);
recipes.remove(<pyrotech:iron_hammer>);
recipes.remove(<pyrotech:shelf_stone>);
recipes.remove(<pyrotech:crate>);
recipes.remove(<pyrotech:crate_stone>);
recipes.remove(<pyrotech:chopping_block>);
recipes.remove(<pyrotech:worktable>);
recipes.remove(<pyrotech:tinder>);
recipes.remove(<pyrotech:campfire>);
recipes.remove(<pyrotech:kiln_pit>);
recipes.remove(<pyrotech:bucket_clay_unfired>);
recipes.remove(<pyrotech:bucket_clay>);
recipes.remove(<pyrotech:stash_stone>);
recipes.remove(<pyrotech:wood_rack>);
JEI.removeAndHide(<pyrotech:cog_stone>);
JEI.removeAndHide(<pyrotech:cog_flint>);
recipes.remove(<pyrotech:cog_bone>); // SFS gear
JEI.removeAndHide(<pyrotech:cog_iron>);
JEI.removeAndHide(<pyrotech:cog_gold>);
JEI.removeAndHide(<pyrotech:cog_diamond>);
JEI.removeAndHide(<pyrotech:cog_obsidian>);
recipes.remove(<pyrotech:thatch>);
recipes.remove(<pyrotech:limestone>);
recipes.remove(<pyrotech:charcoal_block>);
recipes.remove(<pyrotech:coal_coke_block>);
recipes.remove(<pyrotech:worktable_stone>);
recipes.remove(<pyrotech:beetroot_roasted>);
recipes.remove(<pyrotech:egg_roasted>);
recipes.remove(<pyrotech:carrot_roasted>);
recipes.remove(<pyrotech:pile_ash>);
recipes.remove(<pyrotech:cobblestone:*>);
recipes.remove(<pyrotech:rock_grass>);
recipes.remove(<pyrotech:brick_kiln>);
recipes.remove(<pyrotech:stone_kiln>);
recipes.remove(<pyrotech:stone_crucible>);
JEI.removeAndHide(<pyrotech:stone_sawmill>);
recipes.remove(<pyrotech:brick_crucible>);
JEI.removeAndHide(<pyrotech:brick_sawmill>);
recipes.remove(<pyrotech:compacting_bin>);
recipes.remove(<pyrotech:brick_oven>);
recipes.remove(<pyrotech:drying_rack:1>);
recipes.remove(<pyrotech:tar_drain>);
recipes.remove(<pyrotech:tar_collector>);
recipes.remove(<pyrotech:faucet_stone>);
JEI.removeAndHide(<pyrotech:material:13>);
JEI.removeAndHide(<pyrotech:bow_drill>);
JEI.removeAndHide(<pyrotech:flint_and_tinder>);
JEI.hideCategory("pyrotech.worktable");
JEI.hideCategory("pyrotech.stone.oven");
JEI.hideCategory("pyrotech.stone.crucible");
JEI.hideCategory("pyrotech.brick.mill");
JEI.hideCategory("pyrotech.brick.oven");
JEI.hideCategory("pyrotech.brick.crucible");
JEI.hideCategory("pyrotech.chopping");
JEI.hideCategory("pyrotech.stone.mill");
furnace.remove(<pyrotech:mushroom_red_roasted>);
furnace.remove(<pyrotech:mushroom_brown_roasted>);
/* furnace.remove(<pyrotech:apple_baked>); */
furnace.remove(<pyrotech:carrot_roasted>);
furnace.remove(<pyrotech:egg_roasted>);
furnace.remove(<pyrotech:material:24>);
furnace.remove(<pyrotech:cobblestone:2>);
furnace.remove(<pyrotech:cobblestone:1>);
furnace.remove(<pyrotech:cobblestone:0>);
furnace.remove(<pyrotech:beetroot_roasted>);
furnace.remove(<pyrotech:material:15>);
JEI.removeAndHide(<pyrotech:marshmallow_stick_empty>);
JEI.removeAndHide(<pyrotech:chopping_block>);
JEI.removeAndHide(<pyrotech:material:9>);
JEI.removeAndHide(<pyrotech:igniter>);
JEI.removeAndHide(<pyrotech:bone_hunters_knife>);
JEI.removeAndHide(<pyrotech:flint_hunters_knife>);
JEI.removeAndHide(<pyrotech:stone_hunters_knife>);
JEI.removeAndHide(<pyrotech:iron_hunters_knife>);
JEI.removeAndHide(<pyrotech:gold_hunters_knife>);
JEI.removeAndHide(<pyrotech:diamond_hunters_knife>);
JEI.removeAndHide(<pyrotech:obsidian_hunters_knife>);
JEI.removeAndHide(<pyrotech:bone_butchers_knife>);
JEI.removeAndHide(<pyrotech:flint_butchers_knife>);
JEI.removeAndHide(<pyrotech:stone_butchers_knife>);
JEI.removeAndHide(<pyrotech:iron_butchers_knife>);
JEI.removeAndHide(<pyrotech:gold_butchers_knife>);
JEI.removeAndHide(<pyrotech:diamond_butchers_knife>);
JEI.removeAndHide(<pyrotech:obsidian_butchers_knife>);
JEI.removeAndHide(<pyrotech:flint_arrow>);
JEI.removeAndHide(<pyrotech:bone_arrow>);
JEI.removeAndHide(<pyrotech:crude_spear>);
JEI.removeAndHide(<pyrotech:flint_spear>);
JEI.removeAndHide(<pyrotech:bone_spear>);
JEI.removeAndHide(<pyrotech:barrel_lid>);
JEI.removeAndHide(<pyrotech:material:48>);
JEI.removeAndHide(<pyrotech:material:49>);
JEI.removeAndHide(<pyrotech:material:50>);
JEI.removeAndHide(<pyrotech:material:51>);
JEI.removeAndHide(<pyrotech:material:52>);
JEI.removeAndHide(<pyrotech:material:53>);

// disableItem(<pyrotech:apple_baked>);

//Simplified recipes
val stone = <ore:stone>;
val stoneBrick = <contenttweaker:masonry_brick>;
val clayBrick = <minecraft:brick>;
val refractoryMaterial = <pyrotech:material:4>;
val refractoryBrick = <pyrotech:material:5>;
val dry = <pyrotech:tinder>;
val twine = <pyrotech:material:14>;
val ladder = <minecraft:ladder>;
val hotglass = <sereneseasons:greenhouse_glass>|<betternether:quartz_glass:*>|<betternether:quartz_glass_framed:*>|<netherex:soul_glass>;
val rock = <ore:rock>;
val timber = <earthworks:item_timber>;
val fiber = <pyrotech:material:12>;
val hay_bale = <pyrotech:thatch>;
val pit_kiln = <pyrotech:kiln_pit>;
val leather_sheet = <pyrotech:material:38>;
val leather_strip = <pyrotech:material:39>;
val stick = <ore:stickWood>;
val durable_fiber = <betterwithmods:material:3>;
val durable_twine = <pyrotech:material:26>;
val iron_ingot = <ore:ingotIron>;
val brass_ingot = <contenttweaker:material_part:45>;
val handle = <spartanweaponry:material>;

recipes.addShapeless("pyro_matchstick_broken_stick",<pyrotech:matchstick>,
[<pyrotech:tinder>,<contenttweaker:broken_stick>,<contenttweaker:broken_stick>]);
recipes.addShapeless("pyro_matchstick_sticks",<pyrotech:matchstick>,
[<pyrotech:tinder>,stick,stick]);
recipes.addShaped("dry_to_twine", twine*3,
[[dry,dry,dry]]);
recipes.addShaped("dry_to_hay_bale", hay_bale,
 [[dry,dry,dry],
  [dry,dry,dry],
  [dry,dry,dry]]);
recipes.addShaped("dry_to_pit_kiln", pit_kiln*4,
 [[dry,dry,dry],
  [dry,dry,dry]]);
recipes.addShapeless("ash_conversion", <biomesoplenty:ash>*3,
[<pyrotech:material>]);
recipes.addShapeless("twineToString", <minecraft:string>,[twine,twine,twine]);
recipes.addShaped("pyro_stone_kiln", <pyrotech:stone_kiln>,
 [[clayBrick,null,clayBrick],
  [<ore:mortarCommon>|<biomesoplenty:mudball>,clayBrick,<ore:mortarCommon>|<biomesoplenty:mudball>],
  [clayBrick,null,clayBrick]]);
recipes.addShaped("pyro_stone_anvil", <pyrotech:anvil_granite>,
 [[<ore:stoneSlab>],
  [<ore:stone>]]);
recipes.addShaped("pyro_steel_anvil", <pyrotech:anvil_iron_plated>,
 [[<ore:plateSoulforgedSteel>],
  [<pyrotech:anvil_granite>]]);
recipes.addShaped("pyro_refractory_brick_kiln", <pyrotech:brick_kiln>,
 [[refractoryBrick,null,refractoryBrick],
  [refractoryMaterial,refractoryBrick,refractoryMaterial],
  [refractoryBrick,null,refractoryBrick]]);
recipes.addShaped("pyro_log_pile", <pyrotech:log_pile>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
recipes.addShaped("composting_bin", <pyrotech:compost_bin>,
 [[<earthworks:item_timber>,null,<earthworks:item_timber>],
  [<earthworks:item_timber>,null,<earthworks:item_timber>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
recipes.addShaped("compacting_bin", <pyrotech:compacting_bin>,
 [[<ore:stoneSlab>,<pyrotech:compost_bin>,<ore:stoneSlab>],
  [<ore:stoneSlab>,<ore:slabWood>,<ore:stoneSlab>]]);
recipes.addShaped("mechanical_compacting_bin", <pyrotech:mechanical_compacting_bin>,
 [[null,null,null],
  [<pyrotech:compacting_bin>,<pyrotech:compacting_bin>,<ore:stoneSlab>],
  [<pyrotech:material:36>,<minecraft:piston>,<minecraft:piston>]]);
recipes.addShaped("potash_mulch1", <pyrotech:mulch>*4,
 [[<pyrotech:rock:7>,<biomesoplenty:ash>,<pyrotech:rock:7>],
  [<biomesoplenty:ash>,<ore:mulchNitrogen>,<biomesoplenty:ash>],
  [<pyrotech:rock:7>,<biomesoplenty:ash>,<pyrotech:rock:7>]]);
recipes.addShaped("potash_mulch2", <pyrotech:mulch>*12,
 [[<ore:dustPotash>,<ore:dustPotash>,<ore:dustPotash>],
  [<ore:dustPotash>,<ore:mulchNitrogen>,<ore:dustPotash>],
  [<ore:dustPotash>,<ore:dustPotash>,<ore:dustPotash>]]);
recipes.addShapeless("potash_mulch3", <pyrotech:mulch>*2,[<contenttweaker:mossy_peat>]);
recipes.addShaped("pyro_wooden_bucket", <pyrotech:bucket_wood>,
 [[<ore:plankWood>,<ore:twine>,<ore:plankWood>],
  [null,<ore:logWood>,null]]);
recipes.addShaped("pyro_stone_door", <pyrotech:stone_door>*3,
 [[<contenttweaker:brick_pyrotech_masonry>,<contenttweaker:brick_pyrotech_masonry>],
  [<contenttweaker:brick_pyrotech_masonry>,<contenttweaker:brick_pyrotech_masonry>],
  [<contenttweaker:brick_pyrotech_masonry>,<contenttweaker:brick_pyrotech_masonry>]]);
recipes.addShaped("pyro_refractory_door", <pyrotech:refractory_door>*3,
 [[<contenttweaker:brick_pyrotech_refractory>,<contenttweaker:brick_pyrotech_refractory>],
  [<contenttweaker:brick_pyrotech_refractory>,<contenttweaker:brick_pyrotech_refractory>],
  [<contenttweaker:brick_pyrotech_refractory>,<contenttweaker:brick_pyrotech_refractory>]]);  
recipes.addShaped("pyro_shelf", <pyrotech:shelf>,
 [[<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>]]);
recipes.addShaped("pyro_stash", <pyrotech:stash>,
 [[<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>]]);
recipes.addShaped("pyro_stone_tank", <pyrotech:stone_tank>,
 [[stoneBrick,<minecraft:glass>,stoneBrick],
  [<minecraft:glass>,<ore:slimeball>,<minecraft:glass>],
  [stoneBrick,stoneBrick,stoneBrick]]);
recipes.addShapeless("pyro_stone_tank_clean", <pyrotech:stone_tank>,
 [<pyrotech:stone_tank>]);
recipes.addShaped("pyro_refractory_tank", <pyrotech:brick_tank>,
 [[refractoryBrick,hotglass,refractoryBrick],
  [hotglass,<ore:slimeball>,hotglass],
  [refractoryBrick,hotglass,refractoryBrick]]);
recipes.addShapeless("pyro_refractory_tank_clean", <pyrotech:brick_tank>,
 [<pyrotech:brick_tank>]);
recipes.addShaped("pyro_refractory_glass", <pyrotech:refractory_glass>,
 [[null,refractoryBrick,null],
  [refractoryBrick,hotglass,refractoryBrick],
  [null,refractoryBrick,null]]); 
recipes.addShaped("pyro_refractory_igniter", <pyrotech:igniter:1> ,
 [[refractoryBrick,refractoryBrick,refractoryBrick],
  [<pyrotech:material:36>,<betterwithmods:material:27>,<betterwithmods:material:17>],
  [refractoryBrick,refractoryBrick,refractoryBrick]]);
recipes.addShaped("pyro_refractory_faucet", <pyrotech:faucet_brick>*2,
 [[refractoryBrick,null,refractoryBrick],
  [refractoryMaterial,refractoryBrick,refractoryMaterial]]);
recipes.addShapeless("pyro_refracotrymaterial_slag", refractoryMaterial*2, [<pyrotech:material:8>,<pyrotech:material:8>,<pyrotech:material:8>,<minecraft:clay_ball>]);
recipes.addShapeless("pyro_unfiredlime_lime", <contenttweaker:unfired_refractory_brick>,[refractoryMaterial]);
furnace.remove(<minecraft:stonebrick:2>);
furnace.addRecipe(<contenttweaker:brick_minecraft_stone>, <minecraft:stonebrick:2>, 0.0);
furnace.addRecipe(<minecraft:stonebrick:2>, <contenttweaker:brick_minecraft_stone>, 0.0);
recipes.addShaped("refractoryBlock", <contenttweaker:unfiredrefractory>, 
[[refractoryMaterial, refractoryMaterial],
[refractoryMaterial, refractoryMaterial]]);
recipes.addShapeless("refractoryfromblock", refractoryMaterial*4,[<contenttweaker:unfiredrefractory>]);
furnace.addRecipe(<contenttweaker:refracotta>, <contenttweaker:unfiredrefractory>);
recipes.remove(<pyrotech:soaking_pot>);
recipes.addShaped("soaking_pot", <pyrotech:soaking_pot>,
 [[rock,null,rock],
  [<ore:twine>,rock,<ore:twine>],
  [<ore:plankWood>,twine,<ore:plankWood>]]);
recipes.addShaped("pyro_crude_axe", <pyrotech:crude_axe>,
 [[rock|<minecraft:flint>,stick],
  [stick,null]]);  
recipes.addShaped("crude_fishing_pole", <pyrotech:crude_fishing_rod>,
 [[null,stick],
  [stick,<ore:twine>]]);
recipes.addShaped("quilting_sail", <betterwithmods:material:4>,
 [[<pyrotech:material:26>,null,<pyrotech:material:26>],
  [null,<pyrotech:material:26>,null],
  [<pyrotech:material:26>,null,<pyrotech:material:26>]]);
recipes.addShaped("steel_sawblade", <pyrotech:sawmill_blade_iron>,
 [[<dungeontactics:steel_nugget>,<dungeontactics:steel_ingot>,<dungeontactics:steel_nugget>],
  [<dungeontactics:steel_ingot>,null,<dungeontactics:steel_ingot>],
  [<dungeontactics:steel_nugget>,<dungeontactics:steel_ingot>,<dungeontactics:steel_nugget>]]);
recipes.addShaped("refractory_collector", <pyrotech:tar_collector:1>,
 [[refractoryBrick,null,refractoryBrick],
  [refractoryBrick,null,refractoryBrick],
  [refractoryBrick,refractoryBrick,refractoryBrick]]);
recipes.addShaped("refractory_drain", <pyrotech:tar_drain:1>,
 [[refractoryBrick,refractoryBrick,refractoryBrick],
  [null, null, null],
  [refractoryBrick,refractoryBrick,refractoryBrick]]);
recipes.addShaped("hanging_dryingrack", <pyrotech:drying_rack:0>,
 [[fiber,timber,fiber]]);
recipes.addShaped("standing_dryingrack", <pyrotech:drying_rack:1>,
 [[null,ladder,null],
  [ladder,null,ladder]]);
recipes.addShaped("coalcoke_block", <pyrotech:coal_coke_block>,
[[<pyrotech:material:1>,<pyrotech:material:1>,<pyrotech:material:1>],
[<pyrotech:material:1>,<pyrotech:material:1>,<pyrotech:material:1>],
[<pyrotech:material:1>,<pyrotech:material:1>,<pyrotech:material:1>]]);
recipes.addShapeless("coalcoke_from_block", <pyrotech:material:1>*9,[<pyrotech:coal_coke_block>]);

// Leather rework
<ore:shagreen>.addItems([<betterwithmods:material:33>,<betterwithmods:material:7>]);
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_snowy_wool");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_timber_wool");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_black_wool");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_arctic_wool");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_brown_wool");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_red_wool");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_brown_wool");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_black_wool");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_kermode_wool");

recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_snowy_leather");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_timber_leather");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_black_leather");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_arctic_leather");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_brown_leather");
recipes.removeByRecipeName("betteranimalsplus:wolf_pelt_red_leather");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_brown_leather");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_black_leather");
recipes.removeByRecipeName("betteranimalsplus:bear_skin_kermode_leather");
recipes.removeByRecipeName("rats:rat_pelt_to_leather");
recipes.removeByRecipeName("minecraft:leather");
recipes.removeByRecipeName("toroquest:toro_leather_scrap");

// scrapped leather
val hideScraping as IItemStack[IIngredient] = {
  <pyrotech:pelt_cow>                  :     <pyrotech:hide_scraped>,
  <pyrotech:pelt_mooshroom>            :     <pyrotech:hide_scraped>,
  <pyrotech:hide_llama>                :     <pyrotech:hide_scraped>,
  <pyrotech:pelt_polar_bear>           :     <pyrotech:hide_scraped>,
  <betteranimalsplus:bear_skin_brown>  :     <pyrotech:hide_scraped>,
  <betteranimalsplus:bear_skin_black>  :     <pyrotech:hide_scraped>,
  <betteranimalsplus:bear_skin_kermode>:     <pyrotech:hide_scraped>,
  <pyrotech:pelt_horse>                :     <pyrotech:hide_scraped>,
  <mod_lavacow:pigboarhide>            :     <pyrotech:hide_scraped>,
  <netherex:orange_salamander_hide>    :     <pyrotech:hide_scraped>,
  <netherex:black_salamander_hide>     :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_snowy>  :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_timber> :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_black>  :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_arctic> :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_brown>  :     <pyrotech:hide_scraped>,
  <betteranimalsplus:wolf_pelt_red>    :     <pyrotech:hide_scraped>,
  <pyrotech:hide_pig>                  :     <pyrotech:hide_small_scraped>,
  <pyrotech:hide_sheep_sheared>        :     <pyrotech:hide_small_scraped>,
  <pyrotech:pelt_wolf>                 :     <pyrotech:hide_small_scraped>,
  <contenttweaker:monster_hide>        :     <pyrotech:hide_small_scraped>,
  <minecraft:rabbit_hide>              :     <contenttweaker:hide_tiny_scraped>,
  <pyrotech:pelt_bat>                  :     <contenttweaker:hide_tiny_scraped>,
  <rats:rat_pelt>                      :     <contenttweaker:hide_tiny_scraped>
} as IItemStack[IIngredient];

for i, entry in hideScraping.entrySet {
  recipes.addShapeless("hideScraping"~i, entry.value, [
    entry.key,
    <ore:smallKnife>.transformDamage()
  ]);
}

// scrapped sheep leather
val sheepHideScraping as IItemStack[IIngredient] = {
  <pyrotech:pelt_sheep_yellow>		:	<minecraft:wool:4>,
  <pyrotech:pelt_sheep_white>		:	<minecraft:wool>,
  <pyrotech:pelt_sheep_gray_light>	:	<minecraft:wool:8>,
  <pyrotech:pelt_sheep_red>			:	<minecraft:wool:14>,
  <pyrotech:pelt_sheep_purple>		:	<minecraft:wool:10>,
  <pyrotech:pelt_sheep_pink>		:	<minecraft:wool:6>,
  <pyrotech:pelt_sheep_orange>		:	<minecraft:wool:1>,
  <pyrotech:pelt_sheep_magenta>		:	<minecraft:wool:2>,
  <pyrotech:pelt_sheep_lime>		:	<minecraft:wool:5>,
  <pyrotech:pelt_sheep_blue_light>	:	<minecraft:wool:3>,
  <pyrotech:pelt_sheep_green>		:	<minecraft:wool:13>,
  <pyrotech:pelt_sheep_gray>		:	<minecraft:wool:7>,
  <pyrotech:pelt_sheep_cyan>		:	<minecraft:wool:9>,
  <pyrotech:pelt_sheep_brown>		:	<minecraft:wool:12>,
  <pyrotech:pelt_sheep_blue>		:	<minecraft:wool:11>,
  <pyrotech:pelt_sheep_black>		:	<minecraft:wool:15>,
  <pyrotech:pelt_llama_white>		:	<minecraft:wool>,
  <pyrotech:pelt_llama_creamy>		:	<minecraft:wool>,
  <pyrotech:pelt_llama_gray>		:	<minecraft:wool>,
  <pyrotech:pelt_llama_brown>		:	<minecraft:wool:12>
} as IItemStack[IIngredient];

for i, entry in sheepHideScraping.entrySet {
  recipes.addShapeless("hideScraping"~i, entry.value, [
    entry.key.transformReplace(<pyrotech:hide_scraped>),
    <ore:smallKnife>.transformDamage()
  ]);
}

// leather sheets
recipes.addShapeless("leather_sheet", leather_sheet*3, [<minecraft:leather>, <ore:shears>.transformDamage()]);
recipes.addShapeless("leather_sheet_small", leather_sheet*2, [<pyrotech:material:45>, <ore:shears>.transformDamage()]);
recipes.addShapeless("leather_sheet_tiny", leather_sheet*1, [<contenttweaker:leather_tiny>, <ore:shears>.transformDamage()]);

// leather replacements
val pelt = <ore:pelt>;
pelt.addAll(<ore:peltWolf>);
pelt.addAll(<ore:peltBear>);
pelt.addItems([<pyrotech:pelt_cow>,<pyrotech:pelt_mooshroom>,<pyrotech:pelt_polar_bear>,<pyrotech:pelt_bat>,<pyrotech:pelt_horse>,<pyrotech:pelt_wolf>,<pyrotech:pelt_sheep_yellow>,<pyrotech:pelt_sheep_white>,<pyrotech:pelt_sheep_gray_light>,<pyrotech:pelt_sheep_red>,<pyrotech:pelt_sheep_purple>,<pyrotech:pelt_sheep_pink>,<pyrotech:pelt_sheep_orange>,<pyrotech:pelt_sheep_magenta>,<pyrotech:pelt_sheep_lime>,<pyrotech:pelt_sheep_blue_light>,<pyrotech:pelt_sheep_green>,<pyrotech:pelt_sheep_gray>,<pyrotech:pelt_sheep_cyan>,<pyrotech:pelt_sheep_brown>,<pyrotech:pelt_sheep_blue>,<pyrotech:pelt_sheep_black>,<pyrotech:pelt_llama_white>,<pyrotech:pelt_llama_creamy>,<pyrotech:pelt_llama_gray>,<pyrotech:pelt_llama_brown>,<rats:rat_pelt>,<minecraft:rabbit_hide>,<contenttweaker:monster_hide>,<mod_lavacow:pigboarhide>,<netherex:orange_salamander_hide>,<netherex:black_salamander_hide>]);
recipes.remove(<minecraft:leather_helmet>);
recipes.remove(<minecraft:leather_chestplate>);
recipes.remove(<minecraft:leather_leggings>);
recipes.remove(<minecraft:leather_boots>);
recipes.remove(<minecraft:item_frame>);
recipes.remove(<minecraft:book>);
recipes.remove(<minecraft:lead>);
recipes.remove(<betterwithmods:material:31>);
recipes.remove(<doggytalents:treat_bag>);
recipes.remove(<doggytalents:leather_jacket>);
recipes.remove(<doggytalents:cape_coloured>);
recipes.remove(<doggytalents:cape>);
recipes.remove(<dungeontactics:magic_pouch>);
recipes.removeByRecipeName("endreborn:items/elytra");
recipes.remove(<iceandfire:blindfold>);
recipes.remove(<rats:rat_sack>);
recipes.remove(<spartanweaponry:quiver_bolt>);
recipes.remove(<spartanweaponry:quiver_arrow>);
recipes.remove(<spartanweaponry:longbow_leather>);
recipes.remove(handle);
recipes.remove(<spartanweaponry:caestus>);
recipes.remove(<toroquest:toro_leather>);
recipes.remove(<spartanweaponry:quiver_bolt_moderate>);
recipes.remove(<spartanweaponry:quiver_arrow_moderate>);

recipes.addShapeless("spartanweaponry:handle", handle*4, [stick,stick,stick,stick,leather_strip]);
recipes.addShaped("leather_helmet", <minecraft:leather_helmet>,
 [[leather_sheet,leather_sheet,leather_sheet],
  [leather_sheet,null,leather_sheet]]);
recipes.addShaped("leather_chestplate", <minecraft:leather_chestplate>,
 [[leather_sheet,null,leather_sheet],
  [leather_sheet,leather_sheet,leather_sheet],
  [leather_sheet,leather_sheet,leather_sheet]]);
recipes.addShaped("leather_leggings", <minecraft:leather_leggings>,
 [[leather_sheet,leather_sheet,leather_sheet],
  [leather_sheet,null,leather_sheet],
  [leather_sheet,null,leather_sheet]]);
recipes.addShaped("leather_boots", <minecraft:leather_boots>,
 [[leather_sheet,null,leather_sheet],
  [leather_sheet,null,leather_sheet]]);
recipes.addShaped("item_frame", <minecraft:item_frame>,
 [[stick,stick,stick],
  [stick,leather_sheet,stick],
  [stick,stick,stick]]);
recipes.addShaped("book_a", <minecraft:book>,
 [[<ore:paper>,<ore:paper>,<ore:paper>],
  [<ore:paper>,<ore:paper>,leather_sheet]]);
recipes.addShaped("book_b", <minecraft:book>,
 [[<ore:paper>,<ore:paper>,<ore:paper>],
  [<ore:paper>,<ore:paper>,<pyrotech:material:20>]]);
recipes.addShaped("lead", <minecraft:lead>,
 [[durable_fiber|durable_twine|leather_sheet,durable_fiber|durable_twine|leather_sheet,null],
  [durable_fiber|durable_twine|leather_sheet,durable_fiber|durable_twine|leather_sheet,null],
  [null,null,durable_fiber|durable_twine|leather_sheet]]);
recipes.addShaped("spartanweaponry_caestus_a", <spartanweaponry:caestus>,
 [[<ore:pelt>],
  [<ore:pelt>]]);  
recipes.addShaped("spartanweaponry_caestus_b", <spartanweaponry:caestus>,
 [[<contenttweaker:tattered_hide>],
  [<contenttweaker:tattered_hide>]]);
recipes.addShaped("doggytalents_treat_bag", <doggytalents:treat_bag>,
 [[leather_sheet,<doggytalents:chew_stick>,leather_sheet],
  [null,leather_sheet,null]]);
recipes.addShaped("doggytalents_leather_jacket", <doggytalents:leather_jacket>,
 [[leather_sheet,null,leather_sheet],
  [leather_sheet,<minecraft:wool>,leather_sheet],
  [leather_sheet,<minecraft:wool>,leather_sheet]]);
recipes.addShaped("doggytalents_cape_coloured", <doggytalents:cape_coloured>,
 [[<ore:string>,null,<ore:string>],
  [leather_sheet,leather_sheet,leather_sheet],
  [leather_sheet,leather_sheet,leather_sheet]]);
recipes.addShaped("doggytalents_cape", <doggytalents:cape>,
 [[<ore:string>,null,<ore:string>],
  [leather_sheet,<minecraft:wool>,leather_sheet],
  [<minecraft:wool>,leather_sheet,<minecraft:wool>]]);
recipes.addShaped("dungeontactics_magic_pouch", <dungeontactics:magic_pouch:639>,
 [[<ore:string>,leather_sheet,<ore:string>],
  [leather_sheet,<dungeontactics:magic_powder>,leather_sheet],
  [leather_sheet,leather_sheet,leather_sheet]]);
recipes.addShaped("rats_rat_sack", <rats:rat_sack>,
 [[<ore:string>,leather_sheet,<ore:string>],
  [leather_sheet,<ore:foodCheese>,leather_sheet],
  [leather_sheet,leather_sheet,leather_sheet]]);
recipes.addShaped("iceandfire_blindfold", <iceandfire:blindfold>,
 [[leather_strip,leather_strip,leather_strip]]);
recipes.addShaped("spartanweaponry_longbow_leather", <spartanweaponry:longbow_leather>,
 [[handle,stick,leather_sheet],
  [stick,null,<ore:string>],
  [leather_sheet,<ore:string>,<ore:string>]]);
recipes.addShaped("spartanweaponry_quiver_bolt", <spartanweaponry:quiver_bolt>,
 [[leather_sheet,<ore:string>,leather_sheet],
  [leather_sheet,<ore:itemBolt>,leather_sheet],
  [iron_ingot,iron_ingot,iron_ingot]]);
recipes.addShaped("spartanweaponry_quiver_arrow", <spartanweaponry:quiver_arrow>,
 [[leather_sheet,<ore:string>,leather_sheet],
  [leather_sheet,<ore:itemArrow>,leather_sheet],
  [iron_ingot,iron_ingot,iron_ingot]]);
recipes.addShaped("spartanweaponry_quiver_bolt_moderate", <spartanweaponry:quiver_bolt_moderate>,
 [[leather_sheet,<spartanweaponry:quiver_bolt>,leather_sheet],
  [brass_ingot,brass_ingot,brass_ingot]]);
recipes.addShaped("spartanweaponry_quiver_arrow_moderate", <spartanweaponry:quiver_arrow_moderate>,
 [[leather_sheet,<spartanweaponry:quiver_arrow>,leather_sheet],
  [brass_ingot,brass_ingot,brass_ingot]]);

// hammers
// Stone hammer in minecraft.zs along other stone tools
recipes.addShaped("iron_sledgehammer", <pyrotech:iron_hammer>,
 [[iron_ingot,stick,iron_ingot],
  [iron_ingot,stick,iron_ingot],
  [null,stick,null]]);
recipes.addShaped("steel_sledgehammer", <pyrotech:flint_hammer>,
 [[<ore:ingotSteel>,stick,<ore:ingotSteel>],
  [<ore:ingotSteel>,stick,<ore:ingotSteel>],
  [null,stick,null]]);
recipes.addShaped("mythril_sledgehammer", <pyrotech:bone_hammer>,
 [[<simpleores:mythril_rod>,<pyrotech:diamond_hammer>,<simpleores:mythril_rod>]]);
recipes.addShaped("onyx_sledgehammer", <pyrotech:obsidian_hammer>,
 [[<simpleores:onyx_rod>,<pyrotech:diamond_hammer>,<simpleores:onyx_rod>]]);
recipes.addShaped("pyro_charcoal_block", <pyrotech:charcoal_block>, [
  [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
  [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
  [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>]
]);
recipes.addShapeless("pyro_charcoal", <minecraft:coal:1>*9, [<ore:blockCharcoal>]);
