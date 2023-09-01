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
  [<minecraft:clay_ball>,<ore:workbench>,<minecraft:clay_ball>],
  [null,<ore:logWood>,null]]);

// Refractory block to Crucible
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:modelingrefractory>])
 .addTool(<ore:artisansCarver>, 16)
 .addOutput(<contenttweaker:crucible>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
  
// Crucible to Tank
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:crucible>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<ceramics:clay_barrel_unfired>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
 
// Tank to Extension
RecipeBuilder.get("potter")
 .setShapeless([<ceramics:clay_barrel_unfired>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<ceramics:clay_barrel_unfired:1>)
 .setExtraOutputOne(<pyrotech:material:4> * 4, 0.4)
 .create();
 

// Clay to planter
RecipeBuilder.get("potter")
 .setShapeless([<minecraft:clay>])
 .addTool(<ore:artisansCarver>, 4)
 .addOutput(<betterwithmods:unfired_pottery:1>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();

// Planter to Pot 
RecipeBuilder.get("potter")
 .setShapeless([<betterwithmods:unfired_pottery:1>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<contenttweaker:pot_unfired>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();
 
// Pot to Vase
RecipeBuilder.get("potter")
 .setShapeless([<contenttweaker:pot_unfired>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<betterwithmods:unfired_pottery:3>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();
 
// Vase to Urn 
RecipeBuilder.get("potter")
 .setShapeless([<betterwithmods:unfired_pottery:3>])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<betterwithmods:unfired_pottery:2>)
 .setExtraOutputOne(<minecraft:clay_ball>, 0.4)
 .create();

// Clay to cooking pot
RecipeBuilder.get("potter")
 .setShaped([
	[<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
 .addTool(<ore:artisansCarver>, 4)
 .addOutput(<contenttweaker:unfired_cooking_pot>)
 .create();

// Clay to bucket
RecipeBuilder.get("potter")
 .setShaped([
    [<minecraft:clay_ball>, <ore:twine>, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<pyrotech:bucket_clay_unfired>)
 .create();

// Soapstone Bucket
RecipeBuilder.get("potter")
  .setShaped([
    [<pyrotech_compat:rock_metamorphic:6>, <ore:twine>, <pyrotech_compat:rock_metamorphic:6>],
    [null, <pyrotech_compat:rock_metamorphic:6>, null]])
  .addTool(<ore:artisansCarver>, 4)
  .addOutput(<pyrotech:bucket_clay>)
  .create();

// Clay to faucet
RecipeBuilder.get("potter")
 .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
 .addTool(<ore:artisansCarver>, 1)
 .addOutput(<contenttweaker:unfired_clay_faucet>)
 .create();

// Soapstone to faucet
RecipeBuilder.get("potter")
 .setShaped([
    [<pyrotech_compat:rock_metamorphic:6>, null, <pyrotech_compat:rock_metamorphic:6>],
    [null, <pyrotech_compat:rock_metamorphic:6>, null]])
 .addTool(<ore:artisansCarver>, 4)
 .addOutput(<pyrotech:faucet_stone>)
 .create();

// Clay Drying Basin
RecipeBuilder.get("potter")
  .setShaped([
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
  .addTool(<ore:artisansCarver>, 1)
  .addOutput(<contenttweaker:unfired_drying_basin>)
  .create();

// Soapstone Drying Basin
RecipeBuilder.get("potter")
  .setShaped([
    [<pyrotech_compat:rock_metamorphic:6>, null, <pyrotech_compat:rock_metamorphic:6>],
    [<pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>]])
  .addTool(<ore:artisansCarver>, 4)
  .addOutput(<rustic:evaporating_basin>)
  .create();

// Clay flower pot
RecipeBuilder.get("potter")
  .setShaped([
    [null, <minecraft:clay_ball>, null],
    [null, <minecraft:clay_ball>, null]])
  .addTool(<ore:artisansCarver>, 1)
  .addOutput(<contenttweaker:unfired_flower_pot>)
  .create();

// Clay to collector
RecipeBuilder.get("potter")
 .setShaped([
	[<minecraft:clay_ball>, <ore:stickWood>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, null, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
 .addTool(<ore:artisansCarver>, 4)
 .addOutput(<contenttweaker:unfired_clay_collector>)
 .create();

// Soapstone to collector
RecipeBuilder.get("potter")
 .setShaped([
	[<pyrotech_compat:rock_metamorphic:6>, <ore:stickWood>, <pyrotech_compat:rock_metamorphic:6>],
    [<pyrotech_compat:rock_metamorphic:6>, null, <pyrotech_compat:rock_metamorphic:6>],
    [null, <pyrotech_compat:rock_metamorphic:6>, null]])
 .addTool(<ore:artisansCarver>, 12)
 .addOutput(<pyrotech:tar_collector>)
 .create();

// Clay to drain
RecipeBuilder.get("potter")
 .setShaped([
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
	[null, null, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>]])
 .addTool(<ore:artisansCarver>, 4)
 .addOutput(<contenttweaker:unfired_clay_drain>)
 .create();

// Soapstone to drain
RecipeBuilder.get("potter")
 .setShaped([
    [<pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>],
	[null, null, <pyrotech_compat:rock_metamorphic:6>],
    [<pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>]])
 .addTool(<ore:artisansCarver>, 12)
 .addOutput(<pyrotech:tar_drain>)
 .create();

// Clay Totem Base
RecipeBuilder.get("potter")
  .setShaped([
    [null, <ore:stickWood>, null],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [null, <minecraft:clay_ball>, null]])
  .addOutput(<contenttweaker:unfired_totem_base>)
  .create();

// Soapstone Totem Base
RecipeBuilder.get("potter")
  .setShaped([
    [null, <ore:stickWood>, null],
    [<pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>],
    [null, <pyrotech_compat:rock_metamorphic:6>, null]])
  .addTool(<ore:artisansCarver>, 6)
  .addOutput(<totemexpansion:totem_base>)
  .create();
  
// Soapstone Wok
RecipeBuilder.get("potter")
  .setShaped([
    [<pyrotech_compat:rock_metamorphic:6>, null, <ore:stickWood>],
    [<pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>, <pyrotech_compat:rock_metamorphic:6>]])
  .addTool(<ore:artisansCarver>, 8)
  .addOutput(<exsartagine:wok>)
  .create();