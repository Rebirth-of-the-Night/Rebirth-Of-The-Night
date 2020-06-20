import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.advancedmortars.Mortar; //to make porcelain

/*
mB means miniBucket, forge's liquid metric unit
16  mB = 1 nugget
144 mB = 1 ingot
288 mB = 1 ore block
1 bucket = 6 ingots, 8 nuggets, 8 mB
*/

//recipes
mods.jei.JEI.removeAndHide(<foundry:componentblock>);
mods.jei.JEI.removeAndHide(<foundry:componentblock:1>);
mods.jei.JEI.removeAndHide(<foundry:componentblock:2>);
mods.jei.JEI.removeAndHide(<foundry:machine>);
mods.jei.JEI.removeAndHide(<foundry:machine:4>);
mods.jei.JEI.removeAndHide(<foundry:bronze_cauldron>);

recipes.remove(<foundry:machine:8>);
recipes.remove(<foundry:mold_station>);
recipes.remove(<foundry:burner_heater>);

recipes.addShaped("melting_crucible_standard", <foundry:machine:7>,[ //Melting Crucible Refractory
	[<betterwithmods:aesthetic:7>, <pyrotech:material:5>, <betterwithmods:aesthetic:7>],
    [<pyrotech:refractory_brick_block>, <betterwithmods:cooking_pot>, <pyrotech:refractory_brick_block>],
    [<betterwithmods:aesthetic:7>, <pyrotech:refractory_brick_block>, <betterwithmods:aesthetic:7>]
]);
recipes.addShaped("melting_crucible_advanced", <foundry:machine:6>,[ //Melting Crucible Porcelain
	[<betterwithmods:aesthetic:7>, <ceramics:unfired_clay:5>, <betterwithmods:aesthetic:7>],
    [<ceramics:clay_hard>, <foundry:machine:7> | <betterwithmods:cooking_pot>, <ceramics:clay_hard>],
    [<betterwithmods:aesthetic:7>, <ceramics:clay_hard>, <betterwithmods:aesthetic:7>]
]);

recipes.addShaped("burner_heater", <foundry:burner_heater>,[ //Burner Heater (solid fuel)
	[<ceramics:clay_hard>, <betterwithmods:aesthetic:3>, <ceramics:clay_hard>],
    [<ceramics:clay_hard>, <betternether:cincinnasite_forge>, <ceramics:clay_hard>],
    [<ceramics:clay_hard>, <ceramics:clay_hard>, <ceramics:clay_hard>]
]);

//Porcelain Recipe
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_quartz");
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_bone_meal");

Mortar.addRecipe(["diamond", "obsidian"], <ceramics:unfired_clay:4> * 9, 5, [<netherex:rime_crystal>, <pyrotech:material:4> * 8]);
Mortar.addRecipe(["diamond", "obsidian"], <ceramics:unfired_clay:4>, 5, [<netherex:rime_crystal>, <minecraft:clay_ball> * 8]);


//Melting //Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int melting_point, @Optional int speed)
mods.foundry.Melting.addRecipe(<liquid:soul_forged_steel>*144, <betterwithmods:material:14>, 2350);
mods.foundry.Melting.addRecipe(<liquid:soul_forged_steel>*(144*16), <betterwithmods:steel_block>, 2350);


//Molds //moldStation.addRecipe(IItemStack output, int width, int height, int[] grid)
mods.foundry.MoldStation.addRecipe(<contenttweaker:dagger_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:longsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,1,4,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:saber_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,0,0,0,
0,1,2,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:rapier_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,1,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:greatsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,4,0,0,0,
1,2,2,2,1,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:hammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,2,3,2,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:warhammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,2,3,0,0,0,
0,2,3,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:spear_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
0,1,2,1,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:halberd_mold>, 6, 6, [
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,2,0,0,0,
0,1,2,1,1,0,
0,1,3,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:pike_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:lance_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,1,2,1,0,0,
0,1,0,1,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:longbow_mold>, 6, 6, [
0,0,0,0,0,2,
0,2,1,0,1,1,
0,1,0,0,0,0,
0,0,0,0,0,0,
0,1,0,0,0,0,
2,1,0,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:throwing_knife_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:throwing_axe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:javelin_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,1,1,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:boomerang_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0,
0,3,1,1,0,0,
0,1,0,0,0,0,
0,1,0,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:battleaxe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,1,1,0,
1,2,3,2,1,0,
1,0,2,0,1,0,
0,0,2,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:mace_mold>, 6, 6, [
0,0,0,0,0,0,
0,1,1,1,0,0,
1,2,2,2,1,0,
1,2,2,2,1,0,
0,1,1,1,0,0,
0,1,0,1,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:glaive_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,2,0,0,0,
0,1,3,0,0,0,
0,0,1,0,0,0
]);

mods.foundry.MoldStation.addRecipe(<contenttweaker:staff_mold>, 6, 6, [
0,0,0,0,1,2,
0,0,0,0,1,1,
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,0,0,0,
2,1,0,0,0,0
]);

//Casted IItemStacks //mods.foundry.Casting.addRecipe(IItemStack output, ILiquidStack input, IItemStack mold, @Optional IIngredient extra, @Optional int speed)
//casting weapons is -2 nugget per ingot cheaper than crafting them in a crafting table / steel anvil

// HELMET //
mods.foundry.Casting.removeRecipe(<liquid:iron>*720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<minecraft:iron_helmet>, <liquid:iron>*((144*5)-(16*2*5)), <foundry:mold:14>);//iron
mods.foundry.Casting.removeRecipe(<liquid:gold>*720, <foundry:mold:14>);
mods.foundry.Casting.addRecipe(<minecraft:golden_helmet>, <liquid:gold>*((144*5)-(16*2*5)), <foundry:mold:14>);//gold
mods.foundry.Casting.addRecipe(<atop:mud_helmet>, <liquid:bronze>*((144*5)-(16*2*5)), <foundry:mold:14>);//bronze
mods.foundry.Casting.addRecipe(<iceandfire:armor_silver_metal_helmet>, <liquid:silver>*((144*5)-(16*2*5)), <foundry:mold:14>);//silver
mods.foundry.Casting.addRecipe(<dungeontactics:steel_helmet>, <liquid:steel>*((144*5)-(16*2*5)), <foundry:mold:14>);//steel 
mods.foundry.Casting.addRecipe(<simpleores:adamantium_helmet>, <liquid:viridium>*((144*5)-(16*2*5)), <foundry:mold:14>);//viridium
mods.foundry.Casting.addRecipe(<simpleores:mythril_helmet>, <liquid:mythril>*((144*5)-(16*2*5)), <foundry:mold:14>);//mythril
mods.foundry.Casting.addRecipe(<simpleores:onyx_helmet>, <liquid:onyx_alloy>*((144*5)-(16*2*5)), <foundry:mold:14>);//onyx
mods.foundry.Casting.addRecipe(<betterwithmods:steel_helmet>, <liquid:soul_forged_steel>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//SFS

// CHESTPLATE //
// LEGGINGS //
// BOOTS //

// DAGGER //
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:dagger_adamantium>, <liquid:viridium>*(144-(16*2)), <contenttweaker:dagger_mold>, <minecraft:blaze_rod>);//viridium

// LONGSWORD //
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_copper>, <liquid:copper>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_iron>, <liquid:iron>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_gold>, <liquid:gold>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_bronze>, <liquid:bronze>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_silver>, <liquid:silver>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:longsword_steel>, <liquid:steel>*(144*4-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:longsword_mythril>, <liquid:mythril>*(144*5-(16*2*5)), <contenttweaker:longsword_mold>, <minecraft:blaze_rod>);//mythril

// SABER //
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_copper>, <liquid:copper>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_iron>, <liquid:iron>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_gold>, <liquid:gold>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_bronze>, <liquid:bronze>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_silver>, <liquid:silver>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:saber_steel>, <liquid:steel>*(144*3-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:saber_adamantium>, <liquid:viridium>*(144*4-(16*2*4)), <contenttweaker:saber_mold>, <minecraft:blaze_rod>);//viridium

// RAPIER //
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_copper>, <liquid:copper>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_iron>, <liquid:iron>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_gold>, <liquid:gold>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_bronze>, <liquid:bronze>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_silver>, <liquid:silver>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:rapier_steel>, <liquid:steel>*(144*4-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:rapier_mythril>, <liquid:mythril>*(144*5-(16*2*5)), <contenttweaker:rapier_mold>, <minecraft:blaze_rod>);//mythril

// GREATSWORD //
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_copper>, <liquid:copper>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_iron>, <liquid:iron>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_gold>, <liquid:gold>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_bronze>, <liquid:bronze>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_silver>, <liquid:silver>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:greatsword_steel>, <liquid:steel>*(144*6-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:greatsword_onyx>, <liquid:onyx_alloy>*((144*9)-(16*2*9)), <contenttweaker:greatsword_mold>, <minecraft:blaze_rod>*2);//onyx

// WARMALLET //
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_copper>, <liquid:copper>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_iron>, <liquid:iron>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_gold>, <liquid:gold>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_bronze>, <liquid:bronze>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_silver>, <liquid:silver>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:hammer_steel>, <liquid:steel>*(144*4-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:hammer_onyx>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <contenttweaker:hammer_mold>, <minecraft:blaze_rod>*4);//onyx

// WARHAMMER //
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_copper>, <liquid:copper>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_iron>, <liquid:iron>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_gold>, <liquid:gold>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_bronze>, <liquid:bronze>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_silver>, <liquid:silver>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:warhammer_steel>, <liquid:steel>*(144*3-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>); //steel
mods.foundry.Casting.addRecipe(<spartancompat:warhammer_onyx>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <contenttweaker:warhammer_mold>, <minecraft:blaze_rod>*2);//onyx

/*/ SPEAR //
<contenttweaker:spear_mold>

// HALBERD //
<contenttweaker:halberd_mold>

// PIKE //
<contenttweaker:pike_mold>

// LANCE //
<contenttweaker:lance_mold>

// LONGBOW //
<contenttweaker:longbow_mold>

// THROWING KNIFE //
<contenttweaker:throwing_knife_mold>

// THROWING AXE //
<contenttweaker:throwing_axe_mold>

// JAVELIN //
<contenttweaker:javelin_mold>

// BOOMERANG //
<contenttweaker:boomerang_mold>

// BATTLEAXE //
<contenttweaker:battleaxe_mold>

// MACE //
<contenttweaker:mace_mold>

// GLAIVE //
<contenttweaker:glaive_mold>

// QUARTERSTAFF //
<contenttweaker:staff_mold>
*/
