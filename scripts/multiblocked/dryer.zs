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

var definition as ComponentDefinition = MBDRegistry.getDefinition("multiblocked:dryer");
var dryerwork = definition as ControllerDefinition;
val newRP = RecipeMap("dryer") as RecipeMap;
# Recipe.register(newRP);
RecipeMap.register(newRP);
dryerwork.recipeMap = newRP;

val DryerItemInputs = [<pyrotech:material:12>, <minecraft:sponge:1>, <pyrotech:material:25>, <harvestcraft:vanillabeanitem>, <harvestcraft:juteitem>, <betterwithaddons:wet_soap>] as IItemStack[];
val DryerItemOutputs = [<pyrotech:tinder>, <minecraft:sponge>, <minecraft:paper>, <harvestcraft:vanillaitem>, <pyrotech:material:2>, <betterwithmods:aesthetic:10>]  as IItemStack[];
val DryerRecipeNames = ["dryer_fibers", "dryer_sponge", "dryer_paper", "dryer_vanilla", "dryer_jute", "dryer_soap"] as string[];

for i, input in DryerItemInputs {
    newRP.start()
    .duration(600)
    .inputItems(DryerItemInputs[i])
    .outputItems(DryerItemOutputs[i])
    .buildAndRegister();
}

newRP.start()
    .duration(600)
    .inputItems(<ore:treeSapling>)
    .outputItems(<pyrotech:tinder>)
    .buildAndRegister();

newRP.start()
    .duration(600)
    .inputItems(<ore:cropGrape>)
    .outputItems(<harvestcraft:raisinsitem>)
    .buildAndRegister();

newRP.start()
    .duration(400)
    .inputItems(<biomesoplenty:mudball>)
    .outputItems(<betterwithmods:dirt_pile>)
    .buildAndRegister();