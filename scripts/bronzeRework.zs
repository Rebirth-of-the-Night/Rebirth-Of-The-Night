import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemCondition;
import mods.vanillaanvilrepair.addRepairEntry;
import mods.jei.JEI;

#REMOVE copper and tin
//copper
mods.jei.JEI.removeAndHide(<simpleores:copper_sword>);
mods.jei.JEI.removeAndHide(<simpleores:copper_pickaxe>);
mods.jei.JEI.removeAndHide(<simpleores:copper_shovel>);
mods.jei.JEI.removeAndHide(<simpleores:copper_hoe>);
mods.jei.JEI.removeAndHide(<simpleores:copper_shears>);
mods.jei.JEI.removeAndHide(<simpleores:copper_helmet>);
mods.jei.JEI.removeAndHide(<simpleores:copper_leggings>);
mods.jei.JEI.removeAndHide(<simpleores:copper_chestplate>);
mods.jei.JEI.removeAndHide(<simpleores:copper_boots>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longsword_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:katana_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:saber_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:rapier_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:greatsword_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:warhammer_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:boomerang_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:battleaxe_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:glaive_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:staff_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:halberd_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:lance_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longbow_copper>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_knife_copper>);
//tin
mods.jei.JEI.removeAndHide(<simpleores:tin_sword>);
mods.jei.JEI.removeAndHide(<simpleores:tin_pickaxe>);
mods.jei.JEI.removeAndHide(<simpleores:tin_axe>);
mods.jei.JEI.removeAndHide(<simpleores:tin_shovel>);
mods.jei.JEI.removeAndHide(<simpleores:tin_hoe>);
mods.jei.JEI.removeAndHide(<simpleores:tin_shears>);
mods.jei.JEI.removeAndHide(<simpleores:tin_helmet>);
mods.jei.JEI.removeAndHide(<simpleores:tin_leggings>);
mods.jei.JEI.removeAndHide(<simpleores:tin_chestplate>);
mods.jei.JEI.removeAndHide(<simpleores:tin_boots>);
mods.jei.JEI.removeAndHide(<spartanshields:shield_basic_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:dagger_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longsword_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:katana_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:saber_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:rapier_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:greatsword_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:hammer_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:warhammer_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:boomerang_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:battleaxe_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:mace_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:glaive_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:staff_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:spear_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:halberd_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:pike_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:lance_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longbow_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_knife_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_axe_tin>);
mods.jei.JEI.removeAndHide(<spartanweaponry:javelin_tin>);
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
val block = <contenttweaker:sub_block_holder_0>; 
val plate = <contenttweaker:bronze_plate>;
val nugget = <contenttweaker:material_part:1>;
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
  [bronze,<minetraps:nails>,bronze],
  [bronze,bronze,bronze]]);
  
  //PARTS
recipes.addShaped("bronze to ingot", <contenttweaker:material_part>,
 [[nugget,nugget,nugget],
  [nugget,nugget,nugget],
  [nugget,nugget,nugget]]);
  
recipes.addShapeless("bronze to nugget", nugget*9,
 [bronze]);
 
//BRONZE RECIPES
recipes.addShapeless("copper tin mixture", <contenttweaker:copper_tin_mixture>,
 [<ore:ingotTin>,<ore:ingotCopper>,<ore:ingotCopper>,
  <ore:ingotCopper>]
		);
recipes.addShapeless("copper_tin_mixture_return", <simpleores:copper_ingot>*3,
    [<contenttweaker:copper_tin_mixture>],
    function(out,ins,cInfo){
      return out;
},
//IRecipeAction
function(out,cInfo,player){
    player.give(<simpleores:tin_ingot>);
});	
  #Additional recipes on pyrotech scripts 

		
//info
mods.jei.JEI.addDescription(<contenttweaker:material_part>,"As good as, if not better than iron.");
mods.jei.JEI.addDescription(<atop:mud_helmet>,"Harder than iron, also... much cooler.");
mods.jei.JEI.addDescription(<atop:mud_chestplate>,"Much better than running around in a loincloth and a cape.");
mods.jei.JEI.addDescription(<atop:mud_leggings>,"Harder than iron, with good ventilation.");
mods.jei.JEI.addDescription(<atop:mud_boots>,"Not the most protective, but pretty comfortable and durable.");
mods.jei.JEI.addDescription(<atop:mud_sword>,"A standard bronze sword.");
mods.jei.JEI.addDescription(<spartanshields:shield_basic_bronze>, "Also know as hoplon. Provides excellent cover without sacrificing offensive capacity.");

//repair recipes
var bronzeItems = <atop:mud_helmet> | <atop:mud_chestplate> | <atop:mud_leggings> | <atop:mud_boots> | <atop:mud_sword> | <atop:mud_shovel> | <atop:mud_pickaxe> | <atop:mud_axe> | <atop:mud_hoe>;
addRepairEntry(bronzeItems, <contenttweaker:material_part>);