import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

// cutcat

<dungeontactics:steel_sword>.displayName = "§bTrans§dcen§fded §cP§6r§e§ai§9d§5e§cs§6w§eo§ar§9d";
mods.jei.JEI.addDescription([<dungeontactics:steel_sword>],["A sword imbued with the power of cat girls, pretty colors, pickles, and head pats. Also known as the 'Sword of Gay.'"]);

<dungeontactics:steel_sword>.addTooltip(format.aqua("+9999 validity to wielder"));
<dungeontactics:steel_sword>.addTooltip(format.darkBlue("Developer Relic 6/6"));

mods.betterwithmods.Anvil.addShaped(<dungeontactics:steel_sword>, 
[
   [null, null, <minecraft:diamond>, <arcanearchives:shaped_quartz>],
   [null, <ore:ingotSilver>, <ore:dyePink>, <minecraft:diamond>],
   [<minecraft:diamond>, <ore:dyePink>, <ore:ingotSilver>, null],
   [<minecraft:diamond>, <minecraft:diamond>, null, null ]
]);

mods.jei.JEI.hide(<dungeontactics:steel_sword>);


// CalaMariGold

<minecraft:yellow_flower>.displayName = "Marigold";
<minecraft:dye:11>.displayName = "Yellow Dye";
<harvestcraft:dandelionsaladitem>.displayName = "Marigold Salad";
<harvestcraft:dandelionteaitem>.displayName = "Marigold Tea";


<contenttweaker:calamarigold>.displayName = "§dCalaMariGold マリ";
mods.jei.JEI.addDescription([<contenttweaker:calamarigold>],["You begin to have hallucinations of anime girls, pride flags, music, and Beat Saber."]);

<contenttweaker:calamarigold>.addTooltip(format.aqua("Use this item to become a developer ;)"));
<contenttweaker:calamarigold>.addTooltip(format.darkBlue("Developer Relic 1/6"));


recipes.addShapeless("CalaMariGold", <contenttweaker:calamarigold>,
	[<harvestcraft:calamarirawitem>,<minecraft:gold_ingot>]);

recipes.addShapeless("CalaMariGold 2", <contenttweaker:calamarigold>,
	[<harvestcraft:calamarirawitem>,<minecraft:yellow_flower>]);

mods.jei.JEI.hide(<contenttweaker:calamarigold>);


//Sandwich Horror
///BetterwithMods
<betterwithmods:tasty_sandwich>.displayName = "§2Foul Sandwich";

///shhh
recipes.remove(<betterwithmods:tasty_sandwich>);
recipes.addShaped("foul_sandwich", <betterwithmods:tasty_sandwich>*4,[
	[<minecraft:bread>, <minecraft:bread>, <minecraft:bread>],
    [<harvestcraft:lettuceitem>, <harvestcraft:zombiejerkyitem>, <harvestcraft:lettuceitem>],
	[<minecraft:bread>, <minecraft:bread>, <minecraft:bread>]
]);
<betterwithmods:tasty_sandwich>.addTooltip("But... why?");

recipes.addHiddenShaped("tsh", <mod_lavacow:canebeef>,[
[<rats:plague_essence>, <betterwithmods:tasty_sandwich>, <rats:plague_essence>],
[<betterwithmods:tasty_sandwich>, <bountifulbaubles:trinketshulkerheart>, <betterwithmods:tasty_sandwich>],
[<rats:plague_essence>, <betterwithmods:tasty_sandwich>, <rats:plague_essence>]
]);

mods.jei.JEI.addDescription(<mod_lavacow:canebeef>,"Ten percent greens,", "Twenty percent bread,", "Fifteen percent cursed meat harvested from the dead", "Five percent ???", "Fifty percent strain,", "and a hundred percent reason to remember the name.");
//mods.jei.JEI.hide(<mod_lavacow:canebeef>);

<mod_lavacow:canebeef>.clearTooltip();
<mod_lavacow:canebeef>.displayName = "§4Sandwich Horror";
<mod_lavacow:canebeef>.addTooltip(format.darkRed("Sandwich Horror"));
<mod_lavacow:canebeef>.addTooltip(format.darkBlue("Developer Item 3/6"));