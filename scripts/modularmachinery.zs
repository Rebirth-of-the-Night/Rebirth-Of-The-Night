import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

val DryerItemInputs = [<pyrotech:material:12>, <minecraft:sponge:1>, <pyrotech:material:25>, <harvestcraft:vanillabeanitem>, <harvestcraft:juteitem>, <betterwithaddons:wet_soap>] as IItemStack[];
val DryerItemOutputs = [<pyrotech:material:13>, <minecraft:sponge>, <minecraft:paper>, <harvestcraft:vanillaitem>, <pyrotech:material:2>, <betterwithmods:aesthetic:10>]  as IItemStack[];
val DryerRecipeNames = ["dryer_fibers", "dryer_sponge", "dryer_paper", "dryer_vanilla", "dryer_jute", "dryer_soap"] as string[];

for i, input in DryerItemInputs {
    var dryerrecipe1 = RecipeBuilder.newBuilder(DryerRecipeNames[i], "dryer", 600);
    dryerrecipe1.addItemInput(DryerItemInputs[i]);
    dryerrecipe1.addItemOutput(DryerItemOutputs[i]);
    dryerrecipe1.build();
}

val PizzaOvenItemInputs = [<exsartagine:pizzachickenraw>, <exsartagine:pizzafishraw>, <exsartagine:pizzasweetraw>, <exsartagine:pizzameatraw>, <betteranimalsplus:turkey_raw>] as IItemStack[];
val PizzaOvenItemOutputs = [<exsartagine:pizzachicken>, <exsartagine:pizzafish>, <exsartagine:pizzasweet>, <exsartagine:pizzameat>, <betteranimalsplus:turkey_cooked>] as IItemStack[];
val PizzaOvenRecipeNames = ["pizzaoven_pizza_chicken", "pizzaoven_pizza_fish", "pizzaoven_pizza_sweet", "pizzaoven_pizza_meat", "pizzaoven_turkey_cooked"] as string[];

for i, input in PizzaOvenItemInputs {
    var pizzaovenrecipe1 = RecipeBuilder.newBuilder(PizzaOvenRecipeNames[i], "pizzaoven", 400);
    pizzaovenrecipe1.addItemInput(PizzaOvenItemInputs[i]);
    pizzaovenrecipe1.addItemOutput(PizzaOvenItemOutputs[i]);
    pizzaovenrecipe1.build();
}

var dryerrecipe2 = RecipeBuilder.newBuilder("dryer_fibers_sapling", "dryer", 600);
dryerrecipe2.addItemInput(<ore:treeSapling>);
dryerrecipe2.addItemOutput(<pyrotech:material:13>);
dryerrecipe2.build();

var dryerrecipe3 = RecipeBuilder.newBuilder("dryer_raisins", "dryer", 600);
dryerrecipe3.addItemInput(<ore:cropGrape>);
dryerrecipe3.addItemOutput(<harvestcraft:raisinsitem>);
dryerrecipe3.build();

function pizzaoven(recipeName as string, input as IIngredient, output as IIngredient, ticks as int) {
    addMachineRecipe("pizzaoven", recipeName, input, output, ticks);
}

function dryer(recipeName as string, input as IIngredient, output as IIngredient, ticks as int) {
    addMachineRecipe("dryer", recipeName, input, output, ticks);
}

function addMachineRecipe(machine as string, recipeName as string, input as IIngredient, output as IIngredient, ticks as int) {
    var rec = RecipeBuilder.newBuilder(recipeName, machine, ticks);
    if (input instanceof IItemStack) {
        rec.addItemInput(input as IItemStack);
    } else if (input instanceof ILiquidStack) {
        rec.addFluidInput(input as ILiquidStack);
    } else if (input instanceof IOreDictEntry) {
        logger.logWarning("Machine " + machine + " with recipe \"" + recipeName + "\" uses an ore dictionary as input, which may not work as intended!");
        rec.addItemInput(input as IOreDictEntry, input.amount);
    } else {
        logger.logError("Machine " + machine + " with recipe \"" + recipeName + "\" uses an invalid item input!");
    }
    
    if (output instanceof IItemStack) {
        rec.addItemOutput(output as IItemStack);
    } else if (output instanceof ILiquidStack) {
        rec.addFluidOutput(output as ILiquidStack);
    } else if (output instanceof IOreDictEntry) {
        logger.logWarning("Machine " + machine + " with recipe \"" + recipeName + "\" uses an ore dictionary as output, which may not work as intended!");
        rec.addItemOutput(output as IOreDictEntry, output.amount);
    } else {
        logger.logError("Machine " + machine + " with recipe \"" + recipeName + "\" uses an invalid item output!");
    }
    
    rec.build();
}

recipes.removeByRecipeName("modularmachinery:energy_input_tiny");
recipes.removeByRecipeName("modularmachinery:casing_reinforced");
recipes.removeByRecipeName("modularmachinery:fluid_output_small");
recipes.removeByRecipeName("modularmachinery:energy_output_small");
recipes.removeByRecipeName("modularmachinery:fluid_input_small");
recipes.removeByRecipeName("modularmachinery:fluid_output_tiny");
recipes.removeByRecipeName("modularmachinery:casing_firebox");
recipes.removeByRecipeName("modularmachinery:modularium_ingot");
recipes.removeByRecipeName("modularmachinery:item_output_small");
recipes.removeByRecipeName("modularmachinery:item_input_tiny");
recipes.removeByRecipeName("modularmachinery:controller");
recipes.removeByRecipeName("modularmachinery:item_input_small");
recipes.removeByRecipeName("modularmachinery:energy_input_small");
recipes.removeByRecipeName("modularmachinery:energy_output_tiny");
recipes.removeByRecipeName("modularmachinery:casing_plain");
recipes.removeByRecipeName("modularmachinery:item_output_tiny");
recipes.removeByRecipeName("modularmachinery:fluid_input_tiny");

recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
    [null, <inspirations:pipe>, null],
    [<ore:ingotBronze>, <rustic:liquid_barrel>, <ore:ingotBronze>], 
    [null, <quark:chute>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
    [null, <inspirations:pipe>, null],
    [<ore:ingotBronze>, <rustic:liquid_barrel>, <ore:ingotBronze>], 
    [null, <quark:chute>, null]
]);
recipes.addShaped(<modularmachinery:blockcontroller>, [
    [<ore:ingotBronze>, <minecraft:redstone_torch>, <ore:ingotBronze>],
    [<minecraft:lever>, <minecraft:repeater>, <minecraft:lever>], 
    [<ore:ingotBronze>, <minecraft:redstone>, <ore:ingotBronze>]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [
    [<ore:ingotBronze>, <modularmachinery:blockoutputbus:1>, <ore:ingotBronze>], 
    [null, <ore:chestWood>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [
    [<ore:ingotBronze>, <modularmachinery:blockoutputbus>, <ore:ingotBronze>], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
    [null, <quark:chute>, null],
    [<ore:ingotBronze>, <ore:chestWood>, <ore:ingotBronze>], 
    [null, <inspirations:pipe>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [
    [<ore:ingotBronze>, <modularmachinery:blockinputbus:1>, <ore:ingotBronze>], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [
    [<ore:ingotBronze>, <modularmachinery:blockinputbus>, <ore:ingotBronze>], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus>, [
    [null, <inspirations:pipe>, null],
    [<ore:ingotBronze>, <ore:chestWood>, <ore:ingotBronze>], 
    [null, <quark:chute>, null]
]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:dryer"}), [
    [null, <ore:genericMetalBars>, null],
    [<ore:StoneHugeBrick>, <minecraft:writable_book>, <contenttweaker:oak_boards>], 
    [null, <pyrotech:drying_rack:1>, null]
]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:pizzaoven"}), [
    [null, <ore:genericMetalBars>, null],
    [<minecraft:brick_block>, <minecraft:writable_book>, <minecraft:brick_block>], 
    [null, <ore:netherrack>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [
    [null, null, null],
    [<ore:ingotBronze>, <modularmachinery:blockfluidoutputhatch:1>, <ore:ingotBronze>], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [
    [<ore:ingotBronze>, <modularmachinery:blockfluidoutputhatch>, <ore:ingotBronze>], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [
    [<ore:ingotBronze>, <modularmachinery:blockfluidinputhatch:1>, <ore:ingotBronze>], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [
    [<ore:ingotBronze>, <modularmachinery:blockfluidinputhatch>, <ore:ingotBronze>], 
    [null, <rustic:liquid_barrel>, null]
]);
