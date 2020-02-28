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
