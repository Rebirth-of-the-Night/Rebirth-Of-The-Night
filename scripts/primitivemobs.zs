//Mob Loot Tweaks
<entity:primitivemobs:goblin>.removeDrop(<minecraft:iron_ingot>);

recipes.removeByRecipeName("primitivemobs:camouflage_helmet_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_chestplate_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_boots_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_leggings_toggle");

//Wonderful Glue Recipes
recipes.addShapeless("sap_drool_2", <ore:glue>.firstItem,[<primitivemobs:wonder_sap>,<doggytalents:throw_stick_wet>]);
recipes.addShapeless("sap_mysterious_stew", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<futuremc:suspicious_stew>.transformReplace(<minecraft:bowl>)]);
recipes.addShapeless("sap_biochar", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<doggytalents:throw_bone_wet>]);
recipes.addShapeless("sap_honey_low", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}})]);
recipes.addShapeless("sap_sludge_low", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<mod_lavacow:silky_sludge>]);
recipes.addShapeless("sap_honey", <ore:glue>.firstItem*12,[<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}})]);
recipes.addShapeless("sap_sludge", <ore:glue>.firstItem*12,[<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<mod_lavacow:silky_sludge>]);

//
recipes.remove(<rustic:fertile_soil>);

val oreDirtBlock = <ore:DirtBlock>;
oreDirtBlock.addItems([<minecraft:dirt>, <minecraft:dirt:1>, <biomesoplenty:dirt>, <biomesoplenty:dirt:1>, <biomesoplenty:dirt:2>, <biomesoplenty:dirt:8>, <biomesoplenty:dirt:9>, <biomesoplenty:dirt:10> ]);

recipes.addShapeless("fertilesoil", <rustic:fertile_soil>,[<primitivemobs:wonder_sap>, <ore:DirtBlock>]);

<rustic:fertile_soil>.addTooltip("Can't be trampled. Crops planted in it don't require water nearby.");
