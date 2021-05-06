import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rockytweaks.Anvil;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;


// cutcat
JEI.addDescription([<dungeontactics:steel_sword:*>],['A sword imbued with the power of cat girls, pastel colors, pickles, and head pats. Lovingly referred to by its creator as "Sword of Gay."']);

<dungeontactics:steel_sword:*>.addTooltip(format.aqua("+9999 validity to wielder"));
<dungeontactics:steel_sword:*>.addTooltip(format.darkBlue("Developer Relic 5/6"));

mods.betterwithmods.Anvil.addShaped(<dungeontactics:steel_sword>, 
[
    [null, null, <ore:gemDiamond>, <quark:rune:16>],
    [null, <ore:ingotSilver>, <minecraft:dye:9>, <ore:gemDiamond>],
    [<ore:gemDiamond>, <minecraft:dye:9>, <ore:ingotSilver>, null],
    [<ore:gemDiamond>, <ore:gemDiamond>, null, null ]
]);

// CalaMariGold

JEI.addDescription([<atop:amber_sword>],["Mari has a cheerful personality and makes many jokes. She always keeps her chin up when faced with hardship so as not to burden others, and is ready to try her hand at anything. Mari speaks with an accent, and she has a high, cheerful voice. Mari speaks Japanese but often inserts English words into her sentences. She is so excited to be with you <3"]);

<atop:amber_sword>.addTooltip(format.aqua('"Right-click me! I have a surprise for you!"'));
<atop:amber_sword>.addTooltip(format.darkBlue("Developer Relic 1/6"));


val enchantmentsMari as IEnchantmentDefinition[] = [<enchantment:livingenchantment:enchantment.living>];
var enchantmentMapMari as IData = {};

var enchTagMari = enchantmentsMari[0].makeEnchantment(1).makeTag().ench[0];
enchTagMari += {personalityName: "Shiny", personality: 0.36782956 as float, kills: 0, effectiveness: 1.00 as float, xp: 1};

enchantmentMapMari += {ench: [enchTagMari]};

recipes.addHiddenShapeless("CalaMariGold", <atop:amber_sword>.withTag(({"Quark:RuneColor": 15, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMapMari),
	[<harvestcraft:calamarirawitem>,<minecraft:yellow_flower>]);


// Kompy

<contenttweaker:kompy_kantrip>.addTooltip(format.aqua("Whimsicott's Playday =3"));
<contenttweaker:kompy_kantrip>.addTooltip(format.darkBlue("Developer Relic 4/6"));

JEI.addDescription([<contenttweaker:kompy_kantrip>],["Kompy's Kantrip can be used to kraft gardens full of her favorite flower!"]);
JEI.addDescription([<contenttweaker:kompy_essence>],["Krafted with Kompy's favorite flower, favorite blue Gem, her wife's favorite green Gem, their favorite afternoon spiced tea, quintessence of nature, and Kompy's two favorite colors."]);
JEI.addDescription([<contenttweaker:kompy_kott>],["Kompy's favorite Whimsical doll is krafted with 3 tufts of cotten, the Whimsical doll's primary and secondary type items, and quintessence of air =3"]);

#Essence
recipes.addHiddenShapeless("Kompy's Essence", <contenttweaker:kompy_essence>,
    [<biomesoplenty:flower_0:13>, <biomesoplenty:gem:6>, <harvestcraft:chaiteaitem>, <contenttweaker:nature_quintessence>, <ore:dyePink>, <ore:dyeLime>, <biomesoplenty:gem:2>]);
	
#Precursor
recipes.addHiddenShapeless("Kompy's Precursor", <contenttweaker:kompy_kott>,
    [<harvestcraft:cottonitem>, <harvestcraft:cottonitem>, <harvestcraft:cottonitem>, <iceandfire:pixie_dust>, <minecraft:tallgrass:1>, <contenttweaker:air_quintessence>]);
	
#Kantrip
mods.betterwithaddons.Infuser.addShaped(<contenttweaker:kompy_kantrip>,[
[null,<contenttweaker:creation_rune>.anyDamage().transformDamage(),null],
[<contenttweaker:kompy_essence>,<contenttweaker:spectral_shard>,<contenttweaker:kompy_kott>],
[null,<contenttweaker:fae_rune>.anyDamage().transformDamage(),null]], 210);

recipes.addShapeless("Kantrip Effect", <biomesoplenty:flower_0:13>,
    [<contenttweaker:kompy_kantrip>.transformDamage(0), <ore:flower>]);	





//Sandwich Horror

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
recipes.addHiddenShaped("tsh2", <mod_lavacow:canebeef>,[
[<betterwithmods:tasty_sandwich>, <rats:plague_essence>, <betterwithmods:tasty_sandwich>],
[<rats:plague_essence>, <bountifulbaubles:trinketshulkerheart>, <rats:plague_essence>],
[<betterwithmods:tasty_sandwich>, <rats:plague_essence>, <betterwithmods:tasty_sandwich>]
]);

JEI.addDescription(<mod_lavacow:canebeef>,"Ten percent greens,", "Twenty percent bread,", "Fifteen percent cursed meat harvested from the dead", "Five percent ???", "Fifty percent strain,", "and a hundred percent reason to remember the name.");
// JEI.hide(<mod_lavacow:canebeef>);

<mod_lavacow:canebeef>.clearTooltip();
<mod_lavacow:canebeef>.addTooltip(format.darkRed("The Sandwich Horror"));
<mod_lavacow:canebeef>.addTooltip(format.darkBlue("Developer Relic 3/6"));



//Foreck
//My Stick
<spartanweaponry:katana_wood:*>.addTooltip("An old stick wrapped ...with tape?");
<spartanweaponry:katana_wood>.maxDamage = 24;
//Is Better than Bacommm
<spartancompat:katana_onyx:*>.addTooltip(format.darkBlue("Developer Relic 2/6"));
<spartancompat:katana_onyx>.maxDamage = 1838;

//Register specific sticks;
JEI.removeAndHide(<spartanweaponry:katana_wood>);
JEI.removeAndHide(<spartancompat:katana_onyx>);
JEI.addItem(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}));
JEI.addItem(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 3 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}));

mods.rockytweaks.Anvil.remove([<spartanweaponry:katana_wood>]);
mods.rockytweaks.Anvil.remove([<spartancompat:katana_onyx>]);

mods.betterwithmods.Anvil.removeShaped(<spartanweaponry:katana_wood>);
mods.betterwithmods.Anvil.removeShaped(<spartancompat:katana_onyx>);

JEI.addDescription(<spartanweaponry:katana_wood>.withTag({display: {Name: "Wrapped Stick"}}),"Old and not very useful. It is really just a stick that someone probably found lying around, yet it feels like it comes from another era. It can be assumed that whoever its original wielder was, they really trusted it.");
JEI.addDescription(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}),"Restored to a pristine state, the wisdom and power of previous generations has been deeply §linfused §rinto this artifact.");
JEI.addDescription(<contenttweaker:nethercoin>,"Some sort of currency from an era long forgotten, before the disease had decimated the population of the Nether.","Only some high ranking individuals have them.");
<contenttweaker:nethercoin>.addTooltip("Might be valuable to an archeologist or merchant from far away. Wasn't there some 'collector' in villages?");

//Kilo
//my tickler
<dungeontactics:terrible_feather>.maxDamage = 75;
<dungeontactics:terrible_feather:*>.addTooltip("We hold back the darkness with our clucking.");
<dungeontactics:terrible_feather:*>.addTooltip(format.darkBlue("Developer Relic 6/6"));

JEI.addDescription(<dungeontactics:terrible_feather>.withTag({ Quality: {}}),"Let the Attackens rise once more unto the earth. Created by combining angel feathers with runes of life and soul.");

mods.rockytweaks.Anvil.remove([<dungeontactics:terrible_feather>]);

recipes.addHiddenShaped("tickywicky", <dungeontactics:terrible_feather>.withTag({ Quality: {}}),[
[<endreborn:item_angel_feather>, <contenttweaker:life_rune>, <endreborn:item_angel_feather>],
[<endreborn:item_angel_feather>, <contenttweaker:soul_rune>, <endreborn:item_angel_feather>],
[<endreborn:item_angel_feather>, <contenttweaker:life_rune>, <endreborn:item_angel_feather>]
]);
