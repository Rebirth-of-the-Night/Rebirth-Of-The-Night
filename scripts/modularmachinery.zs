import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.jei.JEI;

//Dryer Recipes

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

var dryerrecipe4 = RecipeBuilder.newBuilder("dryer_mud_dirt", "dryer", 400);
dryerrecipe4.addItemInput(<biomesoplenty:mudball>);
dryerrecipe4.addItemOutput(<betterwithmods:dirt_pile>);
dryerrecipe4.build();

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

// Mod Recipes
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
recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:powerhammer"}), [
    [null, <minecraft:sticky_piston>, null],
    [<aesthetics:iron_brick_stairs>, <minecraft:writable_book>, <aesthetics:iron_brick_stairs>], 
    [null, <pyrotech:anvil_granite>, null]
]);
//recipes.addShaped(<modularmachinery:itemblueprint>.withTag({dynamicmachine: "modularmachinery:pizzaoven"}), [
//    [null, <ore:genericMetalBars>, null],
//    [<contenttweaker:brick_minecraft_clay>, <minecraft:writable_book>, <contenttweaker:brick_minecraft_clay>], 
//    [null, <ore:netherrack>, null]
//]);
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

// Energy System
var pyroReactor = RecipeBuilder.newBuilder("pyroreactor_power", "pyroreactor", 300);
pyroReactor.addItemInput(<betterwithmods:urn:8>);
pyroReactor.addItemOutput(<betterwithmods:urn>);
pyroReactor.addFluidOutput(<liquid:unstable_soulfire>*1000);
pyroReactor.build();

var galeChamber1 = RecipeBuilder.newBuilder("galechamber_power1", "galechamber", 300);
galeChamber1.addItemInput(<adpother:mist>);
galeChamber1.addFluidOutput(<liquid:dread_cold>*1000);
galeChamber1.build();

var galeChamber2 = RecipeBuilder.newBuilder("galechamber_power2", "galechamber", 300);
galeChamber2.addItemInput(<contenttweaker:condensed_dread_cold>);
galeChamber2.addFluidOutput(<liquid:dread_cold>*4000);
galeChamber2.build();

recipes.removeByMod("pollutantpump");

recipes.addShaped(<pollutantpump:pump>, [
    [<ore:genericMetal>, <advancedliftingmethods:rotor>, <ore:genericMetal>],
    [<ore:genericMetal>, <pyrotech:material:36>, <ore:genericMetal>], 
    [<ore:genericMetal>, <advancedliftingmethods:rotor>, <ore:genericMetal>]
]);

recipes.addShaped(<pollutantpump:pipe>*4, [
    [null, <ore:genericMetal>, null],
    [<ore:genericMetal>, null, <ore:genericMetal>], 
    [null, <ore:genericMetal>, null]
]);

recipes.addShaped(<adpother:iron_filter>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <ore:genericMetalBars>, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);