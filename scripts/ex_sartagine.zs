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

//NOTES: Furnace recipes are switched over to the smoker and kettle; kettle recipes take 80 ticks to complete compared to the smoker's 100 due to its superiority
//Complex baking recipes are always with a kettle
//"Grilled" items are cooked in the pan, if they are more complex, then they are cooked in the kettle
//"Stock" is the main use of the basic pot

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



/*Here goes every reworked recipe for every single food item, RIP Foreck. Raw items are located in contenttweaker\raw_food.zs*/
var pot = <harvestcraft:potitem>;
var skillet = <harvestcraft:skilletitem>;
var saucepan = <harvestcraft:saucepanitem>;
var bakeware = <harvestcraft:bakewareitem>;
var mortar_pestle = <harvestcraft:mortarandpestleitem>;
var mixingbowl = <harvestcraft:mixingbowlitem>;
var juicer = <harvestcraft:juiceritem>;

var redRose = <minecraft:dye:1>;

var waterBottle = <liquid:water>*333;
var waterBucket = <liquid:water>*1000;
var milk = <ore:listAllmilk>; //!!!!!!!!!  THIS SHOULD BE REPLACED WITH A CUSTOM LIQUID MILK THAT CAN BE DIRECTLY PLACED, REQUIRES CHANGING SEVERAL THINGS !!!!!!!!!
var stock = <harvestcraft:stockitem>;
var dough = <ore:foodDough>;
var sugar = <ore:listAllsugar>;
var carrot = <minecraft:carrot>;
var batter = <harvestcraft:batteritem>;
var heavyCream = <ore:listAllheavycream>;
var egg = <ore:listAllegg>;
var cherry = <harvestcraft:cherryitem>;
var cocoaPowder = <ore:foodCocoapowder>;
var sprinkles = <contenttweaker:sprinkles>;
var spice = <ore:listAllspice>;
var chocolateBar = <ore:foodChocolatebar>;
var toastedCoconut = <ore:foodToastedcoconut>;
var lemon = <ore:cropLemon>;
var strawberry = <ore:cropStrawberry>;
var walnut = <ore:cropWalnut>;
var pineapple = <ore:cropPineapple>;
var meringue = <ore:foodMeringue>;
var pumpkin = <ore:cropPumpkin>;
var calamari = <ore:foodCalamariraw>;
var cookedCalamari = <harvestcraft:calamaricookeditem>;
var bakedsweetpotato = <harvestcraft:bakedsweetpotatoitem>;
var grilledEggplant = <harvestcraft:grilledeggplantitem>;
var toast = <harvestcraft:toastitem>;
var iceCream = <harvestcraft:icecreamitem>;
var griledCheese = <harvestcraft:grilledcheeseitem>;
var appleSauce = <harvestcraft:applesauceitem>; 
var bread = <minecraft:bread>;
var butter = <harvestcraft:butteritem>;

//Stock Recipes
recipes.remove(<harvestcraft:stockitem>);
mods.exsartagine.ExSartagine.addPotRecipe(<minecraft:bone>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:7>, stock);
mods.exsartagine.ExSartagine.addPotRecipe(<ore:listAllveggie>, stock*2);
mods.exsartagine.ExSartagine.addPotRecipe(<ore:listAllmeatraw>|<betterwithaddons:congealed>, stock*3);


//Carrot Cake
recipes.removeByRecipeName("harvestcraft:carrotcakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([dough,carrot,sugar],null,waterBottle,[<harvestcraft:carrotcakeitem>],200);
//Cheese Cake
recipes.removeByRecipeName("harvestcraft:cheesecakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([batter,heavyCream,sugar],null,waterBottle,[<harvestcraft:cheesecakeitem>],200);
//Cherry Cheesecake
recipes.removeByRecipeName("harvestcraft:cherrycheesecakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([batter,heavyCream,sugar],cherry,waterBottle,[<harvestcraft:cherrycheesecakeitem>],200);
//Sprinkles AND Chocolate Sprinkles Cake
recipes.addShapeless("Sprinkles", sprinkles*6,
    [sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>]);	
recipes.removeByRecipeName("harvestcraft:chocolatesprinklecakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([dough,cocoaPowder,sugar],sprinkles,waterBottle,[<harvestcraft:chocolatesprinklecakeitem>],200);
//Holiday Cake
recipes.removeByRecipeName("harvestcraft:holidaycakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([egg,sugar,cherry,heavyCream,spice],null,waterBottle,[<harvestcraft:holidaycakeitem>],200);
//Lamington Cake
recipes.removeByRecipeName("harvestcraft:lamingtonitem");
mods.exsartagine.ExSartagine.addKettleRecipe([dough, chocolateBar, toastedCoconut],null,waterBottle,[<harvestcraft:lamingtonitem>],200);
//Pavlova Cake
recipes.removeByRecipeName("harvestcraft:pavlovaitem");
mods.exsartagine.ExSartagine.addKettleRecipe([egg, sugar, lemon, meringue, strawberry],null,waterBottle,[<harvestcraft:pavlovaitem>],200);
//Pineapple Cake
recipes.removeByRecipeName("harvestcraft:pineappleupsidedowncakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([pineapple, dough, cherry, walnut],null,waterBottle,[<harvestcraft:pineappleupsidedowncakeitem>],200);
//pumpkin Cheesecake
recipes.removeByRecipeName("harvestcraft:pumpkincheesecakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([batter,heavyCream,sugar],pumpkin,waterBottle,[<harvestcraft:pumpkincheesecakeitem>],200);
//Red Velvet Cake
recipes.removeByRecipeName("harvestcraft:redvelvetcakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([batter,milk,heavyCream,sugar,redRose],null,null,[<harvestcraft:redvelvetcakeitem>],200);
//Cooked Calamari
furnace.remove(cookedCalamari);
mods.futuremc.Smoker.addRecipe(calamari, cookedCalamari);
mods.exsartagine.ExSartagine.addKettleRecipe([calamari],null,null,[cookedCalamari],80);
//Grilled Asparagus
recipes.removeByRecipeName("harvestcraft:asparagusitem");
mods.exsartagine.ExSartagine.addPanRecipe(<harvestcraft:asparagusitem>,<harvestcraft:grilledasparagusitem>);
//Baked Sweet Potato
recipes.removeByRecipeName("harvestcraft:bakedsweetpotatoitem");
mods.futuremc.Smoker.addRecipe(<harvestcraft:sweetpotatoitem>, bakedsweetpotato);
mods.exsartagine.ExSartagine.addKettleRecipe([<harvestcraft:sweetpotatoitem>],null,null,[bakedsweetpotato],80);
//Grilled Eggplant
recipes.removeByRecipeName("harvestcraft:grilledeggplantitem");
mods.exsartagine.ExSartagine.addPanRecipe(<harvestcraft:eggplantitem>,<harvestcraft:grilledeggplantitem>);
//Buttered Toast
recipes.removeByRecipeName("harvestcraft:toastitem");
mods.exsartagine.ExSartagine.addKettleRecipe([bread,butter],null,null,[<harvestcraft:toastitem>],80);


//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation