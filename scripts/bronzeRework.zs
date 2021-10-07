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
val block = <contenttweaker:block_bronze>; 
val plate = <contenttweaker:bronze_plate>;
val nugget = <ore:nuggetBronze>.firstItem;
val wShield = <spartanshields:shield_basic_wood>;

//ARMOR
recipes.addShaped("bronze helmet", <atop:mud_helmet>,
[[bronze,bronze,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze chestplate", <atop:mud_chestplate>,
 [[bronze,null,bronze],
  [bronze,bronze,bronze],
  [bronze,bronze,bronze]]);
recipes.addShaped("bronze leggings", <atop:mud_leggings>,
 [[bronze,bronze,bronze],
  [bronze,null,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze boots", <atop:mud_boots>,
 [[bronze,null,bronze],
  [bronze,null,bronze]]);
recipes.addShaped("bronze shield", <spartanshields:shield_basic_bronze>, 
 [[null,bronze,null],
  [bronze,wShield,bronze],
  [null,bronze,null]]);
  
//TOOLS
recipes.addShaped("bronze sword", <atop:mud_sword>,
 [[bronze],
  [bronze],
  [handle]]);
recipes.addShaped("bronze shovel", <atop:mud_shovel>,
 [[bronze],
  [stick],
  [stick]]);
recipes.addShaped("bronze pickaxe", <atop:mud_pickaxe>,
 [[bronze,bronze,bronze],
  [null,stick,null],
  [null,stick,null]]);
recipes.addShapedMirrored("bronze axe", <atop:mud_axe>,
 [[bronze,bronze],
  [bronze,stick],
  [null,stick]]);
recipes.addShapedMirrored("bronze hoe", <atop:mud_hoe>,
 [[bronze,bronze],
  [null,stick],
  [null,stick]]);
  
  //BLOCKS
recipes.addShaped("bronze block", block,
 [[bronze,bronze,bronze],
  [bronze,bronze,bronze],
  [bronze,bronze,bronze]]);
  
recipes.addShapeless("block to bronze", bronze.firstItem*9,
 [block]);
  
recipes.addShaped("bronze plate", plate*24,
 [[bronze,bronze,bronze],
  [bronze,<minetraps:nails:*>,bronze],
  [bronze,bronze,bronze]]);
  
  //PARTS
recipes.addShaped("bronze to ingot", bronze.firstItem,
 [[nugget,nugget,nugget],
  [nugget,nugget,nugget],
  [nugget,nugget,nugget]]);
  
recipes.addShapeless("bronze to nugget", nugget*9,
 [bronze]);
 
// BRONZE RECIPES
Mortar.addRecipe(["diamond"], <ore:dustBronze>.firstItem * 4, 8, [<ore:ingotTin> * 1, <ore:ingotCopper> * 3]);
recipes.addShapeless("bronze_dust", <ore:dustBronze>.firstItem * 4, [<ore:dustTin>, <ore:dustCopper>, <ore:dustCopper>, <ore:dustCopper>]);
  // Additional recipes on pyrotech scripts 

		
//info
JEI.addDescription(<ore:ingotBronze>,"Definitely better than iron, not quite as good as steel.");
JEI.addDescription(<atop:mud_helmet>,"Harder than iron, also... much cooler.");
JEI.addDescription(<atop:mud_chestplate>,"Much better than running around in a loincloth and a cape.");
JEI.addDescription(<atop:mud_leggings>,"Harder than iron, with good ventilation.");
JEI.addDescription(<atop:mud_boots>,"Not the most protective, but pretty comfortable and durable.");
JEI.addDescription(<atop:mud_sword>,"A standard bronze sword.");
JEI.addDescription(<spartanshields:shield_basic_bronze>, "Also known as hoplon. Provides excellent cover without sacrificing offensive capacity.");

//repair recipes
var bronzeItems = <atop:mud_helmet> | <atop:mud_chestplate> | <atop:mud_leggings> | <atop:mud_boots> | <atop:mud_sword> | <atop:mud_shovel> | <atop:mud_pickaxe> | <atop:mud_axe> | <atop:mud_hoe>;
addRepairEntry(bronzeItems, <ore:ingotBronze>.firstItem);