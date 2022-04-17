import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import mods.vanillaanvilrepair.addRepairEntry;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.advancedmortars.Mortar;

//REMOVE copper and tin
// copper
JEI.removeAndHide(<simpleores:copper_sword>);
JEI.removeAndHide(<simpleores:copper_pickaxe>);
JEI.removeAndHide(<simpleores:copper_shovel>);
JEI.removeAndHide(<simpleores:copper_hoe>);
JEI.removeAndHide(<simpleores:copper_shears>);
JEI.removeAndHide(<simpleores:copper_helmet>);
JEI.removeAndHide(<simpleores:copper_leggings>);
JEI.removeAndHide(<simpleores:copper_chestplate>);
JEI.removeAndHide(<simpleores:copper_boots>);
JEI.removeAndHide(<spartanweaponry:longsword_copper>);
JEI.removeAndHide(<spartanweaponry:katana_copper>);
JEI.removeAndHide(<spartanweaponry:saber_copper>);
JEI.removeAndHide(<spartanweaponry:rapier_copper>);
JEI.removeAndHide(<spartanweaponry:greatsword_copper>);
JEI.removeAndHide(<spartanweaponry:warhammer_copper>);
JEI.removeAndHide(<spartanweaponry:boomerang_copper>);
JEI.removeAndHide(<spartanweaponry:battleaxe_copper>);
JEI.removeAndHide(<spartanweaponry:glaive_copper>);
JEI.removeAndHide(<spartanweaponry:staff_copper>);
JEI.removeAndHide(<spartanweaponry:halberd_copper>);
JEI.removeAndHide(<spartanweaponry:lance_copper>);
JEI.removeAndHide(<spartanweaponry:longbow_copper>);
JEI.removeAndHide(<spartanweaponry:throwing_knife_copper>);
//tin
JEI.removeAndHide(<simpleores:tin_sword>);
JEI.removeAndHide(<simpleores:tin_pickaxe>);
JEI.removeAndHide(<simpleores:tin_axe>);
JEI.removeAndHide(<simpleores:tin_shovel>);
JEI.removeAndHide(<simpleores:tin_hoe>);
JEI.removeAndHide(<simpleores:tin_shears>);
JEI.removeAndHide(<simpleores:tin_helmet>);
JEI.removeAndHide(<simpleores:tin_leggings>);
JEI.removeAndHide(<simpleores:tin_chestplate>);
JEI.removeAndHide(<simpleores:tin_boots>);
JEI.removeAndHide(<spartanshields:shield_basic_tin>);
JEI.removeAndHide(<spartanweaponry:dagger_tin>);
JEI.removeAndHide(<spartanweaponry:longsword_tin>);
JEI.removeAndHide(<spartanweaponry:katana_tin>);
JEI.removeAndHide(<spartanweaponry:saber_tin>);
JEI.removeAndHide(<spartanweaponry:rapier_tin>);
JEI.removeAndHide(<spartanweaponry:greatsword_tin>);
JEI.removeAndHide(<spartanweaponry:hammer_tin>);
JEI.removeAndHide(<spartanweaponry:warhammer_tin>);
JEI.removeAndHide(<spartanweaponry:boomerang_tin>);
JEI.removeAndHide(<spartanweaponry:battleaxe_tin>);
JEI.removeAndHide(<spartanweaponry:mace_tin>);
JEI.removeAndHide(<spartanweaponry:glaive_tin>);
JEI.removeAndHide(<spartanweaponry:staff_tin>);
JEI.removeAndHide(<spartanweaponry:spear_tin>);
JEI.removeAndHide(<spartanweaponry:halberd_tin>);
JEI.removeAndHide(<spartanweaponry:pike_tin>);
JEI.removeAndHide(<spartanweaponry:lance_tin>);
JEI.removeAndHide(<spartanweaponry:longbow_tin>);
JEI.removeAndHide(<spartanweaponry:throwing_knife_tin>);
JEI.removeAndHide(<spartanweaponry:throwing_axe_tin>);
JEI.removeAndHide(<spartanweaponry:javelin_tin>);
//mud
recipes.remove(<atop:mud_boots>);
recipes.remove(<atop:mud_chestplate>);
recipes.remove(<atop:mud_leggings>);
recipes.remove(<atop:mud_helmet>);
recipes.remove(<atop:mud_sword>);
recipes.remove(<atop:mud_pickaxe>);
recipes.remove(<atop:mud_shovel>);
recipes.remove(<atop:mud_axe>);
recipes.remove(<atop:mud_hoe>);

#ADD RECIPES

val bronze = <ore:ingotBronze>;
val stick =  <ore:stickWood>;
val handle = <spartanweaponry:material:0>;
val bronzeBlock = <contenttweaker:block_bronze>; 
val plate = <contenttweaker:bronze_plate>;
val bronzeNugget = <ore:nuggetBronze>.firstItem;
val brassNugget = <ore:nuggetBrass>.firstItem;
val wShield = <spartanshields:shield_basic_wood>;
val brass = <ore:ingotBrass>;
val brassBlock = <contenttweaker:block_brass>;

//ARMOR
recipes.addShaped("bronze_helmet", <atop:mud_helmet>,
[[bronze,bronze,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze_chestplate", <atop:mud_chestplate>,
 [[bronze,null,bronze],
  [bronze,bronze,bronze],
  [bronze,bronze,bronze]]);
recipes.addShaped("bronze_leggings", <atop:mud_leggings>,
 [[bronze,bronze,bronze],
  [bronze,null,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze_boots", <atop:mud_boots>,
 [[bronze,null,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze_shield", <spartanshields:shield_basic_bronze>, 
 [[null,bronze,null],
  [bronze,wShield,bronze],
  [null,bronze,null]]);
  
//TOOLS
recipes.addShaped("bronze_sword", <atop:mud_sword>,
 [[bronze],
  [bronze],
  [handle]]);
recipes.addShaped("bronze_shovel", <atop:mud_shovel>,
 [[bronze],
  [stick],
  [stick]]);
recipes.addShaped("bronze_pickaxe", <atop:mud_pickaxe>,
 [[bronze,bronze,bronze],
  [null,stick,null],
  [null,stick,null]]);
recipes.addShapedMirrored("bronze_axe", <atop:mud_axe>,
 [[bronze,bronze],
  [bronze,stick],
  [null,stick]]);
recipes.addShapedMirrored("bronze_hoe", <atop:mud_hoe>,
 [[bronze,bronze],
  [null,stick],
  [null,stick]]);
  
  //BLOCKS
recipes.addShaped("bronze_block", bronzeBlock,
 [[bronze,bronze,bronze],
  [bronze,bronze,bronze],
  [bronze,bronze,bronze]]);
  
recipes.addShaped("brass_block", brassBlock,
 [[brass,brass,brass],
  [brass,brass,brass],
  [brass,brass,brass]]);
  
recipes.addShapeless("block_to_bronze", bronze.firstItem*9,
 [bronzeBlock]);
 
recipes.addShapeless("block_to_brass", brass.firstItem*9,
 [brassBlock]);
  
recipes.addShaped("bronze_plate", plate*24,
 [[bronze,bronze,bronze],
  [bronze,<minetraps:nails:*>,bronze],
  [bronze,bronze,bronze]]);
  
// parts
recipes.addShaped("bronze_to_ingot", bronze.firstItem,
 [[bronzeNugget,bronzeNugget,bronzeNugget],
  [bronzeNugget,bronzeNugget,bronzeNugget],
  [bronzeNugget,bronzeNugget,bronzeNugget]]);
  
recipes.addShapeless("bronze_to_nugget", bronzeNugget*9,
 [bronze]);
 
recipes.addShaped("brass_to_ingot", brass.firstItem,
 [[brassNugget,brassNugget,brassNugget],
  [brassNugget,brassNugget,brassNugget],
  [brassNugget,brassNugget,brassNugget]]);
  
recipes.addShapeless("brass_to_nugget", brassNugget*9,
 [brass]);
 
// bronze recipes
Mortar.addRecipe(["diamond"], <ore:dustBronze>.firstItem * 4, 8, [<ore:ingotTin> * 1, <ore:ingotCopper> * 3]);
recipes.addShapeless("bronze_dust", <ore:dustBronze>.firstItem * 4, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);

Mortar.addRecipe(["diamond"], <ore:dustBrass>.firstItem * 2, 6, [<pyrotech:rock:3> * 2, <ore:ingotCopper> * 1]);
recipes.addShapeless("brass_dust", <ore:dustBrass>.firstItem * 2, [<ore:dustZinc>, <ore:dustZinc>, <ore:dustCopper>]);
// Additional recipes on pyrotech scripts 

//  repair recipes
var bronzeItems = <atop:mud_helmet> | <atop:mud_chestplate> | <atop:mud_leggings> | <atop:mud_boots> | <atop:mud_sword> | <atop:mud_shovel> | <atop:mud_pickaxe> | <atop:mud_axe> | <atop:mud_hoe>;
addRepairEntry(bronzeItems, <ore:ingotBronze>.firstItem);