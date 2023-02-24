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
import mods.ArcaneWorld;

import mods.artisanworktables.builder.RecipeBuilder;

val genericMetal = <ore:genericMetal>;
val genericBars = <ore:genericMetalBars>;
val bucket = <ore:bucket>;
val brick = <minecraft:brick>;
val cobble = <ore:cobblestone>;
val bowl = <minecraft:bowl>;
val charcoalBlock = <pyrotech:charcoal_block>;
val ironBlock = <ore:blockIron>;
val ejectionPipe = <dungpipe:sewer_pipe>;
val masonryBrick = <contenttweaker:masonry_brick>;

// recipes.remove(<exsartagine:kettle>); // no built-in recipe yet
recipes.addShaped("exsar_kettle", <exsartagine:kettle>, [
    [null, genericMetal, null],
    [genericMetal, genericBars, genericMetal],
    [null, genericMetal, null]
]);

recipes.remove(<exsartagine:pan>);
recipes.addShaped("exsar_pan", <exsartagine:pan>, [
    [genericMetal | brick, null, <minecraft:stick>],
    [genericMetal | brick, genericMetal | brick, genericMetal | brick]
]);

recipes.remove(<exsartagine:pot>);
recipes.addShaped("exsar_pot", <exsartagine:pot>, [
    [genericMetal, null, genericMetal],
    [cobble, bucket, cobble],
    [cobble, cobble, cobble]
]);

recipes.remove(<exsartagine:range>);
recipes.addShaped("exsar_range", <exsartagine:range>, [
    [ejectionPipe, genericMetal | brick, genericMetal | brick],
    [masonryBrick, <minecraft:furnace>, <ore:bars>],
    [masonryBrick, masonryBrick, masonryBrick]
]);

val basicWorktable = <artisanworktables:worktable:5> | <minecraft:crafting_table>;
val chefToque = <rats:chef_toque>.anyDamage().transformDamage();
val ckit_temp = <contenttweaker:cooking_kit>.anyDamage();
var cookKitKettle = <contenttweaker:cooking_kit>.anyDamage().transformDamage();
var stone_slab = <ore:stoneSlab>;

recipes.addShaped("chef_workstation", <artisanworktables:workstation:11>, [
    [cobble, stone_slab, cobble],
    [cobble, chefToque, cobble],
    [cobble, cobble, cobble]
]);

var tempKnives = <harvestcraft:cuttingboarditem>.anyDamage(); // Forget if this can take damage, so just in case
for knife in <ore:smallKnife>.items { tempKnives |= knife.anyDamage().noReturn(); }

recipes.addShapeless("cooking_kit", <contenttweaker:cooking_kit>, [
    <animania:carving_knife:*>.anyDamage().noReturn(),
    <minecraft:glass_bottle>,
    <minecraft:bowl>,
    tempKnives
]);

//Beet Soup --> Beetroot Soup conversion removal - Nyagi
recipes.remove(<minecraft:beetroot_soup>);
//Crafting for Potato Soup Removal for inspirations and pams - Nyagi
recipes.remove(<inspirations:potato_soup>);
recipes.remove(<harvestcraft:potatosoupitem>);

// accepts any veggie for crafting of food book
recipes.remove(<solcarrot:food_book>);
recipes.addShapeless("food_book",<solcarrot:food_book>,[<minecraft:book>,<ore:listAllveggie>]);

ExSartagine.removePanRecipe(<minecraft:leather>);

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
JEI.hideCategory("artisanworkstumps_chef");
JEI.removeAndHide(<harvestcraft:potatosoupitem>);

ExSartagine.addPlaceable(<blockstate:betterwithmods:stoked_flame>.getBlock());
ExSartagine.addHeatSource(<blockstate:betterwithmods:stoked_flame>.getBlock());
ExSartagine.addPlaceable(<blockstate:futuremc:blast_furnace>.getBlock());
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=east,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=west,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=north,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:blast_furnace:facing=south,lit=true>);
ExSartagine.addPlaceable(<blockstate:futuremc:smoker>.getBlock());
ExSartagine.addHeatSource(<blockstate:futuremc:smoker:facing=north,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:smoker:facing=south,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:smoker:facing=west,lit=true>);
ExSartagine.addHeatSource(<blockstate:futuremc:smoker:facing=east,lit=true>);
ExSartagine.addPlaceable(<blockstate:pyrotech:campfire>.getBlock());
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=0,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=1,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=2,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=3,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=4,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=5,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=6,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=7,variant=lit>);
ExSartagine.addHeatSource(<blockstate:pyrotech:campfire:ash=8,variant=lit>);


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
var cookKit = <contenttweaker:cooking_kit>.anyDamage();

val redRose = <minecraft:dye:1>;

var waterBottle = <liquid:water>*333;
var waterBottle2 = <liquid:water>*666;
var waterBucket = <liquid:water>*1000;
var acid250 = <liquid:endacid>*250;
var waterBottleItem = <minecraft:potion>.withTag({Potion: "minecraft:water"}).giveBack(<minecraft:glass_bottle>);
var milkBottle = <animania:milk_bottle>.giveBack(<minecraft:glass_bottle>);
val coconutMilk = <harvestcraft:coconutmilkitem>;
val stock = <harvestcraft:stockitem>;
val dough = <ore:foodDough>;
val salt = <ore:dustSalt>;
val flour = <ore:foodFlour>;
val sugar = <ore:listAllsugar>;
val mayo = <ore:foodMayo>;
val snowball = <minecraft:snowball>;
val rawChicken = <ore:listAllchickenraw>;
val cookedChicken = <ore:listAllchickencooked>;
val rawPork = <animania:raw_prime_pork>|<minecraft:porkchop>;
val cookedPork = <animania:cooked_prime_pork>|<minecraft:cooked_porkchop>|<harvestcraft:bbqjackfruititem>;
val rawBacon = <animania:raw_prime_bacon>|<harvestcraft:rawtofaconitem>;
val cookedBacon = <animania:cooked_prime_bacon>|<harvestcraft:cookedtofaconitem>;
val rawBeef = <ore:listAllbeefraw>;
val cookedBeef = <ore:listAllbeefcooked>;
val rawFish = <ore:listAllfishraw>;
val cookedFish = <ore:listAllfishcooked>;
val rawMutton = <ore:listAllmuttonraw>;
val rawVenison = <ore:foodVenisonraw>;
val cookedMeat = <ore:listAllmeatcooked>;
val rawShrimp = <ore:foodShrimpraw>;
val veggie = <ore:listAllveggie>;
val carrot = <minecraft:carrot>;
val batter = <harvestcraft:batteritem>;
val heavyCream = <ore:listAllheavycream>;
val egg = <ore:listAllegg>;
val cherry = <harvestcraft:cherryitem>;
val cocoaPowder = <ore:foodCocoapowder>;
val sprinkles = <contenttweaker:sprinkles>;
val spice = <ore:listAllspice>;
val chocolateBar = <ore:foodChocolatebar>;
val toastedCoconut = <ore:foodToastedcoconut>;
val lemon = <ore:cropLemon>;
val strawberry = <ore:cropStrawberry>;
val walnut = <ore:cropWalnut>;
val pineapple = <ore:cropPineapple>;
val meringue = <ore:foodMeringue>;
val pumpkin = <ore:cropPumpkin>;
val calamari = <ore:foodCalamariraw>;
val cookedCalamari = <harvestcraft:calamaricookeditem>;
val sweetPotato = <harvestcraft:sweetpotatoitem>;
val bakedsweetpotato = <harvestcraft:bakedsweetpotatoitem>;
val eggplant = <harvestcraft:eggplantitem>;
val grilledEggplant = <harvestcraft:grilledeggplantitem>;
val toast = <harvestcraft:toastitem>;
val iceCream = <ore:listAllicecream>;
val griledCheese = <harvestcraft:grilledcheeseitem>;
val appleSauce = <harvestcraft:applesauceitem>;
val bread = <minecraft:bread>;
val butter = <harvestcraft:butteritem>;
val cheese = <ore:foodCheese>;
val apple = <ore:cropApple>;
val teaLeaf = <ore:cropTea>;
val coffeeBean = <harvestcraft:coffeebeanitem>;
val corn = <ore:cropCorn>;
val grape = <ore:cropGrape>;
val rice = <ore:cropRice>;
val koji_mold = <contenttweaker:koji_mold>;
val coconut = <ore:cropCoconut>;
val pumpkinSeeds = <minecraft:pumpkin_seeds>;
val vanillaBean = <ore:cropVanillabean>;
val sesame = <ore:cropSesame>;
val melon = <minecraft:melon>;
val blueberry = <ore:cropBlueberry>;
val papaya = <ore:cropPapaya>;
val starfruit = <ore:cropStarfruit>;
val orange = <ore:cropOrange>;
val peach = <ore:cropPeach>;
val lime = <ore:cropLime>;
val mango = <ore:cropMango>;
val pomegranate = <ore:cropPomegranate>;
val blackberry = <ore:cropBlackberry>;
val raspberry = <ore:cropRaspberry>;
val kiwi = <ore:cropKiwi>;
val cranberry = <ore:cropCranberry>;
val cactusFruit = <ore:cropCactusfruit>;
val plum = <ore:cropPlum>;
val pear = <ore:cropPear>;
val apricot = <ore:cropApricot>;
val fig = <ore:cropFig>;
val grapeFruit = <ore:cropGrapefruit>;
val persimmon = <ore:cropPersimmon>;
val banana = <harvestcraft:bananaitem>;
val gooseberry = <harvestcraft:gooseberryitem>;
val potato = <ore:cropPotato>;
val cookedPotato = <ore:cookedPotato>;
val mushroom = <ore:listAllmushroom>;
val pasta = <harvestcraft:pastaitem>;
val wiener = <contenttweaker:wiener>;
val patty = <contenttweaker:patty>;
val anyMeat = <ore:foodMeats>;
val anyRawMeat = <ore:listAllmeatraw>;
val hydraMeat = <twilightforest:hydra_chop>;
val cocoa = <minecraft:dye:3>;
val tomato = <ore:cropTomato>;
val lettuce = <harvestcraft:lettuceitem>;
val onion = <harvestcraft:onionitem>;
val cornmeal = <harvestcraft:cornmealitem>;
val tortilla = <harvestcraft:tortillaitem>;
val cookingOil = <harvestcraft:oliveoilitem>;
val peanut = <harvestcraft:peanutitem>;
val seed = <ore:listAllseed>;
val nut = <ore:listAllnut>;
val nutButter = <ore:listAllnutbutter>;
val vinegar = <harvestcraft:vinegaritem>;
val cucumber = <ore:cropCucumber>;
val springSalad = <harvestcraft:springsaladitem>;
val chili = <ore:cropChilipepper>;
val bellpepper = <harvestcraft:bellpepperitem>;
val stewCondiment = <ore:listAllStewcondiment>;
val beans = <harvestcraft:beanitem>;
val hotSauce = <harvestcraft:hotsauceitem>;
val cinnamon = <harvestcraft:cinnamonitem>;
val groundCinnamon = <harvestcraft:groundcinnamonitem>;
val nutmeg = <harvestcraft:nutmegitem>;
val groundNutmeg = <harvestcraft:groundnutmegitem>;
val blackPepper = <harvestcraft:blackpepperitem>;
val beet = <ore:cropBeet>;
val broccoli = <harvestcraft:broccoliitem>;
val marshmellows = <harvestcraft:marshmellowsitem>;
val peas = <ore:cropPeas>;
val yogurt = <harvestcraft:plainyogurtitem>;
val turnip = <ore:cropTurnip>;
val tuber = <ore:listAllTuber>;
val ginger = <harvestcraft:gingeritem>;
val mustardSeed = <harvestcraft:mustardseedsitem>;
val mustard = <harvestcraft:mustarditem>;
val veggieGreen = <ore:listAllgreenveggie>;
val garlic = <ore:cropGarlic>;
val radish = <harvestcraft:radishitem>;
val zucchini = <ore:cropZucchini>;
val celery = <ore:cropCelery>;
val aSparagus = <ore:cropAsparagus>;
val avocado = <harvestcraft:avocadoitem>;
val fruit = <ore:listAllfruit>;
val donut = <harvestcraft:donutitem>;
val syrup = <harvestcraft:maplesyrupitem>.giveBack(<minecraft:glass_bottle>);
val sunflowerSeed = <harvestcraft:sunflowerseedsitem>;
val mint = <harvestcraft:spiceleafitem>;
val dyeGreen = <ore:dyeGreen>;
val dyeRed = <ore:dyeRed>;
val saladDressing = <ore:foodSaladdressing>;
val seaweed = <ore:cropSeaweed>;
val bubblyWater = <harvestcraft:bubblywateritem>;
val caramel = <harvestcraft:caramelitem>;
val honey = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}).giveBack(<minecraft:glass_bottle>);
val scallion = <harvestcraft:scallionitem>;
val barley = <harvestcraft:barleyitem>;
val rhubarb = <harvestcraft:rhubarbitem>;
val oats = <ore:cropOats>;
val cauliflower = <ore:cropCauliflower>;
val leek = <ore:cropLeek>;
val parsnip = <ore:cropParsnip>;
val firmTofu = <harvestcraft:firmtofuitem>;
val silkenTofu = <harvestcraft:silkentofuitem>;
val soybean = <harvestcraft:soybeanitem>;
val bambooShoot = <dynamictreesbop:bambooseed>;
val chestnut = <harvestcraft:chestnutitem>;
val pecan = <ore:cropPecan>;
val cashew = <ore:cropCashew>;
val pepper = <ore:listAllpepper>;
val citrus = <ore:listAllcitrus>;
val pistachio = <ore:cropPistachio>;
val rawSalmon = <ore:foodSalmonraw>;
val date = <ore:cropDate>;
val boiledEgg = <harvestcraft:boiledeggitem>;
val squash = <ore:cropSquash>;
val cookedMutton = <ore:listAllmuttoncooked>;
val spinach = <ore:cropSpinach>;
val vegemite = <harvestcraft:vegemiteitem>;
val porkSausage = <harvestcraft:porksausageitem>;
val cabbage = <ore:cropCabbage>;
val grain = <ore:listAllgrain>;
val bakedpotato = <minecraft:baked_potato>;
val curryPowder = <harvestcraft:currypowderitem>;
val lemonaide = <harvestcraft:lemonaideitem>;
val almond = <ore:cropAlmond>;
val durian = <ore:cropDurian>;
val dye = <ore:dye>;
val soySauce = <harvestcraft:soysauceitem>;
val cookie = <ore:listAllcookie>;
val pickle = <ore:foodPickles>;
val ketchup = <harvestcraft:ketchupitem>;
val crackers = <harvestcraft:crackersitem>;
val noodles = <harvestcraft:noodlesitem>;
val sesameSeeds = <harvestcraft:sesameseedsitem>;
val juice = <ore:listAlljuice>;
val jelly = <ore:foodJelly>;
val cookedCrab = <ore:foodCrabcooked>;
val rawFrog = <ore:listAllfrograw>;
val hoisinSauce = <ore:foodHoisinsauce>;
val rawDuck = <ore:listAllduckraw>;
val fiveSpice = <harvestcraft:fivespiceitem>;
val sesameOil = <harvestcraft:sesameoilitem>;
val berry = <ore:listAllberry>;
val kale = <ore:cropKale>;
val tofu = <ore:listAlltofu>;
val wheat = <minecraft:wheat>;
val peanutButter = <harvestcraft:peanutbutteritem>;
val hops = <ore:cropHops>;
val slimeball = <ore:slimeball>;
val meatball = <mod_lavacow:meatball>;
val misoPaste = <harvestcraft:misopasteitem>;

//Stock Recipes
recipes.remove(<harvestcraft:stockitem>);
ExSartagine.addPotRecipe(<minecraft:bone>|<undergroundbiomes:fossil_piece:2>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:7>, stock);
ExSartagine.addPotRecipe(veggie, stock*2);
ExSartagine.addPotRecipe(<ore:listAllmeatraw>|<betterwithaddons:congealed>, stock*3);

//Wormhold Potion
ExSartagine.addKettleRecipe([<quark:arrow_ender>,<minecraft:glass_bottle>],null,waterBottle,[<bountifulbaubles:potionwormhole>],300);

// Carrot Cake
recipes.removeByRecipeName("harvestcraft:carrotcakeitem");
ExSartagine.addKettleRecipe([dough,carrot,sugar],null,waterBottle,[<harvestcraft:carrotcakeitem>],200);
// Cheese Cake
recipes.removeByRecipeName("harvestcraft:cheesecakeitem");
ExSartagine.addKettleRecipe([batter,heavyCream,sugar],null,waterBottle,[<harvestcraft:cheesecakeitem>],200);
// Cherry Cheesecake
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
// Cooked Calamari
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
  .setShapeless([milkBottle * 3, snowball, salt])
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
// Coffee
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
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:doughitem>)
  .create();
//Pasta
recipes.removeByRecipeName("harvestcraft:pastaitem_x5");
RecipeBuilder.get("chef")
  .setShapeless([dough,butter])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pastaitem>*6)
  .create();
//Heavy Cream
recipes.removeByRecipeName("harvestcraft:heavycreamitem");
recipes.addShapeless("heavy_cream", <harvestcraft:heavycreamitem>*2,
    [milkBottle]);

//Butter
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
ExSartagine.addKettleRecipe([salt,heavyCream],null,null,[<harvestcraft:butteritem>],80);

//Juices
//Fruit Punch -&R
recipes.remove(<harvestcraft:fruitpunchitem>);
RecipeBuilder.get("chef")
  .setName("fruitpunch")
  .setShapeless([fruit,sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fruitpunchitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:applejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apple, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:applejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:melonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([melon, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:melonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:carrotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([carrot, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:carrotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([strawberry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grape, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blueberry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blueberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cherryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cherry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:papayajuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([papaya, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:papayajuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([starfruit, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:starfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:orangejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([orange, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:orangejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:peachjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([peach, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peachjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:limejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([lime, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:limejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:mangojuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([mango, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mangojuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatejuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pomegranate, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pomegranatejuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([blackberry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blackberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([raspberry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwijuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([kiwi, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:kiwijuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberryjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cranberry, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cranberryjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cactusfruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([cactusFruit, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cactusfruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:plumjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([plum, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:plumjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pearjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([pear, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pearjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([apricot, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:figjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([fig, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:figjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([grapeFruit, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapefruitjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonjuiceitem");
RecipeBuilder.get("chef")
  .setShapeless([persimmon, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:persimmonjuiceitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:lemonaideitem");
RecipeBuilder.get("chef")
  .setShapeless([lemon, sugar])
  .setFluid(waterBottle2)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lemonaideitem>*2)
  .create();

//Smoothies
recipes.removeByRecipeName("harvestcraft:melonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("melon_smoothie")
  .setShapeless([melon,melon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:melonsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:strawberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("strawberry_smoothie")
  .setShapeless([strawberry,strawberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:lemonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("lemon_smoothie")
  .setShapeless([lemon,lemon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lemonsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blueberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("blueberry_smoothie")
  .setShapeless([blueberry,blueberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blueberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cherrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("cherry_smoothie")
  .setShapeless([cherry,cherry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:papayasmoothieitem");
RecipeBuilder.get("chef")
  .setName("papaya_smoothie")
  .setShapeless([papaya,papaya,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:papayasmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:starfruitsmoothieitem");
RecipeBuilder.get("chef")
  .setName("starfruit_smoothie")
  .setShapeless([starfruit,starfruit,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:starfruitsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:bananasmoothieitem");
RecipeBuilder.get("chef")
  .setName("banana_smoothie")
  .setShapeless([banana,banana,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bananasmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:orangesmoothieitem");
RecipeBuilder.get("chef")
  .setName("orange_smoothie")
  .setShapeless([orange,orange,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:orangesmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:peachsmoothieitem");
RecipeBuilder.get("chef")
  .setName("peach_smoothie")
  .setShapeless([peach,peach,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peachsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:limesmoothieitem");
RecipeBuilder.get("chef")
  .setName("lime_smoothie")
  .setShapeless([lime,lime,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:limesmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:mangosmoothieitem");
RecipeBuilder.get("chef")
  .setName("mango_smoothie")
  .setShapeless([mango,mango,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mangosmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pomegranatesmoothieitem");
RecipeBuilder.get("chef")
  .setName("pomegranate_smoothie")
  .setShapeless([pomegranate,pomegranate,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pomegranatesmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:blackberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("blackberry_smoothie")
  .setShapeless([blackberry,blackberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:blackberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:raspberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("raspberry_smoothie")
  .setShapeless([raspberry,raspberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:raspberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:kiwismoothieitem");
RecipeBuilder.get("chef")
  .setName("kiwi_smoothie")
  .setShapeless([kiwi,kiwi,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:kiwismoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:apricotsmoothieitem");
RecipeBuilder.get("chef")
  .setName("apricot_smoothie")
  .setShapeless([apricot,apricot,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:figsmoothieitem");
RecipeBuilder.get("chef")
  .setName("fig_smoothie")
  .setShapeless([fig,fig,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:figsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapefruitsmoothieitem");
RecipeBuilder.get("chef")
  .setName("grapefruit_smoothie")
  .setShapeless([grapeFruit,grapeFruit,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapefruitsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:persimmonsmoothieitem");
RecipeBuilder.get("chef")
  .setName("persimmon_smoothie")
  .setShapeless([persimmon,persimmon,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:persimmonsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:gooseberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("gooseberry_smoothie")
  .setShapeless([gooseberry,gooseberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:gooseberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:applesmoothieitem");
RecipeBuilder.get("chef")
  .setName("apple_smoothie")
  .setShapeless([apple,apple,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:applesmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:coconutsmoothieitem");
RecipeBuilder.get("chef")
  .setName("coconut_smoothie")
  .setShapeless([coconut,coconut,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:coconutsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:cranberrysmoothieitem");
RecipeBuilder.get("chef")
  .setName("cranberry_smoothie")
  .setShapeless([cranberry,cranberry,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cranberrysmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:grapesmoothieitem");
RecipeBuilder.get("chef")
  .setName("grape_smoothie")
  .setShapeless([grape,grape,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grapesmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:pearsmoothieitem");
RecipeBuilder.get("chef")
  .setName("pear_smoothie")
  .setShapeless([pear,pear,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pearsmoothieitem>*2)
  .create();
recipes.removeByRecipeName("harvestcraft:plumsmoothieitem");
RecipeBuilder.get("chef")
  .setName("plum_smoothie")
  .setShapeless([plum,plum,sugar,snowball])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:plumsmoothieitem>*2)
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
// Carrot soup
recipes.removeByRecipeName("harvestcraft:carrotsoupitem");
ExSartagine.addKettleRecipe([stock,heavyCream,carrot],cookKitKettle,null,[<harvestcraft:carrotsoupitem>],80);
//Glassed carrots
recipes.removeByRecipeName("harvestcraft:glazedcarrotsitem");
ExSartagine.addKettleRecipe([carrot,butter,sugar],cookKitKettle,null,[<harvestcraft:glazedcarrotsitem>],80);
//Mashed potato
recipes.remove(<harvestcraft:mashedpotatoesitem>);
Mortar.addRecipe(["stone"], <harvestcraft:mashedpotatoesitem>, 4, [bakedpotato,salt]);
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
recipes.removeByRecipeName("harvestcraft:potatosoupitem_dustsalt");
ExSartagine.addKettleRecipe([stock,heavyCream,potato],cookKitKettle,null,[<harvestcraft:potatosoupitem>],80);
//Grilled mushroom
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem");
ExSartagine.addPanRecipe(mushroom, <harvestcraft:grilledmushroomitem>);
//Stuffed mushrooms
recipes.removeByRecipeName("harvestcraft:stuffedmushroomitem");
ExSartagine.addKettleRecipe([toast,mushroom],cheese,null,[<harvestcraft:stuffedmushroomitem>],80);
// Chicken sandwich -&C
recipes.removeByRecipeName("harvestcraft:chickensandwichitem");
recipes.addShapeless("chicken_sandwich", <harvestcraft:chickensandwichitem>,
    [bread,cookedChicken,mayo]);
RecipeBuilder.get("chef")
  .setName("chicken_sandwich")
  .setShapeless([bread,cookedChicken,mayo])
  .addOutput(<harvestcraft:chickensandwichitem>)
  .create();
// Chicken noodle soup
recipes.removeByRecipeName("harvestcraft:chickennoodlesoupitem");
ExSartagine.addKettleRecipe([rawChicken,carrot,pasta,stock],cookKitKettle,null,[<harvestcraft:chickennoodlesoupitem>],80);
// Chicken pot pie
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
// Cheeseburguer -&C
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
// Caramel
recipes.removeByRecipeName("harvestcraft:caramelitem");
ExSartagine.addPanRecipe(sugar, <harvestcraft:caramelitem>);
ExSartagine.addKettleRecipe([sugar],null,null,[<harvestcraft:caramelitem>],80);
//Taffy
recipes.removeByRecipeName("harvestcraft:taffyitem");
ExSartagine.addKettleRecipe([sugar,salt],null,waterBottle,[<harvestcraft:taffyitem>],80);
// Cocoa Powder
recipes.removeByRecipeName("harvestcraft:cocoapowderitem");
Mortar.addRecipe(["stone"], <harvestcraft:cocoapowderitem>, 4, [cocoa]);
// Chocolate bar
recipes.removeByRecipeName("harvestcraft:chocolatebaritem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>*4,butter,milkBottle*2],null,null,[<harvestcraft:chocolatebaritem>*4],80);
//Hot chocolate
recipes.removeByRecipeName("harvestcraft:hotchocolateitem");
ExSartagine.addKettleRecipe([<harvestcraft:cocoapowderitem>,milkBottle],null,waterBottle,[<harvestcraft:hotchocolateitem>*2],80);
// Chocolate ice cream
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
ExSartagine.addKettleRecipe([tomato,pasta,pasta,spice,meatball*4],null,null,[<harvestcraft:spagettiandmeatballsitem>],80);
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
// Chicken parmesan
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
recipes.removeByRecipeName("harvestcraft:hashitem");
ExSartagine.addKettleRecipe([onion,potato,<contenttweaker:ground_beef>|<mod_lavacow:mousse>],cookKitKettle,null,[<harvestcraft:hashitem>],80);
//Braised onions
recipes.removeByRecipeName("harvestcraft:braisedonionsitem");
ExSartagine.addKettleRecipe([onion,butter,stock],cookKitKettle,null,[<harvestcraft:braisedonionsitem>],80);
// Corn on the cob
RecipeBuilder.get("chef")
  .setName("corn_on_the_cob")
  .setShapeless([corn,butter])
  .addOutput(<harvestcraft:cornonthecobitem>)
  .create();
// Cornmeal
recipes.removeByRecipeName("harvestcraft:cornmealitem");
Mortar.addRecipe(["stone"], cornmeal, 4, [corn]);
// Corn bread
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
// Creamed corn
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
// Chocolate strawberry
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
ExSartagine.addKettleRecipe([batter,sugar,<harvestcraft:raisinsitem>],null,null,[<harvestcraft:raisincookiesitem>*2],80);
//Pickles
recipes.removeByRecipeName("harvestcraft:picklesitem_dustsalt");
ExSartagine.addKettleRecipe([cucumber,salt,vinegar],null,null,[<harvestcraft:picklesitem>],80);
// Cucumber salad -&C
recipes.removeByRecipeName("harvestcraft:cucumbersaladitem");
recipes.addShapeless("cucumber_salad",<harvestcraft:cucumbersaladitem>,[springSalad,cucumber,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("cucumber_salad")
  .setShapeless([springSalad,cucumber])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cucumbersaladitem>)
  .create();
// Cucumber soup
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
// Curry rice
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
// Chili
recipes.removeByRecipeName("harvestcraft:chiliitem_croponion");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropchilipepper");
recipes.removeByRecipeName("harvestcraft:chiliitem_cropbellpepper");
ExSartagine.addKettleRecipe([beans,stewCondiment,rawPork,chili],cookKitKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili")
  .setShapeless([beans,stewCondiment,cookedPork,chili])
  .addOutput(<harvestcraft:chiliitem>)
  .create();
ExSartagine.addKettleRecipe([beans,stewCondiment,rawBacon,chili],cookKitKettle,null,[<harvestcraft:chiliitem>],80);
RecipeBuilder.get("chef")
  .setName("chili_1")
  .setShapeless([beans,stewCondiment,cookedBacon,chili])
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
// Chili poppers
recipes.removeByRecipeName("harvestcraft:chilipoppersitem");
ExSartagine.addKettleRecipe([chili,batter,cheese],cookKitKettle,null,[<harvestcraft:chilipoppersitem>],80);
//Extreme chili -&C
recipes.removeByRecipeName("harvestcraft:extremechiliitem");
RecipeBuilder.get("chef")
  .setName("extreme_chili")
  .setShapeless([<harvestcraft:chiliitem>,chili,<betterwithmods:material:16>*8])
  .addOutput(<harvestcraft:extremechiliitem>)
  .create();
RecipeBuilder.get("chef")
  .setName("extremer_chili")
  .setShapeless([<harvestcraft:chiliitem>])
  .addTool(<msmlegacy:relic_aqueous>, 1)
  .addOutput(<harvestcraft:extremechiliitem>)
  .create();
// Chili chocolate
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
// Candied lemon
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
// Cherry pie
recipes.removeByRecipeName("harvestcraft:cherrypieitem");
ExSartagine.addKettleRecipe([cherry,dough,sugar],null,waterBottle,[<harvestcraft:cherrypieitem>],80);
// Chocolate cherry
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
// Chai tea
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
// Café con leche
recipes.removeByRecipeName("harvestcraft:espressoitem");
ExSartagine.addKettleRecipe([<harvestcraft:espressoitem>,milkBottle,groundCinnamon],cookKit,waterBottle2,[<harvestcraft:coffeeconlecheitem>*2],80);
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
// Creamed broccoli soup
recipes.removeByRecipeName("harvestcraft:creamedbroccolisoupitem");
ExSartagine.addKettleRecipe([broccoli,carrot,flour,blackPepper,stock],cookKitKettle,null,[<harvestcraft:creamedbroccolisoupitem>],80);
//Sweet potato pie
recipes.removeByRecipeName("harvestcraft:sweetpotatopieitem");
ExSartagine.addKettleRecipe([sweetPotato,dough,groundCinnamon,marshmellows],cookKitKettle,waterBottle,[<harvestcraft:sweetpotatopieitem>],80);
// Candied sweet potatoes
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
ExSartagine.addKettleRecipe([ginger,flour,sugar],cookKitKettle,null,[<harvestcraft:gingersnapsitem> * 2],80);
// Candied ginger
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
/*
RecipeBuilder.get("chef")
  .setName("spicy_mustard_pork")
  .setShapeless([mustard,rawPork,spice,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:spicymustardporkitem>)
  .create();
  */
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
// Celery and peanut butter -&C
RecipeBuilder.get("chef")
  .setName("celery_peanut_butter")
  .setShapeless([celery,nutButter])
  .addOutput(<harvestcraft:celeryandpeanutbutteritem>)
  .create();
// Chicken celery casserole
recipes.removeByRecipeName("harvestcraft:chickencelerycasseroleitem");
ExSartagine.addKettleRecipe([celery,rawChicken,garlic,stewCondiment,mushroom],cookKitKettle,waterBottle,[<harvestcraft:chickencelerycasseroleitem>],80);
//Peas and celery
recipes.removeByRecipeName("harvestcraft:peasandceleryitem");
ExSartagine.addKettleRecipe([celery,peas,lemon,blackPepper],null,waterBottle,[<harvestcraft:peasandceleryitem>],80);
// Celery soup
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
// Candied walnuts
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
// Cream of avocado soup
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
// Coconut milk
recipes.removeByRecipeName("harvestcraft:coconutmilkitem");
Mortar.addRecipe(["stone"], coconutMilk, 4, [coconut]);
// Chicken curry
recipes.removeByRecipeName("harvestcraft:chickencurryitem");
ExSartagine.addKettleRecipe([coconut,yogurt,rawChicken,spice,chili,rice,groundCinnamon,garlic],cookKitKettle,waterBottle2,[<harvestcraft:chickencurryitem>],80);
// Coconut shrimp
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
// Cinnamon rolls
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
ExSartagine.addKettleRecipe([dough,cookingOil],null,null,[donut],80);
// Chocolate donut -&C
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
// Cactus soup
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
ExSartagine.addKettleRecipe([dough,butter,salt],cookKitKettle,waterBottle,[<harvestcraft:softpretzelitem>],80);
//Jellybeans
recipes.removeByRecipeName("harvestcraft:jellybeansitem");
ExSartagine.addKettleRecipe([sugar,sugar,sugar,syrup],cookKitKettle,null,[<harvestcraft:jellybeansitem>*4],80);
//Biscuit
recipes.removeByRecipeName("harvestcraft:biscuititem");
ExSartagine.addKettleRecipe([butter,dough],cookKitKettle,null,[<harvestcraft:biscuititem>],80);
// Cream cookie
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
// Chocolate milk -&C
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
// Cinnamon sugar donut -&C
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
// Cranberry sauce
recipes.removeByRecipeName("harvestcraft:cranberrysauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:cranberrysauceitem>, 4, [cranberry,sugar]);
// Cranberry bar
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
// Cooking Oil
recipes.remove(<harvestcraft:oliveoilitem>);
RecipeBuilder.get("chef")
  .setName("cooking_oil")
  .setShapeless([seed,seed])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:oliveoilitem>)
  .create();
//Baklava
recipes.remove(<harvestcraft:baklavaitem>);
ExSartagine.addKettleRecipe([dough,walnut,cinnamon,butter,sugar],cookKitKettle,null,[<harvestcraft:baklavaitem>],80);
//Gummy Bears
recipes.remove(<harvestcraft:gummybearsitem>);
RecipeBuilder.get("chef")
  .setName("gummybears")
  .setShapeless([sugar,dyeRed,dyeGreen])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:gummybearsitem>)
  .create();
//Meaty Stew  -&R
recipes.remove(<harvestcraft:meatystewitem>);
ExSartagine.addKettleRecipe([anyRawMeat,flour,stock],cookKitKettle,null,[<harvestcraft:meatystewitem>],80);
//Mixed Salad -&R
recipes.remove(<harvestcraft:mixedsaladitem>);
recipes.addShapeless("mixedsaladitem",<harvestcraft:mixedsaladitem>,[veggie,veggie,saladDressing,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("mixedsalad")
  .setShapeless([veggie,veggie,saladDressing])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mixedsaladitem>)
  .create();
//Pinacolada -&R
recipes.remove(<harvestcraft:pinacoladaitem>);
RecipeBuilder.get("chef")
  .setName("pinacolada")
  .setShapeless([coconut,pineapple])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pinacoladaitem>*2)
  .create();
//Salad Dressing
recipes.remove(<harvestcraft:saladdressingitem>);
recipes.addShapeless("saladdresing",<harvestcraft:saladdressingitem>,[vinegar,salt,cookingOil,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("saladdresing")
  .setShapeless([vinegar,salt,cookingOil])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:saladdressingitem>)
  .create();
//Shepards Pie
recipes.remove(<harvestcraft:shepardspieitem>);
ExSartagine.addKettleRecipe([rawMutton,potato,carrot,dough,peas],cookKitKettle,null,[<harvestcraft:shepardspieitem>],80);
//Eggnog
recipes.remove(<harvestcraft:eggnogitem>);
RecipeBuilder.get("chef")
  .setName("eggnog")
  .setShapeless([egg,groundNutmeg,cinnamon,heavyCream])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:eggnogitem>)
  .create();
// Custard
recipes.remove(<harvestcraft:custarditem>);
ExSartagine.addKettleRecipe([egg,groundNutmeg,cinnamon,heavyCream],cookKitKettle,null,[<harvestcraft:custarditem>],80);
//Sushi
recipes.remove(<harvestcraft:sushiitem>);
RecipeBuilder.get("chef")
  .setName("sushi")
  .setShapeless([rawFish,seaweed,rice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:sushiitem>)
  .create();
//Garden Soup
recipes.remove(<harvestcraft:gardensoupitem>);
ExSartagine.addKettleRecipe([stock,veggie,veggie],cookKitKettle,null,[<harvestcraft:gardensoupitem>],80);
//Jellies and their fruit-sandwich counter parts!
var jellyFruitAndSandwich as IItemStack[string][string] = {
  apple: {
    fruit: <minecraft:apple>,
    jelly: <harvestcraft:applejellyitem>,
    sandwich: <harvestcraft:applejellysandwichitem>
  },
  blackberry: {
    fruit: <harvestcraft:blackberryitem>,
    jelly: <harvestcraft:blackberryjellyitem>,
    sandwich: <harvestcraft:blackberryjellysandwichitem>
  },
  blueberry: {
    fruit: <harvestcraft:blueberryitem>,
    jelly: <harvestcraft:blueberryjellyitem>,
    sandwich: <harvestcraft:blueberryjellysandwichitem>
  },
  cherry: {
    fruit: <harvestcraft:cherryitem>,
    jelly: <harvestcraft:cherryjellyitem>,
    sandwich: <harvestcraft:cherryjellysandwichitem>
  },
  cranberry: {
    fruit: <harvestcraft:cranberryitem>,
    jelly: <harvestcraft:cranberryjellyitem>,
    sandwich: <harvestcraft:cranberryjellysandwichitem>
  },
  kiwi: {
    fruit: <harvestcraft:kiwiitem>,
    jelly: <harvestcraft:kiwijellyitem>,
    sandwich: <harvestcraft:kiwijellysandwichitem>
  },
  lemon: {
    fruit: <harvestcraft:lemonitem>,
    jelly: <harvestcraft:lemonjellyitem>,
    sandwich: <harvestcraft:lemonjellysandwichitem>
  },
  lime: {
    fruit: <harvestcraft:limeitem>,
    jelly: <harvestcraft:limejellyitem>,
    sandwich: <harvestcraft:limejellysandwichitem>
  },
  mango: {
    fruit: <harvestcraft:mangoitem>,
    jelly: <harvestcraft:mangojellyitem>,
    sandwich: <harvestcraft:mangojellysandwichitem>
  },
  orange: {
    fruit: <harvestcraft:orangeitem>,
    jelly: <harvestcraft:orangejellyitem>,
    sandwich: <harvestcraft:orangejellysandwichitem>
  },
  papaya: {
    fruit: <harvestcraft:papayaitem>,
    jelly: <harvestcraft:papayajellyitem>,
    sandwich: <harvestcraft:papayajellysandwichitem>
  },
  peach: {
    fruit: <harvestcraft:peachitem>,
    jelly: <harvestcraft:peachjellyitem>,
    sandwich: <harvestcraft:peachjellysandwichitem>
  },
  pomegranate: {
    fruit: <harvestcraft:pomegranateitem>,
    jelly: <harvestcraft:pomegranatejellyitem>,
    sandwich: <harvestcraft:pomegranatejellysandwichitem>
  },
  raspberry: {
    fruit: <harvestcraft:raspberryitem>,
    jelly: <harvestcraft:raspberryjellyitem>,
    sandwich: <harvestcraft:raspberryjellysandwichitem>
  },
  starfruit: {
    fruit: <harvestcraft:starfruititem>,
    jelly: <harvestcraft:starfruitjellyitem>,
    sandwich: <harvestcraft:starfruitjellysandwichitem>
  },
  strawberry: {
    fruit: <harvestcraft:strawberryitem>,
    jelly: <harvestcraft:strawberryjellyitem>,
    sandwich: <harvestcraft:strawberryjellysandwichitem>
  },
  watermelon: {
    fruit: <minecraft:melon>,
    jelly: <harvestcraft:watermelonjellyitem>,
    sandwich: <harvestcraft:watermelonjellysandwichitem>
  },
  apricot: {
    fruit: <harvestcraft:apricotitem>,
    jelly: <harvestcraft:apricotjellyitem>,
    sandwich: <harvestcraft:apricotjellysandwichitem>
  },
  fig: {
    fruit: <harvestcraft:figitem>,
    jelly: <harvestcraft:figjellyitem>,
    sandwich: <harvestcraft:figjellysandwichitem>
  },
  grapefruit: {
    fruit: <harvestcraft:grapefruititem>,
    jelly: <harvestcraft:grapefruitjellyitem>,
    sandwich: <harvestcraft:grapefruitjellysandwichitem>
  },
  persimmon: {
    fruit: <harvestcraft:persimmonitem>,
    jelly: <harvestcraft:persimmonjellyitem>,
    sandwich: <harvestcraft:persimmonjellysandwichitem>
  },
  gooseberry: {
    fruit: <harvestcraft:gooseberryitem>,
    jelly: <harvestcraft:gooseberryjellyitem>,
    sandwich: <harvestcraft:gooseberryjellysandwichitem>
  },
  pear: {
    fruit: <harvestcraft:pearitem>,
    jelly: <harvestcraft:pearjellyitem>,
    sandwich: <harvestcraft:pearjellysandwichitem>
  },
  plum: {
    fruit: <harvestcraft:plumitem>,
    jelly: <harvestcraft:plumjellyitem>,
    sandwich: <harvestcraft:plumjellysandwichitem>
  }
};

for key, value in jellyFruitAndSandwich {
  //recipe removal
  recipes.remove(value.jelly);
  recipes.remove(value.sandwich);
  //making of jelly
  ExSartagine.addKettleRecipe([value.fruit,sugar],cookKitKettle,waterBottle,[value.jelly],80);
  //making of sandwiches
  RecipeBuilder.get("chef")
  .setShapeless([nutButter,value.jelly,bread])
  .addTool(cookKit, 1)
  .addOutput(value.sandwich)
  .create();
}

//Bubbly water
recipes.remove(bubblyWater);
recipes.addShapeless("bubbly_water",bubblyWater,[cookKitBad,/*waterBottleItem*/<harvestcraft:freshwateritem>,/*waterBottleItem*/<harvestcraft:freshwateritem>]);

// Carbonated Sparkling Drinks
var sodas as IItemStack[IItemStack] = {
  <harvestcraft:cherrysodaitem> : <harvestcraft:cherryjuiceitem>,
  <harvestcraft:colasodaitem> : <harvestcraft:spiceleafitem>,
  <harvestcraft:gingersodaitem> : <harvestcraft:gingeritem>,
  <harvestcraft:grapesodaitem> : <harvestcraft:grapejuiceitem>,
  <harvestcraft:orangesodaitem> : <harvestcraft:orangejuiceitem>,
  <harvestcraft:rootbeersodaitem> : <harvestcraft:ediblerootitem>,
  <harvestcraft:strawberrysodaitem> : <harvestcraft:strawberryjuiceitem>,
  <harvestcraft:grapefruitsodaitem> : <harvestcraft:grapefruitjuiceitem>
};

for key, value in sodas {
  recipes.remove(key);
  ExSartagine.addKettleRecipe([bubblyWater,sugar,value],cookKitKettle,null,[key],80);
}

//lemon-lime soda
recipes.remove(<harvestcraft:lemonlimesodaitem>);
ExSartagine.addKettleRecipe([bubblyWater,sugar,lemon,lime],cookKitKettle,null,[<harvestcraft:lemonlimesodaitem>],80);

//root bear (do later)

// caramel ice cream
recipes.remove(<harvestcraft:caramelicecreamitem>);
RecipeBuilder.get("chef")
  .setName("caramel_ice_cream")
  .setShapeless([milkBottle, snowball, salt, caramel])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:caramelicecreamitem>*3)
  .create();
//mint chocolate chip ice cream
recipes.remove(<harvestcraft:mintchocolatechipicecreamitem>);
RecipeBuilder.get("chef")
  .setName("mint_chocolate_ice_cream")
  .setShapeless([milkBottle, snowball, salt, mint, chocolateBar])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mintchocolatechipicecreamitem>*3)
  .create();
//strawberry ice cream
recipes.remove(<harvestcraft:strawberryicecreamitem>);
RecipeBuilder.get("chef")
  .setName("strawberry_ice_cream")
  .setShapeless([milkBottle, snowball, salt, strawberry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberryicecreamitem>*3)
  .create();
//vanilla ice cream
recipes.remove(<harvestcraft:vanillaicecreamitem>);
RecipeBuilder.get("chef")
  .setName("vanilla_ice_cream")
  .setShapeless([milkBottle, snowball, salt, vanillaBean])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:vanillaicecreamitem>*3)
  .create();
//Ginger Chicken
recipes.remove(<harvestcraft:gingerchickenitem>);
ExSartagine.addKettleRecipe([rawChicken,ginger,scallion,honey],cookKitKettle,null,[<harvestcraft:gingerchickenitem>],80);
//Old World Veggie Soup -&R
recipes.remove(<harvestcraft:oldworldveggiesoupitem>);
ExSartagine.addKettleRecipe([stewCondiment,stewCondiment,stock,barley],cookKitKettle,null,[<harvestcraft:oldworldveggiesoupitem>],80);
//Spice Bun
recipes.remove(<harvestcraft:spicebunitem>);
ExSartagine.addKettleRecipe([dough,milkBottle,groundNutmeg,groundCinnamon,<harvestcraft:raisinsitem>],cookKitKettle,null,[<harvestcraft:spicebunitem>],80);
//Gingered Rhubarb Tart
recipes.remove(<harvestcraft:gingeredrhubarbtartitem>);
ExSartagine.addKettleRecipe([dough,rhubarb,ginger,sugar,egg],cookKitKettle,null,[<harvestcraft:gingeredrhubarbtartitem>],80);
//Lamb Barely Stew
recipes.remove(<harvestcraft:lambbarleysoupitem>);
ExSartagine.addKettleRecipe([stock,rawMutton,barley,stewCondiment,stewCondiment],cookKitKettle,null,[<harvestcraft:lambbarleysoupitem>],80);
//Honey Lemon Lamb
recipes.remove(<harvestcraft:honeylemonlambitem>);
ExSartagine.addKettleRecipe([honey,lemon,rawMutton,mustard],cookKitKettle,null,[<harvestcraft:honeylemonlambitem>],80);
//Pumpkin Oat Scones
recipes.remove(<harvestcraft:pumpkinoatsconesitem>);
ExSartagine.addKettleRecipe([dough,pumpkin,oats,sugar],cookKitKettle,null,[<harvestcraft:pumpkinoatsconesitem>],80);
//Beef Jerky
/* (needs salted meat for drying rack)
DryingRack.addRecipe("beef_jerky", <harvestcraft:beefjerkyitem>, meatSalted, 120 * 30);
*/
//Oven Roasted Cauliflower -&R
recipes.remove(<harvestcraft:ovenroastedcaulifloweritem>);
ExSartagine.addKettleRecipe([cauliflower,cookingOil,garlic,lemon],cookKitKettle,null,[<harvestcraft:ovenroastedcaulifloweritem>],80);
//Leek Bacon Soup -&R
recipes.remove(<harvestcraft:leekbaconsoupitem>);
ExSartagine.addKettleRecipe([leek,rawPork,stewCondiment,heavyCream],cookKitKettle,null,[<harvestcraft:leekbaconsoupitem>],80);
//Herb Butter Parsnips -&R
recipes.remove(<harvestcraft:herbbutterparsnipsitem>);
ExSartagine.addKettleRecipe([spice,butter,parsnip],cookKitKettle,null,[<harvestcraft:herbbutterparsnipsitem>],80);
//Scalion Baked Potato
recipes.remove(<harvestcraft:scallionbakedpotatoitem>);
ExSartagine.addKettleRecipe([scallion,potato,heavyCream],cookKitKettle,null,[<harvestcraft:scallionbakedpotatoitem>],80);
//Soy Milk - do we keep in or not? if so, we have to do a lore-friendly way of adding it
JEI.removeAndHide(<harvestcraft:soymilkitem>);
////////////////////////////////////////////////////
//Firm Tofu
recipes.remove(firmTofu);
RecipeBuilder.get("chef")
  .setName("firm_tofu")
  .setShapeless([silkenTofu])
  .addTool(cookKit, 1)
  .addOutput(firmTofu)
  .create();
//Silken Tofu
recipes.remove(silkenTofu);
RecipeBuilder.get("chef")
  .setName("silken_tofu")
  .setShapeless([soybean])
  .addTool(cookKit, 3)
  .addOutput(silkenTofu)
  .create();
//Bamboo Steamed Rice -&R
recipes.remove(<harvestcraft:bamboosteamedriceitem>);
ExSartagine.addKettleRecipe([bambooShoot, rice],cookKitKettle,waterBottle2,[<harvestcraft:bamboosteamedriceitem>],80);
//Roasted Chestnut
recipes.remove(<harvestcraft:roastedchestnutitem>);
ExSartagine.addPanRecipe(chestnut,<harvestcraft:roastedchestnutitem>);
//Sweet Potato Souffle
recipes.remove(<harvestcraft:sweetpotatosouffleitem>);
ExSartagine.addKettleRecipe([sweetPotato,pecan,dough,butter],cookKitKettle,null,[<harvestcraft:sweetpotatosouffleitem>],80);
// Cashew Chicken -&R
recipes.remove(<harvestcraft:cashewchickenitem>);
ExSartagine.addKettleRecipe([rawChicken,cashew,rice,pepper],cookKitKettle,null,[<harvestcraft:cashewchickenitem>],80);
//Apricot Glazed Pork
recipes.remove(<harvestcraft:apricotglazedporkitem>);
recipes.addShapeless("apricot_glazed_pork",<harvestcraft:apricotglazedporkitem>,[cookedPork,<harvestcraft:apricotjellyitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("apricot_glazed_pork")
  .setShapeless([cookedPork,<harvestcraft:apricotjellyitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:apricotglazedporkitem>)
  .create();
//Fig bar
recipes.remove(<harvestcraft:figbaritem>);
ExSartagine.addKettleRecipe([fig,sugar,dough],cookKitKettle,null,[<harvestcraft:figbaritem>],80);
// Citrus Salad
recipes.remove(<harvestcraft:citrussaladitem>);
recipes.addShapeless("citrus_salad",<harvestcraft:citrussaladitem>,[citrus,lettuce,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("citrus_salad")
  .setShapeless([citrus,lettuce])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:citrussaladitem>)
  .create();
  //Pecan Pie
recipes.remove(<harvestcraft:pecanpieitem>);
ExSartagine.addKettleRecipe([pecan,dough,honey,butter],cookKitKettle,null,[<harvestcraft:pecanpieitem>],80);
//Pralines
recipes.remove(<harvestcraft:pralinesitem>);
ExSartagine.addKettleRecipe([pecan,sugar],cookKitKettle,waterBottle,[<harvestcraft:pralinesitem>],80);
//Pistachio-Baked Salmon
recipes.remove(<harvestcraft:pistachiobakedsalmonitem>);
ExSartagine.addKettleRecipe([rawSalmon,pistachio],null,null,[<harvestcraft:pistachiobakedsalmonitem>],80);
//Bacon-wrapped dates
recipes.remove(<harvestcraft:baconwrappeddatesitem>);
ExSartagine.addKettleRecipe([cookedPork,date,date],null,null,[<harvestcraft:baconwrappeddatesitem>],80);
//Date nut bread
recipes.remove(<harvestcraft:datenutbreaditem>);
ExSartagine.addKettleRecipe([date,dough,nut],cookKitKettle,null,[<harvestcraft:datenutbreaditem>],80);
//Maple Syrup Pancakes
recipes.remove(<harvestcraft:maplesyruppancakesitem>);
recipes.addShapeless("maple_syrup_pancakes",<harvestcraft:maplesyruppancakesitem>,[<harvestcraft:pancakesitem>,syrup]);
//Maple Syrup Waffles
recipes.remove(<harvestcraft:maplesyrupwafflesitem>);
recipes.addShapeless("maple_syrup_waffles", <harvestcraft:maplesyrupwafflesitem>, [<harvestcraft:wafflesitem>,syrup]);
//Maple Sausage
recipes.remove(<harvestcraft:maplesausageitem>);
ExSartagine.addKettleRecipe([rawBeef,spice,syrup],cookKitKettle,null,[<harvestcraft:maplesausageitem>],80);
//Maple Oatmeal
recipes.remove(<harvestcraft:mapleoatmealitem>);
ExSartagine.addKettleRecipe([oats,syrup],cookKitKettle,null,[<harvestcraft:mapleoatmealitem>],80);
//Peaches and Cream Oatmeal
recipes.remove(<harvestcraft:peachesandcreamoatmealitem>);
ExSartagine.addKettleRecipe([oats,peach,heavyCream],cookKitKettle,null,[<harvestcraft:peachesandcreamoatmealitem>],80);
// Cinnamon Apple Oatmeal
recipes.remove(<harvestcraft:cinnamonappleoatmealitem>);
ExSartagine.addKettleRecipe([oats,groundCinnamon,apple],cookKitKettle,null,[<harvestcraft:cinnamonappleoatmealitem>],80);
//Maple Candied Bacon
recipes.remove(<harvestcraft:maplecandiedbaconitem>);
ExSartagine.addKettleRecipe([cookedPork,syrup],cookKitKettle,null,[<harvestcraft:maplecandiedbaconitem>],80);
//Toast Sandwich
recipes.remove(<harvestcraft:toastsandwichitem>);
recipes.addShapeless("toast_sandwich", <harvestcraft:toastsandwichitem>,[toast,toast,pepper,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("toast_sandwich")
  .setShapeless([toast,toast,pepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:toastsandwichitem>)
  .create();
//Potato and Cheese Perogi
recipes.remove(<harvestcraft:potatoandcheesepirogiitem>);
ExSartagine.addKettleRecipe([dough,potato,cheese],cookKitKettle,null,[<harvestcraft:potatoandcheesepirogiitem>],80);
//Zeppole
recipes.remove(<harvestcraft:zeppoleitem>);
ExSartagine.addKettleRecipe([cookingOil,groundCinnamon,dough],cookKitKettle,null,[<harvestcraft:zeppoleitem>],80);
// Chocolate Caramel Fudge
recipes.remove(<harvestcraft:chocolatecaramelfudgeitem>);
ExSartagine.addKettleRecipe([chocolateBar,caramel],cookKitKettle,null,[<harvestcraft:chocolatecaramelfudgeitem>],80);
//Lavender Short-bread
recipes.remove(<harvestcraft:lavendershortbreaditem>);
ExSartagine.addKettleRecipe([<ore:dyePurple>,dough],cookKitKettle,null,[<harvestcraft:lavendershortbreaditem>],80);
//Beef-wellington
recipes.remove(<harvestcraft:beefwellingtonitem>);
ExSartagine.addKettleRecipe([rawBeef,dough,mushroom,veggie],cookKitKettle,null,[<harvestcraft:beefwellingtonitem>],80);
//Manjuu
recipes.remove(<harvestcraft:manjuuitem>);
ExSartagine.addKettleRecipe([sugar,rice,beans],cookKitKettle,null,[<harvestcraft:manjuuitem>],80);
// Chicken Gumbo -&R
recipes.remove(<harvestcraft:chickengumboitem>);
ExSartagine.addKettleRecipe([rawChicken,bellpepper,stock,spice,veggie,veggie,veggie],cookKitKettle,null,[<harvestcraft:chickengumboitem>],80);
//General Tso Chicken -&R
recipes.remove(<harvestcraft:generaltsochickenitem>);
ExSartagine.addKettleRecipe([rawChicken,veggie,veggie,flour,rice],cookKitKettle,waterBottle,[<harvestcraft:generaltsochickenitem>],80);
// California Roll
recipes.remove(<harvestcraft:californiarollitem>);
RecipeBuilder.get("chef")
  .setName("california_roll")
  .setShapeless([rawFish,avocado,cucumber,seaweed,rice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:californiarollitem>)
  .create();
//Futo Maki
recipes.remove(<harvestcraft:futomakiitem>);
RecipeBuilder.get("chef")
  .setName("futo_maki")
  .setShapeless([boiledEgg,cucumber,squash,radish,seaweed,ginger,rice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:futomakiitem>)
  .create();
//Vegemite
recipes.remove(<harvestcraft:vegemiteitem>);
ExSartagine.addKettleRecipe([sugar,barley,spice],cookKitKettle,waterBottle,[<harvestcraft:vegemiteitem>],80);
//Honeycomb Chocolate Bar
recipes.remove(<harvestcraft:honeycombchocolatebaritem>);
ExSartagine.addKettleRecipe([<ore:materialHoneycomb>,chocolateBar],cookKitKettle,null,[<harvestcraft:honeycombchocolatebaritem>],80);
// cherry coconut chocolate bar
recipes.remove(<harvestcraft:cherrycoconutchocolatebaritem>);
ExSartagine.addKettleRecipe([chocolateBar,cherry,toastedCoconut,sugar],cookKitKettle,null,[<harvestcraft:cherrycoconutchocolatebaritem>],80);
//fairy bread
recipes.remove(<harvestcraft:fairybreaditem>);
ExSartagine.addKettleRecipe([bread,butter,<iceandfire:pixie_dust>,<iceandfire:pixie_dust>],cookKitKettle,null,[<harvestcraft:fairybreaditem>],80);
//tim tam
recipes.remove(<harvestcraft:timtamitem>);
ExSartagine.addKettleRecipe([sugar,flour,milkBottle,chocolateBar],cookKitKettle,null,[<harvestcraft:timtamitem>],80);
//damper
recipes.remove(<harvestcraft:damperitem>);
ExSartagine.addKettleRecipe([flour,milkBottle,salt,butter],cookKitKettle,null,[<harvestcraft:damperitem>],80);
//gherkin
recipes.remove(<harvestcraft:gherkinitem>);
ExSartagine.addKettleRecipe([vinegar,salt,spice,cucumber],cookKitKettle,waterBottle,[<harvestcraft:gherkinitem>],80);
// caesar salad -&R
recipes.remove(<harvestcraft:ceasarsaladitem>);
recipes.addShapeless("caesar_salad", <harvestcraft:ceasarsaladitem>,[lettuce,toast,cheese,veggie,pepper,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("caesar_salad")
  .setShapeless([lettuce,toast,cheese,veggie,pepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:ceasarsaladitem>)
  .create();
// Chaos Cookie
recipes.remove(<harvestcraft:chaoscookieitem>);
ExSartagine.addKettleRecipe([batter,chocolateBar,<primitivemobs:camouflage_dye>],cookKitKettle,null,[<harvestcraft:chaoscookieitem>],80);
// Chocolate Bacon
recipes.remove(<harvestcraft:chocolatebaconitem>);
ExSartagine.addKettleRecipe([cookedPork,chocolateBar],cookKitKettle,null,[<harvestcraft:chocolatebaconitem>],80);
//lamb kebab
recipes.remove(<harvestcraft:lambkebabitem>);
recipes.addShapeless("lamb_kebab", <harvestcraft:lambkebabitem>,[cookedMutton,veggie,veggie,veggie,<ore:stickWood>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("lamb_kebab")
  .setShapeless([cookedMutton,veggie,veggie,veggie,<ore:stickWood>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:lambkebabitem>)
  .create();
//Nutella
recipes.remove(<harvestcraft:nutellaitem>);
ExSartagine.addKettleRecipe([chocolateBar,groundNutmeg,milkBottle],cookKitKettle,null,[<harvestcraft:nutellaitem>],80);
//steamed spinach -&R
recipes.remove(<harvestcraft:steamedspinachitem>);
ExSartagine.addKettleRecipe([spinach,salt],cookKitKettle,waterBottle2,[<harvestcraft:steamedspinachitem>],80);
//Vegemite on toast
recipes.remove(<harvestcraft:vegemiteontoastitem>);
recipes.addShapeless("vegemite_on_toast", <harvestcraft:vegemiteontoastitem>,[vegemite,toast,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("vegemite_on_toast")
  .setShapeless([vegemite,toast])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:vegemiteontoastitem>)
  .create();
//Apple Cider
JEI.removeAndHide(<harvestcraft:applecideritem>);
//Bangers and Mash
recipes.remove(<harvestcraft:bangersandmashitem>);
ExSartagine.addKettleRecipe([porkSausage,<harvestcraft:mashedpotatoesitem>],cookKitKettle,null,[<harvestcraft:bangersandmashitem>],80);
//Battered sausage
recipes.remove(<harvestcraft:batteredsausageitem>);
ExSartagine.addKettleRecipe([porkSausage,batter,cookingOil],cookKitKettle,null,[<harvestcraft:batteredsausageitem>],80);
//Batter
recipes.remove(batter);
recipes.addShapeless("batter", batter,[flour,egg,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("batter")
  .setShapeless([flour,egg])
  .addTool(cookKit, 1)
  .addOutput(batter)
  .create();
// Chorizo
recipes.remove(<harvestcraft:chorizoitem>);
RecipeBuilder.get("chef")
  .setName("chorizo")
  .setShapeless([cookedPork,spice,garlic,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chorizoitem>)
  .create();
// Coleslaw
recipes.remove(<harvestcraft:coleslawitem>);
recipes.addShapeless("coleslaw", <harvestcraft:coleslawitem>,[cabbage,carrot,mayo,pepper,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("coleslaw")
  .setShapeless([cabbage,carrot,mayo,pepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:coleslawitem>)
  .create();
//Energy Drink
JEI.removeAndHide(<harvestcraft:energydrinkitem>);
//Fried Onions
recipes.remove(<harvestcraft:friedonionsitem>);
ExSartagine.addKettleRecipe([onion,cookingOil],cookKitKettle,null,[<harvestcraft:friedonionsitem>],80);
//Mince Pie
recipes.remove(<harvestcraft:mincepieitem>);
ExSartagine.addKettleRecipe([rawBeef,fruit,nut,dough,butter],cookKitKettle,null,[<harvestcraft:mincepieitem>],80);
//Onion Hamburger
recipes.remove(<harvestcraft:onionhamburgeritem>);
recipes.addShapeless("onionhamburger", <harvestcraft:onionhamburgeritem>,[<harvestcraft:friedonionsitem>,<harvestcraft:hamburgeritem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("onionhamburger")
  .setShapeless([<harvestcraft:friedonionsitem>,<harvestcraft:hamburgeritem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:onionhamburgeritem>)
  .create();
//Pepperoni
recipes.remove(<harvestcraft:pepperoniitem>);
RecipeBuilder.get("chef")
  .setName("pepperoni")
  .setShapeless([cookedPork,ginger,bellpepper,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pepperoniitem>)
  .create();
//Pickled onions
recipes.remove(<harvestcraft:pickledonionsitem>);
ExSartagine.addKettleRecipe([onion,vinegar,salt],cookKitKettle,null,[<harvestcraft:pickledonionsitem>],80);
//Pork Sausage
recipes.remove(<harvestcraft:porksausageitem>);
recipes.addShapeless("porksausage", <harvestcraft:porksausageitem>,[cookedPork,ginger,salt,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("porksausage")
  .setShapeless([cookedPork,ginger,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:porksausageitem>)
  .create();

//Milkshakes
var milkshakeIngredients as IItemStack[IItemStack] = {
  <harvestcraft:strawberrymilkshakeitem> : <harvestcraft:strawberryitem>,
  <harvestcraft:chocolatemilkshakeitem> : <harvestcraft:cocoapowderitem>,
  <harvestcraft:bananamilkshakeitem> : <harvestcraft:bananaitem>,
  <harvestcraft:gooseberrymilkshakeitem> : <harvestcraft:gooseberryitem>,
  <harvestcraft:durianmilkshakeitem> : <harvestcraft:durianitem>
};

for key, value in milkshakeIngredients {
  recipes.remove(key);
  RecipeBuilder.get("chef")
  .setShapeless([milkBottle,value])
  .setFluid(waterBottle)
  .addTool(cookKit, 1)
  .addOutput(key)
  .create();
}

//Pumpkin Muffin
recipes.remove(<harvestcraft:pumpkinmuffinitem>);
ExSartagine.addKettleRecipe([pumpkin,batter],cookKitKettle,null,[<harvestcraft:pumpkinmuffinitem>],80);
//Suadero
recipes.remove(<harvestcraft:suaderoitem>);
ExSartagine.addKettleRecipe([cookedBeef,cookingOil],cookKitKettle,null,[<harvestcraft:suaderoitem>],80);
//Cooked Turkey
recipes.remove(<harvestcraft:turkeycookeditem>);
//Cornflakes -&R
recipes.remove(<harvestcraft:cornflakesitem>);
recipes.addShapeless("cornflakes", <harvestcraft:cornflakesitem>,[milkBottle,corn,corn]);
RecipeBuilder.get("chef")
  .setName("cornflakes")
  .setShapeless([milkBottle,corn,corn])
  .addOutput(<harvestcraft:cornflakesitem>)
  .create();
//Roast Chicken
recipes.remove(<harvestcraft:roastchickenitem>);
ExSartagine.addKettleRecipe([rawChicken,salt,blackPepper],cookKitKettle,null,[<harvestcraft:roastchickenitem>],80);
//Roast Potatoes
recipes.remove(<harvestcraft:roastpotatoesitem>);
ExSartagine.addKettleRecipe([potato,salt,blackPepper],cookKitKettle,null,[<harvestcraft:roastpotatoesitem>],80);
//Sunday Roast
recipes.remove(<harvestcraft:sundayroastitem>);
ExSartagine.addKettleRecipe([<harvestcraft:roastchickenitem>,<harvestcraft:roastpotatoesitem>,veggie],cookKitKettle,null,[<harvestcraft:sundayroastitem>],80);
//BBQ Pulled Pork
recipes.remove(<harvestcraft:bbqpulledporkitem>);
recipes.addShapeless("bbqpulledpork", <harvestcraft:bbqpulledporkitem>,[cookedPork,toast,bellpepper,spice,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("bbqpulledpork")
  .setShapeless([cookedPork,toast,bellpepper,spice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bbqpulledporkitem>)
  .create();
//Lamb With Mint Sauce
recipes.remove(<harvestcraft:lambwithmintsauceitem>);
ExSartagine.addKettleRecipe([rawMutton,spice,vinegar,sugar],cookKitKettle,null,[<harvestcraft:lambwithmintsauceitem>],80);
//Steak and Chips
recipes.remove(<harvestcraft:steakandchipsitem>);
ExSartagine.addKettleRecipe([rawBeef,<harvestcraft:friesitem>],cookKitKettle,null,[<harvestcraft:steakandchipsitem>],80);
//Cherry Ice Cream -&R
recipes.remove(<harvestcraft:cherryicecreamitem>);
RecipeBuilder.get("chef")
  .setName("cherryicecream")
  .setShapeless([milkBottle, snowball, salt, cherry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherryicecreamitem>*3)
  .create();
//Pistachio Ice Cream -&R
recipes.remove(<harvestcraft:pistachioicecreamitem>);
RecipeBuilder.get("chef")
  .setName("pistachioicecream")
  .setShapeless([milkBottle, snowball, salt, pistachio])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pistachioicecreamitem>*3)
  .create();
//Neapolitan Ice Cream -&R
recipes.remove(<harvestcraft:neapolitanicecreamitem>);
recipes.addShapeless("neapolitanicecream", <harvestcraft:neapolitanicecreamitem> * 3,[<harvestcraft:chocolateicecreamitem>,<harvestcraft:strawberryicecreamitem>,<harvestcraft:vanillaicecreamitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("neapolitanicecream")
  .setShapeless([<harvestcraft:chocolateicecreamitem>,<harvestcraft:strawberryicecreamitem>,<harvestcraft:vanillaicecreamitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:neapolitanicecreamitem> * 3)
  .create();
//Spumoni Ice Cream -&R
recipes.remove(<harvestcraft:spumoniicecreamitem>);
recipes.addShapeless("spumoniicecream", <harvestcraft:spumoniicecreamitem> * 3,[<harvestcraft:cherryicecreamitem>,<harvestcraft:pistachioicecreamitem>,<harvestcraft:vanillaicecreamitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("spumoniicecream")
  .setShapeless([<harvestcraft:cherryicecreamitem>,<harvestcraft:pistachioicecreamitem>,<harvestcraft:vanillaicecreamitem>])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:spumoniicecreamitem> * 3)
  .create();
//Butters
var butterIngredients as IItemStack[IItemStack] = {
  <harvestcraft:almondbutteritem> : <harvestcraft:almonditem>,
  <harvestcraft:cashewbutteritem> : <harvestcraft:cashewitem>,
  <harvestcraft:chestnutbutteritem> : <harvestcraft:chestnutitem>,
  <harvestcraft:pistachiobutteritem> : <harvestcraft:pistachioitem>
};

for key, value in butterIngredients {
  recipes.remove(key);
  Mortar.addRecipe(["stone"], key * 2, 4, [value,cookingOil]);
}
//Curry Powder
recipes.remove(<harvestcraft:currypowderitem>);
Mortar.addRecipe(["stone"], <harvestcraft:currypowderitem>, 4, [<harvestcraft:curryleafitem>]);
//Mochi
recipes.remove(<harvestcraft:mochiitem>);
recipes.addShapeless("mochi", <harvestcraft:mochiitem>,[rice,sugar,/*waterBottleItem*/<harvestcraft:freshwateritem>]);
RecipeBuilder.get("chef")
  .setName("mochi")
  .setFluid(waterBottle)
  .setShapeless([rice,sugar])
  .addOutput(<harvestcraft:mochiitem>)
  .create();

//Museli -&R
recipes.remove(<harvestcraft:museliitem>);
ExSartagine.addKettleRecipe([grain,<harvestcraft:raisinsitem>,pecan,sugar,milkBottle],cookKitKettle,null,[<harvestcraft:museliitem>],80);
//Naan
recipes.remove(<harvestcraft:naanitem>);
ExSartagine.addKettleRecipe([dough,onion,cookingOil],cookKitKettle,null,[<harvestcraft:naanitem>],80);
//Okra chips
recipes.remove(<harvestcraft:okrachipsitem>);
ExSartagine.addKettleRecipe([<harvestcraft:okraitem>,salt,spice],cookKitKettle,null,[<harvestcraft:okrachipsitem>],80);
//Pork Lo Mein
recipes.remove(<harvestcraft:porklomeinitem>);
ExSartagine.addKettleRecipe([rawPork,pasta,garlic,soySauce,veggie,veggie,veggie],cookKitKettle,null,[<harvestcraft:porklomeinitem>],80);
//Salmon Patties
recipes.remove(<harvestcraft:salmonpattiesitem>);
ExSartagine.addKettleRecipe([rawSalmon,toast,egg,cookingOil],cookKitKettle,null,[<harvestcraft:salmonpattiesitem>],80);
//Sausage
recipes.remove(<harvestcraft:sausageitem>);
ExSartagine.addKettleRecipe([anyRawMeat,salt,spice],cookKitKettle,null,[<harvestcraft:sausageitem>],80);
//Sausage Roll
recipes.remove(<harvestcraft:sausagerollitem>);
recipes.addShapeless("sausageroll", <harvestcraft:sausagerollitem>,[<harvestcraft:sausageitem>,dough,egg,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("sausageroll")
  .setShapeless([<harvestcraft:sausageitem>,dough,egg])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:sausagerollitem>)
  .create();
//Sesame Ball
recipes.remove(<harvestcraft:sesameballitem>);
ExSartagine.addKettleRecipe([sesameSeeds,beans,sugar,flour],cookKitKettle,null,[<harvestcraft:sesameballitem>],80);
//Sesame Snaps
recipes.remove(<harvestcraft:sesamesnapsitem>);
ExSartagine.addKettleRecipe([sesameSeeds,sugar],cookKitKettle,null,[<harvestcraft:sesamesnapsitem>],80);
//Soy Sauce
recipes.remove(<harvestcraft:soysauceitem>);
Mortar.addRecipe(["stone"], <harvestcraft:soysauceitem>, 4, [soybean,salt]);
//Veggie Strips
recipes.remove(<harvestcraft:veggiestripsitem>);
ExSartagine.addKettleRecipe([veggie,veggie,veggie,salt,spice],cookKitKettle,null,[<harvestcraft:veggiestripsitem>],80);
//Vindaloo -&R
recipes.remove(<harvestcraft:vindalooitem>);
ExSartagine.addKettleRecipe([anyRawMeat,curryPowder,butter,pepper,onion],cookKitKettle,null,[<harvestcraft:vindalooitem>],80);
//Honey Sandwich
recipes.remove(<harvestcraft:honeysandwichitem>);
recipes.addShapeless("honeysandwich", <harvestcraft:honeysandwichitem>,[nutButter,honey,bread,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("honeysandwich")
  .setShapeless([nutButter,honey,bread])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:honeysandwichitem>)
  .create();
//Tuna Potato
recipes.remove(<harvestcraft:tunapotatoitem>);
recipes.addShapeless("tunapotato", <harvestcraft:tunapotatoitem>,[<harvestcraft:butteredpotatoitem>,corn,cookedFish,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("tunapotato")
  .setShapeless([<harvestcraft:butteredpotatoitem>,corn,cookedFish])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:tunapotatoitem>)
  .create();
//Coconut Cream
recipes.remove(<harvestcraft:coconutcreamitem>);
ExSartagine.addKettleRecipe([coconut],cookKitKettle,null,[<harvestcraft:coconutcreamitem>],80);
//Cracker
recipes.remove(<harvestcraft:crackeritem>);
ExSartagine.addKettleRecipe([flour,cookingOil,salt],cookKitKettle,waterBottle,[<harvestcraft:crackeritem>],80);
//Garam Masala
recipes.remove(<harvestcraft:garammasalaitem>);
Mortar.addRecipe(["stone"], <harvestcraft:garammasalaitem> * 4, 4, [pepper,groundCinnamon,groundNutmeg,spice]);
//Paneer
recipes.remove(<harvestcraft:paneeritem>);
ExSartagine.addKettleRecipe([milkBottle,vinegar,lemonaide],cookKitKettle,null,[<harvestcraft:paneeritem>],80);
//Gravy
recipes.remove(<harvestcraft:gravyitem>);
recipes.addShapeless("gravy", <harvestcraft:gravyitem>,[stock,flour]);
RecipeBuilder.get("chef")
  .setName("gravy")
  .setShapeless([stock,flour])
  .addOutput(<harvestcraft:gravyitem>)
  .create();
//Marzipan
recipes.remove(<harvestcraft:marzipanitem>);
Mortar.addRecipe(["stone"], <harvestcraft:marzipanitem>, 4, [honey,almond]);
//Paneer Tikka Masala -&R
recipes.remove(<harvestcraft:paneertikkamasalaitem>);
ExSartagine.addKettleRecipe([<harvestcraft:paneeritem>,<harvestcraft:garammasalaitem>,curryPowder,<harvestcraft:coconutcreamitem>,veggie,veggie,veggie,ginger],cookKitKettle,null,[<harvestcraft:paneertikkamasalaitem>],80);
//Pea and Ham soup -&R
recipes.remove(<harvestcraft:peaandhamsoupitem>);
ExSartagine.addKettleRecipe([peas,rawPork,stewCondiment,stewCondiment,stewCondiment,pepper],cookKitKettle,null,[<harvestcraft:peaandhamsoupitem>],80);
//Potato and Leek soup -&R
recipes.remove(<harvestcraft:potatoandleeksoupitem>);
ExSartagine.addKettleRecipe([potato,leek,stock,heavyCream,spice,pepper],cookKitKettle,null,[<harvestcraft:potatoandleeksoupitem>],80);
//Yorkshire Pudding
recipes.remove(<harvestcraft:yorkshirepuddingitem>);
ExSartagine.addKettleRecipe([batter,salt,stock,milkBottle],cookKitKettle,null,[<harvestcraft:yorkshirepuddingitem>],80);
//Sesame Oil
recipes.remove(<harvestcraft:sesameoilitem>);
Mortar.addRecipe(["stone"], <harvestcraft:sesameoilitem>, 4, [sesameSeeds]);
//Noodles
recipes.remove(<harvestcraft:noodlesitem>);
recipes.addShapeless("noodles", <harvestcraft:noodlesitem> * 3,[dough,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("noodles")
  .setShapeless([dough])
  .addOutput(<harvestcraft:noodlesitem> * 3)
  .create();
//Chicken Chow Mein -&R
recipes.remove(<harvestcraft:chickenchowmeinitem>);
ExSartagine.addKettleRecipe([rawChicken,<harvestcraft:noodlesitem>,onion,stewCondiment,stewCondiment,stock],cookKitKettle,null,[<harvestcraft:chickenchowmeinitem>],80);
//Kung Pao Chicken -&R
recipes.remove(<harvestcraft:kungpaochickenitem>);
ExSartagine.addKettleRecipe([rawChicken,orange,ginger,garlic,honey,cookingOil,<harvestcraft:peppercornitem>,peanut],cookKitKettle,null,[<harvestcraft:kungpaochickenitem>],80);
//Hoisin Sauce
recipes.remove(<harvestcraft:hoisinsauceitem>);
ExSartagine.addKettleRecipe([sweetPotato,sugar,soySauce,sesameSeeds,vinegar,garlic,chili],cookKitKettle,waterBottle2,[<harvestcraft:hoisinsauceitem>],80);
//Five Spice
recipes.remove(<harvestcraft:fivespiceitem>);
Mortar.addRecipe(["stone"], <harvestcraft:fivespiceitem> * 5, 4, [<harvestcraft:peppercornitem>,spice,cinnamon,nutmeg,ginger]);
//Char Siu
recipes.remove(<harvestcraft:charsiuitem>);
ExSartagine.addKettleRecipe([cookedPork,hoisinSauce,<harvestcraft:fivespiceitem>,honey,soySauce],cookKitKettle,null,[<harvestcraft:charsiuitem>],80);
//Sweet and Sour Sauce
recipes.remove(<harvestcraft:sweetandsoursauceitem>);
ExSartagine.addKettleRecipe([ketchup,honey,vinegar,soySauce,ginger],cookKitKettle,null,[<harvestcraft:sweetandsoursauceitem>],80);
//Sweet and Sour Chicken -&R
recipes.remove(<harvestcraft:sweetandsourchickenitem>);
ExSartagine.addKettleRecipe([rawChicken,pineapple,veggie,veggie,<harvestcraft:sweetandsoursauceitem>,ketchup],cookKitKettle,null,[<harvestcraft:sweetandsourchickenitem>],80);
//Bacon and Eggs
recipes.remove(<harvestcraft:baconandeggsitem>);
ExSartagine.addKettleRecipe([rawPork,egg],cookKitKettle,null,[<harvestcraft:baconandeggsitem>],80);
//Biscuits and Gravy
recipes.remove(<harvestcraft:biscuitsandgravyitem>);
recipes.addShapeless("biscuitsandgravy", <harvestcraft:biscuitsandgravyitem>,[<harvestcraft:biscuititem>, <harvestcraft:gravyitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("biscuitsandgravy")
  .setShapeless([<harvestcraft:biscuititem>, <harvestcraft:gravyitem>])
  .addOutput(<harvestcraft:biscuitsandgravyitem>)
  .create();
//Apple Fritter
recipes.remove(<harvestcraft:applefritteritem>);
ExSartagine.addKettleRecipe([apple,dough,honey,cookingOil],cookKitKettle,null,[<harvestcraft:applefritteritem>],80);
//Sweet Tea
recipes.remove(<harvestcraft:sweetteaitem>);
recipes.addShapeless("sweettea", <harvestcraft:sweetteaitem>,[<harvestcraft:teaitem>,sugar,lemon,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("sweettea")
  .setShapeless([<harvestcraft:teaitem>,sugar,lemon])
  .addOutput(<harvestcraft:sweetteaitem>)
  .create();
//Creeper Cookie
recipes.remove(<harvestcraft:creepercookieitem>);
ExSartagine.addKettleRecipe([<rats:charged_creeper_chunk>,batter,sugar],cookKitKettle,null,[<harvestcraft:creepercookieitem>],80);
//Honey Bread
recipes.remove(<harvestcraft:honeybreaditem>);
recipes.addShapeless("honeybread", <harvestcraft:honeybreaditem>,[bread,honey,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("honeybread")
  .setShapeless([bread,honey])
  .addOutput(<harvestcraft:honeybreaditem>)
  .create();
//Honey Bun
recipes.remove(<harvestcraft:honeybunitem>);
ExSartagine.addKettleRecipe([butter,egg,honey,dough],cookKitKettle,null,[<harvestcraft:honeybunitem>],80);
//Honey Glazed Carrots
recipes.remove(<harvestcraft:honeyglazedcarrotsitem>);
ExSartagine.addKettleRecipe([carrot,honey,butter,lemon],cookKitKettle,null,[<harvestcraft:honeyglazedcarrotsitem>],80);
//Honey Glazed Ham
recipes.remove(<harvestcraft:honeyglazedhamitem>);
ExSartagine.addKettleRecipe([rawPork,honey,blackPepper],cookKitKettle,null,[<harvestcraft:honeyglazedhamitem>],80);
//Honey Soy Ribs
recipes.remove(<harvestcraft:honeysoyribsitem>);
ExSartagine.addKettleRecipe([rawPork,honey,soySauce,garlic,vinegar],cookKitKettle,null,[<harvestcraft:honeysoyribsitem>],80);
//Choco Voxels Cereal -&R
recipes.remove(<harvestcraft:chocovoxelsitem>);
recipes.addShapeless("chocovoxels", <harvestcraft:chocovoxelsitem>,[milkBottle,cookie,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("chocovoxels")
  .setShapeless([milkBottle,cookie])
  .addOutput(<harvestcraft:chocovoxelsitem>)
  .create();
//Cinnamon Toast
recipes.remove(<harvestcraft:cinnamontoastitem>);
ExSartagine.addKettleRecipe([bread,groundCinnamon,butter,sugar],cookKitKettle,null,[<harvestcraft:cinnamontoastitem>],80);
//Corned Beef
recipes.remove(<harvestcraft:cornedbeefitem>);
ExSartagine.addKettleRecipe([rawBeef,salt,sugar,cinnamon,mustardSeed,<harvestcraft:peppercornitem>,spice,ginger],cookKitKettle,null,[<harvestcraft:cornedbeefitem>],80);
//Cotton Candy
recipes.remove(<harvestcraft:cottoncandyitem>);
recipes.addShapeless("cottoncandy", <harvestcraft:cottoncandyitem>,[sugar,dye,<minecraft:paper>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("cottoncandy")
  .setFluid(waterBottle2)
  .setShapeless([sugar,dye,<minecraft:paper>])
  .addOutput(<harvestcraft:cottoncandyitem>)
  .create();
//Crackers
recipes.remove(<harvestcraft:crackersitem>);
ExSartagine.addKettleRecipe([dough,butter,salt],cookKitKettle,null,[<harvestcraft:crackersitem>],80);
//Creeper Wings
recipes.remove(<harvestcraft:creeperwingsitem>);
ExSartagine.addKettleRecipe([cookedChicken,hotSauce,<minecraft:gunpowder>],cookKitKettle,null,[<harvestcraft:creeperwingsitem>],80);
//Dhal
recipes.remove(<harvestcraft:dhalitem>);
ExSartagine.addKettleRecipe([peas,<harvestcraft:garammasalaitem>,<harvestcraft:curryleafitem>,mustardSeed,veggie,veggie,veggie],cookKitKettle,null,[<harvestcraft:dhalitem>],80);
//Durian Muffin
recipes.remove(<harvestcraft:durianmuffinitem>);
ExSartagine.addKettleRecipe([durian,batter],cookKitKettle,null,[<harvestcraft:durianmuffinitem>],80);
//Hot sauce
recipes.remove(<harvestcraft:hotsauceitem>);
ExSartagine.addKettleRecipe([vinegar,chili,garlic,salt],cookKitKettle,waterBucket,[<harvestcraft:hotsauceitem> * 6],80);
//Hummus
recipes.remove(<harvestcraft:hummusitem>);
recipes.addShapeless("hummus", <harvestcraft:hummusitem>,[beans,garlic,lemon,cookingOil,sesameSeeds,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("hummus")
  .setShapeless([beans,garlic,lemon,cookingOil,sesameSeeds])
  .addOutput(<harvestcraft:hummusitem>)
  .create();
//Lasagna
recipes.remove(<harvestcraft:lasagnaitem>);
ExSartagine.addKettleRecipe([pasta,cheese,tomato,garlic,onion],cookKitKettle,null,[<harvestcraft:lasagnaitem>],80);
//Lemon Drizzle Cake
recipes.remove(<harvestcraft:lemondrizzlecakeitem>);
ExSartagine.addKettleRecipe([lemon,butter,sugar,batter],cookKitKettle,null,[<harvestcraft:lemondrizzlecakeitem>],80);
//Meatloaf
recipes.remove(<harvestcraft:meatloafitem>);
ExSartagine.addKettleRecipe([rawBeef,bread,onion,garlic,ketchup],cookKitKettle,null,[<harvestcraft:meatloafitem>],80);
//Mushroom Lasagna
recipes.remove(<harvestcraft:mushroomlasagnaitem>);
ExSartagine.addKettleRecipe([pasta,cheese,tomato,garlic,onion,mushroom],cookKitKettle,null,[<harvestcraft:mushroomlasagnaitem>],80);
//Cooked Mussel

//Nether Wings
recipes.remove(<harvestcraft:netherwingsitem>);
ExSartagine.addKettleRecipe([cookedChicken,hotSauce,<minecraft:blaze_powder>],cookKitKettle,null,[<harvestcraft:netherwingsitem>],80);
//Pizza Soup -&R
recipes.remove(<harvestcraft:pizzasoupitem>);
ExSartagine.addKettleRecipe([<harvestcraft:tomatosoupitem>,cheese,mushroom,veggie,veggie,veggie],cookKitKettle,null,[<harvestcraft:pizzasoupitem>],80);
//Poutine
recipes.remove(<harvestcraft:poutineitem>);
recipes.addShapeless("poutine", <harvestcraft:poutineitem>,[<harvestcraft:friesitem>,cheese,<harvestcraft:gravyitem>,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("poutine")
  .setShapeless([<harvestcraft:friesitem>,cheese,<harvestcraft:gravyitem>])
  .addOutput(<harvestcraft:poutineitem>)
  .create();
//Salsa -&R
recipes.remove(<harvestcraft:salsaitem>);
recipes.addShapeless("salsa", <harvestcraft:salsaitem>,[tomato,onion,spice,lime,garlic,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("salsa")
  .setShapeless([tomato,onion,spice,lime,garlic])
  .addOutput(<harvestcraft:salsaitem>)
  .create();
//Sardines in Hot Sauce
recipes.remove(<harvestcraft:sardinesinhotsauceitem>);
ExSartagine.addKettleRecipe([<harvestcraft:sardinerawitem>,hotSauce],cookKitKettle,null,[<harvestcraft:sardinesinhotsauceitem>],80);
//Teriyaki Chicken
recipes.remove(<harvestcraft:teriyakichickenitem>);
ExSartagine.addKettleRecipe([rawChicken,rice,soySauce,honey,scallion,cookingOil],cookKitKettle,null,[<harvestcraft:teriyakichickenitem>],80);
//Cookies and Milk
recipes.remove(<harvestcraft:cookiesandmilkitem>);
recipes.addShapeless("cookiesandmilk", <harvestcraft:cookiesandmilkitem>,[cookie,milkBottle]);
RecipeBuilder.get("chef")
  .setName("cookiesandmilk")
  .setShapeless([cookie,milkBottle])
  .addOutput(<harvestcraft:cookiesandmilkitem>)
  .create();
//Crackers and Cheese
recipes.remove(<harvestcraft:crackersandcheeseitem>);
recipes.addShapeless("crackersandcheese", <harvestcraft:crackersandcheeseitem>,[<harvestcraft:crackersitem>,cheese]);
RecipeBuilder.get("chef")
  .setName("crackersandcheese")
  .setShapeless([<harvestcraft:crackersitem>,cheese])
  .addOutput(<harvestcraft:crackersandcheeseitem>)
  .create();
//Chicken Dinner
recipes.remove(<harvestcraft:chickendinneritem>);
recipes.addShapeless("chickendinner", <harvestcraft:chickendinneritem>,[cookedChicken,<harvestcraft:mashedpotatoesitem>,veggie,milkBottle,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("chickendinner")
  .setShapeless([cookedChicken,<harvestcraft:mashedpotatoesitem>,veggie,milkBottle])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chickendinneritem>)
  .create();
//Corn Dog
recipes.remove(<harvestcraft:corndogitem>);
ExSartagine.addKettleRecipe([batter,rawPork,<ore:stickWood>],cookKitKettle,null,[<harvestcraft:corndogitem>],80);
//Ham and Cheese sandwich
recipes.remove(<harvestcraft:hamandcheesesandwichitem>);
recipes.addShapeless("hamandcheesesandwich", <harvestcraft:hamandcheesesandwichitem>,[bread,cookedPork,cheese,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("hamandcheesesandwich")
  .setShapeless([bread,cookedPork,cheese])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:hamandcheesesandwichitem>)
  .create();
//Tuna Salad -&R
recipes.remove(<harvestcraft:tunasaladitem>);
recipes.addShapeless("tunasalad", <harvestcraft:tunasaladitem>,[<harvestcraft:tunarawitem>,pickle,mayo,celery,blackPepper,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("tunasalad")
  .setShapeless([<harvestcraft:tunarawitem>,pickle,mayo,celery,blackPepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:tunasaladitem>)
  .create();
//Grits -&R
recipes.remove(<harvestcraft:gritsitem>);
ExSartagine.addKettleRecipe([cornmeal,milkBottle,salt],cookKitKettle,waterBottle,[<harvestcraft:gritsitem>],80);
//Butter Cookie
recipes.remove(<harvestcraft:buttercookieitem>);
ExSartagine.addKettleRecipe([flour,salt,vanillaBean,butter,sugar,egg],cookKitKettle,null,[<harvestcraft:buttercookieitem>],80);
//Sugar Cookie
recipes.remove(<harvestcraft:sugarcookieitem>);
ExSartagine.addKettleRecipe([flour,butter,sugar,sugar,egg],cookKitKettle,null,[<harvestcraft:sugarcookieitem>],80);
//Potato Chips
recipes.remove(<harvestcraft:potatochipsitem>);
ExSartagine.addKettleRecipe([potato,salt,cookingOil],cookKitKettle,null,[<harvestcraft:potatochipsitem>],80);
//BBQ Potato Chips
recipes.remove(<harvestcraft:bbqpotatochipsitem>);
recipes.addShapeless("bbqpotatochips", <harvestcraft:bbqpotatochipsitem>,[<harvestcraft:potatochipsitem>,ketchup,vinegar,honey,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("bbqpotatochips")
  .setShapeless([<harvestcraft:potatochipsitem>,ketchup,vinegar,honey])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:bbqpotatochipsitem>)
  .create();
//Sour cream and onion potato chips
recipes.remove(<harvestcraft:sourcreamandonionpotatochipsitem>);
recipes.addShapeless("sourcreamandonionpotatochips", <harvestcraft:sourcreamandonionpotatochipsitem>,[<harvestcraft:potatochipsitem>,heavyCream,scallion,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("sourcreamandonionpotatochips")
  .setShapeless([<harvestcraft:potatochipsitem>,heavyCream,scallion])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:sourcreamandonionpotatochipsitem>)
  .create();
//Tortilla Chips -&R
recipes.remove(<harvestcraft:tortillachipsitem>);
recipes.addShapeless("tortillachips", <harvestcraft:tortillachipsitem>,[<harvestcraft:tortillaitem>,salt,lime,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("tortillachips")
  .setShapeless([<harvestcraft:tortillaitem>,salt,lime])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:tortillachipsitem>)
  .create();
//Chips and Dip
recipes.remove(<harvestcraft:chipsanddipitem>);
recipes.addShapeless("chipsanddip", <harvestcraft:chipsanddipitem>,[<harvestcraft:potatochipsitem>,heavyCream,scallion,onion,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("chipsanddip")
  .setShapeless([<harvestcraft:potatochipsitem>,heavyCream,scallion,onion])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chipsanddipitem>)
  .create();
//Cheeze Puffs
recipes.remove(<harvestcraft:cheezepuffsitem>);
ExSartagine.addKettleRecipe([cornmeal,cheese,cookingOil],cookKitKettle,null,[<harvestcraft:cheezepuffsitem>],80);
//Surf and Turf
recipes.remove(<harvestcraft:surfandturfitem>);
recipes.addShapeless("surfandturf", <harvestcraft:surfandturfitem>,[cookedFish,cookedMeat,veggie,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("surfandturf")
  .setShapeless([cookedFish,cookedMeat,veggie])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:surfandturfitem>)
  .create();
//Liver and Onions
recipes.remove(<harvestcraft:liverandonionsitem>);
recipes.addShapeless("liverandonions", <harvestcraft:liverandonionsitem>,[cookedFish,onion,veggie,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("liverandonions")
  .setShapeless([cookedFish,onion,veggie])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:liverandonionsitem>)
  .create();
//Fortune Cookie
recipes.remove(<harvestcraft:fortunecookieitem>);
ExSartagine.addKettleRecipe([dough,sugar],<minecraft:paper>,null,[<harvestcraft:fortunecookieitem>],80);
//Deviled egg
recipes.remove(<harvestcraft:deviledeggitem>);
ArcaneWorld.createRitualCreateItem("deviled_egg", "Deviled Egg", <harvestcraft:deviledeggitem>, [egg,mayo,mustard,salt,blackPepper]).build();
//Mozzerella Sticks
recipes.remove(<harvestcraft:mozzerellasticksitem>);
ExSartagine.addKettleRecipe([cheese,cookingOil,batter],null,null,[<harvestcraft:mozzerellasticksitem>],80);
//Succotash -&R
recipes.remove(<harvestcraft:succotashitem>);
ExSartagine.addKettleRecipe([beans,corn,onion,spice,tomato,butter],null,null,[<harvestcraft:succotashitem>],80);
//Fried Green Potatoes
recipes.remove(<harvestcraft:friedgreentomatoesitem>);
ExSartagine.addKettleRecipe([tomato,cookingOil,batter],null,null,[<harvestcraft:friedgreentomatoesitem>],80);
//Potatoes O Brien
recipes.remove(<harvestcraft:potatoesobrienitem>);
ExSartagine.addKettleRecipe([potato,onion,bellpepper,cookingOil],cookKitKettle,null,[<harvestcraft:potatoesobrienitem>],80);
//Tater tots
recipes.remove(<harvestcraft:tatertotsitem>);
ExSartagine.addKettleRecipe([potato,flour,salt],cookKitKettle,null,[<harvestcraft:tatertotsitem>],80);
//Smores
recipes.remove(<harvestcraft:smoresitem>);
ExSartagine.addKettleRecipe([crackers,chocolateBar,marshmellows],cookKitKettle,null,[<harvestcraft:smoresitem>],80);
//Steak Fajita
recipes.remove(<harvestcraft:steakfajitaitem>);
ExSartagine.addKettleRecipe([rawBeef,veggie,veggie,chili,spice,tortilla],cookKitKettle,null,[<harvestcraft:steakfajitaitem>],80);
//Ramen -&R
recipes.remove(<harvestcraft:ramenitem>);
ExSartagine.addKettleRecipe([noodles,stock,salt,<ore:stickWood>],null,null,[<harvestcraft:ramenitem>],80);
//Miso Soup -&R
recipes.remove(<harvestcraft:misosoupitem>);
ExSartagine.addKettleRecipe([firmTofu,scallion,misoPaste],null,waterBottle2,[<harvestcraft:misosoupitem>],80);
//Onigiri
recipes.remove(<harvestcraft:onigiriitem>);
recipes.addShapeless("onigiri", <harvestcraft:onigiriitem>,[rice,seaweed,sesameSeeds,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("onigiri")
  .setShapeless([rice,seaweed,sesameSeeds])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:onigiriitem>)
  .create();
//Grilled Cheese Vegemite Toast
recipes.remove(<harvestcraft:grilledcheesevegemitetoastitem>);
recipes.addShapeless("grilledcheesevegemitetoast", <harvestcraft:grilledcheesevegemitetoastitem>,[<harvestcraft:grilledcheeseitem>,vegemite,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("grilledcheesevegemitetoast")
  .setShapeless([<harvestcraft:grilledcheeseitem>,vegemite])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:grilledcheesevegemitetoastitem>)
  .create();
//Monster Fried Dumplings
recipes.remove(<harvestcraft:monsterfrieddumplingsitem>);
ExSartagine.addKettleRecipe([<minecraft:rotten_flesh>,garlic,onion,batter],null,null,[<harvestcraft:monsterfrieddumplingsitem>],80);
//Crispy Rice Puff Cereal -&R
recipes.remove(<harvestcraft:crispyricepuffcerealitem>);
recipes.addShapeless("crispyricepuffcereal", <harvestcraft:crispyricepuffcerealitem>,[rice,milkBottle]);
RecipeBuilder.get("chef")
  .setName("crispyricepuffcereal")
  .setShapeless([rice,milkBottle])
  .addOutput(<harvestcraft:crispyricepuffcerealitem>)
  .create();
//Crispy Rice Puff Bar
recipes.remove(<harvestcraft:crispyricepuffbarsitem>);
ExSartagine.addKettleRecipe([rice,marshmellows],cookKitKettle,null,[<harvestcraft:crispyricepuffbarsitem>],80);
//Baba Ganoush -&R
recipes.remove(<harvestcraft:babaganoushitem>);
ExSartagine.addKettleRecipe([eggplant,garlic,lemon,cookingOil,spice],cookKitKettle,null,[<harvestcraft:babaganoushitem>],80);
//Berry Vinaigrette Salad -&R
recipes.remove(<harvestcraft:berryvinaigrettesaladitem>);
recipes.addShapeless("berryvinaigrettesalad", <harvestcraft:berryvinaigrettesaladitem>,[lettuce,vinegar,veggie,juice,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("berryvinaigrettesalad")
  .setShapeless([lettuce,vinegar,veggie,juice])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:berryvinaigrettesaladitem>)
  .create();
//Tomato Herb Chicken
recipes.remove(<harvestcraft:tomatoherbchickenitem>);
ExSartagine.addKettleRecipe([rawChicken,tomato,spice],cookKitKettle,null,[<harvestcraft:tomatoherbchickenitem>],80);
//Pasta Gardenia -&R
recipes.remove(<harvestcraft:pastagardeniaitem>);
recipes.addShapeless("pastagardenia", <harvestcraft:pastagardeniaitem>,[pasta,cookingOil,tomato,spice,cheese,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("pastagardenia")
  .setShapeless([pasta,cookingOil,tomato,spice,cheese])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pastagardeniaitem>)
  .create();
//Fiesta Corn Salad -&R
recipes.remove(<harvestcraft:fiestacornsaladitem>);
recipes.addShapeless("fiestacornsalad", <harvestcraft:fiestacornsaladitem>,[corn,veggie,onion,lime,garlic,chili,tomato,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fiestacornsalad")
  .setShapeless([corn,veggie,onion,lime,garlic,chili,tomato])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fiestacornsaladitem>)
  .create();
//Three Bean Salad -&R
recipes.remove(<harvestcraft:threebeansaladitem>);
recipes.addShapeless("threebeansalad", <harvestcraft:threebeansaladitem>,[beans,beans,beans,spice,onion,cookingOil,blackPepper,vinegar,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("threebeansalad")
  .setShapeless([beans,beans,beans,spice,onion,cookingOil,blackPepper,vinegar])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:threebeansaladitem>)
  .create();
//Sweet and Sour Meatballs
recipes.remove(<harvestcraft:sweetandsourmeatballsitem>);
ExSartagine.addKettleRecipe([cookedBeef,jelly,jelly],cookKitKettle,null,[<harvestcraft:sweetandsourmeatballsitem>],80);
//Pepper Jelly
recipes.remove(<harvestcraft:pepperjellyitem>);
ExSartagine.addKettleRecipe([chili,sugar],cookKitKettle,null,[<harvestcraft:pepperjellyitem>],80);
//Pepper Jelly and Crackers
recipes.remove(<harvestcraft:pepperjellyandcrackersitem>);
recipes.addShapeless("pepperjellyandcrackers", <harvestcraft:pepperjellyandcrackersitem>,[<harvestcraft:pepperjellyitem>,crackers,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("pepperjellyandcrackers")
  .setShapeless([<harvestcraft:pepperjellyitem>,crackers])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pepperjellyandcrackersitem>)
  .create();
//Salted Caramel
recipes.remove(<harvestcraft:saltedcaramelitem>);
recipes.addShapeless("saltedcaramel", <harvestcraft:saltedcaramelitem>,[caramel,salt,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("saltedcaramel")
  .setShapeless([caramel,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:saltedcaramelitem>)
  .create();
//Bulgogi
recipes.remove(<harvestcraft:bulgogiitem>);
ExSartagine.addKettleRecipe([rawBeef,garlic,soySauce,sugar,blackPepper,veggie,ginger],cookKitKettle,null,[<harvestcraft:bulgogiitem>],80);
//Omurice
recipes.remove(<harvestcraft:omuriceitem>);
ExSartagine.addKettleRecipe([rawBeef,rice,scallion,veggie,veggie,egg],cookKitKettle,null,[<harvestcraft:omuriceitem>],80);
//Pemmican
recipes.remove(<harvestcraft:pemmicanitem>);
ExSartagine.addKettleRecipe([peanut,fruit,cookedBeef,honey],null,null,[<harvestcraft:pemmicanitem>],80);
//Crab Kimbap
recipes.remove(<harvestcraft:crabkimbapitem>);
recipes.addShapeless("crabkimbap", <harvestcraft:crabkimbapitem>,[carrot,seaweed,cucumber,rice,cookedCrab,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("crabkimbap")
  .setShapeless([carrot,seaweed,cucumber,rice,cookedCrab])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:crabkimbapitem>)
  .create();
//Frog Leg Stirfry -&R
recipes.remove(<harvestcraft:froglegstirfryitem>);
ExSartagine.addKettleRecipe([rawFrog,rice,lettuce,veggie,veggie],cookKitKettle,null,[<harvestcraft:froglegstirfryitem>],80);
//Haggis
recipes.remove(<harvestcraft:haggisitem>);
ExSartagine.addKettleRecipe([<minecraft:rotten_flesh>,<minecraft:spider_eye>,onion,rice,salt,blackPepper,spice],null,null,[<harvestcraft:haggisitem>],80);
//Chicken Katsu
recipes.remove(<harvestcraft:chickenkatsuitem>);
ExSartagine.addKettleRecipe([rawChicken,flour,egg,rice],cookKitKettle,null,[<harvestcraft:chickenkatsuitem>],80);
//Chocolate Orange
recipes.remove(<harvestcraft:chocolateorangeitem>);
recipes.addShapeless("chocolateorange", <harvestcraft:chocolateorangeitem>,[chocolateBar,orange,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("chocolateorange")
  .setShapeless([chocolateBar,orange])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:chocolateorangeitem>)
  .create();
//Festival Bread
recipes.remove(<harvestcraft:festivalbreaditem>);
ExSartagine.addKettleRecipe([dough,cookingOil,sugar],cookKitKettle,null,[<harvestcraft:festivalbreaditem>],80);
//Fruit Cream Festival Bread
recipes.remove(<harvestcraft:fruitcreamfestivalbreaditem>);
recipes.addShapeless("fruitcreamfestivalbread", <harvestcraft:fruitcreamfestivalbreaditem>,[<harvestcraft:festivalbreaditem>,fruit,heavyCream,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("fruitcreamfestivalbread")
  .setShapeless([<harvestcraft:festivalbreaditem>,fruit,heavyCream])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:fruitcreamfestivalbreaditem>)
  .create();
//Pho
recipes.remove(<harvestcraft:phoitem>);
ExSartagine.addKettleRecipe([stock,noodles,spice,groundCinnamon,onion],null,null,[<harvestcraft:phoitem>],80);
//Bubble Tea
recipes.remove(<harvestcraft:bubbleteaitem>);
ExSartagine.addKettleRecipe([flour,sugar,teaLeaf],null,waterBottle,[<harvestcraft:bubbleteaitem>],80);
//Cooked Duck

//Wonton Soup
recipes.remove(<harvestcraft:wontonsoupitem>);
ExSartagine.addKettleRecipe([stock,dough,scallion,ginger,soySauce],null,null,[<harvestcraft:wontonsoupitem>],80);
//Spring Rolls
recipes.remove(<harvestcraft:springrollitem>);
recipes.addShapeless("springroll", <harvestcraft:springrollitem>,[rice,hoisinSauce,peanut,veggie,lime,spice,lettuce,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("springroll")
  .setShapeless([rice,hoisinSauce,peanut,veggie,lime,spice,lettuce])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:springrollitem>)
  .create();
//Meaty Stirfry -&R
recipes.remove(<harvestcraft:meatystirfryitem>);
ExSartagine.addKettleRecipe([bellpepper,veggie,veggie,rice,rawChicken],cookKitKettle,null,[<harvestcraft:meatystirfryitem>],80);
//Pot Stickers
recipes.remove(<harvestcraft:potstickersitem>);
ExSartagine.addKettleRecipe([rawPork,veggie,veggie,cookingOil,soySauce,garlic],null,null,[<harvestcraft:potstickersitem>],80);
//Orange Duck
recipes.remove(<harvestcraft:orangeduckitem>);
ExSartagine.addKettleRecipe([rawDuck,<harvestcraft:orangejuiceitem>,spice,veggie,celery],null,null,[<harvestcraft:orangeduckitem>],80);
//Peking Duck
recipes.remove(<harvestcraft:pekingduckitem>);
ExSartagine.addKettleRecipe([rawDuck,fiveSpice,soySauce,sesameOil],null,null,[<harvestcraft:pekingduckitem>],80);
//Stuffed Duck
recipes.remove(<harvestcraft:stuffedduckitem>);
ExSartagine.addKettleRecipe([rawDuck,onion,garlic,rice,apple,veggie],null,null,[<harvestcraft:stuffedduckitem>],80);
//Candied Pecans
recipes.remove(<harvestcraft:candiedpecansitem>);
ExSartagine.addKettleRecipe([pecan,sugar,groundCinnamon],null,null,[<harvestcraft:candiedpecansitem>],80);
//Stuffing -&R
recipes.remove(<harvestcraft:stuffingitem>);
ExSartagine.addKettleRecipe([toast,spice,celery,veggie,stock],null,null,[<harvestcraft:stuffingitem>],80);
//Green bean casserole
recipes.remove(<harvestcraft:greenbeancasseroleitem>);
ExSartagine.addKettleRecipe([beans,mushroom,onion,heavyCream,flour,salt],null,null,[<harvestcraft:greenbeancasseroleitem>],80);
//Ham and pineapple pizza
recipes.remove(<harvestcraft:hamandpineapplepizzaitem>);
ExSartagine.addKettleRecipe([dough,tomato,cookedPork,pineapple,cheese],cookKitKettle,null,[<harvestcraft:hamandpineapplepizzaitem>],80);
//Crayfish Salad -&R
recipes.remove(<harvestcraft:crayfishsaladitem>);
recipes.addShapeless("crayfishsalad", <harvestcraft:crayfishsaladitem>,[<harvestcraft:crayfishcookeditem>,lettuce,tomato,cookingOil,spice,cheese,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("crayfishsalad")
  .setShapeless([<harvestcraft:crayfishcookeditem>,lettuce,tomato,cookingOil,spice,cheese])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:crayfishsaladitem>)
  .create();
//Ceviche
recipes.remove(<harvestcraft:cevicheitem>);
ExSartagine.addKettleRecipe([rawFish,salt,lemon,onion,sweetPotato,spice],cookKitKettle,null,[<harvestcraft:cevicheitem>],80);
//Baked Cactus
recipes.remove(<harvestcraft:bakedcactusitem>);
ExSartagine.addKettleRecipe([<minecraft:cactus>|<betternether:nether_cactus>|<biomesoplenty:plant_1:6>|<betternether:barrel_cactus>],null,null,[<harvestcraft:bakedcactusitem>],80);
//Mushroom Steak
recipes.remove(<harvestcraft:mushroomsteakitem>);
ExSartagine.addKettleRecipe([rawBeef,mushroom,butter,blackPepper],cookKitKettle,null,[<harvestcraft:mushroomsteakitem>],80);
//Hot Dish Casserole
recipes.remove(<harvestcraft:hotdishcasseroleitem>);
ExSartagine.addKettleRecipe([cookedMeat,veggie,veggie,cheese,potato],cookKitKettle,null,[<harvestcraft:hotdishcasseroleitem>],80);
//Sausage Bean Melt
recipes.remove(<harvestcraft:sausagebeanmeltitem>);
ExSartagine.addKettleRecipe([dough,<harvestcraft:sausageitem>,beans,cheese],cookKitKettle,null,[<harvestcraft:sausagebeanmeltitem>],80);
//Mettbrotchen
recipes.remove(<harvestcraft:mettbrotchenitem>);
recipes.addShapeless("mettbrotchen", <harvestcraft:mettbrotchenitem>,[rawBeef,bread,onion,blackPepper,salt,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("mettbrotchen")
  .setShapeless([rawBeef,bread,onion,blackPepper,salt])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:mettbrotchenitem>)
  .create();
//Chorus Fruit Soup
recipes.remove(<harvestcraft:chorusfruitsoupitem>);
ExSartagine.addKettleRecipe([<minecraft:chorus_fruit>],null,null,[<harvestcraft:chorusfruitsoupitem>],80);
//Akutuq -&R
recipes.remove(<harvestcraft:akutuqitem>);
recipes.addShapeless("akutuq", <harvestcraft:akutuqitem>,[rawVenison,cookingOil,<minecraft:snowball>,berry,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("akutuq")
  .setShapeless([rawVenison,cookingOil,<minecraft:snowball>,berry])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:akutuqitem>)
  .create();
//Cantonese Greens
recipes.remove(<harvestcraft:cantonesegreensitem>);
ExSartagine.addKettleRecipe([veggie,<harvestcraft:oystersauceitem>],null,null,[<harvestcraft:cantonesegreensitem>],80);
//Earl Grey Tea
recipes.remove(<harvestcraft:earlgreyteaitem>);
ExSartagine.addKettleRecipe([teaLeaf,fruit],null,waterBottle,[<harvestcraft:earlgreyteaitem>],80);
//Egg Roll
recipes.remove(<harvestcraft:eggrollitem>);
ExSartagine.addKettleRecipe([dough,cabbage,cookedMeat],null,null,[<harvestcraft:eggrollitem>],80);
//Egg Tart
recipes.remove(<harvestcraft:eggtartitem>);
ExSartagine.addKettleRecipe([dough,egg,sugar,milkBottle],null,waterBottle,[<harvestcraft:eggtartitem>],80);
//Green Tea
recipes.remove(<harvestcraft:greenteaitem>);
ExSartagine.addKettleRecipe([teaLeaf,spice],null,waterBottle,[<harvestcraft:greenteaitem>],80);
//Mee Sua
recipes.remove(<harvestcraft:meesuaitem>);
ExSartagine.addKettleRecipe([noodles,cookedPork,corn,veggie,scallion,<harvestcraft:oystersauceitem>,<harvestcraft:coconutmilkitem>],null,null,[<harvestcraft:meesuaitem>],80);
//Oyster Sauce
recipes.remove(<harvestcraft:meesuaitem>);
ExSartagine.addKettleRecipe([<harvestcraft:oysterrawitem>,sugar,salt],null,waterBottle,[<harvestcraft:meesuaitem>],80);
//Squid Ink Spaghetti -add an effect to this later dummy -landie
recipes.remove(<harvestcraft:squidinkspaghettiitem>);
ExSartagine.addKettleRecipe([noodles,<minecraft:dye:0>],null,null,[<harvestcraft:squidinkspaghettiitem>],80);
//Steak Tartare
recipes.remove(<harvestcraft:steaktartareitem>);
recipes.addShapeless("steaktartare", <harvestcraft:steaktartareitem>,[rawBeef,egg,onion,blackPepper,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("steaktartare")
  .setShapeless([rawBeef,egg,onion,blackPepper])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:steaktartareitem>)
  .create();
//Szechuan Eggplant
recipes.remove(<harvestcraft:szechuaneggplantitem>);
ExSartagine.addKettleRecipe([cookingOil,eggplant,firmTofu,rice,garlic,ginger,veggie,vinegar],null,null,[<harvestcraft:szechuaneggplantitem>],80);
//Bacon Pancakes
recipes.remove(<harvestcraft:baconpancakesitem>);
ExSartagine.addKettleRecipe([batter,milkBottle,cookedPork],null,null,[<harvestcraft:baconpancakesitem>],80);
//Black Paella
recipes.remove(<harvestcraft:blackpaellaitem>);
ExSartagine.addKettleRecipe([calamari/*gold*/,<minecraft:dye:0>,rice,stock,garlic,chili],null,null,[<harvestcraft:blackpaellaitem>],80);
//Blazing Soup
recipes.remove(<harvestcraft:blazingsoupitem>);
ExSartagine.addKettleRecipe([stock,<minecraft:blaze_powder>,<minecraft:nether_wart>],null,null,[<harvestcraft:blazingsoupitem>],80);
//Brioche Bun
recipes.remove(<harvestcraft:briochebunitem>);
ExSartagine.addKettleRecipe([flour,egg,butter,milkBottle,heavyCream,sugar],cookKitKettle,waterBottle,[<harvestcraft:briochebunitem>],80);
//Chicken Paella
recipes.remove(<harvestcraft:chickenpaellaitem>);
ExSartagine.addKettleRecipe([rawChicken,rawShrimp,rice,stock,onion,spice],null,null,[<harvestcraft:chickenpaellaitem>],80);
//Escargot -&R
recipes.remove(<harvestcraft:escargotitem>);
ExSartagine.addKettleRecipe([<harvestcraft:snailrawitem>,rawShrimp,garlic,butter],cookKitKettle,null,[<harvestcraft:escargotitem>],80);
//Gourmet Patties
var gourmetItems as IItemStack[IItemStack] = {
  <harvestcraft:groundbeefitem>:<harvestcraft:gourmetbeefpattyitem>,
  <harvestcraft:groundmuttonitem>:<harvestcraft:gourmetmuttonpattyitem>,
  <harvestcraft:groundporkitem>:<harvestcraft:gourmetporkpattyitem>,
  <harvestcraft:groundvenisonitem>:<harvestcraft:gourmetvenisonpattyitem>
};

for key, value in gourmetItems {
   recipes.remove(value);
    RecipeBuilder.get("chef")
    .setShapeless([key,blackPepper,spice,mustardSeed,salt])
    .addOutput(value)
    .create();
}
//Guiso -&R
recipes.remove(<harvestcraft:guisoitem>);
ExSartagine.addKettleRecipe([rawBeef,tomato,noodles,potato,sweetPotato,spice],null,waterBottle,[<harvestcraft:guisoitem>],80);
//Jellied Eel
recipes.remove(<harvestcraft:jelliedeelitem>);
ExSartagine.addKettleRecipe([<harvestcraft:eelrawitem>,rawShrimp,vinegar,groundNutmeg],null,waterBottle2,[<harvestcraft:jelliedeelitem>],80);
//Kale Chips
recipes.remove(<harvestcraft:kalechipsitem>);
ExSartagine.addKettleRecipe([kale],cookKitKettle,null,[<harvestcraft:kalechipsitem>],80);
//Pad Thai
recipes.remove(<harvestcraft:padthaiitem>);
ExSartagine.addKettleRecipe([noodles,peanut,egg,tofu,chili,lime],cookKitKettle,null,[<harvestcraft:padthaiitem>],80);
//Peanut butter banana sandwich
recipes.remove(<harvestcraft:peanutbutterbananasandwichitem>);
recipes.addShapeless("peanutbutterbananasandwich", <harvestcraft:peanutbutterbananasandwichitem>,[bread,peanutButter,banana,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("peanutbutterbananasandwich")
  .setShapeless([bread,peanutButter,banana])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:peanutbutterbananasandwichitem>)
  .create();
//Peanut Butter Cup
recipes.remove(<harvestcraft:peanutbuttercupitem>);
ExSartagine.addKettleRecipe([chocolateBar,peanutButter,sugar],cookKitKettle,null,[<harvestcraft:peanutbuttercupitem>],80);
//Pinkel
recipes.remove(<harvestcraft:pinkelitem>);
recipes.addShapeless("pinkel", <harvestcraft:pinkelitem>,[rawPork,wheat,onion,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("pinkel")
  .setShapeless([rawPork,wheat,onion])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:pinkelitem>)
  .create();
//Pitepalt
recipes.remove(<harvestcraft:pitepaltitem>);
ExSartagine.addKettleRecipe([flour,barley,potato,cookedPork,salt],cookKitKettle,null,[<harvestcraft:pitepaltitem>],80);
//Sauerbraten
recipes.remove(<harvestcraft:sauerbratenitem>);
ExSartagine.addKettleRecipe([anyRawMeat,vinegar,spice,potato],cookKitKettle,waterBottle2,[<harvestcraft:sauerbratenitem>],80);
//Strawberry Rhubarb Pie
recipes.remove(<harvestcraft:strawberryrhubarbpieitem>);
recipes.addShapeless("strawberryrhubarbpie", <harvestcraft:strawberryrhubarbpieitem>,[dough,sugar,strawberry,rhubarb,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("strawberryrhubarbpie")
  .setShapeless([dough,sugar,strawberry,rhubarb])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:strawberryrhubarbpieitem>)
  .create();
//Tiropita
recipes.remove(<harvestcraft:tiropitaitem>);
ExSartagine.addKettleRecipe([dough,cookingOil,egg,cheese],cookKitKettle,null,[<harvestcraft:tiropitaitem>],80);
//Rose Petal Tea
recipes.remove(<harvestcraft:rosepetalteaitem>);
ExSartagine.addKettleRecipe([teaLeaf,<twilightforest:thorn_rose>|<biomesoplenty:flower_1:5>|<dungeontactics:flower_sanguine>|<minecraft:double_plant:4>|<betterwithaddons:material:3>],null,waterBottle,[<harvestcraft:rosepetalteaitem>],80);
//Potato Skins
recipes.remove(<harvestcraft:potatoskinsitem>);
ExSartagine.addKettleRecipe([potato,cookedPork,cheese,heavyCream],cookKitKettle,null,[<harvestcraft:potatoskinsitem>],80);
//Chili Donut
recipes.remove(<harvestcraft:chilidonutitem>);
ExSartagine.addKettleRecipe([dough,cookingOil,cocoaPowder,hotSauce],null,null,[<harvestcraft:chilidonutitem>],80);
//BBQ Sauce
recipes.remove(<harvestcraft:bbqsauceitem>);
ExSartagine.addKettleRecipe([sugar,tomato,blackPepper,vinegar,mustardSeed],null,null,[<harvestcraft:bbqsauceitem>],80);
//Cupcakes
var cupcakeItems as IItemStack[IItemStack] = {
  <harvestcraft:vanillacupcakeitem>:<harvestcraft:vanillaitem>,
  <harvestcraft:chocolatecupcakeitem>:<harvestcraft:cocoapowderitem>,
  <harvestcraft:carrotcupcakeitem>:<minecraft:carrot>,
  <harvestcraft:redvelvetcupcakeitem>:<minecraft:dye:1>,
  <harvestcraft:chilicupcakeitem>:<harvestcraft:chiliitem>,
  <harvestcraft:peanutbuttercupcakeitem>:<harvestcraft:peanutbutteritem>,
  <harvestcraft:lemoncupcakeitem>:<harvestcraft:lemonitem>,
  <harvestcraft:strawberrycupcakeitem>:<harvestcraft:strawberryitem>,
  <harvestcraft:mintcupcakeitem>:<harvestcraft:spiceleafitem>,
  <harvestcraft:coffeecupcakeitem>:<harvestcraft:coffeebeanitem>,
  <harvestcraft:sprinklescupcakeitem>:<minecraft:sugar>,
  <harvestcraft:caramelcupcakeitem>:<harvestcraft:caramelitem>
};

for key, value in cupcakeItems {
  recipes.remove(key);
  ExSartagine.addKettleRecipe([batter,sugar,heavyCream,butter,value],cookKitKettle,null,[key],80);
}
//Cherry Slushie
recipes.remove(<harvestcraft:cherryslushieitem>);
recipes.addShapeless("cherryslushie", <harvestcraft:cherryslushieitem>,[<harvestcraft:cherryjuiceitem>,snowball,cookKitBad]);
RecipeBuilder.get("chef")
  .setName("cherryslushie")
  .setShapeless([<harvestcraft:cherryjuiceitem>,snowball])
  .addTool(cookKit, 1)
  .addOutput(<harvestcraft:cherryslushieitem>)
  .create();
//Stuffed chili peppers
recipes.remove(<harvestcraft:stuffedchilipeppersitem>);
ExSartagine.addKettleRecipe([chili,cheese,anyRawMeat,onion,spice],cookKitKettle,null,[<harvestcraft:stuffedchilipeppersitem>],80);
//Slime Gummies
recipes.remove(<harvestcraft:slimegummiesitem>);
recipes.addShapeless("slimegummies", <harvestcraft:slimegummiesitem>,[rawVenison,cookingOil,snowball,slimeball,slimeball,slimeball]);
RecipeBuilder.get("chef")
  .setName("slimegummies")
  .setShapeless([rawVenison,cookingOil,snowball,slimeball,slimeball,slimeball])
  .addOutput(<harvestcraft:slimegummiesitem>)
  .create();
//Chocolate Pudding
recipes.remove(<harvestcraft:chocolatepuddingitem>);
ExSartagine.addKettleRecipe([heavyCream,cocoaPowder,sugar],null,null,[<harvestcraft:chocolatepuddingitem>],80);
//BBQ Chicken Pizza
recipes.remove(<harvestcraft:bbqchickenpizzaitem>);
ExSartagine.addKettleRecipe([rawChicken,<harvestcraft:bbqsauceitem>,veggie,cheese,dough],cookKitKettle,null,[<harvestcraft:bbqchickenpizzaitem>],80);
//Quesadilla
recipes.remove(<harvestcraft:quesadillaitem>);
ExSartagine.addKettleRecipe([<harvestcraft:tortillaitem>,cheese],cookKitKettle,null,[<harvestcraft:quesadillaitem>],80);
//Miso Paste (not organized, move once other items are done)
recipes.remove(misoPaste);
ExSartagine.addKettleRecipe([soybean,soybean,soybean,koji_mold,salt],null,waterBottle2,[misoPaste*3],80);
//Raw End Pizza
RecipeBuilder.get("chef")
  .setName("abysspizza")
  .setShapeless([<contenttweaker:blendrein_block>,<endreborn:food_ender_flesh>])
  .setFluid(acid250)
  .addOutput(<contenttweaker:abyss_pizza_block>)
  .create();

//hiding of various items not needed
val hiddenFoods as IItemStack[] = [
  <harvestcraft:raspberrymilkshakeitem>,
  <harvestcraft:dimsumitem>,
  <harvestcraft:friedpecanokraitem>,
  <harvestcraft:croissantitem>,
  <harvestcraft:chocolaterollitem>,
  <harvestcraft:jamrollitem>,
  <harvestcraft:cheeseontoastitem>,
  <harvestcraft:raspberrytrifleitem>,
  <harvestcraft:cornishpastyitem>,
  <harvestcraft:cottagepieitem>,
  <harvestcraft:hushpuppiesitem>,
  <harvestcraft:kimchiitem>,
  <harvestcraft:okracreoleitem>,
  <harvestcraft:shrimpokrahushpuppiesitem>,
  <harvestcraft:mangochutneyitem>,
  <harvestcraft:cornedbeefbreakfastitem>,
  <harvestcraft:minerstewitem>,
  <harvestcraft:gourmetvenisonburgeritem>,
  <harvestcraft:koreandinneritem>,
  <harvestcraft:thankfuldinneritem>,
  <harvestcraft:meatfeastpizzaitem>,
  <harvestcraft:southernstylebreakfastitem>,
  <harvestcraft:deluxechickencurryitem>,
  <harvestcraft:cornedbeefhashitem>,
  <harvestcraft:ironbrewitem>,
  <harvestcraft:turkishdelightitem>,
  <harvestcraft:greeneggsandhamitem>,
  <harvestcraft:theatreboxitem>,
  <harvestcraft:spidereyepieitem>,
  <harvestcraft:riceitem>,
  <harvestcraft:cheesyshrimpquinoaitem>,
  <harvestcraft:driedsoupitem>,
  <harvestcraft:rouxitem>,
  <harvestcraft:cobblestonecobbleritem>,
  <harvestcraft:garlicsteakitem>,
  <harvestcraft:porkrindsitem>,
  <harvestcraft:cracklinsitem>,
  <harvestcraft:pambitsboxitem>
];

for item in hiddenFoods {
  JEI.removeAndHide(item);
}
//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation


//Growthcraft
/*
Here goes every reworked brewing kettle recipe from Growthcraft translated to Ex_sartagine's kettle.

=============================NOTES=============================
-Recipes are placeholders until proper liquid handling is added to Ex Sartagine.
-Brewing recipes take much longer than normal cooking
=============================SYMBOLS=============================

*/
//Rennet
ExSartagine.addKettleRecipe([<rustic:wind_thistle>],null,waterBottle,<liquid:fluid_rennet>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([<rustic:wind_thistle>],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_milk:bottlefluid_rennet>],600);//item
ExSartagine.addKettleRecipe([<growthcraft_milk:thistle>],null,waterBottle,<liquid:fluid_rennet>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([<growthcraft_milk:thistle>],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_milk:bottlefluid_rennet>],600);//item
ExSartagine.addKettleRecipe([<growthcraft_milk:stomach>],null,waterBottle,<liquid:fluid_rennet>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([<growthcraft_milk:stomach>],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_milk:bottlefluid_rennet>],600);//item
ExSartagine.addKettleRecipe([fig],null,waterBottle,<liquid:fluid_rennet>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([fig],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_milk:bottlefluid_rennet>],600);//item
ExSartagine.addKettleRecipe([<ore:agedMold>],null,waterBottle,<liquid:fluid_rennet>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([<ore:agedMold>],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_milk:bottlefluid_rennet>],600);//item
//Skim Milk
ExSartagine.addKettleRecipe([sugar],null,<liquid:fluid_skim_milk>*250,<liquid:fluid_condensed_milk>*250,[null],600);//liquid
ExSartagine.addKettleRecipe([sugar],<growthcraft_milk:bottlefluid_skim_milk>,null,[<growthcraft_milk:bottlefluid_condensed_milk>],600);//item
//Rice Water
ExSartagine.addKettleRecipe([rice],null,waterBottle,<liquid:fluid_booze_sake_water>*250,[<growthcraft_rice:rice_cooked>],600);//liquid
ExSartagine.addKettleRecipe([rice],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_rice:rice_cooked>,<growthcraft_rice:sakebottle>],600);//item
//Rice Mash
ExSartagine.addKettleRecipe([koji_mold],null,<liquid:fluid_booze_sake_water>*250,<liquid:fluid_booze_sake_mash>*250,[null],1200);//liquid
ExSartagine.addKettleRecipe([koji_mold],<growthcraft_rice:sakebottle>,null,[<growthcraft_rice:sakebottle:1>],1200);//item
//Ale Wort Young
ExSartagine.addKettleRecipe([<ore:listAllgrain>],null,waterBottle,<liquid:fluid_booze_hopale_unhopped>*250,[<contenttweaker:draff>],600);//liquid
ExSartagine.addKettleRecipe([<ore:listAllgrain>],/*waterBottleItem*/<harvestcraft:freshwateritem>,null,[<growthcraft_hops:hopale:4>,<contenttweaker:draff>],600);//item
//Ale Wort Hopped
ExSartagine.addKettleRecipe([hops],null,<liquid:fluid_booze_hopale_unhopped>*250,<liquid:fluid_booze_hopale_young>*250,[sugar.firstItem],600);//liquid
ExSartagine.addKettleRecipe([hops],<growthcraft_hops:hopale:4>,null,[<growthcraft_hops:hopale:0>,sugar.firstItem],600);//item
// Lager Ale
ExSartagine.addKettleRecipe([<growthcraft_cellar:yeast:1>],null,<liquid:fluid_booze_hopale_young>*1000,<liquid:fluid_booze_lager_young>*1000,[null],600);//liquid
ExSartagine.addKettleRecipe([<growthcraft_cellar:yeast:1>],<growthcraft_hops:hopale:0>,null,[<growthcraft_hops:lager>],600);//item
