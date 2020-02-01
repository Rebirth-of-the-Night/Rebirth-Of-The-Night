import crafttweaker.item.IIngredient;

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
recipes.remove(<harvestcraft:slimepieitem>);
recipes.remove(<harvestcraft:mobsoupitem>);


mods.jei.JEI.removeAndHide(<harvestcraft:rainbowcurryitem>);


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


//hideCategory(Grinder, Presser and Trap)
mods.jei.JEI.hideCategory("jehc.ground_trap");
mods.jei.JEI.hideCategory("jehc.water_trap");
mods.jei.JEI.hideCategory("jehc.grinder");
mods.jei.JEI.hideCategory("jehc.presser");

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
mods.jei.JEI.removeAndHide(<harvestcraft:presser>);

recipes.remove(<harvestcraft:stockitem>);
recipes.addShapeless("harvestcraft_bonestock", <harvestcraft:stockitem>, [<ore:toolPot>, <minecraft:bone>]);

recipes.addShapeless("harvestcraft_vegstock", <harvestcraft:stockitem> * 2, [<ore:toolPot>, <ore:listAllveggie>]);

recipes.addShapeless("harvestcraft_meatstock", <harvestcraft:stockitem> * 3, [<ore:toolPot>, <ore:listAllmeatraw>]);


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

// tin uses
recipes.remove(<sereneseasons:season_clock>);

recipes.addShaped("tintripwirehook", <minecraft:tripwire_hook> * 2,[
	[null, <simpleores:tin_ingot>, null],
	[null, <ore:stickWood>, null],
	[null, <ore:plankWood>, null]
]);

recipes.addShaped("tincompass", <minecraft:tripwire_hook> * 2,[
	[null, <simpleores:tin_ingot>, null],
	[<simpleores:tin_ingot>, <minecraft:redstone>, <simpleores:tin_ingot>],
	[null, <simpleores:tin_ingot>, null]
]);

recipes.addShaped("seasonclock1", <sereneseasons:season_clock>, [
	[<minecraft:quartz>, <simpleores:tin_ingot>, <minecraft:quartz>],
	[<simpleores:tin_ingot>, <minecraft:redstone>, <simpleores:tin_ingot>],
	[<minecraft:quartz>, <simpleores:tin_ingot>, <minecraft:quartz>]
]);

recipes.addShaped("water well", <harvestcraft:well>,[
	[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
    [<ore:stone>, <betterwithmods:bucket>, <ore:stone>],
    [<ore:stone>, <betterwithmods:screw_pump>, <ore:stone>]
]);
