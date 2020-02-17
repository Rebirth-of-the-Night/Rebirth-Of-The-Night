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




// pipes
mods.betterwithmods.Anvil.addShaped(<quark:pipe> * 12, 
[
   [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null],
   [<simpleores:copper_ingot>, <ore:paneGlass>, <ore:paneGlass>, <simpleores:copper_ingot>],
   [<simpleores:copper_ingot>, <ore:paneGlass>, <ore:paneGlass>, <simpleores:copper_ingot>],
   [null, <minecraft:iron_ingot>, <minecraft:iron_ingot>, null]
]);


// Spartan Compat
var blaze = <minecraft:blaze_rod>;
var viridium = <simpleores:adamantium_ingot>;
var mythril = <simpleores:mythril_ingot>;
var onyx = <simpleores:onyx_gem>;

recipes.remove(<spartancompat:dagger_adamantium>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:dagger_adamantium>, 
[
   [blaze, viridium, null, null],
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
   [viridium, blaze, null, null],
   [null, null, null, null],
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

recipes.remove(<spartancompat:longsword_mythril>);
mods.betterwithmods.Anvil.addShaped(<spartancompat:longsword_mythril>, 
[
   [null, null, null, null],
   [null, null, null, mythril],
   [mythril, mythril, mythril, blaze],
   [null, null, blaze, mythril]
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
   [null, null, null, null],
   [blaze, null, null, null],
   [blaze, null, null, null],
   [mythril, blaze, blaze, null]
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
   [null, null, null, blaze],
   [null, null, blaze, null],
   [mythril, blaze, null, null],
   [mythril, mythril, mythril, null]
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
   [null, onyx, null, null],
   [null, onyx, blaze, blaze],
   [onyx, onyx, onyx, null]
]);