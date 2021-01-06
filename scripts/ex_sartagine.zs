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

JEI.removeAndHide(<exsartagine:flour>);
JEI.removeAndHide(<exsartagine:breadfine>);
JEI.removeAndHide(<exsartagine:doughbread>);
JEI.removeAndHide(<exsartagine:flour>);
JEI.removeAndHide(<exsartagine:doughpizza>);
JEI.removeAndHide(<exsartagine:dough>);
JEI.removeAndHide(<exsartagine:salt>);
JEI.removeAndHide(<exsartagine:potato.boiled>);
JEI.removeAndHide(<exsartagine:beans.boiled>);
JEI.removeAndHide(<exsartagine:smelter>);
JEI.removeAndHide(<exsartagine:breadveggieraw>);
JEI.removeAndHide(<exsartagine:breadveggie>);
JEI.removeAndHide(<exsartagine:breadmeatraw>);
JEI.removeAndHide(<exsartagine:breadmeat>);
JEI.hideCategory("artisanworktables_chef_worktable");
JEI.hideCategory("artisanworktables_chef_workshop");
JEI.hideCategory("artisanworkstumps_chef");

ExSartagine.addHeatSource(<blockstate:betterwithmods:stoked_flame>);
ExSartagine.addPlaceable(<blockstate:betterwithmods:stoked_flame>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);



/*
Here goes every reworked recipe for every single food item, RIP Foreck. 

=============================NOTES=============================
-Furnace recipes are switched over to the smoker and kettle; kettle recipes take 80 ticks to complete compared to the smoker's 100 due to its superiority.
-Complex baking recipes are always with a kettle, if chopping of harder ingredients is needed, the catalyst should be "cutKettle"; if mixing is required, the catalyst should be "mixingKettle."
-Complex non baking recipes are always at the chef workstation, if chopping of harder ingredients or mixing is required, the catalyst should be a "cookKit". Recipes that are not as complex may be crafted normally, but if cutting is involved, they should use "cookKitBad" in the recipe.
-"Grilled" items are cooked in the pan, if they are more complex, then they are cooked in the kettle.
-"Stock" is the main use of the basic pot, but it can also be used for recipes that are water + a catalyst, e.g. tea or coffee.
=============================SYMBOLS=============================
	-&C = Recipe also available in the normal crafting table/grid and or not removed
	-&R = Item should use a container (bottle, bowl, etc) AND return one when eaten, consumed or used in a recipe 
	
*/

var cookKitBad = <contenttweaker:cooking_kit>.anyDamage().transformDamage(3);
var cookKit = <contenttweaker:cooking_kit>;
var cookKitKettle = <contenttweaker:cooking_kit>.anyDamage().transformDamage();

var redRose = <minecraft:dye:1>;

var waterBottle = <liquid:water>*333;
var waterBottle2 = <liquid:water>*666;
var waterBucket = <liquid:water>*1000;
var milkBottle = <animania:milk_bottle>.giveBack(<minecraft:glass_bottle>);
var coconutMilk = <harvestcraft:coconutmilkitem>;
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
var cookedPork = <animania:cooked_prime_pork>|<minecraft:cooked_porkchop>|<harvestcraft:bbqjackfruititem>;
var rawBacon = <animania:raw_prime_bacon>|<harvestcraft:rawtofaconitem>;
var cookedBacon = <animania:cooked_prime_bacon>|<harvestcraft:cookedtofaconitem>;
var rawBeef = <ore:listAllbeefraw>;
var cookedBeef = <ore:listAllbeefcooked>;
var rawFish = <ore:listAllfishraw>;
var cookedFish = <ore:listAllfishcooked>;
var rawMutton = <ore:listAllmuttonraw>;
var rawVenison = <ore:foodVenisonraw>;
var cookedMeat = <ore:listAllmeatcooked>;
var rawShrimp = <ore:foodShrimpraw>;
var veggie = <ore:listAllveggie>;
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
var sweetPotato = <harvestcraft:sweetpotatoitem>;
var bakedsweetpotato = <harvestcraft:bakedsweetpotatoitem>;
var eggplant = <harvestcraft:eggplantitem>;
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
var banana = <harvestcraft:bananaitem>;
var gooseberry = <harvestcraft:gooseberryitem>;
var potato = <ore:cropPotato>;
var cookedPotato = <ore:cookedPotato>;
var mushroom = <ore:listAllmushroom>;
var pasta = <harvestcraft:pastaitem>;
var wiener = <contenttweaker:wiener>;
var patty = <contenttweaker:patty>;
var anyMeat = <ore:foodMeats>;
var anyRawMeat = <ore:listAllmeatraw>;
var hydraMeat = <twilightforest:hydra_chop>;
var cocoa = <minecraft:dye:3>;
var tomato = <ore:cropTomato>;
var lettuce = <harvestcraft:lettuceitem>;
var onion = <harvestcraft:onionitem>;
var cornmeal = <harvestcraft:cornmealitem>;
var tortilla = <harvestcraft:tortillaitem>;
var cookingOil = <harvestcraft:oliveoilitem>;
var peanut = <harvestcraft:peanutitem>;
var seed = <ore:listAllseed>;
var nut = <ore:listAllnut>;
var nutButter = <ore:listAllnutbutter>;
var vinegar = <harvestcraft:vinegaritem>;
var cucumber = <ore:cropCucumber>;
var springSalad = <harvestcraft:springsaladitem>;
var chili = <rustic:chili_pepper>;
var bellpepper = <harvestcraft:bellpepperitem>;
var stewCondiment = <ore:listAllStewcondiment>;
var beans = <harvestcraft:beanitem>;
var hotSauce = <harvestcraft:hotsauceitem>;
var groundCinnamon = <harvestcraft:groundcinnamonitem>;
var blackPepper = <harvestcraft:blackpepperitem>;
var beet = <ore:cropBeet>;
var broccoli = <harvestcraft:broccoliitem>;
var marshmellows = <harvestcraft:marshmellowsitem>;
var peas = <ore:cropPeas>;
var yogurt = <harvestcraft:plainyogurtitem>;
var turnip = <ore:cropTurnip>;
var tuber = <ore:listAllTuber>;
var ginger = <harvestcraft:gingeritem>;
var mustardSeed = <harvestcraft:mustardseedsitem>;
var mustard = <harvestcraft:mustarditem>;
var veggieGreen = <ore:listAllgreenveggie>;
var garlic = <ore:cropGarlic>;
var radish = <harvestcraft:radishitem>;
var zucchini = <ore:cropZucchini>;
var celery = <ore:cropCelery>;
var aSparagus = <ore:cropAsparagus>;
var avocado = <harvestcraft:avocadoitem>;
var fruit = <ore:listAllfruit>;
var donut = <harvestcraft:donutitem>;
var syrup = <harvestcraft:maplesyrupitem>;
var sunflowerSeed = <harvestcraft:sunflowerseedsitem>;
var mint = <harvestcraft:spiceleafitem>;

//Stock Recipes
recipes.remove(<harvestcraft:stockitem>);
ExSartagine.addPotRecipe(<minecraft:bone>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:7>, stock);
ExSartagine.addPotRecipe(veggie, stock*2);
ExSartagine.addPotRecipe(<ore:listAllmeatraw>|<betterwithaddons:congealed>, stock*3);


//Carrot Cake
recipes.removeByRecipeName("harvestcraft:carrotcakeitem");
ExSartagine.addKettleRecipe([dough,carrot,sugar],null,waterBottle,[<harvestcraft:carrotcakeitem>],200);
//Cheese Cake
recipes.removeByRecipeName("harvestcraft:cheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar],null,waterBottle,[<harvestcraft:cheesecakeitem>],200);
//Cherry Cheesecake
recipes.removeByRecipeName("harvestcraft:cherrycheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar,cherry],null,waterBottle,[<harvestcraft:cherrycheesecakeitem>],200);
//Sprinkles / Chocolate Sprinkles Cake
recipes.addShapeless("sprinkles", sprinkles*4,
    [sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>]);	
RecipeBuilder.get("chef")
  .setShapeless([sugar,redRose,<minecraft:dye:2>,<minecraft:dye:11>])
  .addOutput(sprinkles*6)
  .create();
recipes.removeByRecipeName("harvestcraft:chocolatesprinklecakeitem");
ExSartagine.addKettleRecipe([dough,cocoaPowder,sugar,sprinkles],null,waterBottle,[<harvestcraft:chocolatesprinklecakeitem>],200);
//Holiday Cake
recipes.removeByRecipeName("harvestcraft:holidaycakeitem");
ExSartagine.addKettleRecipe([egg,sugar,cherry,heavyCream,spice],null,waterBottle,[<harvestcraft:holidaycakeitem>],200);
//Lamington Cake
recipes.removeByRecipeName("harvestcraft:lamingtonitem");
ExSartagine.addKettleRecipe([dough, chocolateBar, toastedCoconut],null,waterBottle,[<harvestcraft:lamingtonitem>],200);
//Pavlova Cake
recipes.removeByRecipeName("harvestcraft:pavlovaitem");
ExSartagine.addKettleRecipe([egg, sugar, lemon, meringue, strawberry],null,waterBottle,[<harvestcraft:pavlovaitem>],200);
//Pineapple Cake
recipes.removeByRecipeName("harvestcraft:pineappleupsidedowncakeitem");
ExSartagine.addKettleRecipe([pineapple, dough, cherry, walnut],null,waterBottle,[<harvestcraft:pineappleupsidedowncakeitem>],200);
//pumpkin Cheesecake
recipes.removeByRecipeName("harvestcraft:pumpkincheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar,pumpkin],null,waterBottle,[<harvestcraft:pumpkincheesecakeitem>],200);
//Red Velvet Cake
recipes.removeByRecipeName("harvestcraft:redvelvetcakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,milkBottle,sugar,redRose],null,null,[<harvestcraft:redvelvetcakeitem>],200);
//Cooked Calamari
furnace.remove(cookedCalamari);
mods.futuremc.Smoker.addRecipe(calamari, cookedCalamari);
ExSartagine.addKettleRecipe([calamari],null,null,[cookedCalamari],80);
//Grilled Asparagus
recipes.removeByRecipeName("harvestcraft:asparagusitem");
ExSartagine.addPanRecipe(aSparagus,<harvestcraft:grilledasparagusitem>);
//Baked Sweet Potato
recipes.removeByRecipeName("harvestcraft:bakedsweetpotatoitem");
mods.futuremc.Smoker.addRecipe(sweetPotato, bakedsweetpotato);
ExSartagine.addKettleRecipe([sweetPotato],null,null,[bakedsweetpotato],80);
//Grilled Eggplant
recipes.removeByRecipeName("harvestcraft:grilledeggplantitem");
ExSartagine.addPanRecipe(eggplant,<harvestcraft:grilledeggplantitem>);
//Buttered Toast
recipes.removeByRecipeName("harvestcraft:toastitem");
ExSartagine.addKettleRecipe([bread,butter],null,null,[<harvestcraft:toastitem>],80);
//Ice cream
recipes.removeByRecipeName("harvestcraft:icecreamitem");
recipes.removeByRecipeName("harvestcraft:icecreamitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([milkBottle, snowball, salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:icecreamitem>*3)
  .create();
//Grilled Cheese
recipes.removeByRecipeName("harvestcraft:grilledcheeseitem");
ExSartagine.addKettleRecipe([bread,butter,butter,cheese],null,null,[<harvestcraft:grilledcheeseitem>],80);
//Apple Sauce
recipes.removeByRecipeName("harvestcraft:applesauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:applesauceitem>, 4, [apple]);
//Pumpkin Bread
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
ExSartagine.addKettleRecipe([dough,sugar,pumpkin],null,null,[<harvestcraft:pumpkinbreaditem>],80);
//Apple Pie
recipes.removeByRecipeName("harvestcraft:pumpkinbreaditem");
ExSartagine.addKettleRecipe([dough,sugar,apple],null,null,[<harvestcraft:applepieitem>],80);
//Tea 
recipes.removeByRecipeName("harvestcraft:teaitem");
ExSartagine.addPotRecipe(teaLeaf, <harvestcraft:teaitem>);
//Coffee
recipes.removeByRecipeName("harvestcraft:coffeeitem");
ExSartagine.addPotRecipe(coffeeBean, <harvestcraft:coffeeitem>);
//Popcorn
recipes.removeByRecipeName("harvestcraft:popcornitem");
ExSartagine.addKettleRecipe([corn],null,null,[<harvestcraft:popcornitem>],80);
//Raisins
recipes.removeByRecipeName("harvestcraft:popcornitem");
DryingRack.addRecipe("raisins", <harvestcraft:raisinsitem>, grape, 120 * 30);
//Puffed Rice (Cake)
recipes.removeByRecipeName("harvestcraft:ricecakeitem");
ExSartagine.addKettleRecipe([rice],null,null,[<harvestcraft:ricecakeitem>],80);
//Toasted Coconut
recipes.removeByRecipeName("harvestcraft:foodToastedcoconut");
ExSartagine.addKettleRecipe([coconut],null,null,[<harvestcraft:toastedcoconutitem>],80);
//Toasted Pumpkin Seeds
recipes.removeByRecipeName("harvestcraft:roastedpumpkinseedsitem");
ExSartagine.addKettleRecipe([pumpkinSeeds],null,null,[<harvestcraft:roastedpumpkinseedsitem>],80);
//Vanilla
recipes.removeByRecipeName("harvestcraft:vanillaitem");
ExSartagine.addKettleRecipe([vanillaBean],null,null,[<harvestcraft:vanillaitem>],80);
DryingRack.addRecipe("vanilla", <harvestcraft:vanillaitem>, vanillaBean, 120 * 30);
//Sesame
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
ExSartagine.addKettleRecipe([sesame],null,null,[<harvestcraft:toastedsesameseedsitem>],80);
//Dough
recipes.removeByRecipeName("harvestcraft:doughitem");
recipes.removeByRecipeName("harvestcraft:doughitem_dustsalt");
RecipeBuilder.get("chef")
  .setShapeless([flour,salt])
  .setFluid(waterBucket)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:doughitem>)
  .create();
//Pasta
recipes.removeByRecipeName("harvestcraft:pastaitem");
RecipeBuilder.get("chef")
  .setShapeless([dough,butter])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pastaitem>*5)
  .create();
//Heavy Cream
recipes.removeByRecipeName("harvestcraft:heavycreamitem");
recipes.addShapeless("heavy_cream", <harvestcraft:heavycreamitem>*2,
    [milkBottle]);	

//Butter
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
ExSartagine.addKettleRecipe([salt,heavyCream],null,null,[<harvestcraft:butteritem>],80);

//Juices
recipes.removeByRecipeName("harvestcraft:applejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apple])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:applejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:melonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([melon])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:melonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:carrotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([carrot])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:carrotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([strawberry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grape])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blueberry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blueberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cherryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cherry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:papayajuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([papaya])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:papayajuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([starfruit])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:starfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:orangejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([orange])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:orangejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:peachjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([peach])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peachjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:limejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([lime])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:limejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:mangojuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([mango])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mangojuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pomegranate])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pomegranatejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blackberry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blackberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([raspberry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwijuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([kiwi])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:kiwijuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cranberry])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cranberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cactusfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cactusFruit])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cactusfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:plumjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([plum])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:plumjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pearjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pear])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pearjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apricot])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:figjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([fig])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:figjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grapeFruit])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapefruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([persimmon])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:persimmonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:lemonaideitem");
RecipeBuilder.get("chef")
  .setShapeless([lemon])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lemonaideitem>*2)
  .create();

//Smoothies
recipes.removeByRecipeName("harvestcraft:melonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("melon_smoothie")
  .setShapeless([melon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:melonsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("strawberry_smoothie")
  .setShapeless([strawberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:lemonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("lemon_smoothie")
  .setShapeless([lemon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lemonsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("blueberry_smoothie")
  .setShapeless([blueberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blueberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:cherrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("cherry_smoothie")
  .setShapeless([cherry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:papayasmoothieitem");
RecipeBuilder.get("chef")
  .setName("papaya_smoothie")
  .setShapeless([papaya,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:papayasmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitsmoothieitem");
RecipeBuilder.get("chef")
  .setName("starfruit_smoothie")
  .setShapeless([starfruit,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:starfruitsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:bananasmoothieitem");
RecipeBuilder.get("chef")
  .setName("banana_smoothie")
  .setShapeless([banana,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bananasmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:orangesmoothieitem");
RecipeBuilder.get("chef")
  .setName("orange_smoothie")
  .setShapeless([orange,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:orangesmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:peachsmoothieitem");
RecipeBuilder.get("chef")
  .setName("peach_smoothie")
  .setShapeless([peach,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peachsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:limesmoothieitem");
RecipeBuilder.get("chef")
  .setName("lime_smoothie")
  .setShapeless([lime,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:limesmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:mangosmoothieitem");
RecipeBuilder.get("chef")
  .setName("mango_smoothie")
  .setShapeless([mango,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mangosmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatesmoothieitem");
RecipeBuilder.get("chef")
  .setName("pomegranate_smoothie")
  .setShapeless([pomegranate,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pomegranatesmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("blackberry_smoothie")
  .setShapeless([blackberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blackberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("raspberry_smoothie")
  .setShapeless([raspberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwismoothieitem");
RecipeBuilder.get("chef")
  .setName("kiwi_smoothie")
  .setShapeless([kiwi,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:kiwismoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotsmoothieitem");
RecipeBuilder.get("chef")
  .setName("apricot_smoothie")
  .setShapeless([apricot,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:figsmoothieitem");
RecipeBuilder.get("chef")
  .setName("fig_smoothie")
  .setShapeless([fig,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:figsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitsmoothieitem");
RecipeBuilder.get("chef")
  .setName("grapefruit_smoothie")
  .setShapeless([grapeFruit,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapefruitsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("persimmon_smoothie")
  .setShapeless([persimmon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:persimmonsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:gooseberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("gooseberry_smoothie")
  .setShapeless([gooseberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:gooseberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:applesmoothieitem");
RecipeBuilder.get("chef")
  .setName("apple_smoothie")
  .setShapeless([apple,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:applesmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:coconutsmoothieitem");
RecipeBuilder.get("chef")
  .setName("coconut_smoothie")
  .setShapeless([coconut,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:coconutsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("cranberry_smoothie")
  .setShapeless([cranberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cranberrysmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:grapesmoothieitem");
RecipeBuilder.get("chef")
  .setName("grape_smoothie")
  .setShapeless([grape,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapesmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:pearsmoothieitem");
RecipeBuilder.get("chef")
  .setName("pear_smoothie")
  .setShapeless([pear,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pearsmoothieitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:plumsmoothieitem");
RecipeBuilder.get("chef")
  .setName("plum_smoothie")
  .setShapeless([plum,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:plumsmoothieitem>)
  .create();

//Yogurts
recipes.removeByRecipeName("harvestcraft:pineappleyogurtitem");
RecipeBuilder.get("chef")
  .setName("pineapple_yogurt")
  .setShapeless([yogurt,pineapple])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pineappleyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:papayayogurtitem");
RecipeBuilder.get("chef")
  .setName("papaya_yogurt")
  .setShapeless([yogurt,papaya])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:papayayogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruityogurtitem");
RecipeBuilder.get("chef")
  .setName("starfruit_yogurt")
  .setShapeless([yogurt,starfruit])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:starfruityogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:pearyogurtitem");
RecipeBuilder.get("chef")
  .setName("pear_yogurt")
  .setShapeless([yogurt,pear])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pearyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:plumyogurtitem");
RecipeBuilder.get("chef")
  .setName("plum_yogurt")
  .setShapeless([yogurt,plum])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:plumyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:bananayogurtitem");
RecipeBuilder.get("chef")
  .setName("banana_yogurt")
  .setShapeless([yogurt,banana])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bananayogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:coconutyogurtitem");
RecipeBuilder.get("chef")
  .setName("coconut_yogurt")
  .setShapeless([yogurt,coconut])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:coconutyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:orangeyogurtitem");
RecipeBuilder.get("chef")
  .setName("orange_yogurt")
  .setShapeless([yogurt,orange])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:orangeyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:peachyogurtitem");
RecipeBuilder.get("chef")
  .setName("peach_yogurt")
  .setShapeless([yogurt,peach])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peachyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:limeyogurtitem");
RecipeBuilder.get("chef")
  .setName("lime_yogurt")
  .setShapeless([yogurt,lime])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:limeyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:mangoyogurtitem");
RecipeBuilder.get("chef")
  .setName("mango_yogurt")
  .setShapeless([yogurt,mango])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mangoyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranateyogurtitem");
RecipeBuilder.get("chef")
  .setName("pomegranate_yogurt")
  .setShapeless([yogurt,pomegranate])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pomegranateyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:vanillayogurtitem");
RecipeBuilder.get("chef")
  .setName("vanilla_yogurt")
  .setShapeless([yogurt,<harvestcraft:vanillaitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:vanillayogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("blueberry_yogurt")
  .setShapeless([yogurt,blueberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blueberryyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:lemonyogurtitem");
RecipeBuilder.get("chef")
  .setName("lemon_yogurt")
  .setShapeless([yogurt,lemon])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lemonyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:cherryyogurtitem");
RecipeBuilder.get("chef")
  .setName("cherry_yogurt")
  .setShapeless([yogurt,cherry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherryyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("strawberry_yogurt")
  .setShapeless([yogurt,strawberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberryyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:grapeyogurtitem");
RecipeBuilder.get("chef")
  .setName("grape_yogurt")
  .setShapeless([yogurt,grape])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapeyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:chocolateyogurtitem");
RecipeBuilder.get("chef")
  .setName("chocolate_yogurt")
  .setShapeless([yogurt,cocoaPowder])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chocolateyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:blackberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("blackberry_yogurt")
  .setShapeless([yogurt,blackberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blackberryyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:pumpkinyogurtitem");
RecipeBuilder.get("chef")
  .setName("pumpkin_yogurt")
  .setShapeless([yogurt,pumpkin])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pumpkinyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:raspberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("raspberry_yogurt")
  .setShapeless([yogurt,raspberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberryyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:melonyogurtitem");
RecipeBuilder.get("chef")
  .setName("melon_yogurt")
  .setShapeless([yogurt,melon])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:melonyogurtitem>)
  .create(); 
recipes.removeByRecipeName("harvestcraft:kiwiyogurtitem");
RecipeBuilder.get("chef")
  .setName("kiwi_yogurt")
  .setShapeless([yogurt,kiwi])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:kiwiyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:appleyogurtitem");
RecipeBuilder.get("chef")
  .setName("apple_yogurt")
  .setShapeless([yogurt,apple])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:appleyogurtitem>)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotyogurtitem");
RecipeBuilder.get("chef")
  .setName("apricot_yogurt")
  .setShapeless([yogurt,apricot])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotyogurtitem>)
  .create(); 
recipes.removeByRecipeName("harvestcraft:figyogurtitem");
RecipeBuilder.get("chef")
  .setName("fig_yogurt")
  .setShapeless([yogurt,fig])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:figyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:grapefruityogurtitem");
RecipeBuilder.get("chef")
  .setName("grapefruit_yogurt")
  .setShapeless([yogurt,grapeFruit])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapefruityogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:persimmonyogurtitem");
RecipeBuilder.get("chef")
  .setName("persimmon_yogurt")
  .setShapeless([yogurt,persimmon])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:persimmonyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:gooseberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("gooseberry_yogurt")
  .setShapeless([yogurt,gooseberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:gooseberryyogurtitem>)
  .create();  
recipes.removeByRecipeName("harvestcraft:cranberryyogurtitem");
RecipeBuilder.get("chef")
  .setName("cranberry_yogurt")
  .setShapeless([yogurt,cranberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cranberryyogurtitem>)
  .create();  
  
//Pumpkin soup
recipes.removeByRecipeName("harvestcraft:pumpkinsoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,pumpkin],cookKitKettle,null,[<harvestcraft:pumpkinsoupitem>],80);
//Carrot soup
recipes.removeByRecipeName("harvestcraft:carrotsoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,carrot],cookKitKettle,null,[<harvestcraft:carrotsoupitem>],80);
//Glassed carrots
recipes.removeByRecipeName("harvestcraft:glazedcarrotsitem");
ExSartagine.addKettleRecipe([carrot,butter,sugar],cookKitKettle,null,[<harvestcraft:glazedcarrotsitem>],80);
//Mashed potato
recipes.removeByRecipeName("harvestcraft:mashedpotatoesitem");
Mortar.addRecipe(["stone"], <harvestcraft:mashedpotatoesitem>, 4, [potato,salt]);
//Potato salad
recipes.removeByRecipeName("harvestcraft:potatosaladitem");
recipes.addShapeless("potatosaladitem",<harvestcraft:potatosaladitem>,[potato,cookKitBad,mayo]);
RecipeBuilder.get("chef")
  .setName("potato_salad")
  .setShapeless([<ore:cookedPotato>, <ore:foodMayo>])
  .addTool(cookKit,1)
  .addOutput(<harvestcraft:potatosaladitem>)
  .create();
//fries -&C
recipes.removeByRecipeName("harvestcraft:friesitem");
ExSartagine.addKettleRecipe([<contenttweaker:raw_fries>,salt],null,null,[<harvestcraft:friesitem>],80);
recipes.addShapeless("fries",<contenttweaker:raw_fries>,[potato,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fries")
  .setShapeless([<ore:cropPotato>])
  .addTool(cookKit, 1)
  .addOutput(<contenttweaker:raw_fries>)
  .create();
//Potato Soup
recipes.removeByRecipeName("harvestcraft:potatosoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,potato],cookKitKettle,null,[<harvestcraft:potatosoupitem>],80);
//Grilled mushroom
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem");
ExSartagine.addPanRecipe(mushroom, <harvestcraft:grilledmushroomitem>);
//Stuffed mushrooms
recipes.removeByRecipeName("harvestcraft:stuffedmushroomitem");
ExSartagine.addKettleRecipe([toast,mushroom],cheese,null,[<harvestcraft:stuffedmushroomitem>],80);
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
ExSartagine.addKettleRecipe([rawChicken,carrot,pasta,stock],cookKitKettle,null,[<harvestcraft:chickennoodlesoupitem>],80);
//Chicken pot pie
recipes.removeByRecipeName("harvestcraft:chickenpotpieitem");
ExSartagine.addKettleRecipe([rawChicken,potato,carrot,dough],cookKitKettle,null,[<harvestcraft:chickenpotpieitem>],80);
//Breaded porkshop
recipes.removeByRecipeName("harvestcraft:breadedporkchopitem");
ExSartagine.addKettleRecipe([rawPork,batter],null,null,[<harvestcraft:breadedporkchopitem>],80);
//Minced meat -&C
recipes.addShapeless("minced_meat",<mod_lavacow:mousse>,[rawPork,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("minced_meat")
  .setShapeless([rawPork])
  .addTool(cookKit, 1)
  .addOutput(<mod_lavacow:mousse>)
  .create();
//Ground beef
recipes.addShapeless("ground_beef",<mod_lavacow:mousse>,[rawBeef,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("ground_beef")
  .setShapeless([rawBeef])
  .addTool(cookKit, 1)
  .addOutput(<contenttweaker:ground_beef>)
  .create();
//Wiener
RecipeBuilder.get("chef")
  .setName("wiener")
  .setShapeless([<mod_lavacow:mousse>, <contenttweaker:sheep_intestines>])
  .addOutput(wiener)
  .create();
//Hot-dog
recipes.removeByRecipeName("harvestcraft:hotdogitem");
ExSartagine.addKettleRecipe([wiener,bread],null,null,[<harvestcraft:hotdogitem>],80);
//Baked Ham
recipes.removeByRecipeName("harvestcraft:bakedhamitem");
ExSartagine.addKettleRecipe([rawPork,apple,sugar],null,null,[<harvestcraft:bakedhamitem>],80);
//Simple patty
RecipeBuilder.get("chef")
  .setName("raw_patty")
  .setShapeless([anyRawMeat, salt, spice])
  .addOutput(patty)
  .create();
//Hamburger
recipes.removeByRecipeName("harvestcraft:hamburgeritem");
ExSartagine.addKettleRecipe([patty,bread],null,null,[<harvestcraft:hamburgeritem>],80);
//Cheeseburguer -&C
RecipeBuilder.get("chef")
  .setName("cheeseburger")
  .setShapeless([<harvestcraft:hamburgeritem>, cheese])
  .addOutput(<harvestcraft:cheeseburgeritem>)
  .create();
//Pot roast
recipes.removeByRecipeName("harvestcraft:potroastitem");
ExSartagine.addKettleRecipe([rawBeef,potato,carrot,stock],cookKitKettle,null,[<harvestcraft:potroastitem>],80);
//Fish sandwich
recipes.removeByRecipeName("harvestcraft:fishsandwichitem");
ExSartagine.addKettleRecipe([rawFish,bread],mayo,null,[<harvestcraft:fishsandwichitem>],80);
//Fish sticks 
recipes.removeByRecipeName("harvestcraft:fishsticksitem");
ExSartagine.addKettleRecipe([rawFish,batter],null,null,[<harvestcraft:fishsticksitem>],80);
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
  .addTool(cookKit, 3)
  .addOutput(<harvestcraft:mayoitem>)
  .create();
//Fried egg
recipes.removeByRecipeName("harvestcraft:friedeggitem");
ExSartagine.addPanRecipe(egg, <harvestcraft:friedeggitem>);
//Scrambled egg
recipes.removeByRecipeName("harvestcraft:scrambledeggitem");
ExSartagine.addKettleRecipe([egg,egg,egg],null,null,[<harvestcraft:scrambledeggitem>],40);
//Boiled egg 
JEI.removeAndHide(<harvestcraft:boiledeggitem>);
furnace.remove(<betteranimalsplus:fried_egg>, <harvestcraft:boiledeggitem>);
//Egg Salad -&C
recipes.removeByRecipeName("harvestcraft:eggsaladitem");
recipes.addShapeless("egg_salad",<harvestcraft:eggsaladitem>,[egg, mayo]);
RecipeBuilder.get("chef")
  .setName("egg_salad")
  .setShapeless([egg, mayo])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:eggsaladitem>)
  .create();
//Caramel
recipes.removeByRecipeName("harvestcraft:caramelitem");
ExSartagine.addPanRecipe(sugar, <harvestcraft:caramelitem>);
ExSartagine.addKettleRecipe([sugar],null,null,[<harvestcraft:caramelitem>],80);
//Taffy
recipes.removeByRecipeName("harvestcraft:taffyitem");
ExSartagine.addKettleRecipe([sugar,salt],null,waterBottle,[<harvestcraft:taffyitem>],80);
//Cocoa Powder
Mortar.addRecipe(["stone"], <harvestcraft:cocoapowderitem>, 4, [cocoa]);
//Chocolate bar
recipes.removeByRecipeName("harvestcraft:chocolatebaritem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,butter,milkBottle],null,null,[<harvestcraft:chocolatebaritem>*4],80);
//Hot chocolate
recipes.removeByRecipeName("harvestcraft:hotchocolateitem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,milkBottle],null,waterBottle,[<harvestcraft:hotchocolateitem>*2],80);
//Chocolate ice cream 
recipes.removeByRecipeName("harvestcraft:chocolateicecreamitem");
RecipeBuilder.get("chef")
  .setName("chocolate_icecream")
  .setShapeless([iceCream,<harvestcraft:cocoapowderitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chocolateicecreamitem>)
  .create();
//Vegetable soup
recipes.removeByRecipeName("harvestcraft:vegetablesoupitem");
ExSartagine.addKettleRecipe([potato,carrot,mushroom,stock],cookKitKettle,null,[<harvestcraft:vegetablesoupitem>],80);
//Fruit salad -&C
recipes.removeByRecipeName("harvestcraft:fruitsaladitem");
recipes.addShapeless("fruit_salad",<harvestcraft:fruitsaladitem>,[fruit,fruit,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fruit_salad")
  .setShapeless([fruit,fruit])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fruitsaladitem>)
  .create();
//Spaghetti 
recipes.removeByRecipeName("harvestcraft:spagettiitem");
ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice],null,null,[<harvestcraft:spagettiitem>],80);
//Spaghetti and meatballs
recipes.removeByRecipeName("harvestcraft:spagettiandmeatballsitem");
ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice,<contenttweaker:ground_beef>],null,null,[<harvestcraft:spagettiitem>],80);
//Tomato soup
recipes.removeByRecipeName("harvestcraft:tomatosoupitem");
RecipeBuilder.get("chef")
  .setName("tomato_soup")
  .setShapeless([stock,tomato])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:tomatosoupitem>)
  .create();
//Ketchup
recipes.removeByRecipeName("harvestcraft:ketchupitem");
RecipeBuilder.get("chef")
  .setName("ketchup")
  .setShapeless([tomato])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:ketchupitem>)
  .create();
//Chicken parmesan
recipes.removeByRecipeName("harvestcraft:chickenparmasanitem");
ExSartagine.addKettleRecipe([rawChicken,tomato,cheese],cookKitKettle,null,[<harvestcraft:chickenparmasanitem>],80);
//Spring salad -&C
recipes.removeByRecipeName("harvestcraft:springsaladitem");
recipes.addShapeless("spring_salad",springSalad,[lettuce,veggie,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("spring_salad")
  .setShapeless([lettuce,veggie])
  .addTool(cookKit, 1)
  .addOutput(springSalad)
  .create();
//Pork Lettuce Wrap -&C
recipes.removeByRecipeName("harvestcraft:porklettucewrapitem");
recipes.addShapeless("pork_lettuce_wrap",<harvestcraft:porklettucewrapitem>,[lettuce,cookedPork,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("pork_lettuce_wrap")
  .setShapeless([lettuce,cookedPork])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:porklettucewrapitem>)
  .create();
//Fish Lettuce Wrap -&C
recipes.removeByRecipeName("harvestcraft:fishlettucewrapitem");
recipes.addShapeless("fish_lettuce_wrap",<harvestcraft:fishlettucewrapitem>,[lettuce,cookedFish,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fish_lettuce_wrap")
  .setShapeless([lettuce,cookedFish])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fishlettucewrapitem>)
  .create();
//BLT -&C
recipes.removeByRecipeName("harvestcraft:bltitem");
recipes.addShapeless("blt",<harvestcraft:bltitem>,[lettuce,tomato,cookedPork,toast,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("blt")
  .setShapeless([lettuce,tomato,cookedPork,toast])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bltitem>)
  .create();
//Leafy Chicken Sandwich
RecipeBuilder.get("chef")
  .setName("leafy_sandwich_chicken")
  .setShapeless([<harvestcraft:chickensandwichitem>,lettuce])
  .addOutput(<harvestcraft:leafychickensandwichitem>)
  .create();
//Leafy Fish Sandwich
RecipeBuilder.get("chef")
  .setName("leafy_sandwich_fish")
  .setShapeless([<harvestcraft:fishsandwichitem>,lettuce])
  .addOutput(<harvestcraft:leafyfishsandwichitem>)
  .create();
//Potato Cakes
recipes.removeByRecipeName("harvestcraft:potatocakesitem");
ExSartagine.addKettleRecipe([onion,potato,butter],cookKitKettle,null,[<harvestcraft:potatocakesitem>],80);
//Hash
recipes.removeByRecipeName("harvestcraft:potatocakesitem");
ExSartagine.addKettleRecipe([onion,potato,<contenttweaker:ground_beef>|<mod_lavacow:mousse>],cookKitKettle,null,[<harvestcraft:hashitem>],80);
//Braised onions
recipes.removeByRecipeName("harvestcraft:braisedonionsitem");
ExSartagine.addKettleRecipe([onion,butter,stock],cookKitKettle,null,[<harvestcraft:braisedonionsitem>],80);
//Corn on the cob
RecipeBuilder.get("chef")
  .setName("corn_on_the_cob")
  .setShapeless([corn,butter])
  .addOutput(<harvestcraft:cornonthecobitem>)
  .create();
//Cornmeal
recipes.removeByRecipeName("harvestcraft:cornmealitem");
Mortar.addRecipe(["stone"], cornmeal, 4, [corn]);
//Corn bread
recipes.removeByRecipeName("harvestcraft:cornbreaditem");
ExSartagine.addKettleRecipe([cornmeal,egg,milkBottle],null,null,[<harvestcraft:cornbreaditem>],80); //also millstone recipe
//Tortilla
recipes.removeByRecipeName("harvestcraft:tortillaitem");
ExSartagine.addKettleRecipe([cornmeal],null,waterBottle,[tortilla],80);
//Nachos -&C
recipes.removeByRecipeName("harvestcraft:nachoesitem");
recipes.addShapeless("nachos",<harvestcraft:nachoesitem>,[tortilla,cheese,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("nachos")
  .setShapeless([tortilla,cheese])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:nachoesitem>)
  .create();
//Beef taco -&C
recipes.removeByRecipeName("harvestcraft:tacoitem");
recipes.addShapeless("beef_taco",<harvestcraft:tacoitem>,[cookedBeef,lettuce,cheese,tortilla,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("beef_taco")
  .setShapeless([cookedBeef,lettuce,cheese,tortilla])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:tacoitem>)
  .create();
//Fish taco -&C
recipes.removeByRecipeName("harvestcraft:fishtacoitem");
recipes.addShapeless("fish_taco",<harvestcraft:fishtacoitem>,[cookedFish,lettuce,cheese,tortilla,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fish_taco")
  .setShapeless([cookedFish,lettuce,cheese,tortilla])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fishtacoitem>)
  .create();
//Hydra taco 
recipes.addShapeless("hydraco",<contenttweaker:hydraco>,[hydraMeat,lettuce,cheese,tortilla,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("hydraco")
  .setShapeless([hydraMeat,lettuce,cheese,tortilla])
  .addTool(cookKit, 1)
  .addOutput(<contenttweaker:hydraco>)
  .create();
//Creamed corn
recipes.removeByRecipeName("harvestcraft:creamedcornitem");
ExSartagine.addKettleRecipe([corn,onion,heavyCream],cookKitKettle,null,[<harvestcraft:creamedcornitem>],80);
//Strawberry cake 
recipes.removeByRecipeName("harvestcraft:strawberrypieitem");
ExSartagine.addKettleRecipe([dough,sugar],strawberry,waterBottle,[<harvestcraft:strawberrypieitem>],80);
//Strawberry salad -&C
RecipeBuilder.get("chef")
  .setName("strawberry_salad")
  .setShapeless([<harvestcraft:fruitsaladitem>,strawberry])
  .addOutput(<harvestcraft:strawberrysaladitem>)
  .create();
//Chocolate strawberry
recipes.removeByRecipeName("harvestcraft:chocolatestrawberryitem");
ExSartagine.addKettleRecipe([strawberry],chocolateBar,null,[<harvestcraft:chocolatestrawberryitem>],20);
//Peanut butter
recipes.removeByRecipeName("harvestcraft:peanutbutteritem");
Mortar.addRecipe(["stone"], <harvestcraft:peanutbutteritem>, 4, [cookingOil,peanut]);
//Trail mix -&C 
RecipeBuilder.get("chef")
  .setName("trail_mix")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,seed])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_1")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,nut])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_2")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,<harvestcraft:roastedpumpkinseedsitem>])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("trail_mix_3")
  .setShapeless([<harvestcraft:chocolatebaritem>,<harvestcraft:raisinsitem>,<harvestcraft:sunflowerseedsitem>])
  .addOutput(<harvestcraft:trailmixitem>)
  .create();
//Peanut butter and jam sandwich
recipes.removeByRecipeName("harvestcraft:pbandjitem");
recipes.addShapeless("pbj_sandwich",<harvestcraft:pbandjitem>,[nutButter,<harvestcraft:grapejellyitem>,bread,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("pbj_sandwich")
  .setShapeless([nutButter,<harvestcraft:grapejellyitem>,bread])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pbandjitem>)
  .create();
//Peanut butter cookies
recipes.removeByRecipeName("harvestcraft:peanutbuttercookiesitem");
ExSartagine.addKettleRecipe([nutButter,batter,sugar,sugar],null,null,[<harvestcraft:peanutbuttercookiesitem>*2],80);
//Vinegar
recipes.removeByRecipeName("harvestcraft:vinegaritem");
//Made in soaking pot using juice; pyrotech_recipes_other.zs
//Jelly
recipes.removeByRecipeName("harvestcraft:grapejellyitem");
ExSartagine.addKettleRecipe([grape,sugar],null,null,[<harvestcraft:grapejellyitem>],80);

//Grape salad -&C
RecipeBuilder.get("chef")
  .setName("grape_salad")
  .setShapeless([<harvestcraft:fruitsaladitem>,grape])
  .addOutput(<harvestcraft:grapesaladitem>)
  .create();
//Raisin cookies 
recipes.removeByRecipeName("harvestcraft:raisincookiesitem");
ExSartagine.addKettleRecipe([batter,sugar,<harvestcraft:raisinsitem>],null,null,[<harvestcraft:raisincookiesitem>],80);
//Pickles
recipes.removeByRecipeName("harvestcraft:picklesitem_dustsalt");
ExSartagine.addKettleRecipe([cucumber,salt,vinegar],null,null,[<harvestcraft:picklesitem>],80);
//Cucumber salad -&C
recipes.removeByRecipeName("harvestcraft:cucumbersaladitem");
recipes.addShapeless("cucumber_salad",<harvestcraft:cucumbersaladitem>,[springSalad,cucumber,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("cucumber_salad")
  .setShapeless([springSalad,cucumber])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cucumbersaladitem>)
  .create();
//Cucumber soup
recipes.removeByRecipeName("harvestcraft:cucumbersoupitem");
ExSartagine.addKettleRecipe([cucumber,stock,heavyCream],cookKitKettle,null,[<harvestcraft:cucumbersoupitem>],80);
//Vegetarian lettuce wrap
recipes.removeByRecipeName("harvestcraft:vegetarianlettucewrapitem");
recipes.addShapeless("v_lettuce_wrap",<harvestcraft:vegetarianlettucewrapitem>,[cucumber,lettuce,tomato,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("v_lettuce_wrap")
  .setShapeless([cucumber,lettuce,tomato])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:vegetarianlettucewrapitem>)
  .create();
//Marinated cucumbers 
recipes.removeByRecipeName("harvestcraft:marinatedcucumbersitem");
ExSartagine.addKettleRecipe([cucumber,onion,sugar,vinegar],cookKitKettle,null,[<harvestcraft:marinatedcucumbersitem>],80);
//Rice soup 
recipes.removeByRecipeName("harvestcraft:ricesoupitem");
ExSartagine.addKettleRecipe([rice,stock],null,null,[<harvestcraft:ricesoupitem>],80);
//Fried rice
recipes.removeByRecipeName("harvestcraft:friedriceitem");
ExSartagine.addKettleRecipe([rice,carrot,egg,onion],cookKitKettle,null,[<harvestcraft:friedriceitem>],80);
//Mushroom risotto 
recipes.removeByRecipeName("harvestcraft:mushroomrisottoitem");
ExSartagine.addKettleRecipe([rice,mushroom,onion,cheese],cookKitKettle,null,[<harvestcraft:mushroomrisottoitem>],80);
//Curry rice 
recipes.removeByRecipeName("harvestcraft:curryitem_dustsalt");
ExSartagine.addKettleRecipe([rice,salt,chili,coconutMilk,spice],null,null,[<harvestcraft:curryitem>],80);
//Refried beans 
recipes.removeByRecipeName("harvestcraft:refriedbeansitem");
ExSartagine.addKettleRecipe([beans,onion,butter],cookKitKettle,null,[<harvestcraft:refriedbeansitem>],80);
//Baked beans
recipes.removeByRecipeName("harvestcraft:bakedbeansitem");
ExSartagine.addKettleRecipe([beans,rawPork,sugar],null,null,[<harvestcraft:bakedbeansitem>],80);
ExSartagine.addKettleRecipe([beans,rawBacon,rawBacon,sugar],null,null,[<harvestcraft:bakedbeansitem>],80);
//Beans and rice 
recipes.removeByRecipeName("harvestcraft:beansandriceitem_croponion");
recipes.removeByRecipeName("harvestcraft:beansandriceitem_cropchilipepper");
recipes.removeByRecipeName("harvestcraft:beansandriceitem_cropbellpepper");
ExSartagine.addKettleRecipe([beans,rice,stewCondiment,rawPork],cookKitKettle,null,[<harvestcraft:beansandriceitem>],80);
RecipeBuilder.get("chef")
  .setName("beans_and_rice")
  .setShapeless([beans,rice,stewCondiment,cookedPork])
  .addOutput(<harvestcraft:beansandriceitem>)
  .create();
ExSartagine.addKettleRecipe([beans,rice,stewCondiment,rawBacon],cookKitKettle,null,[<harvestcraft:beansandriceitem>],80);
RecipeBuilder.get("chef")
  .setName("beans_and_rice_1")
  .setShapeless([beans,rice,stewCondiment,cookedBacon])
  .addOutput(<harvestcraft:beansandriceitem>)
  .create();
//Chili
recipes.removeByRecipeName("harvestcraft:chiliitem_croponion");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropchilipepper");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropbellpepper");
ExSartagine.addKettleRecipe([beans,stewCondiment,rawPork],cookKitKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili")
  .setShapeless([beans,stewCondiment,cookedPork])
  .addOutput(<harvestcraft:chiliitem>)
  .create();
ExSartagine.addKettleRecipe([beans,stewCondiment,rawBacon],cookKitKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili_1")
  .setShapeless([beans,stewCondiment,cookedBacon])
  .addOutput(<harvestcraft:chiliitem>)
  .create();
//Bean burrito
recipes.removeByRecipeName("harvestcraft:beanburritoitem");
ExSartagine.addKettleRecipe([beans,tortilla,rice,cheese],null,null,[<harvestcraft:beanburritoitem>],80);
//Stuffed pepper
recipes.removeByRecipeName("harvestcraft:stuffedpepperitem");
ExSartagine.addKettleRecipe([bellpepper,tomato,rice],cookKitKettle,null,[<harvestcraft:stuffedpepperitem>],80);
//Veggie stirfry
recipes.removeByRecipeName("harvestcraft:veggiestirfryitem_listallveggie");
recipes.removeByRecipeName("harvestcraft:veggiestirfryitem_listallmushroom");
ExSartagine.addKettleRecipe([bellpepper,carrot,rice,onion,veggie],cookKitKettle,null,[<harvestcraft:veggiestirfryitem>],80);
ExSartagine.addKettleRecipe([bellpepper,tomato,rice,onion,mushroom],cookKitKettle,null,[<harvestcraft:veggiestirfryitem>],80);
//Grilled skewer
recipes.removeByRecipeName("harvestcraft:grilledskewersitem");
ExSartagine.addKettleRecipe([bellpepper,onion,carrot],cookKitKettle,null,[<harvestcraft:grilledskewersitem>],80);
//Omelet
recipes.removeByRecipeName("harvestcraft:omeletitem");
ExSartagine.addKettleRecipe([egg,bellpepper,onion],cookKitKettle,null,[<harvestcraft:omeletitem>],80);
//Hot wings -&C 
recipes.removeByRecipeName("harvestcraft:hotwingsitem");
recipes.addShapeless("hot_one",<harvestcraft:hotwingsitem>*2,[cookedChicken,hotSauce]);
RecipeBuilder.get("chef")
  .setName("hot_one")
  .setShapeless([cookedChicken,hotSauce])
  .addOutput(<harvestcraft:hotwingsitem>*2)
  .create();
//Chili poppers
recipes.removeByRecipeName("harvestcraft:chilipoppersitem");
ExSartagine.addKettleRecipe([chili,batter,cheese],cookKitKettle,null,[<harvestcraft:chilipoppersitem>],80);
//Extreme chili -&C
RecipeBuilder.get("chef")
  .setName("extreme_chili")
  .setShapeless([<harvestcraft:chiliitem>,chili])
  .addOutput(<harvestcraft:extremechiliitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("extremer_chili")
  .setShapeless([<harvestcraft:chiliitem>])
  .addTool(<msmlegacy:relic_aqueous>, 1)
  .addOutput(<harvestcraft:extremechiliitem>)
  .create();
//Chili chocolate
recipes.removeByRecipeName("harvestcraft:chilichocolateitem");
ExSartagine.addKettleRecipe([chili,batter,chocolateBar],cookKitKettle,null,[<harvestcraft:chilichocolateitem>],80);
//Lemon bar
recipes.removeByRecipeName("harvestcraft:lemonbaritem");
ExSartagine.addKettleRecipe([lemon,dough,sugar],cookKitKettle,null,[<harvestcraft:lemonbaritem>],80);
//Fish dinner
recipes.removeByRecipeName("harvestcraft:fishdinneritem");
ExSartagine.addKettleRecipe([lemon,batter,rawFish,mayo],cookKitKettle,null,[<harvestcraft:fishdinneritem>],80);
//Lemon meringue 
recipes.removeByRecipeName("harvestcraft:lemonmeringueitem");
ExSartagine.addKettleRecipe([lemon,sugar,dough,meringue],cookKitKettle,null,[<harvestcraft:lemonmeringueitem>],80);
//Candied lemon 
recipes.removeByRecipeName("harvestcraft:candiedlemonitem");
ExSartagine.addKettleRecipe([lemon,sugar],cookKitKettle,null,[<harvestcraft:candiedlemonitem>],80);
//Lemon chicken
recipes.removeByRecipeName("harvestcraft:lemonchickenitem");
ExSartagine.addKettleRecipe([lemon,rawChicken,butter],cookKitKettle,null,[<harvestcraft:lemonchickenitem>],80);
//Blueberry pie 
recipes.removeByRecipeName("harvestcraft:blueberrypieitem");
ExSartagine.addKettleRecipe([blueberry,dough,sugar],null,waterBottle,[<harvestcraft:blueberrypieitem>],80);
//Blueberry muffin
recipes.removeByRecipeName("harvestcraft:blueberrymuffinitem");
ExSartagine.addKettleRecipe([blueberry,batter],null,waterBottle,[<harvestcraft:blueberrymuffinitem>],80);
//Pancakes
recipes.removeByRecipeName("harvestcraft:pancakesitem");
ExSartagine.addKettleRecipe([batter,milkBottle],null,waterBottle,[<harvestcraft:pancakesitem>],80);
//Blueberry pancakes -&C
RecipeBuilder.get("chef")
  .setName("blueberry_pancakes")
  .setShapeless([<harvestcraft:pancakesitem>,blueberry])
  .addOutput(<harvestcraft:blueberrypancakesitem>)
  .create();
//Cherry pie
recipes.removeByRecipeName("harvestcraft:cherrypieitem");
ExSartagine.addKettleRecipe([cherry,dough,sugar],null,waterBottle,[<harvestcraft:cherrypieitem>],80);
//Chocolate cherry
recipes.removeByRecipeName("harvestcraft:chocolatecherryitem");
ExSartagine.addKettleRecipe([chocolateBar,cherry],null,null,[<harvestcraft:chocolatecherryitem>],80);
//Stuffed eggplant 
recipes.removeByRecipeName("harvestcraft:stuffedeggplantitem");
ExSartagine.addKettleRecipe([eggplant,onion,bellpepper,butter,egg],null,null,[<harvestcraft:stuffedeggplantitem>],80);
//Eggplant parm 
recipes.removeByRecipeName("harvestcraft:eggplantparmitem");
ExSartagine.addKettleRecipe([eggplant,tomato,pasta,cheese],null,null,[<harvestcraft:eggplantparmitem>],80);
//Eggplant parm 
recipes.removeByRecipeName("harvestcraft:eggplantparmitem");
ExSartagine.addKettleRecipe([eggplant,tomato,pasta,cheese],null,null,[<harvestcraft:eggplantparmitem>],80);
//Raspberry iced tea
recipes.removeByRecipeName("harvestcraft:raspberryicedteaitem");
RecipeBuilder.get("chef")
  .setName("raspberry_tea")
  .setShapeless([<harvestcraft:teaitem>,snowball,raspberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberryicedteaitem>)
  .create();
//Chai tea 
recipes.removeByRecipeName("harvestcraft:chaiteaitem");
RecipeBuilder.get("chef")
  .setName("chai_tea")
  .setShapeless([<harvestcraft:teaitem>,groundCinnamon,blackPepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chaiteaitem>)
  .create();
//Espresso
recipes.removeByRecipeName("harvestcraft:espressoitem");
ExSartagine.addKettleRecipe([<harvestcraft:coffeebeanitem>,<harvestcraft:coffeebeanitem>,<harvestcraft:coffeebeanitem>,sugar],cookKit,waterBottle2,[<harvestcraft:espressoitem>*2],80);
//Café con leche
recipes.removeByRecipeName("harvestcraft:espressoitem");
ExSartagine.addKettleRecipe([<harvestcraft:espressoitem>,milkBottle,groundCinnamon],cookKit,waterBottle2,[<harvestcraft:coffeeconlecheitem>],80);
//Mocha ice cream 
recipes.removeByRecipeName("harvestcraft:mochaicecreamitem");
RecipeBuilder.get("chef")
  .setName("mocha_ice_cream")
  .setShapeless([iceCream,<harvestcraft:coffeebeanitem>,cocoaPowder])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mochaicecreamitem>)
  .create();
//Pickled beets
recipes.removeByRecipeName("harvestcraft:pickledbeetsitem_dustsalt");
ExSartagine.addKettleRecipe([beet,vinegar,salt],cookKitKettle,waterBottle,[<harvestcraft:pickledbeetsitem>],80);
//Beet salad 
recipes.removeByRecipeName("harvestcraft:beetsaladitem");
RecipeBuilder.get("chef")
  .setName("beet_salad")
  .setShapeless([beet,lettuce,vinegar,cheese])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:beetsaladitem>)
  .create();
//Beet soup 
recipes.removeByRecipeName("harvestcraft:beetsoupitem");
ExSartagine.addKettleRecipe([beet,onion,blackPepper,milkBottle],cookKitKettle,null,[<harvestcraft:beetsoupitem>],80);
//Baked beets
recipes.removeByRecipeName("harvestcraft:bakedbeetsitem");
ExSartagine.addKettleRecipe([beet,butter,blackPepper],cookKitKettle,null,[<harvestcraft:bakedbeetsitem>],80);
//Broccoli mac
recipes.removeByRecipeName("harvestcraft:broccolimacitem");
ExSartagine.addKettleRecipe([broccoli,pasta,cheese],cookKitKettle,null,[<harvestcraft:broccolimacitem>],80);
//Broccoli n deep
recipes.removeByRecipeName("harvestcraft:broccolindipitem");
RecipeBuilder.get("chef")
  .setName("broccoli_n_deep")
  .setShapeless([broccoli,onion,heavyCream])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:broccolindipitem>)
  .create();
//Creamed broccoli soup 
recipes.removeByRecipeName("harvestcraft:creamedbroccolisoupitem");
ExSartagine.addKettleRecipe([broccoli,carrot,flour,blackPepper,stock],cookKitKettle,null,[<harvestcraft:creamedbroccolisoupitem>],80);
//Sweet potato pie
recipes.removeByRecipeName("harvestcraft:sweetpotatopieitem");
ExSartagine.addKettleRecipe([sweetPotato,dough,groundCinnamon,marshmellows],cookKitKettle,waterBottle,[<harvestcraft:sweetpotatopieitem>],80);
//Candied sweet potatoes
recipes.removeByRecipeName("harvestcraft:candiedsweetpotatoesitem");
ExSartagine.addKettleRecipe([sweetPotato,sugar,groundCinnamon],cookKitKettle,waterBottle,[<harvestcraft:candiedsweetpotatoesitem>],80);
//Mashed sweet potatoes
recipes.removeByRecipeName("harvestcraft:mashedsweetpotatoesitem");
ExSartagine.addKettleRecipe([sweetPotato,butter],cookKitKettle,null,[<harvestcraft:mashedsweetpotatoesitem>],80);
//Steamed peas 
recipes.removeByRecipeName("harvestcraft:steamedpeasitem_dustsalt");
ExSartagine.addKettleRecipe([peas,salt],null,waterBucket,[<harvestcraft:steamedpeasitem>],80);
//Split pea soup
recipes.removeByRecipeName("harvestcraft:splitpeasoupitem");
ExSartagine.addKettleRecipe([peas,rawPork,blackPepper,stock],null,null,[<harvestcraft:splitpeasoupitem>],80);
//Pineapple ham 
recipes.removeByRecipeName("harvestcraft:pineapplehamitem");
ExSartagine.addKettleRecipe([pineapple,rawPork,cherry,sugar],cookKitKettle,null,[<harvestcraft:pineapplehamitem>],80);
//Turnip soup 
recipes.removeByRecipeName("harvestcraft:turnipsoupitem");
ExSartagine.addKettleRecipe([turnip,pumpkin,butter,stock],cookKitKettle,null,[<harvestcraft:turnipsoupitem>],80);
//Roasted root veggie medley
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_cropturnip");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_cropsweetpotato");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_croprutabaga");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_croprhubarb");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_cropradish");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_croppumpkin");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_croppotato");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_cropparsnip");
recipes.removeByRecipeName("harvestcraft:roastedrootveggiemedleyitem_cropbeet");
ExSartagine.addKettleRecipe([tuber,tuber,stewCondiment,spice],cookKitKettle,null,[<harvestcraft:roastedrootveggiemedleyitem>],80);
//Baked turnips 
recipes.removeByRecipeName("harvestcraft:bakedturnipsitem_dustsalt");
ExSartagine.addKettleRecipe([turnip,butter,salt,blackPepper],cookKitKettle,null,[<harvestcraft:bakedturnipsitem>],80);
//Ginger bread
recipes.removeByRecipeName("harvestcraft:gingerbreaditem");
ExSartagine.addKettleRecipe([ginger,batter,butter,groundCinnamon],cookKitKettle,null,[<harvestcraft:gingerbreaditem>],80);
//Ginger snaps
recipes.removeByRecipeName("harvestcraft:gingersnapsitem");
ExSartagine.addKettleRecipe([ginger,flour,sugar],cookKitKettle,null,[<harvestcraft:gingersnapsitem>],80);
//Candied ginger
recipes.removeByRecipeName("harvestcraft:candiedgingeritem");
ExSartagine.addKettleRecipe([ginger,sugar],cookKitKettle,null,[<harvestcraft:candiedgingeritem>],80);
//Mustard
recipes.removeByRecipeName("harvestcraft:mustarditem");
Mortar.addRecipe(["stone"], mustard, 4, [mustardSeed]);
//Soft pretzel & mustard -&C
RecipeBuilder.get("chef")
  .setName("pretzel_mustard")
  .setShapeless([<harvestcraft:mustarditem>,<harvestcraft:softpretzelitem>])
  .addOutput(<harvestcraft:softpretzelandmustarditem>)
  .create();
//Spicy mustard pork
recipes.removeByRecipeName("harvestcraft:spicymustardporkitem_foodblackpepper");
recipes.removeByRecipeName("harvestcraft:spicymustardporkitem_dustsalt");
recipes.removeByRecipeName("harvestcraft:spicymustardporkitem_cropgarlic");
ExSartagine.addKettleRecipe([mustard,rawPork,spice,salt],cookKitKettle,null,[<harvestcraft:spicymustardporkitem>],80);
RecipeBuilder.get("chef")
  .setName("spicy_mustard_pork")
  .setShapeless([mustard,rawPork,spice,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:spicymustardporkitem>)
  .create();
//Spicy greens
recipes.removeByRecipeName("harvestcraft:spicygreensitem_cropspinach");
recipes.removeByRecipeName("harvestcraft:spicygreensitem_croppeas");
recipes.removeByRecipeName("harvestcraft:spicygreensitem_croplettuce");
recipes.removeByRecipeName("harvestcraft:spicygreensitem_cropbroccoli");
recipes.removeByRecipeName("harvestcraft:spicygreensitem_cropasparagus");
ExSartagine.addKettleRecipe([mustard,veggieGreen,blackPepper,garlic,cookingOil,onion],cookKitKettle,null,[<harvestcraft:spicygreensitem>],80);
//Garlic bread
recipes.removeByRecipeName("harvestcraft:garlicbreaditem");
ExSartagine.addKettleRecipe([garlic,bread,butter,butter],null,null,[<harvestcraft:garlicbreaditem>],80);
RecipeBuilder.get("chef")
  .setName("garlic_bread")
  .setShapeless([garlic,toast,butter])
  .addOutput(<harvestcraft:garlicbreaditem>)
  .create();
//Garlic mashed potatoes -&C 
recipes.removeByRecipeName("harvestcraft:garlicmashedpotatoesitem");
recipes.addShapeless("garlic_mashed_potatoes",<harvestcraft:garlicmashedpotatoesitem>,[garlic,<harvestcraft:mashedpotatoesitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("garlic_mashed_potatoes")
  .setShapeless([garlic,<harvestcraft:mashedpotatoesitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:garlicmashedpotatoesitem>)
  .create();
//Garlic chicken 
recipes.removeByRecipeName("harvestcraft:garlicchickenitem");
ExSartagine.addKettleRecipe([garlic,garlic,garlic,cookingOil,rawChicken],null,null,[<harvestcraft:garlicchickenitem>],80);
//Summer radish salad -&C
recipes.removeByRecipeName("harvestcraft:summerradishsaladitem");
recipes.addShapeless("summer_radish_salad",<harvestcraft:summerradishsaladitem>,[radish,onion,cucumber,vinegar,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("summer_radish_salad")
  .setShapeless([radish,onion,cucumber,vinegar])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:summerradishsaladitem>)
  .create();
//Summer squash with radish -&C
recipes.removeByRecipeName("harvestcraft:summersquashwithradishitem");
recipes.addShapeless("summer__squash_radish",<harvestcraft:summersquashwithradishitem>,[radish,zucchini,pumpkin,spice,cookingOil,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("summer__squash_radish")
  .setShapeless([radish,zucchini,pumpkin,spice,cookingOil])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:summersquashwithradishitem>)
  .create();
//Celery and peanut butter -&C
RecipeBuilder.get("chef")
  .setName("celery_peanut_butter")
  .setShapeless([celery,nutButter])
  .addOutput(<harvestcraft:celeryandpeanutbutteritem>)
  .create();
//Chicken celery casserole
recipes.removeByRecipeName("harvestcraft:chickencelerycasseroleitem");
ExSartagine.addKettleRecipe([celery,rawChicken,garlic,stewCondiment,mushroom],cookKitKettle,waterBottle,[<harvestcraft:chickencelerycasseroleitem>],80);
//Peas and celery
recipes.removeByRecipeName("harvestcraft:peasandceleryitem");
ExSartagine.addKettleRecipe([celery,peas,lemon,blackPepper],null,waterBottle,[<harvestcraft:peasandceleryitem>],80);
//Celery soup
recipes.removeByRecipeName("harvestcraft:celerysoupitem");
ExSartagine.addKettleRecipe([celery,onion,stewCondiment,stock],cookKitKettle,null,[<harvestcraft:celerysoupitem>],80);
//Zucchini bread
recipes.removeByRecipeName("harvestcraft:zucchinibreaditem");
ExSartagine.addKettleRecipe([zucchini,dough,groundCinnamon,walnut],cookKitKettle,null,[<harvestcraft:zucchinibreaditem>],80);
//Zucchini fries
recipes.removeByRecipeName("harvestcraft:zucchinifriesitem");
ExSartagine.addKettleRecipe([zucchini,toast,cheese,egg],cookKitKettle,null,[<harvestcraft:zucchinifriesitem>],80);
//Zesty zucchini
recipes.removeByRecipeName("harvestcraft:zestyzucchiniitem");
ExSartagine.addKettleRecipe([zucchini,pasta,chili,garlic,cheese],cookKitKettle,null,[<harvestcraft:zestyzucchiniitem>],80);
//Zucchini bake
recipes.removeByRecipeName("harvestcraft:zucchinibakeitem");
ExSartagine.addKettleRecipe([zucchini,tomato,toast,corn,cheese],cookKitKettle,null,[<harvestcraft:zucchinibakeitem>],80);
//Asparagus quiche
recipes.removeByRecipeName("harvestcraft:asparagusquicheitem");
ExSartagine.addKettleRecipe([aSparagus,egg,onion,cheese],cookKitKettle,null,[<harvestcraft:asparagusquicheitem>],80);
//Asparagus soup
recipes.removeByRecipeName("harvestcraft:asparagussoupitem");
ExSartagine.addKettleRecipe([aSparagus,onion,butter,stock],cookKitKettle,null,[<harvestcraft:asparagussoupitem>],80);
//Walnut raisin bread
recipes.removeByRecipeName("harvestcraft:walnutraisinbreaditem");
ExSartagine.addKettleRecipe([walnut,<harvestcraft:raisinsitem>,dough,groundCinnamon],cookKitKettle,null,[<harvestcraft:walnutraisinbreaditem>],80);
//Candied walnuts
recipes.removeByRecipeName("harvestcraft:candiedwalnutsitem");
ExSartagine.addKettleRecipe([walnut,<harvestcraft:vanillaitem>,groundCinnamon,sugar],null,null,[<harvestcraft:candiedwalnutsitem>],80);
//Brownie
recipes.removeByRecipeName("harvestcraft:brownieitem");
ExSartagine.addKettleRecipe([walnut,batter,butter,sugar,groundCinnamon,<harvestcraft:vanillaitem>],null,null,[<harvestcraft:brownieitem>],80);
//Guacamole -&C
recipes.removeByRecipeName("harvestcraft:guacamoleitem");
recipes.addShapeless("guacamole",<harvestcraft:guacamoleitem>,[avocado,chili,tomato,onion,spice,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("guacamole")
  .setShapeless([avocado,chili,tomato,onion,spice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:guacamoleitem>)
  .create();
//Cream of avocado soup
recipes.removeByRecipeName("harvestcraft:creamofavocadosoupitem");
ExSartagine.addKettleRecipe([avocado,heavyCream,lime,spice,stock,<harvestcraft:vanillaitem>],cookKitKettle,null,[<harvestcraft:creamofavocadosoupitem>],80);
//Avocado burrito -&C
recipes.removeByRecipeName("harvestcraft:avocadoburritoitem_listallporkcooked");
recipes.removeByRecipeName("harvestcraft:avocadoburritoitem_listallchicken");
recipes.addShapeless("avocado_burrito",<harvestcraft:avocadoburritoitem>,[avocado,tortilla,cheese,cookedMeat,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("avocado_burrito")
  .setShapeless([avocado,tortilla,cheese,cookedMeat])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:avocadoburritoitem>)
  .create();
//Poached pear 
recipes.removeByRecipeName("harvestcraft:poachedpearitem");
ExSartagine.addKettleRecipe([pear,<harvestcraft:vanillaitem>,sugar],null,waterBottle,[<harvestcraft:poachedpearitem>],80);
//Fruit crumble
recipes.removeByRecipeName("harvestcraft:fruitcrumbleitem");
ExSartagine.addKettleRecipe([fruit,groundCinnamon,flour,butter],cookKitKettle,null,[<harvestcraft:fruitcrumbleitem>],80);
//Banana split -&C
recipes.removeByRecipeName("harvestcraft:bananasplititem");
recipes.addShapeless("banana_split",<harvestcraft:bananasplititem>,[banana,cocoaPowder,cherry,iceCream,strawberry]);
RecipeBuilder.get("chef")
  .setName("banana_split")
  .setShapeless([banana,cocoaPowder,cherry,iceCream,strawberry])
  .addOutput(<harvestcraft:bananasplititem>)
  .create();
//Banana nut bread 
recipes.removeByRecipeName("harvestcraft:banananutbreaditem_dustsalt");
ExSartagine.addKettleRecipe([banana,flour,walnut,milkBottle,salt],null,null,[<harvestcraft:banananutbreaditem>],80);
//Coconut milk
recipes.removeByRecipeName("harvestcraft:coconutmilkitem");
Mortar.addRecipe(["stone"], coconutMilk, 4, [coconut]);
//Chicken curry 
recipes.removeByRecipeName("harvestcraft:chickencurryitem");
ExSartagine.addKettleRecipe([coconut,yogurt,rawChicken,spice,chili,rice,groundCinnamon,garlic],cookKitKettle,waterBottle2,[<harvestcraft:chickencurryitem>],80);
//Coconut shrimp
recipes.removeByRecipeName("harvestcraft:coconutshrimpitem");
ExSartagine.addKettleRecipe([coconut,egg,flour,rawShrimp,cookingOil],cookKitKettle,null,[<harvestcraft:coconutshrimpitem>],80);
//Orange chicken
recipes.removeByRecipeName("harvestcraft:orangechickenitem");
ExSartagine.addKettleRecipe([orange,rawChicken,sugar,rice,broccoli],cookKitKettle,waterBottle2,[<harvestcraft:orangechickenitem>],80);
//Peach cobbler
recipes.removeByRecipeName("harvestcraft:peachcobbleritem");
ExSartagine.addKettleRecipe([peach,sugar,dough],cookKitKettle,null,[<harvestcraft:peachcobbleritem>],80);
//Keylime pie 
recipes.removeByRecipeName("harvestcraft:keylimepieitem");
ExSartagine.addKettleRecipe([lime,meringue,sugar,dough],cookKitKettle,null,[<harvestcraft:keylimepieitem>],80);
//Cinnamon rolls
recipes.removeByRecipeName("harvestcraft:cinnamonrollitem");
ExSartagine.addKettleRecipe([groundCinnamon,sugar,dough],cookKitKettle,null,[<harvestcraft:cinnamonrollitem>],80);
//Yolk bread
recipes.removeByRecipeName("harvestcraft:frenchtoastitem");
ExSartagine.addKettleRecipe([groundCinnamon,toast,sugar,egg],null,null,[<harvestcraft:frenchtoastitem>],80);
//Marshmallows and Traditional Marshmallow 
recipes.removeByRecipeName("harvestcraft:marshmellowsitem");
ExSartagine.addKettleRecipe([sugar,egg],null,waterBottle,[<harvestcraft:marshmellowsitem>*2],80);
Mortar.addRecipe(["stone"], <pyrotech:marshmallow>*2, 4, [<harvestcraft:marshmellowsitem>*2,<contenttweaker:perforata>]);
//Donut
recipes.removeByRecipeName("harvestcraft:donutitem");
ExSartagine.addKettleRecipe([dough,cookingOil],null,waterBottle,[donut],80);
//Chocolate donut -&C
RecipeBuilder.get("chef")
  .setName("chocolate_donut")
  .setShapeless([donut,chocolateBar])
  .addOutput(<harvestcraft:chocolatedonutitem>)
  .create();
//Powdered donut -&C
RecipeBuilder.get("chef")
  .setName("powdered_donut")
  .setShapeless([donut,sugar])
  .addOutput(<harvestcraft:powdereddonutitem>)
  .create();
//Jelly donut -&C
RecipeBuilder.get("chef")
  .setName("jelly_donut")
  .setShapeless([donut,<harvestcraft:grapejellyitem>])
  .addOutput(<harvestcraft:jellydonutitem>)
  .create();
//Frosted donut 
recipes.removeByRecipeName("harvestcraft:frosteddonutitem");
recipes.addShapeless("frosted_donut",<harvestcraft:frosteddonutitem>,[donut,sugar,sprinkles]);
RecipeBuilder.get("chef")
  .setName("frosted_donut")
  .setShapeless([donut,sugar,sprinkles])
  .addOutput(<harvestcraft:frosteddonutitem>)
  .create();
//Cactus soup
recipes.removeByRecipeName("harvestcraft:cactussoupitem");
ExSartagine.addKettleRecipe([<ore:blockCactus>|<biomesoplenty:plant_1:6>,stock],null,null,[<harvestcraft:cactussoupitem>],80);
//Waffles
recipes.removeByRecipeName("harvestcraft:wafflesitem");
ExSartagine.addKettleRecipe([batter,milkBottle,butter],null,null,[<harvestcraft:wafflesitem>],80);
//Seed soup 
recipes.removeByRecipeName("harvestcraft:seedsoupitem");
ExSartagine.addKettleRecipe([seed,seed,seed,stock],null,null,[<harvestcraft:seedsoupitem>],80);
//Soft pretzel
recipes.removeByRecipeName("harvestcraft:softpretzelitem");
ExSartagine.addKettleRecipe([seed,seed,seed,stock],null,null,[<harvestcraft:softpretzelitem>],80);
//Jellybeans 
recipes.removeByRecipeName("harvestcraft:jellybeansitem");
ExSartagine.addKettleRecipe([sugar,sugar,sugar,syrup],cookKitKettle,null,[<harvestcraft:jellybeansitem>*4],80);
//Biscuit
recipes.removeByRecipeName("harvestcraft:biscuititem");
ExSartagine.addKettleRecipe([butter,dough],cookKitKettle,null,[<harvestcraft:biscuititem>],80);
//Cream cookie
recipes.removeByRecipeName("harvestcraft:creamcookieitem");
ExSartagine.addKettleRecipe([dough,heavyCream,sugar,cocoaPowder],cookKitKettle,null,[<harvestcraft:creamcookieitem>],80);
//Jaffa
recipes.removeByRecipeName("harvestcraft:jaffaitem");
ExSartagine.addKettleRecipe([egg,sugar,flour,chocolateBar,orange],cookKitKettle,null,[<harvestcraft:jaffaitem>],80);
//Fried chicken
recipes.removeByRecipeName("harvestcraft:friedchickenitem");
ExSartagine.addKettleRecipe([rawChicken,batter,spice,blackPepper,cookingOil],cookKitKettle,null,[<harvestcraft:friedchickenitem>],80);
//Foot long
recipes.removeByRecipeName("harvestcraft:footlongitem");
RecipeBuilder.get("chef")
  .setName("foot_long")
  .setShapeless([bread,cookedMeat,lettuce,tomato,mayo])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:footlongitem>)
  .create();
//Blackberry cobbler 
recipes.removeByRecipeName("harvestcraft:blackberrycobbleritem");
ExSartagine.addKettleRecipe([blackberry,sugar,dough],cookKitKettle,null,[<harvestcraft:blackberrycobbleritem>],80);
//Chocolate milk -&C 
recipes.removeByRecipeName("harvestcraft:chocolatemilkitem");
recipes.addShapeless("chocolate_milk",<harvestcraft:chocolatemilkitem>,[milkBottle,cocoaPowder]);
RecipeBuilder.get("chef")
  .setName("chocolate_milk")
  .setShapeless([milkBottle,cocoaPowder])
  .addOutput(<harvestcraft:chocolatemilkitem>)
  .create();
//Raspberry pie
recipes.removeByRecipeName("harvestcraft:raspberrypieitem");
ExSartagine.addKettleRecipe([raspberry,sugar,dough],cookKitKettle,null,[<harvestcraft:raspberrypieitem>],80);
//Cinnamon sugar donut -&C 
RecipeBuilder.get("chef")
  .setName("cinnamon_sugar_donut")
  .setShapeless([donut,sugar,groundCinnamon])
  .addOutput(<harvestcraft:cinnamonsugardonutitem>)
  .create();
//Salted sunflower seeds -&C 
RecipeBuilder.get("chef")
  .setName("salted_sunflower_seeds")
  .setShapeless([sunflowerSeed,salt])
  .addOutput(<harvestcraft:saltedsunflowerseedsitem>)
  .create();
//Sunflower wheat rolls
recipes.removeByRecipeName("harvestcraft:sunflowerwheatrollsitem");
ExSartagine.addKettleRecipe([sunflowerSeed,butter,salt,cookingOil],cookKitKettle,null,[<harvestcraft:sunflowerwheatrollsitem>],80);
//Sunflower
recipes.removeByRecipeName("harvestcraft:sunflowerbroccolisaladitem");
recipes.addShapeless("sun_brocco_salad",<harvestcraft:sunflowerbroccolisaladitem>,[sunflowerSeed,broccoli,mayo,sugar,cookedPork,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("sun_brocco_salad")
  .setShapeless([sunflowerSeed,broccoli,mayo,sugar,cookedPork])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:sunflowerbroccolisaladitem>)
  .create();
ExSartagine.addKettleRecipe([sunflowerSeed,broccoli,mayo,sugar,rawPork],cookKitKettle,null,[<harvestcraft:sunflowerwheatrollsitem>],80);
//Cranberry sauce
recipes.removeByRecipeName("harvestcraft:cranberrysauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:cranberrysauceitem>, 4, [cranberry,sugar]);
//Cranberry bar 
recipes.removeByRecipeName("harvestcraft:cranberrybaritem");
ExSartagine.addKettleRecipe([cranberry,sugar,dough],cookKitKettle,null,[<harvestcraft:cranberrybaritem>],80);
//Peppermint
recipes.removeByRecipeName("harvestcraft:peppermintitem");
ExSartagine.addKettleRecipe([mint,sugar],null,null,[<harvestcraft:peppermintitem>],80);
//Black pepper
recipes.removeByRecipeName("harvestcraft:blackpepperitem");
Mortar.addRecipe(["stone"], <harvestcraft:blackpepperitem>, 4, [<harvestcraft:peppercornitem>]);
//Ground Cinnamon
recipes.removeByRecipeName("harvestcraft:groundcinnamonitem");
Mortar.addRecipe(["stone"], <harvestcraft:groundcinnamonitem>, 4, [<harvestcraft:cinnamonitem>]);
//Ground Nutmeg
recipes.removeByRecipeName("harvestcraft:groundnutmegitem");
Mortar.addRecipe(["stone"], <harvestcraft:groundnutmegitem>, 4, [<harvestcraft:nutmegitem>]);

//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation