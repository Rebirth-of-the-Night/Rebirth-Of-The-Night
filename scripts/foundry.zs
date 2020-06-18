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

// DAGGER //

mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_copper>, <liquid:copper>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//copper
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_iron>, <liquid:iron>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//iron
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_gold>, <liquid:gold>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//gold
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_bronze>, <liquid:bronze>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//bronze
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_silver>, <liquid:silver>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//silver
mods.foundry.Casting.addRecipe(<spartanweaponry:dagger_steel>, <liquid:steel>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);
mods.foundry.Casting.addRecipe(<spartancompat:dagger_adamantium>, <liquid:viridium>*144, <contenttweaker:dagger_mold>, <spartanweaponry:material>);//viridium

/*
<contenttweaker:longsword_mold>
<contenttweaker:saber_mold>
<contenttweaker:rapier_mold>
<contenttweaker:greatsword_mold>
<contenttweaker:hammer_mold>
<contenttweaker:warhammer_mold>
<contenttweaker:spear_mold>
<contenttweaker:halberd_mold>
<contenttweaker:pike_mold>
<contenttweaker:lance_mold>
<contenttweaker:longbow_mold>
<contenttweaker:throwing_knife_mold>
<contenttweaker:throwing_axe_mold>
<contenttweaker:javelin_mold>
<contenttweaker:boomerang_mold>
<contenttweaker:battleaxe_mold>
<contenttweaker:mace_mold>
<contenttweaker:glaive_mold>
<contenttweaker:staff_mold>
*/