//Mob Loot Tweaks
<entity:primitivemobs:goblin>.removeDrop(<minecraft:iron_ingot>);
<entity:primitivemobs:goblin>.addDrop(<minecraft:leather>,1,2);

recipes.removeByRecipeName("primitivemobs:camouflage_helmet_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_chestplate_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_boots_toggle");
recipes.removeByRecipeName("primitivemobs:camouflage_leggings_toggle");

//Wonderful Glue Recipes
recipes.addShapeless("sap_drool_1", <ore:glue>.firstItem,[<primitivemobs:wonder_sap>,<doggytalents:throw_bone_wet>]);
recipes.addShapeless("sap_drool_2", <ore:glue>.firstItem,[<primitivemobs:wonder_sap>,<doggytalents:throw_stick_wet>]);
recipes.addShapeless("sap_mysterious_stew", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<minecraftfuture:suspiciousstew>]);
recipes.addShapeless("sap_biochar", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<doggytalents:throw_bone_wet>]);
recipes.addShapeless("sap_honey_low", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000})]);
recipes.addShapeless("sap_sludge_low", <ore:glue>.firstItem*2,[<primitivemobs:wonder_sap>,<mod_lavacow:silky_sludge>]);
recipes.addShapeless("sap_honey", <ore:glue>.firstItem*12,[<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<forge:bucketfilled>.withTag({FluidName: "honey", Amount: 1000})]);
recipes.addShapeless("sap_sludge", <ore:glue>.firstItem*12,[<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<primitivemobs:wonder_sap>,<mod_lavacow:silky_sludge>]);