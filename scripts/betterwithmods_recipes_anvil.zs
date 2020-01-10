import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);



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

recipes.remove(<msmlegacy:eye_end_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:eye_end_blade>.withTag({ench: [{lvl: 1 as short, id: 97 as short}, {lvl: 1 as short, id: 89 as short}, {lvl: 1 as short, id: 95 as short}, {lvl: 1 as short, id: 96 as short}]}), 
[
   [null, null, null, amedian_sword],
   [null, null, null, end_sword],
   [null, null, null, aethers_guard],
   [null, null, null, glass_sword]
]);




var onyx_sword = <simpleores:onyx_sword>;
var mythril_sword = <simpleores:mythril_sword>;
var viridium_sword = <simpleores:adamantium_sword>;
var diamond_sword = <minecraft:diamond_sword>;
var biotite = <quark:biotite>;

recipes.remove(<msmlegacy:dawn_star>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:dawn_star>.withTag({ench: [{lvl: 1 as short, id: 98 as short}, {lvl: 3 as short, id: 97 as short}]}), 
[
   [biotite, biotite, biotite, biotite],
   [biotite, onyx_sword, mythril_sword, biotite],
   [biotite, viridium_sword, diamond_sword, biotite],
   [biotite, biotite, biotite, biotite]
]);



var lightessence = <biomesoplenty:biome_essence>;

recipes.remove(<msmlegacy:crystaline_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:crystaline_blade>.withTag({ench: [{lvl: 1 as short, id: 82 as short}, {lvl: 3 as short, id: 81 as short}]}), 
[
   [lightessence, lightessence, lightessence, lightessence],
   [lightessence, onyx_sword, mythril_sword, lightessence],
   [lightessence, viridium_sword, diamond_sword, lightessence],
   [lightessence, lightessence, lightessence, lightessence]
]);




var ice_dragonsteel_sword = <iceandfire:dragonsteel_ice_sword>;
var fire_dragonsteel_sword = <iceandfire:dragonsteel_fire_sword>;
var dragonsteel_fire = <iceandfire:dragonsteel_fire_ingot>;
var dragonsteel_ice = <iceandfire:dragonsteel_ice_ingot>;

recipes.remove(<msmlegacy:glacial_blade>);
mods.betterwithmods.Anvil.addShaped(<msmlegacy:glacial_blade>.withTag({ench: [{lvl: 3 as short, id: 93 as short}, {lvl: 2 as short, id: 20 as short}, {lvl: 2 as short, id: 19 as short}, {lvl: 1 as short, id: 94 as short}]}), 
[
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, ice_dragonsteel_sword, dragonsteel_ice, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, fire_dragonsteel_sword, dragonsteel_ice],
   [dragonsteel_fire, dragonsteel_fire, dragonsteel_ice, dragonsteel_ice]
]);