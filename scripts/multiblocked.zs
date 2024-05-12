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
recipes.addShaped((<multiblocked:alchemical_mixer>), [
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
    [<contenttweaker:magicked_stone>.reuse(), <ore:ingotMythril>, <contenttweaker:magicked_stone>.reuse()], 
    [null, <arcanearchives:raw_quartz_cluster>.reuse(), null]
]);
recipes.addShaped((<multiblocked:mechanical_processor>), [
    [null, <betterwithmods:wooden_gearbox>.reuse(), null],
    [<aesthetics:iron_brick_stairs>.reuse(), <betterwithmods:wooden_axle>, <aesthetics:iron_brick_stairs>.reuse()], 
    [null, <betterwithmods:cooking_pot:1>.reuse(), null]
]);
recipes.addShapeless("seed_to_viridium", <contenttweaker:raw_viridium>, [<contenttweaker:viridea_seed>]);

JEI.addItem(<minecraft:potion>.withTag({Potion: "potioncore:bless"}));
JEI.addItem(<minecraft:potion>.withTag({Potion: "potioncore:strong_bless"}));

/*JEI.addItem(<minecraft:potion>.withTag({CustomPotionEffects:[{Id:1,Amplifier:2,Duration:100},{Id:6},{Id:8,Amplifier:1,Duration:100},{Id:10,Amplifier:3,Duration:100},{Id:11,Amplifier:1,Duration:100},{Id:18,Amplifier:99,Duration:200},{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 200, Id: 206, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 200, Id: 145, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 200, Id: 138, Amplifier: 100 as byte}],CustomPotionColor:720683,display:{Name:"Potion of Withdrawing",Lore:["A handy brew that extends your life for just a bit longer."]}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 5500122, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 251, Amplifier: 1 as byte}], display: {Lore: ["A handy brew that converts physical damage", "to magical damage."], Name: "Potion of Arcanic Conversion I"}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 5500122, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 251, Amplifier: 3 as byte}], display: {Lore: ["A handy brew that converts physical damage", "to magical damage."], Name: "Potion of Arcanic Conversion II"}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 5036715, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 190, Amplifier: 4 as byte}], display: {Lore: ["A handy brew that helps you bonk enemies."], Name: "Potion of Bonking"}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 8115192, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 30, Amplifier: 0 as byte}], display: {Lore: ["A handy brew that increases dodging distance"], Name: "Potion of Dodging"}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 14788403, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 3, Amplifier: 2 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 120, Amplifier: 2 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 195, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 18, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 9600, Id: 206, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 145, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 9600, Id: 138, Amplifier: 100 as byte}], display: {Lore: ["A handy brew that helps you with construction"], Name: "Potion of Building"}}));
JEI.addItem(<minecraft:potion>.withTag({CustomPotionColor: 16777153, CustomPotionEffects: [{Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 206, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 114, Amplifier: 0 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 145, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 138, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 117, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 0 as byte, Duration: 1800, Id: 18, Amplifier: 100 as byte}, {Ambient: 0 as byte, CurativeItems: [{id: "minecraft:milk_bucket", Count: 1, Damage: 0 as short}], ShowParticles: 1 as byte, Duration: 1800, Id: 147, Amplifier: 100 as byte}], display: {Lore: ["A handy brew that gives you short flight."], Name: "Potion of Flight"}}));
*/