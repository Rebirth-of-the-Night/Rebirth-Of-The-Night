import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<multiblocked:blueprint_table>);
JEI.removeAndHide(<multiblocked:blueprint_table_part>);
JEI.removeAndHide(<multiblocked:blueprint>);
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
    [null, <ore:genericMetalBars>, null],
    [<ore:StoneHugeBrick>, <quark:chute>, <ore:StoneHugeBrick>], 
    [null, <pyrotech:drying_rack:1>, null]
]);
recipes.addShaped((<multiblocked:pyro_reactor>), [
    [null, <biomesoplenty:flesh>, null],
    [<contenttweaker:brick_minecraft_nether>, <multiblockmobs:soul_chassis>, <contenttweaker:brick_minecraft_nether>], 
    [null, <biomesoplenty:jar_filled:1>, null]
]);
recipes.addShaped((<multiblocked:power_hammer_mk1>), [
    [null, <minecraft:sticky_piston>, null],
    [<aesthetics:iron_brick_stairs>, <minecraft:iron_block>, <aesthetics:iron_brick_stairs>], 
    [null, <pyrotech:anvil_granite>, null]
]);
recipes.addShaped((<multiblocked:power_hammer_mk2>), [
    [null, <minecraft:sticky_piston>, null],
    [<aesthetics:iron_brick_stairs>, <betterwithmods:steel_block>, <aesthetics:iron_brick_stairs>], 
    [null, <pyrotech:anvil_iron_plated>, null]
]);
recipes.addShaped((<multiblocked:gale_chamber>), [
    [null, <dungeontactics:fan_block>, null],
    [<aether_legacy:dungeon_block>, <ore:blockEnchantedGravitite>, <aether_legacy:dungeon_block>], 
    [null, <ore:genericMetalBars>, null]
]);
recipes.addShaped((<multiblocked:aetherial_mixer>), [
    [null, <earthworks:block_slate>, null],
    [<aesthetics:iron_brick_stairs>, <betterwithmods:steel_axle>, <aesthetics:iron_brick_stairs>], 
    [null, <betterwithmods:cooking_pot:1>, null]
]);