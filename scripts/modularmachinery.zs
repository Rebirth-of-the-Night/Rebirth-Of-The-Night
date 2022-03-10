import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

val DryerItemInputs = [<pyrotech:material:12>, <minecraft:sponge:1>, <pyrotech:material:25>, <harvestcraft:vanillabeanitem>, <harvestcraft:juteitem>, <betterwithaddons:wet_soap>] as IItemStack[];
val DryerItemOutputs = [<pyrotech:tinder>, <minecraft:sponge>, <minecraft:paper>, <harvestcraft:vanillaitem>, <pyrotech:material:2>, <betterwithmods:aesthetic:10>]  as IItemStack[];
val DryerRecipeNames = ["dryer_fibers", "dryer_sponge", "dryer_paper", "dryer_vanilla", "dryer_jute", "dryer_soap"] as string[];

for i, input in DryerItemInputs {
    var dryerrecipe1 = RecipeBuilder.newBuilder(DryerRecipeNames[i], "dryer", 600);
    dryerrecipe1.addItemInput(DryerItemInputs[i]);
    dryerrecipe1.addItemOutput(DryerItemOutputs[i]);
    dryerrecipe1.build();
}

var dryerrecipe2 = RecipeBuilder.newBuilder("dryer_fibers_sapling", "dryer", 600);
dryerrecipe2.addItemInput(<ore:treeSapling>);
dryerrecipe2.addItemOutput(<pyrotech:tinder>);
dryerrecipe2.build();

var dryerrecipe3 = RecipeBuilder.newBuilder("dryer_raisins", "dryer", 600);
dryerrecipe3.addItemInput(<ore:cropGrape>);
dryerrecipe3.addItemOutput(<harvestcraft:raisinsitem>);
dryerrecipe3.build();

function dryer(recipeName as string, input as IIngredient, output as IIngredient, ticks as int) {
    addMachineRecipe("dryer", recipeName, input, output, ticks);
}

function addMachineRecipe(machine as string, recipeName as string, input as IIngredient, output as IIngredient, ticks as int) {
    var rec = RecipeBuilder.newBuilder(recipeName, machine, ticks);
    if (input instanceof IItemStack) {
        var t1 as IItemStack = input;
        rec.addItemInput(t1);
    } else if (input instanceof ILiquidStack) {
        var t2 as ILiquidStack = input;
        rec.addFluidInput(t2);
    } else if (input instanceof IOreDictEntry) {
        logger.logWarning("Machine " + machine + " with recipe \"" + recipeName + "\" uses an ore dictionary as input, which may not work as intended!");
        var t3 as IOreDictEntry = input;
        rec.addItemInput(t3, input.amount);
    } else {
        logger.logError("Machine " + machine + " with recipe \"" + recipeName + "\" uses an invalid item input!");
    }

    if (output instanceof IItemStack) {
        var t4 as IItemStack = output;
        rec.addItemOutput(t4);
    } else if (output instanceof ILiquidStack) {
        var t5 as ILiquidStack = output;
        rec.addFluidOutput(t5);
    } else if (output instanceof IOreDictEntry) {
        logger.logWarning("Machine " + machine + " with recipe \"" + recipeName + "\" uses an ore dictionary as output, which may not work as intended!");
        var t6 as IOreDictEntry = output;
        rec.addItemOutput(t6, output.amount);
    } else {
        logger.logError("Machine " + machine + " with recipe \"" + recipeName + "\" uses an invalid item output!");
    }

    rec.build();
}

val brassIngot = <ore:ingotBrass>;

recipes.removeByMod("modularmachinery");
recipes.removeByMod("modulardiversity");

recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
    [null, <quark:chute>, null],
    [brassIngot, <rustic:liquid_barrel>, brassIngot], 
    [null, <inspirations:pipe>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
    [null, <inspirations:pipe>, null],
    [brassIngot, <rustic:liquid_barrel>, brassIngot], 
    [null, <quark:chute>, null]
]);
recipes.addShaped(<modularmachinery:blockcontroller>, [
    [brassIngot, <minecraft:redstone_torch>, brassIngot],
    [<minecraft:lever>, <minecraft:repeater>, <minecraft:lever>], 
    [brassIngot, <minecraft:redstone>, brassIngot]
]);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [
    [brassIngot, <modularmachinery:blockoutputbus:1>, brassIngot], 
    [null, <ore:chestWood>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [
    [brassIngot, <modularmachinery:blockoutputbus>, brassIngot], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
    [null, <quark:chute>, null],
    [brassIngot, <ore:chestWood>, brassIngot], 
    [null, <inspirations:pipe>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [
    [brassIngot, <modularmachinery:blockinputbus:1>, brassIngot], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [
    [brassIngot, <modularmachinery:blockinputbus>, brassIngot], 
    [null, <ore:chestWood>, null]
]);
recipes.addShaped(<modularmachinery:blockinputbus>, [
    [null, <inspirations:pipe>, null],
    [brassIngot, <ore:chestWood>, brassIngot], 
    [null, <quark:chute>, null]
]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:dryer"}), [
    [null, <ore:genericMetalBars>, null],
    [<ore:StoneHugeBrick>, <minecraft:writable_book>, <contenttweaker:oak_boards>], 
    [null, <pyrotech:drying_rack:1>, null]
]);
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:pizzaoven"}), [
    [null, <ore:genericMetalBars>, null],
    [<contenttweaker:brick_minecraft_clay>, <minecraft:writable_book>, <contenttweaker:brick_minecraft_clay>], 
    [null, <ore:netherrack>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [
    [null, null, null],
    [brassIngot, <modularmachinery:blockfluidoutputhatch:1>, brassIngot], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [
    [brassIngot, <modularmachinery:blockfluidoutputhatch>, brassIngot], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [
    [brassIngot, <modularmachinery:blockfluidinputhatch:1>, brassIngot], 
    [null, <rustic:liquid_barrel>, null]
]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [
    [brassIngot, <modularmachinery:blockfluidinputhatch>, brassIngot], 
    [null, <rustic:liquid_barrel>, null]
]);
