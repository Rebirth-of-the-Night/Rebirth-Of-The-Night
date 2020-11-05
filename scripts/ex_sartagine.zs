import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.exsartagine.ExSartagine;

mods.jei.JEI.removeAndHide(<exsartagine:flour>);
mods.jei.JEI.removeAndHide(<exsartagine:breadfine>);
mods.jei.JEI.removeAndHide(<exsartagine:doughbread>);
mods.jei.JEI.removeAndHide(<exsartagine:flour>);
mods.jei.JEI.removeAndHide(<exsartagine:doughpizza>);
mods.jei.JEI.removeAndHide(<exsartagine:dough>);
mods.jei.JEI.removeAndHide(<exsartagine:salt>);
mods.jei.JEI.removeAndHide(<exsartagine:potato.boiled>);
mods.jei.JEI.removeAndHide(<exsartagine:beans.boiled>);
mods.jei.JEI.removeAndHide(<exsartagine:smelter>);
mods.jei.JEI.removeAndHide(<exsartagine:breadveggieraw>);
mods.jei.JEI.removeAndHide(<exsartagine:breadveggie>);
mods.jei.JEI.removeAndHide(<exsartagine:breadmeatraw>);
mods.jei.JEI.removeAndHide(<exsartagine:breadmeat>);


recipes.removeByRecipeName("harvestcraft:asparagusitem");
mods.exsartagine.ExSartagine.addPanRecipe(<harvestcraft:asparagusitem>,<harvestcraft:grilledasparagusitem>);
mods.exsartagine.ExSartagine.addKettleRecipe([<ore:foodDough>,<minecraft:carrot>,<ore:listAllsugar>],null,<liquid:wood_tar>,[<harvestcraft:carrotcakeitem>],200);
mods.exsartagine.ExSartagine.addKettleRecipe([<minecraft:wheat>,<minecraft:dye:3>],<minecraft:sugar>,<liquid:lava>,[<minecraft:cookie>],200);
mods.exsartagine.ExSartagine.addHeatSource(<blockstate:betterwithmods:stoked_flame>);
mods.exsartagine.ExSartagine.addPlaceable(<blockstate:betterwithmods:stoked_flame>);
mods.exsartagine.ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
mods.exsartagine.ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
mods.exsartagine.ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
mods.exsartagine.ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);
mods.exsartagine.ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
mods.exsartagine.ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
mods.exsartagine.ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
mods.exsartagine.ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);


//mods.exsartagine.addKettleRecipe([<ore:foodDough>,<minecraft:carrot>,<ore:listAllsugar>],<contenttweaker:info>,<liquid:wood_tar>,<harvestcraft:carrotcakeitem>);
///*Here goes every reworked recipe for every single food item, RIP Foreck. Raw items are located in contenttweaker\raw_food.zs*/
//var pot = <harvestcraft:potitem>;
//var skillet = <harvestcraft:skilletitem>;
//var saucepan = <harvestcraft:saucepanitem>;
//var bakeware = <harvestcraft:bakewareitem>;
//var mortar_pestle = <harvestcraft:mortarandpestleitem>;
//var mixingbowl = <harvestcraft:mixingbowlitem>;
//var juicer = <harvestcraft:juiceritem>;
//var dough = <ore:foodDough>;
//var sugar = <ore:listAllsugar>;
//var carrot = <minecraft:carrot>;
//var batter = <harvestcraft:batteritem>;
//var heavyCream = <ore:listAllheavycream>;
////Carrot Cake
//recipes.removeByRecipeName("harvestcraft:carrotcakeitem");
//recipes.addShaped("rawcarrotcakeitem",<contenttweaker:rawcarrotcakeitem>,[
//	[bakeware,carrot],
//	[sugar,dough]
//]);
//mods.futuremc.Smoker.addRecipe(<contenttweaker:rawcarrotcakeitem>, <harvestcraft:carrotcakeitem>);
////Cheese Cake
//recipes.removeByRecipeName("harvestcraft:cheesecakeitem");
//recipes.addShaped("rawcheesecakeitem",<contenttweaker:rawcheesecakeitem>,[
//	[bakeware,batter],
//	[sugar,heavyCream]
//]);
//mods.futuremc.Smoker.addRecipe(<contenttweaker:rawcheesecakeitem>, <harvestcraft:cheesecakeitem>);
//
//