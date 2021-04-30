import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;

JEI.removeAndHide(<pyrotech:material:35>);

BrickKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
furnace.remove(<minecraft:brick>, <minecraft:clay_ball>);
furnace.remove(<minecraft:netherbrick>, <betterwithmods:material:35>);
furnace.remove(<biomesoplenty:mud_brick>, <biomesoplenty:mudball>);
furnace.remove(<pyrotech:material:15>);
furnace.remove(<betterwithmods:cooking_pot>);

//primary recipes
//Template: BrickKiln.addRecipe("", ,100);
StoneKiln.addRecipe("bwmpottery_a", <betterwithmods:cooking_pot>, <contenttweaker:crucible>, 20*210, true);
StoneKiln.addRecipe("bwmpottery1", <betterwithmods:planter>, <betterwithmods:unfired_pottery:1>, 20*210, true);
StoneKiln.addRecipe("bwmpottery2", <rustic:vase>, <contenttweaker:pot_unfired>, 20*210, true);
StoneKiln.addRecipe("bwmpottery3", <betterwithmods:urn>, <betterwithmods:unfired_pottery:2>, 20*210, true);
StoneKiln.addRecipe("bwmpottery4", <betterwithmods:vase>, <betterwithmods:unfired_pottery:3>, 20*210, true);
StoneKiln.addRecipe("bwmnetherbrick", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 20*240, true);
StoneKiln.addRecipe("bwmclaybrick", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 20*240, true);
StoneKiln.addRecipe("bwmmudbrick", <biomesoplenty:mud_brick>, <contenttweaker:unfired_mud_brick>, 20*240, true);
StoneKiln.addRecipe("refractorybrick", <pyrotech:material:5>, <pyrotech:material:9>, 20*280, true);
StoneKiln.addRecipe("bwmcobble_to_stone", <minecraft:stone:0>, <minecraft:cobblestone:0>, 20*210, true);
StoneKiln.addRecipe("bwmcobble_to_stone1", <minecraft:stone:1>, <betterwithmods:cobblestone:0>,20*210, true);
StoneKiln.addRecipe("bwmcobble_to_stone2", <minecraft:stone:3>, <betterwithmods:cobblestone:1>, 20*210, true);
StoneKiln.addRecipe("bwmcobble_to_stone3", <minecraft:stone:5>, <betterwithmods:cobblestone:2>, 20*210, true);
StoneKiln.addRecipe("mudbrick_to_clay", <minecraft:clay_ball>, <biomesoplenty:mud_brick>, 20*210, true);
StoneKiln.addRecipe("charge_to_burnt_goo", <betterslimes:black_slime>, <minecraft:fire_charge>, 20*300, true);
StoneKiln.addRecipe("charcoal_pile", <contenttweaker:charcoal_pile>, <pyrotech:log_pile>, 20*290, true);
StoneKiln.addRecipe("charcoal_flakes", <pyrotech:material:15>, <pyrotech:rock:7>, 20*290, 0.25, [<biomesoplenty:ash>*2], true);
StoneKiln.addRecipe("bwmflint_block", <betterwithmods:aesthetic:5>, <ore:gravel>, 20*290, true);
StoneKiln.addRecipe("whitecobble_to_stone", <betterwithmods:aesthetic:6>, <betterwithmods:aesthetic:7>, 20*280, true);
BrickKiln.addRecipe("endstone_to_enderslag", <betterwithmods:material:39>, <minecraft:end_stone>, 20*300, 0.7, [<betterwithmods:aesthetic:7>]);
//food recipes
StoneKiln.addRecipe("bwmcake", <minecraft:cake>, <betterwithmods:raw_pastry>, 20*60, true);
StoneKiln.addRecipe("bwmpumpkinpie", <minecraft:pumpkin_pie>, <betterwithmods:raw_pastry:1>, 20*60, true);
StoneKiln.addRecipe("bwmcookie", <minecraft:cookie>*8, <betterwithmods:raw_pastry:2>, 20*60, true);
StoneKiln.addRecipe("bwmbread", <minecraft:bread>, <betterwithmods:raw_pastry:3>,20*60, true);
//StoneKiln.addRecipe("bwmapplepie", <betterwithmods:apple_pie>, <betterwithmods:raw_pastry:4>,200, true);
StoneKiln.addRecipe("raw_salt_from_sandstone", <contenttweaker:halite>, <ore:sandstone>, 20*210, true);
//Misc
//StoneKiln.addRecipe("coral_lime", <pyrotech:material:35>*5, <coralreef:reef>,20*210, true);
//note:add BOP coral here for slightly less return (easily harvestable item versus thick block of reef)

// Modded cobble to stone recipes
val ignStoneDef = <undergroundbiomes:igneous_stone>.definition;
val ignCobbleDef = <undergroundbiomes:igneous_cobble>.definition;
val metaStoneDef = <undergroundbiomes:metamorphic_stone>.definition;
val metaCobbleDef = <undergroundbiomes:metamorphic_cobble>.definition;

for i in 0 to 8 {
    StoneKiln.addRecipe("igneous_cobble_to_stone_"~i, ignStoneDef.makeStack(i), ignCobbleDef.makeStack(i), 700, true);
    StoneKiln.addRecipe("metamorphic_cobble_to_stone_"~i, metaStoneDef.makeStack(i), metaCobbleDef.makeStack(i), 700, true);
}

StoneKiln.addRecipe("sand_to_glass", <minecraft:glass>, <ore:sand>, 20*300, true);

//Unified kiln recipes

/*
This useful map couldn't have been made without the contribution of the Crafttweaker Discord Server users Silicon_Ent and Zook. Many thanks.
*/

//metal
var stringMat as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril"];
for mat in stringMat {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["ingot"~mat], oreDict["ore"~mat]);
    StoneKiln.addRecipe("stonekiln"~mat, oreDict["ingot"~mat].firstItem, oreDict["ore"~mat], 20*250, true);
}

var dustMat as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril", "SoulforgedSteel", "CrucibleSteel", "Endorium", "Bronze", "Electrum"];
for mat in dustMat {
    StoneKiln.addRecipe("stonekiln_dust"~mat, oreDict["ingot"~mat].firstItem, oreDict["dust"~mat], 20*300, true);
}

//gem
var stringMat1 as string[] = ["Coal", "Redstone", "Lapis", "Diamond", "Ruby", "Sapphire", "Peridot", "Emerald", "Quartz", "Amethyst", "EnderBiotite", "Onyx", "Ambrosium", "Zanite"];
for mat1 in stringMat1 {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["gem"~mat1], oreDict["ore"~mat1]);
    StoneKiln.addRecipe("stonekiln"~mat1, oreDict["gem"~mat1].firstItem, oreDict["ore"~mat1], 20*270, true);
}
