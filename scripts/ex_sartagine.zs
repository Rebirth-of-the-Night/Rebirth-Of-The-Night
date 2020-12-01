import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import mods.exsartagine.ExSartagine;
import mods.advancedmortars.Mortar;
import mods.pyrotech.DryingRack;

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
var salt = <ore:listAllsalt>;
var flour = <ore:foodFlour>;
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
/* "MIXING BOWL" (MORTAR) TAGGED RECIPES ON HOLD UNTIL ADVANCED MORTARS ADDS EITHER SUPPORT FOR MORE METHODS OR FOR LIQUIDS

//var BucketMilk = <pyrotech:bucket_wood:1>.giveBack(<pyrotech:bucket_wood>)| <pyrotech:bucket_stone:1>.giveBack(<pyrotech:bucket_stone>)| <pyrotech:bucket_clay:1>.giveBack(<pyrotech:bucket_clay>)| <minecraft:milk_bucket>.giveBack(<minecraft:bucket>)| <aether_legacy:skyroot_bucket:4>.giveBack(<aether_legacy:skyroot_bucket>);
*/
//Ice cream "MIXING BOWL"
Mortar.addRecipe(["stone"], <harvestcraft:icecreamitem>, 6, [<pyrotech:bucket_wood:1>.giveBack(<pyrotech:bucket_wood>),<minecraft:snowball>,salt]);
//Grilled Cheese
recipes.removeByRecipeName("harvestcraft:grilledcheeseitem");
mods.exsartagine.ExSartagine.addKettleRecipe([bread,butter,butter],cheese,null,[<harvestcraft:grilledcheeseitem>],80);
//Apple Sauce
recipes.removeByRecipeName("harvestcraft:applesauceitem");
Mortar.addRecipe(["stone"], <harvestcraft:applesauceitem>, 6, [apple]);
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
//Dough "MIXING BOWL"
recipes.removeByRecipeName("harvestcraft:doughitem");
Mortar.addRecipe(["stone"], <harvestcraft:doughitem>, 6, [<minecraft:water_bucket>.giveBack(<minecraft:bucket>),flour,salt]);
//Pasta
recipes.removeByRecipeName("harvestcraft:pastaitem");
Mortar.addRecipe(["stone"], <harvestcraft:pastaitem>*5, 6, [dough, butter]);
//Heavy Cream "MIXING BOWL"
recipes.removeByRecipeName("harvestcraft:heavycreamitem");
Mortar.addRecipe(["stone"], <harvestcraft:heavycreamitem>*4, 12, [milk]);
//Butter
recipes.removeByRecipeName("harvestcraft:toastedsesameseedsitem");
mods.exsartagine.ExSartagine.addKettleRecipe([salt,heavyCream],null,null,[<harvestcraft:butteritem>],80);

//Juices
recipes.removeByRecipeName("harvestcraft:applejuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:applejuiceitem>, 6, [apple]);
recipes.removeByRecipeName("harvestcraft:melonjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:melonjuiceitem>, 6, [melon]);
recipes.removeByRecipeName("harvestcraft:carrotjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:carrotjuiceitem>, 6, [carrot]);
recipes.removeByRecipeName("harvestcraft:strawberryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:strawberryjuiceitem>, 6, [strawberry]);
recipes.removeByRecipeName("harvestcraft:grapejuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:grapejuiceitem>, 6, [grape]);
recipes.removeByRecipeName("harvestcraft:blueberryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:blueberryjuiceitem>, 6, [blueberry]);
recipes.removeByRecipeName("harvestcraft:cherryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:cherryjuiceitem>, 6, [cherry]);
recipes.removeByRecipeName("harvestcraft:papayajuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:papayajuiceitem>, 6, [papaya]);
recipes.removeByRecipeName("harvestcraft:starfruitjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:starfruitjuiceitem>, 6, [starfruit]);
recipes.removeByRecipeName("harvestcraft:orangejuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:orangejuiceitem>, 6, [orange]);
recipes.removeByRecipeName("harvestcraft:peachjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:peachjuiceitem>, 6, [peach]);
recipes.removeByRecipeName("harvestcraft:limejuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:limejuiceitem>, 6, [lime]);
recipes.removeByRecipeName("harvestcraft:mangojuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:mangojuiceitem>, 6, [mango]);
recipes.removeByRecipeName("harvestcraft:pomegranatejuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:pomegranatejuiceitem>, 6, [pomegranate]);
recipes.removeByRecipeName("harvestcraft:blackberryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:blackberryjuiceitem>, 6, [blackberry]);
recipes.removeByRecipeName("harvestcraft:raspberryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:raspberryjuiceitem>, 6, [raspberry]);
recipes.removeByRecipeName("harvestcraft:kiwijuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:kiwijuiceitem>, 6, [kiwi]);
recipes.removeByRecipeName("harvestcraft:cranberryjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:cranberryjuiceitem>, 6, [cranberry]);
recipes.removeByRecipeName("harvestcraft:cactusfruitjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:cactusfruitjuiceitem>, 6, [cactusFruit]);
recipes.removeByRecipeName("harvestcraft:plumjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:plumjuiceitem>, 6, [plum]);
recipes.removeByRecipeName("harvestcraft:pearjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:pearjuiceitem>, 6, [pear]);
recipes.removeByRecipeName("harvestcraft:apricotjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:apricotjuiceitem>, 6, [apricot]);
recipes.removeByRecipeName("harvestcraft:figjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:figjuiceitem>, 6, [fig]);
recipes.removeByRecipeName("harvestcraft:grapefruitjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:grapefruitjuiceitem>, 6, [grapeFruit]);
recipes.removeByRecipeName("harvestcraft:persimmonjuiceitem");
Mortar.addRecipe(["stone"], <harvestcraft:persimmonjuiceitem>, 6, [persimmon]);

//!!!!!!!! Concept idea: "ye olde stew"; an item that can be crafted by throwing an assortment of raw ingredients to the pot which will result in a variable amount of said item. Intended for players who don't want to fiddle with different recipes and just want to use their random ingredients without thinking much. This item has absolutely no other use or buff other than just its saturation and food level; insipid due to lack of ability in its preparation