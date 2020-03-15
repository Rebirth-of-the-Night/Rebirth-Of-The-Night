import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rockytweaks.Anvil;

// cutcat

<dungeontactics:steel_sword>.displayName = "§bTrans§dcen§fded §cP§6r§e§ai§9d§5e§cs§6w§eo§ar§9d";
mods.jei.JEI.addDescription([<dungeontactics:steel_sword>],['A sword imbued with the power of cat girls, pretty colors, pickles, and head pats. Lovingly referred to by its creator as "Sword of Gay."']);

<dungeontactics:steel_sword>.addTooltip(format.aqua("+9999 validity to wielder"));
<dungeontactics:steel_sword>.addTooltip(format.darkBlue("Developer Relic 6/6"));

// CalaMariGold

<minecraft:yellow_flower>.displayName = "Marigold";
<minecraft:dye:11>.displayName = "Yellow Dye";
<harvestcraft:dandelionsaladitem>.displayName = "Marigold Salad";
<harvestcraft:dandelionteaitem>.displayName = "Marigold Tea";


<contenttweaker:calamarigold>.displayName = "§dCalaMariGold マリ";
mods.jei.JEI.addDescription([<contenttweaker:calamarigold>],["You begin to have hallucinations of anime girls, pride flags, music, and Beat Saber."]);

<contenttweaker:calamarigold>.addTooltip(format.aqua("Use this item to become a developer! ;)"));
<contenttweaker:calamarigold>.addTooltip(format.darkBlue("Developer Relic 1/6"));


recipes.addHiddenShapeless("CalaMariGold", <contenttweaker:calamarigold>,
	[<harvestcraft:calamarirawitem>,<minecraft:gold_ingot>]);

recipes.addHiddenShapeless("CalaMariGold 2", <contenttweaker:calamarigold>,
	[<harvestcraft:calamarirawitem>,<minecraft:yellow_flower>]);


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
<mod_lavacow:canebeef>.displayName = "§4The Sandwich Horror";
<mod_lavacow:canebeef>.addTooltip(format.darkRed("The Sandwich Horror"));
<mod_lavacow:canebeef>.addTooltip(format.darkBlue("Developer Relic 3/6"));


//Foreck
//My Stick
<spartanweaponry:katana_wood>.addTooltip("An old stick wrapped ...with tape?");
<spartanweaponry:katana_wood>.maxDamage = 24;
//Is Better than Bacommm
<spartancompat:katana_onyx>.addTooltip(format.darkBlue("Developer Relic 4/6"));
<spartancompat:katana_onyx>.maxDamage = 1838;

//Register specific sticks;
mods.jei.JEI.removeAndHide(<spartanweaponry:katana_wood>);
mods.jei.JEI.removeAndHide(<spartancompat:katana_onyx>);
mods.jei.JEI.addItem(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}));
mods.jei.JEI.addItem(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 3 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}));

mods.rockytweaks.Anvil.remove([<spartanweaponry:katana_wood>]);
mods.rockytweaks.Anvil.remove([<spartancompat:katana_onyx>]);

mods.jei.JEI.addDescription(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}),"An old stick.", "The chief of the village holds it very dear for unknown reasons, seems it is even more important than amethysts.");
mods.jei.JEI.addDescription(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}),"Ancient. it is really just a stick, yet it feels like whoever its original wielder was really trusted it.");
mods.jei.JEI.addDescription(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}),"Restored to a pristine state, the wisdom and power of previous generations has been deeply §linfused §rinto this artifact.");
mods.jei.JEI.addDescription(<contenttweaker:nethercoin>,"Some sort of currency from an era long forgotten, before the disease had decimated the population of the Nether.","Only some high ranking individuals have them.");
<contenttweaker:nethercoin>.addTooltip("Might be valuable to an archeologist or merchant from far away.");

recipes.addHiddenShapeless("trueNightsEdge", <spartanweaponry:throwing_knife_electrum>.withTag({display: {Name: "§o§6True Night's Edge"}, AttributeModifiers: [{UUIDMost: 52977, UUIDLeast: 170749, Amount: 15, Slot: "mainhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}, {UUIDMost: 27219, UUIDLeast: 165766, Amount: 15, Slot: "offhand", AttributeName: "generic.attackDamage", Operation: 0, Name: "generic.attackDamage"}]}),
    [<simpleores:onyx_gem>, <simpleores:onyx_gem>]
);