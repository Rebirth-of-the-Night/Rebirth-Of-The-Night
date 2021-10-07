import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;

furnace.setFuel(<artisanworkstumps:workstump_tailor>, 0);
furnace.setFuel(<artisanworkstumps:workstump_carpenter>, 0);
furnace.setFuel(<artisanworkstumps:workstump_mason>, 0);
furnace.setFuel(<artisanworkstumps:workstump_blacksmith>, 0);
furnace.setFuel(<artisanworkstumps:workstump_jeweler>, 0);
furnace.setFuel(<artisanworkstumps:workstump_basic>, 0);
furnace.setFuel(<artisanworkstumps:workstump_engineer>, 0);
furnace.setFuel(<artisanworkstumps:workstump_mage>, 0);
furnace.setFuel(<artisanworkstumps:workstump_scribe>, 0);
furnace.setFuel(<artisanworkstumps:workstump_chemist>, 0);
furnace.setFuel(<artisanworkstumps:workstump_farmer>, 0);
furnace.setFuel(<artisanworkstumps:workstump_chef>, 0);
furnace.setFuel(<artisanworkstumps:workstump_designer>, 0);
furnace.setFuel(<artisanworkstumps:workstump_tanner>, 0);
furnace.setFuel(<artisanworkstumps:workstump_potter>, 0);
recipes.remove(<totemexpansion:totem_base>);
recipes.remove(<ceramics:clay_barrel_unfired>);
recipes.remove(<ceramics:clay_barrel_unfired:1>);
recipes.remove(<rustic:evaporating_basin>);
recipes.remove(<rustic:vase>);
recipes.remove(<ceramics:unfired_clay>);
JEI.removeAndHide(<ceramics:clay_bucket>);
JEI.removeAndHide(<ceramics:unfired_clay:3>);
recipes.removeByRecipeName("quark:clay_ball");
recipes.removeByRecipeName("ceramics:uncrafting/unfired_clay_barrel");
recipes.removeByRecipeName("ceramics:uncrafting/unfired_clay_extension");
JEI.hideCategory("artisanworktables_mage_worktable");
JEI.hideCategory("artisanworktables_potter_worktable");
JEI.hideCategory("artisanworktables_potter_workstation");
JEI.hideCategory("artisanworkstumps_mage");

recipes.addShaped("wares_table", <artisanworkstumps:workstump_potter>,
 [[null,<minecraft:stone_pressure_plate>,null],
  [<pyrotech:material:16>,<ore:workbench>,<pyrotech:material:16>],
  [null,<ore:logWood>,null]]);

// Refractory block to Crucible
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:modelingrefractory>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<contenttweaker:crucible>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
  
// Crucible to Tank
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:crucible>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<ceramics:clay_barrel_unfired>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
 
// Tank to Extension
RecipeBuilder.get("potter")
 .setShapeless([<ceramics:clay_barrel_unfired>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<ceramics:clay_barrel_unfired:1>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
 

// Clay to planter
RecipeBuilder.get("potter")
 .setShapeless([<minecraft:clay>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<betterwithmods:unfired_pottery:1>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();

// Planter to Pot 
RecipeBuilder.get("potter")
 .setShapeless([<betterwithmods:unfired_pottery:1>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<contenttweaker:pot_unfired>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();
 
// Pot to Vase
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:pot_unfired>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<betterwithmods:unfired_pottery:3>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();
 
// Vase to Urn 
RecipeBuilder.get("potter")
 .setShapeless([<betterwithmods:unfired_pottery:3>])
 .addTool(<artisanworktables:artisans_carver_gold>, 1)
 .addOutput(<betterwithmods:unfired_pottery:2>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();
 
 
// Totem Base
RecipeBuilder.get("potter")
  .setShaped([
    [null, <minecraft:stick>, null],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
  .addOutput(<totemexpansion:totem_base>)
  .create();

// Drying Basin
RecipeBuilder.get("potter")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addTool(<artisanworktables:artisans_carver_gold>, 1)
  .addOutput(<rustic:evaporating_basin>)
  .create();