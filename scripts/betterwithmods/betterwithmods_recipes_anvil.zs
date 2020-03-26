import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);


// Heart of diamond
mods.betterwithmods.Anvil.addShaped(<quark:diamond_heart>, 
[
   [<bountifulbaubles:spectralsilt>, <arcanearchives:shaped_quartz>, <bountifulbaubles:spectralsilt>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <minecraft:diamond>, <minecraft:diamond>, <bountifulbaubles:spectralsilt>],
   [<bountifulbaubles:spectralsilt>, <minecraft:diamond>, <minecraft:diamond>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <bountifulbaubles:spectralsilt>, <arcanearchives:shaped_quartz>, <bountifulbaubles:spectralsilt>]
]);

// Pipes
val paneGlass = <ore:paneGlass>;
paneGlass.addItems([<betternether:quartz_glass_pane>, <betternether:quartz_glass_framed_pane>,<netherex:soul_glass_pane>,<quark:framed_glass_pane>]);

for item in paneGlass.items{
   mods.betterwithmods.Anvil.addShaped(<quark:pipe> * 12, 
   [
      [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
      [<simpleores:copper_ingot>, item, item, <simpleores:copper_ingot>],
      [<simpleores:copper_ingot>, item, item, <simpleores:copper_ingot>],
      [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null]
   ]);
}

// Sledgehammer
recipes.remove(<pyrotech:diamond_hammer>);
mods.betterwithmods.Anvil.addShaped(<pyrotech:diamond_hammer>, #Refined Sledgehammer
[
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>],
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [null, null, null, null]
]);

// Arrows
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow>, #Greatarrow
[
   [null, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [null, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow_destruction>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow_destruction>, #Destructive Greatarrow
[
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow_lightning>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow_lightning>, #Lightning Greatarrow
[
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);

// Spartan Compat
var blaze = <minecraft:blaze_rod>;
var viridium = <simpleores:adamantium_ingot>;
var mythril = <simpleores:mythril_ingot>;
var onyx = <simpleores:onyx_gem>;
var fire_dragonsteel = <iceandfire:dragonsteel_fire_ingot>;
var ice_dragonsteel = <iceandfire:dragonsteel_ice_ingot>;
var wbone = <spartanfire:witherbone_handle>;
var hfiber = <betterwithmods:material:3>;

// Viridium

recipes.remove(<spartancompat:dagger_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:dagger_adamantium>, 
[
   [viridium, blaze, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:saber_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:saber_adamantium>, 
[
   [null, null, null, viridium],
   [viridium, viridium, viridium, blaze],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:spear_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:spear_adamantium>, 
[
   [viridium, viridium, blaze, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:katana_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:katana_adamantium>, 
[
   [null, null, null, blaze],
   [null, null, viridium, null],
   [null, viridium, null, null],
   [viridium, null, null, null]
]);

recipes.remove(<spartancompat:throwing_knife_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:throwing_knife_adamantium>, 
[
   [viridium, null, null, null],
   [blaze, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:staff_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:staff_adamantium>, 
[
   [null, null, null, null],
   [viridium, blaze, blaze, viridium],
   [null, null, null, null],
   [null, null, null, null]
]);


// Mythril

recipes.remove(<spartancompat:lance_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:lance_mythril>, 
[
   [null, null, mythril, blaze],
   [null, null, blaze, mythril],
   [null, blaze, null, null],
   [mythril, null, null, null]
]);

recipes.remove(<spartancompat:longsword_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:longsword_mythril>, 
[
   [null, null, null, mythril],
   [mythril, mythril, mythril, blaze],
   [null, null, null, mythril],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:rapier_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:rapier_mythril>, 
[
   [null, null, mythril, blaze],
   [null, null, mythril, mythril],
   [null, mythril, null, null],
   [mythril, null, null, null]
]);

recipes.remove(<spartancompat:javelin_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:javelin_mythril>, 
[
   [mythril, mythril, blaze, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:boomerang_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:boomerang_mythril>, 
[
   [mythril, blaze, blaze, null],
   [blaze, null, null, null],
   [blaze, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:mace_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:mace_mythril>, 
[
   [null, null, null, blaze],
   [mythril, mythril, blaze, null],
   [mythril, blaze, mythril, null],
   [mythril, mythril, mythril, null]
]);

recipes.remove(<spartancompat:glaive_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:glaive_mythril>, 
[
   [null, mythril, null, blaze],
   [null, null, blaze, null],
   [mythril, blaze, null, null],
   [mythril, mythril, null, null]
]);


// Onyx

recipes.remove(<spartancompat:halberd_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:halberd_onyx>, 
[
   [null, null, null, onyx],
   [null, onyx, blaze, null],
   [onyx, blaze, null, null],
   [onyx, null, null, null]
]);

recipes.remove(<spartancompat:greatsword_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:greatsword_onyx>, 
[
   [null, onyx, onyx, onyx],
   [onyx, onyx, onyx, blaze],
   [null, onyx, onyx, onyx],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:hammer_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:hammer_onyx>, 
[
   [onyx, onyx, null, null],
   [onyx, onyx, blaze, blaze],
   [onyx, onyx, blaze, blaze],
   [onyx, onyx, null, null]
]);

recipes.remove(<spartancompat:warhammer_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:warhammer_onyx>, 
[
   [null, null, null, null],
   [onyx, onyx, null, null],
   [onyx, onyx, blaze, blaze],
   [onyx, onyx, null, null]
]);

recipes.remove(<spartancompat:pike_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:pike_onyx>, 
[
   [null, null, null, null],
   [null, null, null, null],
   [onyx, onyx, blaze, blaze],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:throwing_axe_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:throwing_axe_onyx>, 
[
   [null, null, onyx, blaze],
   [null, null, onyx, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartancompat:battleaxe_onyx>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:battleaxe_onyx>, 
[
   [onyx, onyx, onyx, null],
   [null, onyx, blaze, blaze],
   [null, onyx, null, null],
   [onyx, onyx, onyx, null]
]);

// Fire Dragonsteel

recipes.remove(<spartanfire:battleaxe_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:battleaxe_fire_dragonsteel>, 
[
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, null],
   [null, fire_dragonsteel, wbone, wbone],
   [null, fire_dragonsteel, null, null],
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, null]
]);

recipes.remove(<spartanfire:lance_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:lance_fire_dragonsteel>, 
[
   [null, null, fire_dragonsteel, wbone],
   [null, null, wbone, fire_dragonsteel],
   [null, wbone, null, null],
   [fire_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:dagger_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:dagger_fire_dragonsteel>, 
[
   [fire_dragonsteel, wbone, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:saber_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:saber_fire_dragonsteel>, 
[
   [null, null, null, fire_dragonsteel],
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, wbone],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:spear_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:spear_fire_dragonsteel>, 
[
   [fire_dragonsteel, fire_dragonsteel, wbone, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:katana_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:katana_fire_dragonsteel>, 
[
   [null, null, null, wbone],
   [null, null, fire_dragonsteel, null],
   [null, fire_dragonsteel, null, null],
   [fire_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:throwing_knife_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:throwing_knife_fire_dragonsteel>, 
[
   [fire_dragonsteel, wbone, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:staff_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:staff_fire_dragonsteel>, 
[
   [null, null, null, null],
   [fire_dragonsteel, wbone, wbone, fire_dragonsteel],
   [null, null, null, null],
   [null, null, null, null]
]);



recipes.remove(<spartanfire:longsword_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:longsword_fire_dragonsteel>, 
[
   [null, null, null, fire_dragonsteel],
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, wbone],
   [null, null, null, fire_dragonsteel],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:rapier_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:rapier_fire_dragonsteel>, 
[
   [null, null, fire_dragonsteel, wbone],
   [null, null, fire_dragonsteel, fire_dragonsteel],
   [null, fire_dragonsteel, null, null],
   [fire_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:javelin_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:javelin_fire_dragonsteel>, 
[
   [fire_dragonsteel, fire_dragonsteel, wbone, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:boomerang_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:boomerang_fire_dragonsteel>, 
[
   [null, null, null, null],
   [wbone, null, null, null],
   [wbone, null, null, null],
   [fire_dragonsteel, wbone, wbone, null]
]);

recipes.remove(<spartanfire:mace_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:mace_fire_dragonsteel>, 
[
   [null, null, null, wbone],
   [fire_dragonsteel, fire_dragonsteel, wbone, null],
   [fire_dragonsteel, wbone, fire_dragonsteel, null],
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, null]
]);

recipes.remove(<spartanfire:glaive_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:glaive_fire_dragonsteel>, 
[
   [null, fire_dragonsteel, null, wbone],
   [null, null, wbone, null],
   [fire_dragonsteel, wbone, null, null],
   [fire_dragonsteel, fire_dragonsteel, null, null]
]);



recipes.remove(<spartanfire:halberd_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:halberd_fire_dragonsteel>, 
[
   [null, null, null, fire_dragonsteel],
   [null, fire_dragonsteel, wbone, null],
   [fire_dragonsteel, wbone, null, null],
   [fire_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:greatsword_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:greatsword_fire_dragonsteel>, 
[
   [null, fire_dragonsteel, fire_dragonsteel, fire_dragonsteel],
   [fire_dragonsteel, fire_dragonsteel, fire_dragonsteel, wbone],
   [null, fire_dragonsteel, fire_dragonsteel, fire_dragonsteel],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:hammer_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:hammer_fire_dragonsteel>, 
[
   [fire_dragonsteel, fire_dragonsteel, null, null],
   [fire_dragonsteel, fire_dragonsteel, wbone, wbone],
   [fire_dragonsteel, fire_dragonsteel, wbone, wbone],
   [fire_dragonsteel, fire_dragonsteel, null, null]
]);

recipes.remove(<spartanfire:warhammer_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:warhammer_fire_dragonsteel>, 
[
   [null, null, null, null],
   [fire_dragonsteel, fire_dragonsteel, null, null],
   [fire_dragonsteel, fire_dragonsteel, wbone, wbone],
   [fire_dragonsteel, fire_dragonsteel, null, null]
]);

recipes.remove(<spartanfire:pike_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:pike_fire_dragonsteel>, 
[
   [null, null, null, null],
   [null, null, null, null],
   [fire_dragonsteel, fire_dragonsteel, wbone, wbone],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:throwing_axe_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:throwing_axe_fire_dragonsteel>, 
[
   [null, null, fire_dragonsteel, wbone],
   [null, null, fire_dragonsteel, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:longbow_fire_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:longbow_fire_dragonsteel>, 
[
   [wbone, wbone, fire_dragonsteel, fire_dragonsteel],
   [wbone, null, null, hfiber],
   [fire_dragonsteel, null, null, hfiber],
   [fire_dragonsteel, hfiber, hfiber, null]
]);

// Ice Dragonsteel

recipes.remove(<spartanfire:battleaxe_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:battleaxe_ice_dragonsteel>, 
[
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, null],
   [null, ice_dragonsteel, wbone, wbone],
   [null, ice_dragonsteel, null, null],
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, null]
]);

recipes.remove(<spartanfire:lance_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:lance_ice_dragonsteel>, 
[
   [null, null, ice_dragonsteel, wbone],
   [null, null, wbone, ice_dragonsteel],
   [null, wbone, null, null],
   [ice_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:dagger_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:dagger_ice_dragonsteel>, 
[
   [ice_dragonsteel, wbone, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:saber_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:saber_ice_dragonsteel>, 
[
   [null, null, null, ice_dragonsteel],
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, wbone],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:spear_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:spear_ice_dragonsteel>, 
[
   [ice_dragonsteel, ice_dragonsteel, wbone, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:katana_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:katana_ice_dragonsteel>, 
[
   [null, null, null, wbone],
   [null, null, ice_dragonsteel, null],
   [null, ice_dragonsteel, null, null],
   [ice_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:throwing_knife_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:throwing_knife_ice_dragonsteel>, 
[
   [ice_dragonsteel, wbone, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:staff_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:staff_ice_dragonsteel>, 
[
   [null, null, null, null],
   [ice_dragonsteel, wbone, wbone, ice_dragonsteel],
   [null, null, null, null],
   [null, null, null, null]
]);



recipes.remove(<spartanfire:longsword_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:longsword_ice_dragonsteel>, 
[
   [null, null, null, ice_dragonsteel],
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, wbone],
   [null, null, null, ice_dragonsteel],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:rapier_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:rapier_ice_dragonsteel>, 
[
   [null, null, ice_dragonsteel, wbone],
   [null, null, ice_dragonsteel, ice_dragonsteel],
   [null, ice_dragonsteel, null, null],
   [ice_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:javelin_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:javelin_ice_dragonsteel>, 
[
   [ice_dragonsteel, ice_dragonsteel, wbone, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:boomerang_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:boomerang_ice_dragonsteel>, 
[
   [null, null, null, null],
   [wbone, null, null, null],
   [wbone, null, null, null],
   [ice_dragonsteel, wbone, wbone, null]
]);

recipes.remove(<spartanfire:mace_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:mace_ice_dragonsteel>, 
[
   [null, null, null, wbone],
   [ice_dragonsteel, ice_dragonsteel, wbone, null],
   [ice_dragonsteel, wbone, ice_dragonsteel, null],
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, null]
]);

recipes.remove(<spartanfire:glaive_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:glaive_ice_dragonsteel>, 
[
   [null, ice_dragonsteel, null, wbone],
   [null, null, wbone, null],
   [ice_dragonsteel, wbone, null, null],
   [ice_dragonsteel, ice_dragonsteel, null, null]
]);



recipes.remove(<spartanfire:halberd_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:halberd_ice_dragonsteel>, 
[
   [null, null, null, ice_dragonsteel],
   [null, ice_dragonsteel, wbone, null],
   [ice_dragonsteel, wbone, null, null],
   [ice_dragonsteel, null, null, null]
]);

recipes.remove(<spartanfire:greatsword_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:greatsword_ice_dragonsteel>, 
[
   [null, ice_dragonsteel, ice_dragonsteel, ice_dragonsteel],
   [ice_dragonsteel, ice_dragonsteel, ice_dragonsteel, wbone],
   [null, ice_dragonsteel, ice_dragonsteel, ice_dragonsteel],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:hammer_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:hammer_ice_dragonsteel>, 
[
   [ice_dragonsteel, ice_dragonsteel, null, null],
   [ice_dragonsteel, ice_dragonsteel, wbone, wbone],
   [ice_dragonsteel, ice_dragonsteel, wbone, wbone],
   [ice_dragonsteel, ice_dragonsteel, null, null]
]);

recipes.remove(<spartanfire:warhammer_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:warhammer_ice_dragonsteel>, 
[
   [null, null, null, null],
   [ice_dragonsteel, ice_dragonsteel, null, null],
   [ice_dragonsteel, ice_dragonsteel, wbone, wbone],
   [ice_dragonsteel, ice_dragonsteel, null, null]
]);

recipes.remove(<spartanfire:pike_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:pike_ice_dragonsteel>, 
[
   [null, null, null, null],
   [null, null, null, null],
   [ice_dragonsteel, ice_dragonsteel, wbone, wbone],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:throwing_axe_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:throwing_axe_ice_dragonsteel>, 
[
   [null, null, ice_dragonsteel, wbone],
   [null, null, ice_dragonsteel, null],
   [null, null, null, null],
   [null, null, null, null]
]);

recipes.remove(<spartanfire:longbow_ice_dragonsteel>);
mods.betterwithmods.Anvil.addShaped(<spartanfire:longbow_ice_dragonsteel>, 
[
   [wbone, wbone, ice_dragonsteel, ice_dragonsteel],
   [wbone, null, null, hfiber],
   [ice_dragonsteel, null, null, hfiber],
   [ice_dragonsteel, hfiber, hfiber, null]
]);
