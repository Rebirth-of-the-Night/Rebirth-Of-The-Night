import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("ironfurnaces");

var mud_brick = <biomesoplenty:mud_brick>;
var clay_brick = <minecraft:brick>;
var masonry_brick = <contenttweaker:masonry_brick>;

recipes.addShaped("mud_furnace", <ironfurnaces:iron_furnace_idle>,
 [[mud_brick,mud_brick,mud_brick],
  [mud_brick,null,mud_brick],
  [mud_brick,mud_brick,mud_brick]]);
recipes.addShaped("clay_furnace", <ironfurnaces:gold_furnace_idle>,
 [[clay_brick,clay_brick,clay_brick],
  [clay_brick,null,clay_brick],
  [clay_brick,clay_brick,clay_brick]]);
recipes.addShaped("masonry_furnace", <ironfurnaces:diamond_furnace_idle>,
 [[masonry_brick,masonry_brick,masonry_brick],
  [masonry_brick,null,masonry_brick],
  [masonry_brick,masonry_brick,masonry_brick]]);