#loader multiblocked

import mods.multiblocked.MBDRegistry;
import mods.multiblocked.definition.ControllerDefinition;
import mods.multiblocked.definition.ComponentDefinition;
import mods.multiblocked.recipe.RecipeMap;
import mods.multiblocked.functions.ISetupRecipe;
import mods.multiblocked.recipe.RecipeLogic;
import mods.multiblocked.recipe.Recipe;

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

var definition as ComponentDefinition = MBDRegistry.getDefinition("multiblocked:mechanical_processor");
var mechproc = definition as ControllerDefinition;
val newRP = RecipeMap("mechanical_processor") as RecipeMap;
# Recipe.register(newRP);
RecipeMap.register(newRP);
mechproc.recipeMap = newRP;

/*
newRP.start()
.duration(600)
.inputItems(<simpleores:adamantium_block>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionEffects:[{Id:1,Amplifier:2,Duration:100},{Id:6},{Id:8,Amplifier:1,Duration:100},{Id:10,Amplifier:3,Duration:100},{Id:11,Amplifier:1,Duration:100},{Id:18,Amplifier:100,Duration:200},{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 200, Id: 207, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 200, Id: 146, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 200, Id: 139, Amplifier: 100 as byte}],CustomPotionColor:720683,display:{Name:"Potion of Withdrawing",Lore:["A handy brew that extends your life for just a bit longer."]}}))
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<rustic:ginseng>)
.inputItems(<minecraft:glowstone_dust>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 5036715, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 190, Amplifier: 4 as byte}], display: {Lore: ["A handy brew that helps you bonk enemies."], Name: "Potion of Bonking"}}))
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<contenttweaker:brick_minecraft_clay>)
.inputItems(<minecraft:redstone_block>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 14788403, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 3, Amplifier: 2 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 120, Amplifier: 2 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 195, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 18, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 206, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 145, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 138, Amplifier: 100 as byte}], display: {Lore: ["A handy brew that helps you with construction"], Name: "Potion of Building"}}))
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<betternether:reeds_block>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 8115192, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 30, Amplifier: 0 as byte}], display: {Lore: ["A handy brew that increases dodging distance"], Name: "Potion of Dodging"}}))
.buildAndRegister();

newRP.start()
.duration(600)
.inputItems(<biomesoplenty:biome_essence>*4)
.inputItems(<contenttweaker:material_part:40>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 16777153, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 206, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 114, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 145, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 138, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 117, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 18, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 147, Amplifier: 100 as byte}], display: {Lore: ["A handy brew that gives you short flight."], Name: "Potion of Flight"}}))
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<contenttweaker:vis_sliver>)
.inputItems(<minecraft:glass_bottle>)
.inputItems(<minecraft:redstone>)
.inputFluids(<fluid:dread_cold> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 5500122, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 251, Amplifier: 1 as byte}], display: {Lore: ["A handy brew that converts physical damage", "to magical damage."], Name: "Potion of Arcanic Conversion I"}}))
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<contenttweaker:vis_sliver>)
.inputItems(<minecraft:glass_bottle>)
.inputItems(<minecraft:glowstone_dust>)
.inputFluids(<fluid:dread_cold> * 2000)
.outputItems(<minecraft:potion>.withTag({CustomPotionColor: 5500122, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 251, Amplifier: 3 as byte}], display: {Lore: ["A handy brew that converts physical damage", "to magical damage."], Name: "Potion of Arcanic Conversion II"}}))
.buildAndRegister();
*/
newRP.start()
.duration(100)
.inputItems(<contenttweaker:viridea_biomatter>)
.outputFluids(<fluid:concentrated_bioflow> * 1000)
.buildAndRegister();

newRP.start()
.duration(300)
.inputItems(<contenttweaker:electrified_zanite>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({Potion: "potioncore:bless"}))
.buildAndRegister();

newRP.start()
.duration(600)
.inputItems(<contenttweaker:electrified_zanite> * 2)
.inputItems(<minecraft:glowstone>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 2000)
.outputItems(<minecraft:potion>.withTag({Potion: "potioncore:strong_bless"}))
.buildAndRegister();

newRP.start()
.duration(1200)
.inputItems(<minecraft:netherrack>)
.inputItems(<betternether:nether_mycelium>)
.inputFluids(<fluid:concentrated_bioflow> * 8000)
.outputItems(<betternether:nether_mycelium>*2)
.buildAndRegister();