import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemTransformer;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.jei.JEI;
import mods.exsartagine.ExSartagine;
import mods.advancedmortars.Mortar;
import mods.pyrotech.DryingRack;

import mods.artisanworktables.builder.RecipeBuilder;

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
mods.jei.JEI.hideCategory("artisanworktables_chef_worktable");
mods.jei.JEI.hideCategory("artisanworktables_chef_workshop");
mods.jei.JEI.hideCategory("artisanworkstumps_chef");



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



/*Here goes every reworked recipe for every single food item, RIP Foreck. 
	&C = Recipe also available in the normal crafting table/grid and or not removed
*/
var pot = <harvestcraft:potitem>;
var skillet = <harvestcraft:skilletitem>;
var saucepan = <harvestcraft:saucepanitem>;
var bakeware = <harvestcraft:bakewareitem>;
var mortar_pestle = <harvestcraft:mortarandpestleitem>;
var mixingbowl = <harvestcraft:mixingbowlitem>;
var juicer = <harvestcraft:juiceritem>;
var cutBad = <animania:carving_knife>.anyDamage().transformDamage(3);
var cut = <animania:carving_knife>;

var redRose = <minecraft:dye:1>;

var waterBottle = <liquid:water>*333;
var waterBottle2 = <liquid:water>*666;
var waterBucket = <liquid:water>*1000;
var milkBottle = <animania:milk_bottle>.giveBack(<minecraft:glass_bottle>);
var stock = <harvestcraft:stockitem>;
var dough = <ore:foodDough>;
var salt = <ore:dustSalt>;
var flour = <ore:foodFlour>;
var sugar = <ore:listAllsugar>;
var mayo = <ore:foodMayo>;
var snowball = <minecraft:snowball>;
var rawChicken = <ore:listAllchickenraw>;
var cookedChicken = <ore:listAllchickencooked>;
var rawPork = <animania:raw_prime_pork>|<minecraft:porkchop>;
var rawBacon = <animania:raw_prime_bacon>;
var rawBeef = <ore:listAllbeefraw>;
var rawFish = <ore:listAllfishraw>;
var rawMutton = <ore:listAllmuttonraw>;
var rawVenison = <ore:foodVenisonraw>;
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
var iceCream = <ore:listAllicecream>;
var griledCheese = <harvestcraft:grilledcheeseitem>;
var appleSauce = <harvestcraft:applesauceitem>; 
var bread = <minecraft:bread>;
var butter = <harvestcraft:butteritem>;
var cheese = <ore:foodCheese>;
var apple = <ore:cropApple>;
var teaLeaf = <ore:cropTea>;
var coffeeBean = <harvestcraft:coffeebeanitem>;
var corn = <ore:cropCorn>;
var grape = <ore:cropGrape>;
var rice = <ore:cropRice>;
var coconut = <ore:cropCoconut>;
var pumpkinSeeds = <minecraft:pumpkin_seeds>;
var vanillaBean = <ore:cropVanillabean>;
var sesame = <ore:cropSesame>;
var melon = <minecraft:melon>;
var blueberry = <ore:cropBlueberry>;
var papaya = <ore:cropPapaya>;
var starfruit = <ore:cropStarfruit>;
var orange = <ore:cropOrange>;
var peach = <ore:cropPeach>;
var lime = <ore:cropLime>;
var mango = <ore:cropMango>;
var pomegranate = <ore:cropPomegranate>;
var blackberry = <ore:cropBlackberry>;
var raspberry = <ore:cropRaspberry>;
var kiwi = <ore:cropKiwi>;
var cranberry = <ore:cropCranberry>;
var cactusFruit = <ore:cropCactusfruit>;
var plum = <ore:cropPlum>;
var pear = <ore:cropPear>;
var apricot = <ore:cropApricot>;
var fig = <ore:cropFig>;
var grapeFruit = <ore:cropGrapefruit>;
var persimmon = <ore:cropPersimmon>;
var potato = <ore:cropPotato>;
var cookedPotato = <ore:cookedPotato>;
var mushroom = <ore:listAllmushroom>;
var pasta = <harvestcraft:pastaitem>;
var wiener = <contenttweaker:wiener>;
var patty = <contenttweaker:patty>;
var anyMeat = <ore:foodMeats>;
var anyRawMeat = <ore:listAllmeatraw>;
var cocoa = <minecraft:dye:3>;
var tomato = <ore:cropTomato>;

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
recipes.addShapeless("sprinkles", sprinkles*4,
    [sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>]);	
RecipeBuilder.get("chef")
  .setShapeless([sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>])
  .addOutput(sprinkles*6)
  .create();
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
mods.exsartagine.ExSartagine.addKettleRecipe([batter,heavyCream,milkBottle,sugar,redRose],null,null,[<harvestcraft:redvelvetcakeitem>],200);
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
//Ice cream
recipes.removeByRecipeName("harvestcraft:icecreamitem");
recipes.removeByRecipeName("harvestcraft:icecreamitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([milkBottle, snowball, salt])
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:icecreamitem>*3)
  .create();
//Grilled Cheese
recipes.removeByRecipeName("harvestcraft:grilledcheeseitem");
mods.exsartagine.ExSartagine.addKettleRecipe([bread,butter,butter],cheese,null,[<harvestcraft:grilledcheeseitem>],80);
//Apple Sauce
recipes.removeByRecipeName("harvestcraft:applesauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:applesauceitem>, 4, [apple]);
//Pumpkin Bread
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
mods.exsartagine.ExSartagine.addKettleRecipe([dough,sugar],pumpkin,null,[<harvestcraft:pumpkinbreaditem>],80);
//Apple Pie
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
mods.exsartagine.ExSartagine.addKettleRecipe([dough,sugar],apple,null,[<harvestcraft:applepieitem>],80);
//Tea 
recipes.removeByRecipeName("harvestcraft:teaitem");
mods.exsartagine.ExSartagine.addPotRecipe(teaLeaf, <harvestcraft:teaitem>);
//Covfefe 
recipes.removeByRecipeName("harvestcraft:coffeeitem");
mods.exsartagine.ExSartagine.addPotRecipe(coffeeBean, <harvestcraft:coffeeitem>);
//Popcorn
recipes.removeByRecipeName("harvestcraft:popcornitem");
mods.exsartagine.ExSartagine.addKettleRecipe([corn],null,null,[<harvestcraft:popcornitem>],80);
//Raisins
recipes.removeByRecipeName("harvestcraft:popcornitem");
DryingRack.addRecipe("raisins", <harvestcraft:raisinsitem>, grape, 120 * 30);
//Puffed Rice (Cake)
recipes.removeByRecipeName("harvestcraft:ricecakeitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rice],null,null,[<harvestcraft:ricecakeitem>],80);
//Toasted Coconut
recipes.removeByRecipeName("harvestcraft:foodToastedcoconut");
mods.exsartagine.ExSartagine.addKettleRecipe([coconut],null,null,[<harvestcraft:toastedcoconutitem>],80);
//Toasted Pumpkin Seeds
recipes.removeByRecipeName("harvestcraft:roastedpumpkinseedsitem");
mods.exsartagine.ExSartagine.addKettleRecipe([pumpkinSeeds],null,null,[<harvestcraft:roastedpumpkinseedsitem>],80);
//Vanilla
recipes.removeByRecipeName("harvestcraft:vanillaitem");
mods.exsartagine.ExSartagine.addKettleRecipe([vanillaBean],null,null,[<harvestcraft:vanillaitem>],80);
DryingRack.addRecipe("vanilla", <harvestcraft:vanillaitem>, vanillaBean, 120 * 30);
//Sesame
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
mods.exsartagine.ExSartagine.addKettleRecipe([sesame],null,null,[<harvestcraft:toastedsesameseedsitem>],80);
//Dough
recipes.removeByRecipeName("harvestcraft:doughitem");
recipes.removeByRecipeName("harvestcraft:doughitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([flour,salt])
  .setFluid(waterBucket)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:doughitem>)
  .create();
//Pasta
recipes.removeByRecipeName("harvestcraft:pastaitem");
RecipeBuilder.get("chef")
  .setShapeless([dough,butter])
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:pastaitem>*5)
  .create();
//Heavy Cream
recipes.removeByRecipeName("harvestcraft:heavycreamitem");
recipes.addShapeless("heavy_cream", <harvestcraft:heavycreamitem>*2,
    [milkBottle]);	

//Butter
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
mods.exsartagine.ExSartagine.addKettleRecipe([salt,heavyCream],null,null,[<harvestcraft:butteritem>],80);

//Juices
recipes.removeByRecipeName("harvestcraft:applejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apple])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:applejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:melonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([melon])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:melonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:carrotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([carrot])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:carrotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([strawberry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:strawberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grape])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:grapejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blueberry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:blueberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cherryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cherry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:cherryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:papayajuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([papaya])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:papayajuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([starfruit])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:starfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:orangejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([orange])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:orangejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:peachjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([peach])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:peachjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:limejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([lime])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:limejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:mangojuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([mango])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:mangojuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pomegranate])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:pomegranatejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blackberry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:blackberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([raspberry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:raspberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwijuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([kiwi])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:kiwijuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cranberry])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:cranberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cactusfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cactusFruit])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:cactusfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:plumjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([plum])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:plumjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pearjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pear])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:pearjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apricot])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:apricotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:figjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([fig])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:figjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grapeFruit])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:grapefruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([persimmon])
  .setFluid(waterBottle2)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:persimmonjuiceitem>*2)
  .create();

//Pumpkin soup
recipes.removeByRecipeName("harvestcraft:pumpkinsoupitem");
mods.exsartagine.ExSartagine.addKettleRecipe([stock,heavyCream],pumpkin,null,[<harvestcraft:pumpkinsoupitem>],80);
//melon smoothie
recipes.removeByRecipeName("harvestcraft:melonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("melon_smoothie")
  .setShapeless([melon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:melonsmoothieitem>)
  .create();
//Carrot soup
recipes.removeByRecipeName("harvestcraft:carrotsoupitem");
mods.exsartagine.ExSartagine.addKettleRecipe([stock,heavyCream],carrot,null,[<harvestcraft:carrotsoupitem>],80);
//Glassed carrots
recipes.removeByRecipeName("harvestcraft:glazedcarrotsitem");
mods.exsartagine.ExSartagine.addKettleRecipe([carrot,butter,sugar],null,null,[<harvestcraft:glazedcarrotsitem>],80);
//Mashed potato
recipes.removeByRecipeName("harvestcraft:mashedpotatoesitem");
Mortar.addRecipe(["stone"], <harvestcraft:mashedpotatoesitem>, 4, [potato,salt]);
//Potato salad
recipes.removeByRecipeName("harvestcraft:potatosaladitem");
recipes.addShapeless("potatosaladitem",<harvestcraft:potatosaladitem>,[potato,cutBad,mayo]);
RecipeBuilder.get("chef")
  .setName("potato_salad")
  .setShapeless([<ore:cookedPotato>, <ore:foodMayo>])
  .addTool(cut,1)
  .addOutput(<harvestcraft:potatosaladitem>)
  .create();
//fries -&C
recipes.removeByRecipeName("harvestcraft:friesitem");
mods.exsartagine.ExSartagine.addKettleRecipe([<contenttweaker:raw_fries>,salt],null,null,[<harvestcraft:friesitem>],80);
recipes.addShapeless("fries",<contenttweaker:raw_fries>,[potato,cutBad]);
RecipeBuilder.get("chef")
  .setName("fries")
  .setShapeless([<ore:cropPotato>])
  .addTool(cut, 1)
  .addOutput(<contenttweaker:raw_fries>)
  .create();
//Potato Soup
recipes.removeByRecipeName("harvestcraft:potatosoupitem");
mods.exsartagine.ExSartagine.addKettleRecipe([stock,heavyCream],potato,null,[<harvestcraft:potatosoupitem>],80);
//Grilled mushroom
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem");
mods.exsartagine.ExSartagine.addPanRecipe(mushroom, <harvestcraft:grilledmushroomitem>);
//Stuffed mushrooms
recipes.removeByRecipeName("harvestcraft:stuffedmushroomitem");
mods.exsartagine.ExSartagine.addKettleRecipe([toast,mushroom],cheese,null,[<harvestcraft:stuffedmushroomitem>],80);
//Chicken sandwich -&C
recipes.removeByRecipeName("harvestcraft:chickensandwichitem");
recipes.addShapeless("chicken_sandwich", <harvestcraft:chickensandwichitem>,
    [bread,cookedChicken,mayo]);	
RecipeBuilder.get("chef")
  .setName("chicken_sandwich")
  .setShapeless([bread,cookedChicken,mayo])
  .addOutput(<harvestcraft:chickensandwichitem>)
  .create();
//Chicken noodle soup
recipes.removeByRecipeName("harvestcraft:chickennoodlesoupitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawChicken,carrot,pasta,stock],null,null,[<harvestcraft:chickennoodlesoupitem>],80);
//Chicken pot pie
recipes.removeByRecipeName("harvestcraft:chickenpotpieitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawChicken,potato,carrot,dough],null,null,[<harvestcraft:chickenpotpieitem>],80);
//Breaded porkshop
recipes.removeByRecipeName("harvestcraft:breadedporkchopitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawPork,batter],null,null,[<harvestcraft:breadedporkchopitem>],80);
//Minced meat -&C
recipes.addShapeless("minced_meat",<mod_lavacow:mousse>,[rawPork,cutBad]);
RecipeBuilder.get("chef")
  .setName("minced_meat")
  .setShapeless([rawPork])
  .addTool(cut, 1)
  .addOutput(<mod_lavacow:mousse>)
  .create();
//Wiener
RecipeBuilder.get("chef")
  .setName("wiener")
  .setShapeless([<mod_lavacow:mousse>, <contenttweaker:sheep_intestines>])
  .addOutput(wiener)
  .create();
//Hot-dog
recipes.removeByRecipeName("harvestcraft:hotdogitem");
mods.exsartagine.ExSartagine.addKettleRecipe([wiener,bread],null,null,[<harvestcraft:hotdogitem>],80);
//Baked Ham
recipes.removeByRecipeName("harvestcraft:bakedhamitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawPork,apple,sugar],null,null,[<harvestcraft:bakedhamitem>],80);
//Simple patty
RecipeBuilder.get("chef")
  .setName("raw_patty")
  .setShapeless([anyRawMeat, salt, spice])
  .addOutput(patty)
  .create();
//Hamburger
recipes.removeByRecipeName("harvestcraft:hamburgeritem");
mods.exsartagine.ExSartagine.addKettleRecipe([patty,bread],null,null,[<harvestcraft:hamburgeritem>],80);
//Cheeseburguer -&C
RecipeBuilder.get("chef")
  .setName("cheeseburger")
  .setShapeless([<harvestcraft:hamburgeritem>, cheese])
  .addOutput(<harvestcraft:cheeseburgeritem>)
  .create();
//Pot roast
recipes.removeByRecipeName("harvestcraft:potroastitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawBeef,potato,carrot,stock],null,null,[<harvestcraft:potroastitem>],80);
//Fish sandwich
recipes.removeByRecipeName("harvestcraft:fishsandwichitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawFish,bread],mayo,null,[<harvestcraft:fishsandwichitem>],80);
//Fish sticks 
recipes.removeByRecipeName("harvestcraft:fishsticksitem");
mods.exsartagine.ExSartagine.addKettleRecipe([rawFish,batter],null,null,[<harvestcraft:fishsticksitem>],80);
//Fish & chips -&C
RecipeBuilder.get("chef")
  .setName("fish_chips")
  .setShapeless([<harvestcraft:fishsticksitem>, <harvestcraft:friesitem>])
  .addOutput(<harvestcraft:fishandchipsitem>)
  .create();
//Mayonnaise
recipes.removeByRecipeName("harvestcraft:mayoitem");
RecipeBuilder.get("chef")
  .setName("mayonnaise")
  .setShapeless([egg])
  .addTool(<artisanworktables:artisans_mortar_gold>, 3)
  .addOutput(<harvestcraft:mayoitem>)
  .create();
//Fried egg
recipes.removeByRecipeName("harvestcraft:friedeggitem");
mods.exsartagine.ExSartagine.addPanRecipe(egg, <harvestcraft:friedeggitem>);
//Scrambled egg
recipes.removeByRecipeName("harvestcraft:scrambledeggitem");
mods.exsartagine.ExSartagine.addKettleRecipe([egg,egg,egg],null,null,[<harvestcraft:scrambledeggitem>],40);
//Boiled egg 
mods.jei.JEI.removeAndHide(<harvestcraft:boiledeggitem>);
furnace.remove(<betteranimalsplus:fried_egg>, <harvestcraft:boiledeggitem>);
//Egg Salad -&C
recipes.removeByRecipeName("harvestcraft:eggsaladitem");
recipes.addShapeless("egg_salad",<harvestcraft:eggsaladitem>,[egg, mayo]);
RecipeBuilder.get("chef")
  .setName("egg_salad")
  .setShapeless([egg, mayo])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:eggsaladitem>)
  .create();
//Caramel
recipes.removeByRecipeName("harvestcraft:caramelitem");
mods.exsartagine.ExSartagine.addPanRecipe(sugar, <harvestcraft:caramelitem>);
mods.exsartagine.ExSartagine.addKettleRecipe([sugar],null,null,[<harvestcraft:caramelitem>],80);
//Taffy
recipes.removeByRecipeName("harvestcraft:taffyitem");
mods.exsartagine.ExSartagine.addKettleRecipe([sugar,salt],null,waterBottle,[<harvestcraft:taffyitem>],80);
//Cocoa Powder
Mortar.addRecipe(["stone"], <harvestcraft:cocoapowderitem>, 4, [cocoa]);
//Chocolate bar
recipes.removeByRecipeName("harvestcraft:chocolatebaritem");
mods.exsartagine.ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,butter,milkBottle],null,null,[<harvestcraft:chocolatebaritem>*4],80);
//Hot chocolate
recipes.removeByRecipeName("harvestcraft:hotchocolateitem");
mods.exsartagine.ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,milkBottle],null,waterBottle,[<harvestcraft:hotchocolateitem>*2],80);
//Chocolate ice cream 
recipes.removeByRecipeName("harvestcraft:chocolateicecreamitem");
RecipeBuilder.get("chef")
  .setName("chocolate_icecream")
  .setShapeless([iceCream,<harvestcraft:cocoapowderitem>])
  .addTool(<artisanworktables:artisans_mortar_gold>, 1)
  .addOutput(<harvestcraft:chocolateicecreamitem>)
  .create();
//Vegetable soup
recipes.removeByRecipeName("harvestcraft:vegetablesoupitem");
mods.exsartagine.ExSartagine.addKettleRecipe([potato,carrot,mushroom,stock],null,null,[<harvestcraft:vegetablesoupitem>],80);
//Fruit salad -&C
recipes.removeByRecipeName("harvestcraft:fruitsaladitem");
recipes.addShapeless("fruit_salad",<harvestcraft:fruitsaladitem>,[<ore:listAllfruit>,cutBad,<ore:listAllfruit>]);
RecipeBuilder.get("chef")
  .setName("fruit_salad")
  .setShapeless([<ore:listAllfruit>,<ore:listAllfruit>])
  .addTool(cut, 1)
  .addOutput(<harvestcraft:fruitsaladitem>)
  .create();
//Spaghetti 
recipes.removeByRecipeName("harvestcraft:spagettiitem");
mods.exsartagine.ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice],null,null,[<harvestcraft:spagettiitem>],80);








//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation