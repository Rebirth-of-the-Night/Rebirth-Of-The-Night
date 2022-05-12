import scripts.shared.utils.recipeUtils.uniformArrayIS;
import scripts.shared.utils.recipeUtils.removeRecipeNameArray;
import scripts.shared.utils.arraysUtils.concatString;
import scripts.shared.sharedArrays.armor;
import crafttweaker.item.IItemStack;

//Mob Loot Tweaks
<entity:primitivemobs:goblin>.removeDrop(<minecraft:iron_ingot>);

val camoGear = concatString(["primitivemobs:camouflage_"], armor, ["toggle"]);
val glu = [<primitivemobs:wonder_sap>] as IItemStack[];
val glu8 = uniformArrayIS(glu, 8) as IItemStack[];
val ODGlu = <ore:glue>.firstItem;

removeRecipeNameArray(camoGear);

//Wonderful Glue Recipes
recipes.addShapeless("sap_drool_2", ODGlu,glu + <doggytalents:throw_stick_wet>);
recipes.addShapeless("sap_mysterious_stew", ODGlu*2,glu + <futuremc:suspicious_stew>.transformReplace(<minecraft:bowl>));
recipes.addShapeless("sap_biochar", ODGlu*2,glu + <doggytalents:throw_bone_wet>);
recipes.addShapeless("sap_honey_low", ODGlu*2,glu + <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
recipes.addShapeless("sap_sludge_low", ODGlu*2,glu + <mod_lavacow:silky_sludge>);
recipes.addShapeless("sap_honey", ODGlu*12,glu8 + <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
recipes.addShapeless("sap_sludge", ODGlu*12,glu8 + <mod_lavacow:silky_sludge>);

//
recipes.remove(<rustic:fertile_soil>);

val oreDirtBlock = <ore:DirtBlock>;
oreDirtBlock.addItems([<minecraft:dirt>, <minecraft:dirt:1>, <biomesoplenty:dirt>, <biomesoplenty:dirt:1>, <biomesoplenty:dirt:2>, <biomesoplenty:dirt:8>, <biomesoplenty:dirt:9>, <biomesoplenty:dirt:10> ]);

recipes.addShapeless("fertilesoil", <rustic:fertile_soil>,[glu, <ore:DirtBlock>]);

<rustic:fertile_soil>.addTooltip("Can't be trampled. Crops planted in it don't require water nearby.");
