import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<multiblocked:blueprint_table>);
JEI.removeAndHide(<multiblocked:blueprint_table_part>);
JEI.removeAndHide(<multiblocked:blueprint>);
JEI.removeAndHide(<multiblocked:controller_tester>);
JEI.removeAndHide(<multiblocked:part_tester>);
recipes.removeByMod("multiblocked");
val brassIngot = <ore:ingotBrass>;

// pump mechanic recipes
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

// multiblock controller recipes + assembler
recipes.addShaped((<multiblocked:multiblock_builder>), [
    [<minecraft:paper>, brassIngot, <minecraft:paper>],
    [<minecraft:paper>, <dungeontactics:engineers_wrench_iron>, brassIngot], 
    [brassIngot, <minecraft:paper>, <minecraft:paper>]
]);
recipes.addShaped((<multiblocked:dryer>), [
    [null, <ore:genericMetalBars>.reuse(), null],
    [<ore:StoneHugeBrick>.reuse(), <quark:chute>, <ore:StoneHugeBrick>.reuse()], 
    [null, <pyrotech:drying_rack:1>.reuse(), null]
]);
recipes.addShaped((<multiblocked:pyro_reactor>), [
    [null, <biomesoplenty:flesh>.reuse(), null],
    [<contenttweaker:brick_minecraft_nether>.reuse(), <multiblockmobs:soul_chassis>, <contenttweaker:brick_minecraft_nether>.reuse()], 
    [null, <biomesoplenty:jar_filled:1>.reuse(), null]
]);
recipes.addShaped((<multiblocked:power_hammer_mk1>), [
    [null, <minecraft:sticky_piston>, null],
    [<aesthetics:iron_brick_stairs>, <minecraft:iron_block>, <aesthetics:iron_brick_stairs>], 
    [null, <pyrotech:anvil_granite>, null]
]);
recipes.addShaped((<multiblocked:power_hammer_mk2>), [
    [null, <minecraft:sticky_piston>.reuse(), null],
    [<aesthetics:iron_brick_stairs>.reuse(), <betterwithmods:steel_block>, <aesthetics:iron_brick_stairs>.reuse()], 
    [null, <pyrotech:anvil_iron_plated>.reuse(), null]
]);
recipes.addShaped((<multiblocked:gale_chamber>), [
    [null, <dungeontactics:fan_block>.reuse(), null],
    [<aether_legacy:dungeon_block>.reuse(), <ore:blockEnchantedGravitite>, <aether_legacy:dungeon_block>.reuse()], 
    [null, <ore:genericMetalBars>.reuse(), null]
]);
recipes.addShaped((<multiblocked:aetherial_mixer>), [
    [null, <earthworks:block_slate>.reuse(), null],
    [<aesthetics:iron_brick_stairs>.reuse(), <betterwithmods:steel_axle>, <aesthetics:iron_brick_stairs>.reuse()], 
    [null, <betterwithmods:cooking_pot:1>.reuse(), null]
]);
recipes.addShaped((<multiblocked:biotic_incubator>), [
    [null, <betterwithmods:saw>.reuse(), null],
    [<contenttweaker:lunarinviridiumbrick>.reuse(), <simpleores:adamantium_block>, <contenttweaker:lunarinviridiumbrick>.reuse()], 
    [null, <rustic:fertile_soil>.reuse(), null]
]);
recipes.addShaped((<multiblocked:crystalline_accelerator>), [
    [null, <forge:bucketfilled>.withTag({FluidName: "residual_mythril", Amount: 1000}).reuse(), null],
    [<contenttweaker:magicked_stone>.reuse(), <aesthetics:mythril_bars>, <contenttweaker:magicked_stone>.reuse()], 
    [null, <arcanearchives:raw_quartz_cluster>.reuse(), null]
]);
recipes.addShaped((<multiblocked:mechanical_processor>), [
    [null, <betterwithmods:wooden_gearbox>.reuse(), null],
    [<aesthetics:iron_brick_stairs>.reuse(), <betterwithmods:wooden_axle>, <aesthetics:iron_brick_stairs>.reuse()], 
    [null, <betterwithmods:cooking_pot:1>.reuse(), null]
]);
recipes.addShapeless("seed_to_viridium", <contenttweaker:raw_viridium>*3, [<contenttweaker:viridea_seed>]);