import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;


//mods.ltt.LootTable.removeGlobalItem("minecraft:enchanted_book.withTag({StoredEnchantments: [{lvl: 1 as short, id: 99 as short}]})");

mods.jei.JEI.removeAndHide(<msmlegacy:relic_infinity>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_keyblade>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_master>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_molten>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_pie>);


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

var iron = <minecraft:iron_ingot>;
var redstone = <minecraft:redstone>;
var diamond = <minecraft:diamond>;
var lapis = <minecraft:dye:4>;

recipes.remove(<msmlegacy:draconic_blade>);
recipes.addShaped("Draconic Blade", <msmlegacy:draconic_blade>,[
	[null, iron, redstone],
    [lapis, diamond, iron],
    [handle, lapis, null]
]);




////////////////////////////////////////    Relics        ///////////////////////////////////
var ruby = <biomesoplenty:gem:1>;
var chili = <harvestcraft:chilipepperitem>;
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
var onyx_sword = <simpleores:onyx_sword>;
var mythril_sword = <simpleores:mythril_sword>;
var viridium_sword = <simpleores:adamantium_sword>;
var diamond_sword = <minecraft:diamond_sword>;
var biotite = <quark:biotite>;

val enchantments3 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:consuming_shadows>];

var enchantmentMap3 as IData = {};

enchantmentMap3 += enchantments3[0].makeEnchantment(1).makeTag();


recipes.remove(<msmlegacy:wither_bane>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:wither_bane>.withTag(enchantmentMap3), 
[
   [biotite, biotite, biotite, biotite],
   [biotite, onyx_sword, mythril_sword, biotite],
   [biotite, viridium_sword, diamond_sword, biotite],
   [biotite, biotite, biotite, biotite]
]);





var lightessence = <biomesoplenty:biome_essence>;

val enchantments4 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:sparks>];

var enchantmentMap4 as IData = {};

enchantmentMap4 += enchantments4[0].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:crystaline_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:crystaline_blade>.withTag(enchantmentMap4), 
[
   [lightessence, lightessence, lightessence, lightessence],
   [lightessence, onyx_sword, mythril_sword, lightessence],
   [lightessence, viridium_sword, diamond_sword, lightessence],
   [lightessence, lightessence, lightessence, lightessence]
]);




////////////////////////////////////////        Godly        ///////////////////////////////////

var undyingheart = <mod_lavacow:undyingheart>;
var witherrose = <minecraftfuture:flowerblack>;
var shulkerheart = <bountifulbaubles:trinketshulkerheart>;
var trollskull = <iceandfire:troll_skull>;
var brokenheart = <bountifulbaubles:trinketbrokenheart>;
var hirschgeistskull = <betteranimalsplus:hirschgeistskull_1>;
var darksedge = <msmlegacy:wither_bane>;
var heartofthefallen = <contenttweaker:heartofthefallen>;
var onyx = <simpleores:onyx_gem>;
var cometshard = <nyx:comet_shard>;
var ravenfeather = <twilightforest:raven_feather>;

mods.betterwithmods.Anvil.addShaped(<contenttweaker:heartofthefallen>, 
[
   [shulkerheart, witherrose, witherrose, trollskull],
   [witherrose, undyingheart, undyingheart, witherrose],
   [witherrose, undyingheart, undyingheart, witherrose],
   [hirschgeistskull, witherrose, witherrose, brokenheart]
]);


recipes.remove(<dungeontactics:silver_sword>);
mods.betterwithmods.Anvil.addShaped(<dungeontactics:silver_sword>.withTag({ench: [{personalityName: "Unholy", kills: 0, effectiveness: 1.00 as float, personality: 0.13866483 as float, xp: 1, lvl: 1 as short, id: 78 as short}, {lvl: 1 as short, id: 96 as short}, {lvl: 3 as short, id: 95 as short}, {lvl: 1 as short, id: 146 as short}, {lvl: 1 as short, id: 140 as short}]}), 
[
   [cometshard, onyx, onyx, cometshard],
   [onyx, ravenfeather, darksedge, onyx],
   [onyx, heartofthefallen, ravenfeather, onyx],
   [cometshard, onyx, onyx, cometshard]
]);






var heartofdiamond = <quark:diamond_heart>;
var victorymedal = <aether_legacy:victory_medal>;
var healingstone = <aether_legacy:healing_stone>;
var fallenstar = <nyx:fallen_star>;
var fierytears = <twilightforest:fiery_tears>;
var heavensheart = <contenttweaker:heavensheart>;
var lightsedge = <msmlegacy:crystaline_blade>;

mods.betterwithmods.Anvil.addShaped(<contenttweaker:heavensheart>, 
[
   [healingstone, victorymedal, victorymedal, healingstone],
   [victorymedal, heartofdiamond, heartofdiamond, victorymedal],
   [victorymedal, heartofdiamond, heartofdiamond, victorymedal],
   [healingstone, victorymedal, victorymedal, healingstone]
]);

recipes.remove(<msmlegacy:dawn_star>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:dawn_star>.withTag({ench: [{personalityName: "Divine", personality: 0.9898941 as float, lvl: 1 as short, kills: 0, effectiveness: 1.00 as float, xp: 1, id: 78 as short}, {lvl: 1 as short, id: 80 as short}, {lvl: 3 as short, id: 79 as short}]}), 
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




var vampire_blade = <aether_legacy:vampire_blade>;
var zanite_sword = <aether_legacy:zanite_sword>;
var flaming_sword = <aether_legacy:flaming_sword>;
var lightning_sword = <aether_legacy:lightning_sword>;
var holy_sword = <aether_legacy:holy_sword>;
var gravitite_sword = <aether_legacy:gravitite_sword>;
var skyroot_sword = <aether_legacy:skyroot_sword>;
var holystone_sword = <aether_legacy:holystone_sword>;

recipes.remove(<msmlegacy:aethers_guard>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:aethers_guard>, 
[
   [null, null, holy_sword, vampire_blade],
   [null, null, gravitite_sword, zanite_sword],
   [null, null, skyroot_sword, flaming_sword],
   [null, null, holystone_sword, lightning_sword]
]);



var amedian_sword = <netherex:frosted_amedian_sword>;
var end_sword = <endreborn:ender_sword>;
var aethers_guard = <msmlegacy:aethers_guard>;
var glass_sword = <twilightforest:glass_sword>;

val enchantments2 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:decay>, <enchantment:msmlegacy:ender_pulse>, <enchantment:msmlegacy:ascension>, <enchantment:msmlegacy:descension>];

var enchantmentMap2 as IData = {};

enchantmentMap2 += enchantments2[0].makeEnchantment(1).makeTag();
enchantmentMap2 += enchantments2[1].makeEnchantment(1).makeTag();
enchantmentMap2 += enchantments2[2].makeEnchantment(1).makeTag();
enchantmentMap2 += enchantments2[3].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:eye_end_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:eye_end_blade>.withTag(enchantmentMap2), 
[
   [null, null, null, amedian_sword],
   [null, null, null, end_sword],
   [null, null, null, aethers_guard],
   [null, null, null, glass_sword]
]);











var ice_dragonsteel_sword = <iceandfire:dragonsteel_ice_sword>;
var fire_dragonsteel_sword = <iceandfire:dragonsteel_fire_sword>;
var dragonsteel_fire = <iceandfire:dragonsteel_fire_ingot>;
var dragonsteel_ice = <iceandfire:dragonsteel_ice_ingot>;

val enchantments5 as IEnchantmentDefinition[] = [<enchantment:msmlegacy:frozen_aspect>, <enchantment:minecraft:fire_aspect>, <enchantment:minecraft:knockback>, <enchantment:msmlegacy:frost_wave>];

var enchantmentMap5 as IData = {};

enchantmentMap5 += enchantments5[0].makeEnchantment(3).makeTag();
enchantmentMap5 += enchantments5[1].makeEnchantment(2).makeTag();
enchantmentMap5 += enchantments5[2].makeEnchantment(2).makeTag();
enchantmentMap5 += enchantments5[3].makeEnchantment(1).makeTag();

recipes.remove(<msmlegacy:glacial_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:glacial_blade>.withTag(enchantmentMap5), 
[
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, ice_dragonsteel_sword, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, fire_dragonsteel_sword, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice]
]);