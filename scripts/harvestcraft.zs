import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<harvestcraft:flouritem>);
recipes.remove(<minecraft:bread>);
recipes.remove(<harvestcraft:well>);
recipes.remove(<harvestcraft:zombiejerkyitem>);
recipes.remove(<harvestcraft:cheeseitem>);
recipes.remove(<harvestcraft:epicbaconitem>);
recipes.remove(<harvestcraft:epicbltitem>);
recipes.remove(<harvestcraft:sausageinbreaditem>);
recipes.remove(<harvestcraft:spidereyesoupitem>);
recipes.remove(<harvestcraft:spidereyepieitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:slimepieitem>);
recipes.remove(<harvestcraft:mobsoupitem>);
recipes.remove(<harvestcraft:presser>);
recipes.remove(<harvestcraft:saltitem>);


recipes.remove(<harvestcraft:shippingbin>);
recipes.addShaped("shipping_bin",<harvestcraft:shippingbin>,[
	[<ore:plankWood>,<ore:logWood>,<ore:plankWood>],
	[<ore:logWood>,<minecraft:emerald>,<ore:logWood>],
	[<ore:plankWood>,<ore:logWood>,<ore:plankWood>]
]);

recipes.remove(<harvestcraft:berryvinaigrettesaladitem>);
recipes.addShapeless("berry_vinaigrette_salad", <harvestcraft:berryvinaigrettesaladitem>, [<ore:toolMixingbowl>, <ore:cropLettuce>, <ore:foodVinegar>, <ore:listAllgreenveggie>, <ore:listAlljuice>]);
recipes.addShapeless("imitation_crab_sticks", <harvestcraft:imitationcrabsticksitem>, [<ore:toolCuttingboard>, <ore:listAllfishcooked>, <ore:dyeRed>, <ore:flourEqualswheat>, <ore:listAllegg>]);
recipes.remove(<harvestcraft:froglegstirfryitem>);
recipes.addShapeless("frog_leg_stirfry", <harvestcraft:froglegstirfryitem>, 
[<ore:toolSkillet>, <ore:listAllfrograw>, <ore:cropRice>, <harvestcraft:broccoliitem>, <minecraft:carrot>, <harvestcraft:bellpepperitem>]);
recipes.remove(<harvestcraft:wovencottonitem>);
recipes.addShapeless("wovencottonitem_twine", <harvestcraft:wovencottonitem>, [<ore:twine>,<ore:twine>]);

// removes duplicate salt recipes
recipes.removeByRecipeName("harvestcraft:sausageitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:sausageitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:saltedcaramelitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:saltedcaramelitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:porksausageitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:porksausageitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:pepperoniitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:pepperoniitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:gravlaxitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gravlaxitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:chorizoitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:chorizoitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:bolognaitem_x3_itemsalt");
recipes.removeByRecipeName("harvestcraft:bolognaitem_x3_foodsalt");
recipes.removeByRecipeName("harvestcraft:yorkshirepuddingitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:yorkshirepuddingitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:veggiestripsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:veggiestripsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:taffyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:taffyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:sunflowerwheatrollsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:sunflowerwheatrollsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:steamedpeasitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:steamedpeasitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:spicymustardporkitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:spicymustardporkitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:soysauceitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:soysauceitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:softpretzelitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:softpretzelitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:saltedsunflowerseedsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:saltedsunflowerseedsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:saladdressingitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:saladdressingitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:roastpotatoesitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:roastpotatoesitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:roastchickenitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:roastchickenitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:rawtofaconitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:rawtofaconitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:potatosoupitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:potatosoupitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:pitepaltitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:pitepaltitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:picklesitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:picklesitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:pickledonionsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:pickledonionsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:pickledbeetsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:pickledbeetsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:oystersauceitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:oystersauceitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:okrachipsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:okrachipsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:misopasteitem_x4_itemsalt");
recipes.removeByRecipeName("harvestcraft:misopasteitem_x4_foodsalt");
recipes.removeByRecipeName("harvestcraft:mashedpotatoesitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:mashedpotatoesitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:kimchiitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:kimchiitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:icecreamitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:icecreamitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:hotsauceitem_x6_itemsalt");
recipes.removeByRecipeName("harvestcraft:hotsauceitem_x6_foodsalt");
recipes.removeByRecipeName("harvestcraft:gourmetvenisonpattyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gourmetvenisonpattyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:gourmetporkpattyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gourmetporkpattyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:gourmetmuttonpattyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gourmetmuttonpattyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:gourmetbeefpattyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gourmetbeefpattyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:gherkinitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:gherkinitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:friesitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:friesitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:doughitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:doughitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:damperitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:damperitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:curryitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:curryitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:cornchipsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:cornchipsitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:butteritem_itemsalt");
recipes.removeByRecipeName("harvestcraft:butteritem_foodsalt");
recipes.removeByRecipeName("harvestcraft:beefjerkyitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:beefjerkyitem_foodsalt");
recipes.removeByRecipeName("harvestcraft:banananutbreaditem_itemsalt");
recipes.removeByRecipeName("harvestcraft:banananutbreaditem_foodsalt");
recipes.removeByRecipeName("harvestcraft:bakedturnipsitem_itemsalt");
recipes.removeByRecipeName("harvestcraft:bakedturnipsitem_foodsalt");

// removed duplicate honey recipes
recipes.removeByRecipeName("harvestcraft:teriyakichickenitem_drophoney");
recipes.removeByRecipeName("harvestcraft:sweetandsoursauceitem_x5_drophoney");
recipes.removeByRecipeName("harvestcraft:marzipanitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeysoyribsitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeysandwichitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeylemonlambitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeyitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeyglazedhamitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeyglazedcarrotsitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeycombchocolatebaritem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeybunitem_drophoney");
recipes.removeByRecipeName("harvestcraft:honeybreaditem_drophoney");
recipes.removeByRecipeName("harvestcraft:gingerchickenitem_drophoney");
recipes.removeByRecipeName("harvestcraft:charsuiitem_drophoney");

// removed other duplicates
recipes.removeByRecipeName("harvestcraft:pemmicanitem_two");
recipes.removeByRecipeName("harvestcraft:peanutbuttercookiesitem - copy (2)");
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem_cropwhitemushroom");
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem_minecraft_red_mushroom");
recipes.removeByRecipeName("harvestcraft:grilledmushroomitem_minecraft_brown_mushroom");
recipes.removeByRecipeName("harvestcraft:deluxenachoesitem_foodtortillachips_foodsalsa");

recipes.removeByRecipeName("harvestcraft:wovencottonitem_x3");
recipes.removeByRecipeName("harvestcraft:freshwateritem_listallwater");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_helmet");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_chestplate");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_leggings");
recipes.removeByRecipeName("harvestcraft:minecraft_leather_boots");

recipes.remove(<harvestcraft:lavendershortbreaditem>);
recipes.addShapeless("lavender_shortbread",<harvestcraft:lavendershortbreaditem>,[<ore:toolBakeware>,<ore:dyePurple>,<harvestcraft:doughitem>]);

mods.jei.JEI.removeAndHide(<harvestcraft:rainbowcurryitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:venisonrawitem>);
mods.jei.JEI.removeAndHide(<harvestcraft:venisoncookeditem>);


mods.jei.JEI.removeAndHide(<harvestcraft:candledeco1>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco2>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco3>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco4>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco5>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco6>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco7>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco8>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco9>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco10>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco11>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco12>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco13>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco14>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco15>);
mods.jei.JEI.removeAndHide(<harvestcraft:candledeco16>);


//hideCategory(Grinder and Traps)
mods.jei.JEI.hideCategory("jehc.ground_trap");
mods.jei.JEI.hideCategory("jehc.water_trap");
mods.jei.JEI.hideCategory("jehc.grinder");

mods.jei.JEI.removeAndHide(<harvestcraft:groundtrap>);
mods.jei.JEI.removeAndHide(<harvestcraft:watertrap>);
mods.jei.JEI.removeAndHide(<harvestcraft:fishtrapbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:fruitbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:grainbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:veggiebaititem>);

mods.jei.JEI.removeAndHide(<harvestcraft:groundtrap>);
mods.jei.JEI.removeAndHide(<harvestcraft:watertrap>);
mods.jei.JEI.removeAndHide(<harvestcraft:fishtrapbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:fruitbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:grainbaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:veggiebaititem>);
mods.jei.JEI.removeAndHide(<harvestcraft:grinder>);

recipes.remove(<harvestcraft:stockitem>);
recipes.addShapeless("harvestcraft_bonestock", <harvestcraft:stockitem>, [<ore:toolPot>, <minecraft:bone>]);

recipes.addShapeless("harvestcraft_vegstock", <harvestcraft:stockitem> * 2, [<ore:toolPot>, <ore:listAllveggie>]);

recipes.addShapeless("harvestcraft_meatstock", <harvestcraft:stockitem> * 3, [<ore:toolPot>, <ore:listAllmeatraw>]);


recipes.remove(<harvestcraft:hardenedleatheritem>);
recipes.addShapeless("hardenedleatheritem", <harvestcraft:hardenedleatheritem>, [<harvestcraft:beeswaxitem>,<betterwithmods:material:6>]);

recipes.removeByRecipeName("harvestcraft:beeswaxitem_x8_cropcandle");
recipes.removeByRecipeName("harvestcraft:beeswaxitem_cropcandle");


// copper can be used instead of clay brick
//pot
recipes.addShaped("Pot", <harvestcraft:potitem>,[
	[null, null, null],
	[<ore:stickWood>, <simpleores:copper_ingot>, <simpleores:copper_ingot>],
	[null, <simpleores:copper_ingot>, <simpleores:copper_ingot>]
]);

//skillet
recipes.addShaped("Skillet", <harvestcraft:skilletitem>,[
	[<simpleores:copper_ingot>, null, null],
	[null, <simpleores:copper_ingot>, null],
	[null, null, <ore:stickWood>]
]);

//saucepan
recipes.addShaped("Saucepan", <harvestcraft:saucepanitem>,[
	[<simpleores:copper_ingot>, null, null],
	[null, <ore:stickWood>, null]
]);

//bakeware
recipes.addShaped("Bakeware", <harvestcraft:bakewareitem> * 3,[
	[<simpleores:copper_ingot>, <simpleores:copper_ingot>, <simpleores:copper_ingot>],
	[<simpleores:copper_ingot>, null, <simpleores:copper_ingot>],
	[<simpleores:copper_ingot>, <simpleores:copper_ingot>, <simpleores:copper_ingot>]
]);

// leather yogurt wtf
recipes.remove(<harvestcraft:plainyogurtitem>);
recipes.addShapeless ("harvestcraft_yogurt", <harvestcraft:plainyogurtitem>*4, [<ore:toolPot>,<ore:listAllmilk>]);

// Hyper hardcore well
recipes.addShaped("water_well", <harvestcraft:well>,[
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<pyrotech:material:16>, <betterwithmods:bucket>, <pyrotech:material:16>],
    [<pyrotech:material:16>, <betterwithmods:screw_pump>, <pyrotech:material:16>]
]);

// Hyper hardcore presser
recipes.addShaped("food_presser", <harvestcraft:presser>, [
[<dungeontactics:steel_ingot>, <dungeontactics:steel_ingot>, <dungeontactics:steel_ingot>],
[<minecraft:piston>, <betterwithmods:single_machine>, <minecraft:piston>], 
[<betterwithmods:material:24>, <betterwithmods:material:34>, <betterwithmods:material:24>]]);

//Honey production
//recipes.addShapeless("harvestcraft_grub_crowning", <harvestcraft:queenbeeitem>, [<harvestcraft:grubitem>,<bountifulbaubles:crowngold>.giveBack(),<dungeontactics:magic_powder>]);
recipes.remove(<harvestcraft:royaljellyitem>);
mods.betterwithmods.Mill.addRecipe([<harvestcraft:honeycombitem>],[<harvestcraft:honeyitem>*6,<harvestcraft:beeswaxitem>]);
mods.betterwithmods.Mill.addRecipe([<harvestcraft:waxcombitem>],[<harvestcraft:beeswaxitem>*6]);

// Palm seed -> cooking oil
recipes.addShapeless("palmseed_cookingoil", <harvestcraft:oliveoilitem>*2, [<harvestcraft:juiceritem>, <dynamictreesbop:palmseed>, <dynamictreesbop:palmseed>]);

// Ground meat
mods.betterwithmods.Mill.addRecipe([<ore:listAllbeefraw>],[<harvestcraft:groundbeefitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllchickenraw>],[<harvestcraft:groundchickenitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllduckraw>],[<harvestcraft:groundduckitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllfishraw>],[<harvestcraft:groundfishitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllmuttonraw>],[<harvestcraft:groundmuttonitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllporkraw>],[<harvestcraft:groundporkitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllrabbitraw>],[<harvestcraft:groundrabbititem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllturkeyraw>],[<harvestcraft:groundturkeyitem>*2]);
mods.betterwithmods.Mill.addRecipe([<ore:listAllvenisonraw>],[<harvestcraft:groundvenisonitem>*2]);

// Food block forms (still dunno why we can harvest them but might as well put them to use)
val affectedBlocks = ["tamarind","lychee","guava","breadfruit","rambutan","jackfruit","passionfruit","soursop","pawpaw","hazelnut"] as string[];
for variant in affectedBlocks {
	print("harvestcraft:"~variant~"item");
	print("harvestcraft:pam"~variant);
	recipes.addShapeless("harvestcraft_block_to_food_"~variant, itemUtils.getItem("harvestcraft:"~variant~"item"), [itemUtils.getItem("harvestcraft:pam"~variant)]);
}