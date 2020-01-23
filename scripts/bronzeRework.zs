import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;


#REMOVE copper and tin
//copper
mods.jei.JEI.removeAndHide(<simpleores:copper_sword>);
mods.jei.JEI.removeAndHide(<simpleores:copper_pickaxe>);
mods.jei.JEI.removeAndHide(<simpleores:copper_axe>);
mods.jei.JEI.removeAndHide(<simpleores:copper_shovel>);
mods.jei.JEI.removeAndHide(<simpleores:copper_hoe>);
mods.jei.JEI.removeAndHide(<simpleores:copper_shears>);
mods.jei.JEI.removeAndHide(<simpleores:copper_helmet>);
mods.jei.JEI.removeAndHide(<simpleores:copper_leggings>);
mods.jei.JEI.removeAndHide(<simpleores:copper_chestplate>);
mods.jei.JEI.removeAndHide(<simpleores:copper_boots>);
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
val handle = <spartanweaponry:material>;
val block = <contenttweaker:sub_block_holder_0>; 
val lunarin = <contenttweaker:lunarinbronzebrick>;
val plate = <contenttweaker:bronze_plate>;
val nugget = <contenttweaker:material_part:1>;

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
  
recipes.addShapeless("bronze lunarin", lunarin,
 [bronze,bronze,bronze,
  bronze,bronze,bronze]);
  
recipes.addShaped("bronze plate", plate*24,
 [[bronze,bronze,bronze],
  [bronze,null,bronze],
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
  
StoneAnvil.addRecipe(<contenttweaker:copper_tin_pebbles>*2,
			<contenttweaker:copper_tin_mixture>
		);
		
ClayKiln.addRecipe(<contenttweaker:material_part>*2,
            <contenttweaker:copper_tin_pebbles>, 200
        );
		
//info
mods.jei.JEI.addDescription(<contenttweaker:material_part>,"This is a big step in the right direction. As good if not better than iron. won't shatter diamond, sadly");
mods.jei.JEI.addDescription(<atop:mud_helmet>,"Harder than iron, also cooler.");
mods.jei.JEI.addDescription(<atop:mud_chestplate>,"Much better than running around in a loincloth and a cape.");
mods.jei.JEI.addDescription(<atop:mud_leggings>,"Harder than iron, they have good ventilation.");
mods.jei.JEI.addDescription(<atop:mud_boots>,"Not the most protective, but pretty comfortable and durable.");
mods.jei.JEI.addDescription(<atop:mud_sword>,"A standard bronze sword.");