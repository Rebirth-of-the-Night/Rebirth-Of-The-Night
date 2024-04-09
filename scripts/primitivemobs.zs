import scripts.shared.utils.recipeUtils.uniformArrayIS;
import scripts.shared.utils.recipeUtils.removeRecipeNameArray;
import scripts.shared.utils.arrayUtils.concatString;
import scripts.shared.sharedArrays.armor;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

//Mob Loot Tweaks
<entity:primitivemobs:goblin>.removeDrop(<minecraft:iron_ingot>);

val camoGear = concatString([["primitivemobs:camouflage_"], armor, ["toggle"]]);
val ws = [<primitivemobs:wonder_sap>] as IIngredient[];
val ws8 = uniformArrayIS(<primitivemobs:wonder_sap>, 8) as IIngredient[];
val ODGlu = <ore:glue>.firstItem;
val slime = <ore:slimeball>;

removeRecipeNameArray(camoGear);

//Wonderful Glue Recipes
recipes.addShapeless("sap_drool_2", ODGlu,ws + <doggytalents:throw_stick_wet>);
recipes.addShapeless("sap_mysterious_stew", ODGlu*2,ws + <futuremc:suspicious_stew>.transformReplace(<minecraft:bowl>));
recipes.addShapeless("sap_biochar", ODGlu*2,ws + <doggytalents:throw_bone_wet>);
recipes.addShapeless("sap_honey_low", ODGlu*2,ws + <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
recipes.addShapeless("sap_honey", ODGlu*12,ws8 + <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
recipes.addShapeless("sap_slime_low", ODGlu*2,ws + slime);
recipes.addShapeless("sap_slime", ODGlu*12,ws8 + slime);

//
recipes.remove(<rustic:fertile_soil>);

val oreDirtBlock = <ore:DirtBlock>;
oreDirtBlock.addItems([<minecraft:dirt>, <minecraft:dirt:1>, <biomesoplenty:dirt>, <biomesoplenty:dirt:1>, <biomesoplenty:dirt:2>, <biomesoplenty:dirt:8>, <biomesoplenty:dirt:9>, <biomesoplenty:dirt:10> ]);

recipes.addShapeless("fertilesoil", <rustic:fertile_soil>,ws+<ore:DirtBlock>);

<rustic:fertile_soil>.addTooltip("Can't be trampled. Crops planted in it don't require water nearby.");
