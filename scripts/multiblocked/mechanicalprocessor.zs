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

newRP.start()
.duration(1200)
.inputItems(<simpleores:adamantium_ingot>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 500)
.outputItems(<minecraft:potion>.withTag({CustomPotionEffects:[{Id:1,Amplifier:2,Duration:100},{Id:6},{Id:8,Amplifier:1,Duration:100},{Id:10,Amplifier:3,Duration:100},{Id:11,Amplifier:1,Duration:100},{Id:18,Amplifier:19,Duration:200}],CustomPotionColor:720683,display:{Name:"Potion of Withdrawing",Lore:["A handy brew that extends your life for just a bit longer."]}}))
.buildAndRegister();

newRP.start()
.duration(100)
.inputItems(<contenttweaker:viridea_biomatter>)
.outputFluids(<fluid:concentrated_bioflow> * 2000)
.buildAndRegister();

newRP.start()
.duration(600)
.inputItems(<aether_legacy:zanite_gemstone>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 500)
.outputItems(<minecraft:potion>.withTag({Potion: "potioncore:bless"}))
.buildAndRegister();

newRP.start()
.duration(1200)
.inputItems(<aether_legacy:zanite_gemstone>)
.inputItems(<minecraft:glowstone>)
.inputItems(<minecraft:glass_bottle>)
.inputFluids(<fluid:concentrated_bioflow> * 500)
.outputItems(<minecraft:potion>.withTag({Potion: "potioncore:strong_bless"}))
.buildAndRegister();