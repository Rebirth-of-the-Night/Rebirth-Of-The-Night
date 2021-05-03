import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.charset.MaterialRegistry;
import mods.betterwithmods.Anvil;

JEI.removeAndHide(<charset:icon>);

recipes.remove(<charset:stopwatch>);
recipes.addShapeless("charset_stopwatch", <charset:stopwatch>, [<minecraft:clock>, <minecraft:tripwire_hook>]);

recipes.remove(<charset:signal_meter>);
recipes.addShaped("signal_meter", <charset:signal_meter>, [
    [null, <minecraft:redstone>, null],
    [<minecraft:comparator>, <dungeontactics:flight_goggles>, <minecraft:comparator>],
    [null, <minecraft:redstone>, null]
]);

// Charset Materials
MaterialRegistry.registerTypes(<betternether:reeds_block>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<betternether:stalagnate_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<betterwithaddons:planks_mulberry>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<betterwithaddons:planks_sakura>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:tower_wood>, "block", "wood", "plank");

// Default variants have to be added due to Charset not detecting wood that doesnt have a log to plank recipe 
MaterialRegistry.registerTypes(<biomesoplenty:planks_0>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:1>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:2>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:3>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:4>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:5>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:6>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:7>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:8>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:9>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:10>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:11>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:12>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:13>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:14>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<biomesoplenty:planks_0:15>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<defiledlands:tenebra_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<iceandfire:dreadwood_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<pyrotech:planks_tarred>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<rustic:planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<rustic:planks:1>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<aether_legacy:skyroot_plank>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:twilight_oak_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:canopy_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:mangrove_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:dark_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:time_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:trans_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:mine_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:sort_planks>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<twilightforest:huge_stalk>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<pyrotech:pile_wood_chips>, "block", "wood", "plank");
MaterialRegistry.registerTypes(<mowziesmobs:painted_acacia>, "block", "wood", "plank");
