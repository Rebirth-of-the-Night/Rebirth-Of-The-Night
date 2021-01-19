import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;


//mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book.withTag({StoredEnchantments: [{lvl: 1 as short, id: 99 as short}]})");
recipes.remove(<msmlegacy:adminium_ark>);


mods.jei.JEI.removeAndHide(<msmlegacy:relic_infinity>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_keyblade>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_master>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_molten>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_pie>);

/////////////////////        Vampire Blade        /////////////////////

var silver = <ore:ingotSilver>;
var obsidian = <minecraft:obsidian>;
var heartcrystal = <scalinghealth:crystalshard>;
var handle = <spartanweaponry:material:0>;

recipes.remove(<msmlegacy:vampiric_blade>);
recipes.addShaped("Vampiric Blade", <msmlegacy:vampiric_blade>,[
	[null, silver, heartcrystal],
    [obsidian, heartcrystal, silver],
    [handle, obsidian, null]
]);

/////////////////////        Draconic Blade        /////////////////////
//replaced with dense redstone sword from Pyrotech

var steel = <ore:ingotSteel>;
var denseRedstone = <pyrotech:material:36>;
var gem = <ore:ingotableGem>;
var polishLapis = <betterwithmods:material:20>;

recipes.remove(<msmlegacy:draconic_blade>);
recipes.addShaped("Draconic Blade", <pyrotech:redstone_sword>.withTag({}),[
	[null, steel, denseRedstone],
    [polishLapis, gem, steel],
    [handle, polishLapis, null]
]);




////////////////////////////////////////    Relics        ///////////////////////////////////



/////////////////////        Heaven's Halberd        /////////////////////
mods.jei.JEI.removeAndHide(<spartanweaponry:dagger_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longsword_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:katana_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:saber_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:rapier_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:greatsword_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:hammer_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:warhammer_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:spear_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:pike_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:lance_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longbow_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_knife_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_axe_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:javelin_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:boomerang_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:battleaxe_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:mace_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:glaive_invar>);
mods.jei.JEI.removeAndHide(<spartanweaponry:staff_invar>);



var sange = <dungeontactics:mithril_sword>;
var talisman = <behgameon:accessory_4>;

recipes.remove(<spartanweaponry:halberd_invar>);
mods.betterwithmods.Anvil.addShaped(<spartanweaponry:halberd_invar>, 
[
   [null, null, null, null],
   [null, null, sange, null],
   [null, talisman, null, null],
   [null, null, null, null]
]);






/////////////////////        Red Hot Chili Pepper Sword        /////////////////////
<msmlegacy:relic_aqueous>.removeTooltip("Relic 1 of 7.");
<msmlegacy:relic_aqueous>.addTooltip(format.gold("Patreon relic 1 of 3."));



var ruby = <ore:gemRuby>;
var chili = <rustic:chili_pepper>;
var blaze = <betterwithmods:material:27>;

val enchantments1 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:scorn>, <enchantment:minecraft:fire_aspect>];

var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(1).makeTag();
enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:relic_aqueous>);
recipes.addShaped("Red Hot Chili Pepper Sword", <msmlegacy:relic_aqueous>.withTag(enchantmentMap1),[
	[null, blaze, ruby],
    [chili, ruby, blaze],
    [handle, chili, null]
]);



/////////////////////        Burning Super Death Sword        /////////////////////
<msmlegacy:relic_candy>.removeTooltip("Relic 2 of 7.");
<msmlegacy:relic_candy>.addTooltip(format.gold("Patreon relic 2 of 3."));


var sfs = <betterwithmods:material:14>;
var fiery = <twilightforest:fiery_ingot>;
var onyxrod = <simpleores:onyx_rod>;

val enchantmentsRelic2 as IEnchantmentDefinition[] = [<enchantment:minecraft:fire_aspect>];
var enchantmentRelicMap2 as IData = {};

enchantmentRelicMap2 += enchantmentsRelic2[0].makeEnchantment(2).makeTag();


recipes.remove(<msmlegacy:relic_candy>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:relic_candy>.withTag(enchantmentRelicMap2), 
[
   [null, ruby, ruby, onyxrod],
   [null, fiery, sfs, ruby],
   [fiery, sfs, fiery, ruby],
   [sfs, fiery, null, null]
]);

////////////////////////////////////////        Legendaries        ///////////////////////////////////
/////////////////////        Dark's Edge        /////////////////////

var covenant = <atop:topaz_sword>;
var convergence = <atop:amethyst_sword>;
var mythril_sword = <simpleores:mythril_sword>;
var viridium_sword = <simpleores:adamantium_sword>;
var biotite = <quark:biotite>;
var lormyte_crystal = <endreborn:item_lormyte_crystal>;


val enchantments3 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:decay>];
var enchantmentMap3 as IData = {};

enchantmentMap3 += enchantments3[0].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:wither_bane>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:wither_bane>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap3), 
[
   [biotite, lormyte_crystal, lormyte_crystal, biotite],
   [lormyte_crystal, covenant, mythril_sword, lormyte_crystal],
   [lormyte_crystal, viridium_sword, convergence, lormyte_crystal],
   [biotite, lormyte_crystal, lormyte_crystal, biotite]
]);




/////////////////////        Light's Edge        /////////////////////

var lightessence = <biomesoplenty:biome_essence>;

val enchantments4 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:sparks>, <enchantment:msmlegacy:ignite>];
var enchantmentMap4 as IData = {};

enchantmentMap4 += enchantments4[0].makeEnchantment(1).makeTag();
enchantmentMap4 += enchantments4[1].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:crystaline_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:crystaline_blade>.withTag(({"Quark:RuneColor": 4, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap4), 
[
   [biotite, lightessence, lightessence, biotite],
   [lightessence, covenant, mythril_sword, lightessence],
   [lightessence, viridium_sword, convergence, lightessence],
   [biotite, lightessence, lightessence, biotite]
]);




////////////////////////////////////////        Godly        ///////////////////////////////////
/////////////////////        True Dark's Edge        /////////////////////

var undyingheart = <mod_lavacow:undyingheart>;
var witherrose = <futuremc:wither_rose>;
var shulkerheart = <bountifulbaubles:trinketshulkerheart>;
var trollskull = <iceandfire:troll_skull>;
var brokenheart = <bountifulbaubles:trinketbrokenheart>;
var knighttrophy = <twilightforest:trophy:4>;
var darksedge = <msmlegacy:wither_bane>;
var heartofthefallen = <contenttweaker:heartofthefallen>;
var onyx = <ore:gemOnyx>;
var soulrune = <contenttweaker:soul_rune>;
var ravenfeather = <twilightforest:raven_feather>;

mods.betterwithmods.Anvil.addShaped(<contenttweaker:heartofthefallen>, 
[
   [shulkerheart, witherrose, witherrose, trollskull],
   [witherrose, undyingheart, undyingheart, witherrose],
   [witherrose, undyingheart, undyingheart, witherrose],
   [knighttrophy, witherrose, witherrose, brokenheart]
]);


val enchantments5 as IEnchantmentDefinition[] = [<enchantment:livingenchantment:enchantment.living>, <enchantment:msmlegacy:absorb>, <enchantment:msmlegacy:decay>, <enchantment:msmlegacy:vitality>, <enchantment:dungeontactics:runed>];
var enchantmentMap5 as IData = {};


var enchTag1 = enchantments5[0].makeEnchantment(1).makeTag().ench[0];
enchTag1 += {personalityName: "Unholy", personality: 0.13866483 as float, kills: 0, effectiveness: 1.00 as float, xp: 1};


enchantmentMap5 += {ench: [enchTag1]};
enchantmentMap5 += enchantments5[1].makeEnchantment(1).makeTag();
enchantmentMap5 += enchantments5[2].makeEnchantment(3).makeTag();
enchantmentMap5 += enchantments5[3].makeEnchantment(1).makeTag();
enchantmentMap5 += enchantments5[4].makeEnchantment(1).makeTag();

furnace.remove(<dungeontactics:silver_nugget>);
recipes.remove(<dungeontactics:silver_sword>);
mods.betterwithmods.Anvil.addShaped(<dungeontactics:silver_sword>.withTag(({"Quark:RuneColor": 14, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap5),
[
   [soulrune, onyx, onyx, soulrune],
   [onyx, ravenfeather, darksedge, onyx],
   [onyx, heartofthefallen, ravenfeather, onyx],
   [soulrune, onyx, onyx, soulrune]
]);




/////////////////////        True Light's Edge        /////////////////////

var shapedquartz = <arcanearchives:shaped_quartz>;
var cross = <bountifulbaubles:amuletcross>;
var pride = <bountifulbaubles:amuletsinpride>;
var victorymedal = <aether_legacy:victory_medal>;
var totemascending = <totemexpansion:totem_falling>;


mods.betterwithmods.Anvil.addShaped(<behgameon:accessory_49>, 
[
   [shapedquartz, shapedquartz, shapedquartz, shapedquartz],
   [shapedquartz, victorymedal, pride, shapedquartz],
   [shapedquartz, cross, totemascending, shapedquartz],
   [shapedquartz, shapedquartz, shapedquartz, shapedquartz]
]);


var heartofdiamond = <quark:diamond_heart>;
var dragonheart = <iceandfire:fire_dragon_heart>;
var aetheriumcore = <aether_legacy:aetherium_core>;
var fallenstar = <nyx:fallen_star>;
var fierytears = <twilightforest:fiery_tears>;
var heavensheart = <contenttweaker:heavensheart>;
var lightsedge = <msmlegacy:crystaline_blade>;
var divinity = <behgameon:accessory_49>;
var lamp = <twilightforest:lamp_of_cinders>;
var heartcontainer = <scalinghealth:heartcontainer>;


mods.betterwithmods.Anvil.addShaped(<contenttweaker:heavensheart>, 
[
   [divinity, aetheriumcore, aetheriumcore, lamp],
   [aetheriumcore, dragonheart, dragonheart, aetheriumcore],
   [aetheriumcore, dragonheart, dragonheart, aetheriumcore],
   [heartcontainer, aetheriumcore, aetheriumcore, heartofdiamond]
]);


val enchantments6 as IEnchantmentDefinition[] = [<enchantment:livingenchantment:enchantment.living>, <enchantment:msmlegacy:sparks>, <enchantment:msmlegacy:ignite>, <enchantment:msmlegacy:greed>, <enchantment:msmlegacy:wisdom>];
var enchantmentMap6 as IData = {};


var enchTag2 = enchantments6[0].makeEnchantment(1).makeTag().ench[0];
enchTag2 += {personalityName: "Divine", personality: 0.9898941 as float, kills: 0, effectiveness: 1.00 as float, xp: 1};


enchantmentMap6 += {ench: [enchTag2]};
enchantmentMap6 += enchantments6[1].makeEnchantment(1).makeTag();
enchantmentMap6 += enchantments6[2].makeEnchantment(3).makeTag();
enchantmentMap6 += enchantments6[3].makeEnchantment(1).makeTag();
enchantmentMap6 += enchantments6[4].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:dawn_star>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:dawn_star>.withTag(({"Quark:RuneColor": 4, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap6),
[
   [fallenstar, fallenstar, fallenstar, fallenstar],
   [fallenstar, fierytears, lightsedge, fallenstar],
   [fallenstar, heavensheart, fierytears, fallenstar],
   [fallenstar, fallenstar, fallenstar, fallenstar]
]);

// repair
mods.rockytweaks.Anvil.addRecipe(<msmlegacy:dawn_star>.anyDamage(), lightessence, <msmlegacy:crystaline_blade>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 999999));
});



/////////////////////        Sky Blade        /////////////////////

var vampire_blade = <aether_legacy:vampire_blade>;
var zanite_sword = <aether_legacy:zanite_sword>;
var flaming_sword = <aether_legacy:flaming_sword>;
var lightning_sword = <aether_legacy:lightning_sword>;
var holy_sword = <aether_legacy:holy_sword>;
var gravitite_sword = <aether_legacy:gravitite_sword>;
// var skyroot_sword = <aether_legacy:skyroot_sword>;
var skyroot_sword = <aether_legacy:skyroot_stick>; // Temp
var holystone_sword = <aether_legacy:holystone_sword>;

recipes.remove(<msmlegacy:aethers_guard>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:aethers_guard>, 
[
   [null, null, holy_sword, vampire_blade],
   [null, null, gravitite_sword, zanite_sword],
   [null, null, skyroot_sword, flaming_sword],
   [null, null, holystone_sword, lightning_sword]
]);


/////////////////////        Interdimensional Blade        /////////////////////

var amedian_sword = <netherex:frosted_amedian_sword>;
var end_sword = <endreborn:ender_sword>;
var aethers_guard = <msmlegacy:aethers_guard>;
var glass_sword = <twilightforest:glass_sword>;
var mythrilsword = <simpleores:mythril_sword>;
var worldmirror = <endreborn:item_world_mirror>;
var beingofentropy = <endreborn:death_essence>;
var advenderpearl = <endreborn:item_advanced_ender_pearl>;
var wormholepotion = <bountifulbaubles:potionwormhole>;
var respawnpotion = <bountifulbaubles:potionrecall>;


val enchantments7 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:decay>, <enchantment:msmlegacy:ender_pulse>, <enchantment:msmlegacy:ascension>, <enchantment:msmlegacy:descension>];

var enchantmentMap7 as IData = {};

enchantmentMap7 += enchantments7[0].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[1].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[2].makeEnchantment(1).makeTag();
enchantmentMap7 += enchantments7[3].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:eye_end_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:eye_end_blade>.withTag(({"Quark:RuneColor": 5, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap7),
[
   [end_sword, beingofentropy, aethers_guard, convergence],
   [wormholepotion, advenderpearl, advenderpearl, respawnpotion],
   [wormholepotion, advenderpearl, advenderpearl, respawnpotion],
   [covenant, mythrilsword, beingofentropy, glass_sword]
]);










var ice_dragonsteel_sword = <iceandfire:dragonsteel_ice_sword>;
var fire_dragonsteel_sword = <iceandfire:dragonsteel_fire_sword>;
var dragonsteel_fire = <iceandfire:dragonsteel_fire_ingot>;
var dragonsteel_ice = <iceandfire:dragonsteel_ice_ingot>;

val enchantments8 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:frozen_aspect>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:knockback>, <enchantment:msmlegacy:frost_wave>];

var enchantmentMap8 as IData = {};

enchantmentMap8 += enchantments8[0].makeEnchantment(3).makeTag();
enchantmentMap8 += enchantments8[1].makeEnchantment(2).makeTag();
enchantmentMap8 += enchantments8[2].makeEnchantment(2).makeTag();
enchantmentMap8 += enchantments8[3].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:glacial_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:glacial_blade>.withTag(({"Quark:RuneColor": 0, "Quark:RuneAttached": 1 as byte} as IData) + enchantmentMap8), 
[
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, ice_dragonsteel_sword, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, fire_dragonsteel_sword, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice]
]);