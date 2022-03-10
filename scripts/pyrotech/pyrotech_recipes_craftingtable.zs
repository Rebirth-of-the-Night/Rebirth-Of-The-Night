import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("pyrotech");
recipes.removeByMod("pyrotech_compat");
recipes.remove(<pyrotech:stone_hammer>);
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

recipes.addShapeless("pyro_matchstick_broken_stick",<pyrotech:matchstick>,
[<pyrotech:tinder>,<contenttweaker:broken_stick>,<contenttweaker:broken_stick>]);
recipes.addShapeless("pyro_matchstick_sticks",<pyrotech:matchstick>,
[<pyrotech:tinder>,<ore:stickWood>,<ore:stickWood>]);
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
 [[<ore:fenceWood>,null,<ore:fenceWood>],
  [<ore:fenceWood>,null,<ore:fenceWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);
recipes.addShaped("compacting_bin", <pyrotech:compacting_bin>,
 [[null,<pyrotech:compost_bin>,null],
  [<ore:stoneSlab>,<pyrotech:compost_bin>,<ore:stoneSlab>],
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
recipes.addShaped("pyro_clay_bucket", <pyrotech:bucket_clay_unfired>,
 [[<minecraft:clay_ball>,null,<minecraft:clay_ball>],
  [null,<minecraft:clay_ball>,null]]);
recipes.addShapeless("pyro_refracotrymaterial_slag", refractoryMaterial, [<pyrotech:material:8>,<pyrotech:material:8>,<minecraft:clay_ball>]);
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
 [[stoneBrick,null,stoneBrick],
  [<ore:twine>,stoneBrick,<ore:twine>],
  [<ore:plankWood>,twine,<ore:plankWood>]]);
recipes.addShaped("pyro_crude_axe", <pyrotech:crude_axe>,
 [[rock|<minecraft:flint>,<ore:stickWood>],
  [<ore:stickWood>,null]]);  
recipes.addShaped("crude_fishing_pole", <pyrotech:crude_fishing_rod>,
 [[null,<ore:stickWood>],
  [<ore:stickWood>,<ore:twine>]]);
recipes.addShaped("quilting_sail", <betterwithmods:material:4>,
 [[<pyrotech:material:26>,<minecraft:carpet:*>,<pyrotech:material:26>],
  [<minecraft:carpet:*>,<pyrotech:material:26>,<minecraft:carpet:*>],
  [<pyrotech:material:26>,<minecraft:carpet:*>,<pyrotech:material:26>]]);
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
  
//hammers
recipes.addShaped("stone_sledgehammer", <pyrotech:stone_hammer>,
 [[<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [null,<ore:stickWood>,null]]);
recipes.addShaped("iron_sledgehammer", <pyrotech:iron_hammer>,
 [[<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
  [<ore:ingotIron>,<ore:stickWood>,<ore:ingotIron>],
  [null,<ore:stickWood>,null]]);
recipes.addShaped("steel_sledgehammer", <pyrotech:flint_hammer>,
 [[<ore:ingotSteel>,<ore:ingotSteel>,<ore:ingotSteel>],
  [<ore:ingotSteel>,<ore:stickWood>,<ore:ingotSteel>],
  [null,<ore:stickWood>,null]]);
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
