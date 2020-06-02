import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;

BrickKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
furnace.remove(<minecraft:brick>, <minecraft:clay_ball>);
furnace.remove(<minecraft:netherbrick>, <betterwithmods:material:35>);
furnace.remove(<pyrotech:material:15>);
furnace.remove(<betterwithmods:cooking_pot>);

//primary recipes
//Template: BrickKiln.addRecipe("", ,100);
StoneKiln.addRecipe("bronze_from_pebbles",<ore:ingotBronze>.firstItem, <contenttweaker:copper_tin_pebbles>, 2000, true);
StoneKiln.addRecipe("electrum_from_pebbles",<ore:ingotElectrum>.firstItem, <contenttweaker:silver_gold_pebbles>, 1200, true);
StoneKiln.addRecipe("bwmpottery",<betterwithmods:cooking_pot>, <betterwithmods:unfired_pottery>, 600, true);
StoneKiln.addRecipe("bwmpottery_a",<betterwithmods:cooking_pot>, <contenttweaker:crucible>, 600, true);
StoneKiln.addRecipe("bwmpottery1",<betterwithmods:planter>, <betterwithmods:unfired_pottery:1>, 600, true);
StoneKiln.addRecipe("bwmpottery2",<betterwithmods:urn>, <betterwithmods:unfired_pottery:2>, 600, true);
StoneKiln.addRecipe("bwmpottery3",<betterwithmods:vase>, <betterwithmods:unfired_pottery:3>, 600, true);
StoneKiln.addRecipe("bwmclaybrick",<minecraft:brick:0>, <minecraft:clay_ball:0>, 300, true);
StoneKiln.addRecipe("bwmnetherbrick", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 180, true);
StoneKiln.addRecipe("bwmnetherbrick_efficient",<minecraft:netherbrick>*4, <minecraft:netherrack>, 700, true);
StoneKiln.addRecipe("bwmclaybrick_efficient ",<minecraft:brick>, <betterwithmods:unfired_pottery:4>, 180, true);
StoneKiln.addRecipe("refractorybrick", <pyrotech:material:5>, <pyrotech:material:9>, 180, true);
StoneKiln.addRecipe("bwmcobble_to_stone",<minecraft:stone:0>, <minecraft:cobblestone:0>, 700, true);
StoneKiln.addRecipe("bwmcobble_to_stone1",<minecraft:stone:1>, <betterwithmods:cobblestone:0>,700, true);
StoneKiln.addRecipe("bwmcobble_to_stone2",<minecraft:stone:3>, <betterwithmods:cobblestone:1>, 700, true);
StoneKiln.addRecipe("bwmcobble_to_stone3",<minecraft:stone:5>, <betterwithmods:cobblestone:2>, 700, true);
StoneKiln.addRecipe("charge_to_blazepowder",<minecraft:blaze_powder>, <minecraft:fire_charge>, 600, true);
StoneKiln.addRecipe("bwmmudbrick_efficient",<biomesoplenty:mud_brick>, <ore:ballMud>, 180, true);
StoneKiln.addRecipe("charcoal_pile",<contenttweaker:charcoal_pile>, <pyrotech:log_pile>, 2400, true);
StoneKiln.addRecipe("charcoal_flakes",<pyrotech:material:15>, <pyrotech:rock:7>, 1200, 0.25, [<biomesoplenty:ash>*2], true);
StoneKiln.addRecipe("bwmflint_block",<betterwithmods:aesthetic:5>, <ore:gravel>, 1200, true);
StoneKiln.addRecipe("whitecobble_to_stone",<betterwithmods:aesthetic:6>, <betterwithmods:aesthetic:7>, 700, true);
BrickKiln.addRecipe("endstone_to_enderslag",<betterwithmods:aesthetic:7>, <minecraft:end_stone>, 1500, 0.3, [<betterwithmods:material:39>]);
//food recipes
StoneKiln.addRecipe("bwmcake",<minecraft:cake>, <betterwithmods:raw_pastry>, 200, true);
StoneKiln.addRecipe("bwmpumpkinpie",<minecraft:pumpkin_pie>, <betterwithmods:raw_pastry:1>, 200, true);
StoneKiln.addRecipe("bwmcookie",<minecraft:cookie>*8, <betterwithmods:raw_pastry:2>, 200, true);
StoneKiln.addRecipe("bwmbread",<minecraft:bread>, <betterwithmods:raw_pastry:3>,200, true);
//StoneKiln.addRecipe("bwmapplepie",<betterwithmods:apple_pie>, <betterwithmods:raw_pastry:4>,200, true);
StoneKiln.addRecipe("raw_salt_from_sandstone",<contenttweaker:halite>, <ore:sandstone>,2400, true);
//Misc
StoneKiln.addRecipe("kiln_rimeOre",<netherex:rime_crystal>, <netherex:rime_ore>,5000, true);
StoneKiln.addRecipe("coral_lime",<pyrotech:material:35>*5, <coralreef:reef>,3600, true);

// Modded cobble to stone recipes
val ignStoneDef = <undergroundbiomes:igneous_stone>.definition;
val ignCobbleDef = <undergroundbiomes:igneous_cobble>.definition;
val metaStoneDef = <undergroundbiomes:metamorphic_stone>.definition;
val metaCobbleDef = <undergroundbiomes:metamorphic_cobble>.definition;

for i in 0 to 7 {
    StoneKiln.addRecipe("igneous_cobble_to_stone_"~i, ignStoneDef.makeStack(i), ignCobbleDef.makeStack(i), 700, true);
    StoneKiln.addRecipe("metamorphic_cobble_to_stone"~i, metaStoneDef.makeStack(i), metaCobbleDef.makeStack(i), 700, true);
}

StoneKiln.addRecipe("sand_to_glass", <minecraft:glass>, <ore:sand>, 600, true);

//Unified kiln recipes

/*
This useful map couldn't have been made without the contribution of the Crafttweaker Discord Server users Silicon_Ent and Zook. Many thanks.
*/

//metal
var stringMat as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril"];
for mat in stringMat {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["ingot"~mat], oreDict["ore"~mat]);
    StoneKiln.addRecipe("stonekiln"~mat, oreDict["ingot"~mat].firstItem, oreDict["ore"~mat], 4800, true);
}

//gem
var stringMat1 as string[] = ["Coal", "Redstone", "Lapis", "Diamond", "Ruby", "Sapphire", "Peridot", "Emerald", "Quartz", "Amethyst", "EnderBiotite", "Onyx"];
for mat1 in stringMat1 {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["gem"~mat1], oreDict["ore"~mat1]);
    StoneKiln.addRecipe("stonekiln"~mat1, oreDict["gem"~mat1].firstItem, oreDict["ore"~mat1], 5000, true);
}
