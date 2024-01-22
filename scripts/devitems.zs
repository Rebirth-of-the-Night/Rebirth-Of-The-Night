import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rockytweaks.Anvil;
import crafttweaker.data.IData;
import crafttweaker.enchantments.IEnchantmentDefinition;
import mods.ctutils.utils.Math;
import mods.contenttweaker.Commands;




// cutcat
JEI.addDescription([<dungeontactics:steel_sword>],['A sword imbued with the power of cat girls, pastel colors, pickles, and head pats. Lovingly referred to by its creator as "Sword of Gay."']);

<dungeontactics:steel_sword>.addTooltip(format.aqua("+9999 validity to wielder"));
<dungeontactics:steel_sword>.addTooltip(format.darkBlue("Developer Relic 5/6"));

mods.betterwithmods.Anvil.addShaped(<dungeontactics:steel_sword>, 
[
    [null, null, <ore:gemDiamond>, <quark:rune:16>],
    [null, <ore:ingotSilver>, <minecraft:dye:9>, <ore:gemDiamond>],
    [<ore:gemDiamond>, <minecraft:dye:9>, <ore:ingotSilver>, null],
    [<ore:gemDiamond>, <ore:gemDiamond>, null, null ]
]);

// CalaMariGold
<contenttweaker:calamarigold>.displayName = "§dCalaMariGold マリ";
JEI.addDescription([<contenttweaker:calamarigold>],["Mari has a cheerful personality and makes many jokes. She always keeps her chin up when faced with hardship so as not to burden others, and is ready to try her hand at anything. Mari speaks with an accent, and she has a high, cheerful voice. Mari speaks Japanese but often inserts English words into her sentences. She is so excited to be with you <3"]);

<contenttweaker:calamarigold>.addTooltip(format.aqua('"Right-click me! I have a surprise for you!"'));
<contenttweaker:calamarigold>.addTooltip(format.darkBlue("Developer Relic 1/6"));

recipes.addHiddenShapeless("CalaMariGold", <contenttweaker:calamarigold>,
	[<harvestcraft:calamarirawitem>,<minecraft:yellow_flower>]);

static mari as IItemStack = <contenttweaker:calamarigold>;

function pickRandomCatchPhase() as string {
    var catchPhrases = [
    "Ohh! Pretty bomber head!!",
    "Let's cooking!",
    "Unbelievable...",
    "Tower? Tree? Hills?",
    "SHUT UUUUUUUUP!",
    "Of course!!",
    "Sorry! I can't speak Japanese!",
    "Oh! Yes!",
    "YAY!!!!",
    "Nice ball!",
    "Great!",
    "Ohhh! Good!!",
    "Thank you!",
    "So... bad...",
    "It's joke...",
    "Whoops.",
    "Yes... Last chance.",
    "A-alright.",
    "Oh my gah. Oh my gah. OH MY GAAAAAAAAH!",
    "Hello, everybody!",
    "It's miracle!",
    "Shiny... Complete!",
    "Second season start desu!!",
    "So happy!!",
    "Smell poo-poo shit FIREEEEEEE!",
    "Aqours breakthrough!",
    "New Aqours wave!",
    "Last time ON Love Live! Sunshine!!",
    "Let's go!!!",
    "Shiny... SHIIIIIIIIIIIIIINY!",
    "Shining Premium desu!!!",
    "Mari's Shining..... TORNAAAAADOOOO!!",
    "Okay! Let's go together!",
    "Ouch!",
    "Ohh! Funny!",
    "Ohh! Stong heart!",
    "Happy!",
    "Very hard-head.",
    "One, two, three, four!"] as string[];
    val index = Math.floor(Math.random() * catchPhrases.length);
    return catchPhrases[index];
}


events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){
    if(event.world.isRemote()){
        return;
    }
    
    val itemStack1 = event.item as IItemStack; 
    if(!isNull(itemStack1)){
        if (mari.matches(itemStack1)) {  
            if(isNull(event.player.data.mariFirstTimeClick)){
                Commands.call("playsound customdisc:itsjoke ambient @p ~ ~ ~", event.player, event.world, true, true);
                server.commandManager.executeCommand(server, "tellraw @p [\"\",{\"text\":\"It's Joke!\",\"color\":\"light_purple\"}]");
                Commands.call("summon zombie_players:zombie_player ~ ~ ~ {playerName:CalaMariGold}", event.player, event.world, true, true);
                Commands.call("summon zombie_players:zombie_player ~ ~ ~ {playerName:CalaMariGold}", event.player, event.world, true, true);
                Commands.call("summon zombie_players:zombie_player ~ ~ ~ {playerName:CalaMariGold}", event.player, event.world, true, true);
                Commands.call("summon zombie_players:zombie_player ~ ~ ~ {playerName:CalaMariGold}", event.player, event.world, true, true);
                Commands.call("summon zombie_players:zombie_player ~ ~ ~ {playerName:CalaMariGold}", event.player, event.world, true, true);
                event.player.update({mariFirstTimeClick: true});
            }
            else{
                Commands.call("playsound customdisc:squeak ambient @p ~ ~ ~ 0.1", event.player, event.world, true, true);
                var catchPhase as string = pickRandomCatchPhase();
                server.commandManager.executeCommand(server, "tellraw @p [\"\",{\"text\":\"" + catchPhase + "\",\"color\":\"light_purple\"}]");
                
            }
        }
    }
});

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
[<contenttweaker:kompy_essence>,<contenttweaker:vis_shard>,<contenttweaker:kompy_kott>],
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

//Dev armor
JEI.addDescription(<betterwithmods:wool_helmet>,"Has a 10% chance to drop from bosses and minibosses! Craft with tanned cut leather to get a blank developer helmet, or recycle it into cut leather.");
JEI.addDescription(<betterwithmods:wool_chest>,"Has a 10% chance to drop from bosses and minibosses! Craft with tanned cut leather to get a blank developer chestplate, or recycle it into cut leather.");
JEI.addDescription(<betterwithmods:wool_pants>,"Has a 10% chance to drop from bosses and minibosses! Craft with tanned cut leather to get blank developer leggings, or recycle it into cut leather.");
JEI.addDescription(<betterwithmods:wool_boots>,"Has a 10% chance to drop from bosses and minibosses! Craft with tanned cut leather to get blank developer boots, or recycle it into cut leather.");
<betterwithmods:wool_helmet>.addTooltip(format.red("Has a 10% chance to drop from bosses and minibosses!"));
<betterwithmods:wool_chest>.addTooltip(format.red("Has a 10% chance to drop from bosses and minibosses!"));
<betterwithmods:wool_pants>.addTooltip(format.red("Has a 10% chance to drop from bosses and minibosses!"));
<betterwithmods:wool_boots>.addTooltip(format.red("Has a 10% chance to drop from bosses and minibosses!"));

recipes.addShapeless("recycle_devhelm",<betterwithmods:material:31>,[<betterwithmods:wool_helmet>.anyDamage()]);
recipes.addShapeless("recycle_devchest",<betterwithmods:material:31>,[<betterwithmods:wool_chest>.anyDamage()]);
recipes.addShapeless("recycle_devlegs",<betterwithmods:material:31>,[<betterwithmods:wool_pants>.anyDamage()]);
recipes.addShapeless("recycle_devboots",<betterwithmods:material:31>,[<betterwithmods:wool_boots>.anyDamage()]);

recipes.addShapeless("devhelm",<minecraft:chainmail_helmet>.withTag({display: {Lore: ["Rename to a developer's IGN to get their headwear item!"], Name: "Developer Helmet"}}),[<betterwithmods:wool_helmet>.anyDamage(),<betterwithmods:material:32>]);
recipes.addShapeless("devchest",<minecraft:chainmail_chestplate>.withTag({display: {Lore: ["Rename to a developer's IGN to get their bodywear item!"], Name: "Developer Chestplate"}}),[<betterwithmods:wool_chest>.anyDamage(),<betterwithmods:material:32>]);
recipes.addShapeless("devlegs",<minecraft:chainmail_leggings>.withTag({display: {Lore: ["Rename to a developer's IGN to get their legwear item!"], Name: "Developer Leggings"}}),[<betterwithmods:wool_pants>.anyDamage(),<betterwithmods:material:32>]);
recipes.addShapeless("devboots",<minecraft:chainmail_boots>.withTag({display: {Lore: ["Rename to a developer's IGN to get their footwear item!"], Name: "Developer Boots"}}),[<betterwithmods:wool_boots>.anyDamage(),<betterwithmods:material:32>]);

<minecraft:chainmail_helmet:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their headwear item!"], Name: "Foreck"}}).addTooltip(format.aqua("No way! I want something cooler."));
<minecraft:chainmail_chestplate:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their bodywear item!"], Name: "Foreck"}}).addTooltip(format.aqua("Just don't say you're going to the moon, okay?!"));
<minecraft:chainmail_leggings:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their legwear item!"], Name: "Foreck"}}).addTooltip(format.aqua("The past me... so stupid, so pathetic, so foolish..."));
<minecraft:chainmail_boots:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their footwear item!"], Name: "Foreck"}}).addTooltip(format.aqua("Once I crush all gems into dust, I can be free."));

<minecraft:chainmail_helmet:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their headwear item!"], Name: "TheNelston"}}).addTooltip(format.gold("WARNING: Severe brain damage detected."));
<minecraft:chainmail_chestplate:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their bodywear item!"], Name: "TheNelston"}}).addTooltip(format.gold("Hello everyone, this is TheNelston, welcome back to another video..."));
<minecraft:chainmail_leggings:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their legwear item!"], Name: "TheNelston"}}).addTooltip(format.gold("Why is there a brown stain on the back?"));
<minecraft:chainmail_boots:*>.withTag({display: {Lore: ["Rename to a developer's IGN to get their footwear item!"], Name: "TheNelston"}}).addTooltip(format.gold("This the trap game Abraham Lincoln Four score and 16 bars ago"));