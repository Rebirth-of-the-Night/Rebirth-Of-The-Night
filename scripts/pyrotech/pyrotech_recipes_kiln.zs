import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.pyrotech.StoneKiln;
import mods.pyrotech.BrickKiln;
import mods.pyrotech.PitKiln;

JEI.removeAndHide(<pyrotech:material:35>);

BrickKiln.removeAllRecipes();
StoneKiln.removeAllRecipes();
PitKiln.removeAllRecipes();
furnace.remove(<minecraft:brick>, <minecraft:clay_ball>);
furnace.remove(<minecraft:netherbrick>, <betterwithmods:material:35>);
furnace.remove(<biomesoplenty:mud_brick>, <biomesoplenty:mudball>);
furnace.remove(<pyrotech:material:5>, <pyrotech:material:9>);
furnace.remove(<ceramics:unfired_clay:5>, <ceramics:unfired_clay:4>);
furnace.remove(<pyrotech:material:15>);
furnace.remove(<betterwithmods:cooking_pot>);
furnace.remove(<netherex:fiery_netherbrick>);
furnace.remove(<ceramics:clay_barrel>);
furnace.remove(<ceramics:clay_barrel:1>);
furnace.remove(<ceramics:porcelain_barrel>);
furnace.remove(<ceramics:porcelain_barrel_extension>);

//primary recipes
//Template: BrickKiln.addRecipe("", ,100);
PitKiln.addRecipe("bwmpottery_a", <betterwithmods:cooking_pot>, <contenttweaker:crucible>, 20*210, true);
PitKiln.addRecipe("bwmpottery1", <betterwithmods:planter>, <betterwithmods:unfired_pottery:1>, 20*210, true);
PitKiln.addRecipe("bwmpottery2", <rustic:vase>, <contenttweaker:pot_unfired>, 20*210, true);
PitKiln.addRecipe("bwmpottery3", <betterwithmods:urn>, <betterwithmods:unfired_pottery:2>, 20*210, true);
PitKiln.addRecipe("bwmpottery4", <betterwithmods:vase>, <betterwithmods:unfired_pottery:3>, 20*210, true);
PitKiln.addRecipe("pyropotter1", <pyrotech:faucet_stone>, <contenttweaker:unfired_clay_faucet>, 20*210, true);
PitKiln.addRecipe("pyropotter2", <pyrotech:tar_collector>, <contenttweaker:unfired_clay_collector>, 20*210, true);
PitKiln.addRecipe("pyropotter3", <pyrotech:tar_drain>, <contenttweaker:unfired_clay_drain>, 20*210, true);
PitKiln.addRecipe("ceramicspotter1", <ceramics:clay_barrel>, <ceramics:clay_barrel_unfired>, 20*210, true);
PitKiln.addRecipe("ceramicspotter2", <ceramics:clay_barrel:1>, <ceramics:clay_barrel_unfired:1>, 20*210, true);
PitKiln.addRecipe("ceramicspotter3", <ceramics:porcelain_barrel>, <ceramics:clay_barrel_unfired:2>, 20*320, true);
PitKiln.addRecipe("ceramicspotter4", <ceramics:porcelain_barrel_extension>, <ceramics:clay_barrel_unfired:3>, 20*320, true);
StoneKiln.addRecipe("bwmnetherbrick", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 20*320, true);
StoneKiln.addRecipe("bwmfierynetherbrick", <netherex:fiery_netherbrick>, <contenttweaker:unfired_fiery_brick>, 20*320, true);
PitKiln.addRecipe("bwmclaybrick", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 20*320, true);
PitKiln.addRecipe("bwmadobebrick", <earthworks:item_adobe>, <contenttweaker:unfired_adobe_brick>, 20*290, true);
PitKiln.addRecipe("bwmmudbrick", <biomesoplenty:mud_brick>, <contenttweaker:unfired_mud_brick>, 20*320, true);
StoneKiln.addRecipe("bwmrefractorybrick", <pyrotech:material:5>, <contenttweaker:unfired_refractory_brick>, 20*320, true);
StoneKiln.addRecipe("bwmporcelainbrick", <ceramics:unfired_clay:5>, <contenttweaker:unfired_porcelain_brick>, 20*320, true);
StoneKiln.addRecipe("bwmcobble_to_stone", <minecraft:stone:0>, <minecraft:cobblestone:0>, 20*320, true);
//PitKiln.addRecipe("bwmcobble_to_stone1", <minecraft:stone:1>, <betterwithmods:cobblestone:0>,20*320, true);
//PitKiln.addRecipe("bwmcobble_to_stone2", <minecraft:stone:3>, <betterwithmods:cobblestone:1>, 20*320, true);
//PitKiln.addRecipe("bwmcobble_to_stone3", <minecraft:stone:5>, <betterwithmods:cobblestone:2>, 20*320, true);
PitKiln.addRecipe("mudbrick_to_clay", <minecraft:clay_ball>, <biomesoplenty:mud_brick>, 20*360, true);
StoneKiln.addRecipe("charge_to_burnt_goo", <betterslimes:black_slime>, <minecraft:fire_charge>, 20*320, true);
PitKiln.addRecipe("charcoal_pile", <contenttweaker:charcoal_pile>, <pyrotech:log_pile>, 20*210, true);
PitKiln.addRecipe("charcoal_flakes", <pyrotech:material:15>, <pyrotech:rock:7>, 20*210, 0.25, [<biomesoplenty:ash>*2], true);
PitKiln.addRecipe("bwmflint_block", <betterwithmods:aesthetic:5>, <ore:gravel>, 20*210, true);
PitKiln.addRecipe("whitecobble_to_stone", <betterwithmods:aesthetic:6>, <betterwithmods:aesthetic:7>, 20*280, true);
BrickKiln.addRecipe("endstone_to_enderslag", <betterwithmods:material:39>, <minecraft:end_stone>, 20*320, 0.7, [<betterwithmods:aesthetic:7>]);
//food recipes
StoneKiln.addRecipe("bwmcake", <minecraft:cake>, <betterwithmods:raw_pastry>, 20*60, true);
StoneKiln.addRecipe("bwmpumpkinpie", <minecraft:pumpkin_pie>, <betterwithmods:raw_pastry:1>, 20*60, true);
StoneKiln.addRecipe("bwmcookie", <minecraft:cookie>*8, <betterwithmods:raw_pastry:2>, 20*60, true);
StoneKiln.addRecipe("bwmbread", <minecraft:bread>, <betterwithmods:raw_pastry:3>,20*60, true);
//PitKiln.addRecipe("bwmapplepie", <betterwithmods:apple_pie>, <betterwithmods:raw_pastry:4>,200, true);
PitKiln.addRecipe("raw_salt_from_sandstone", <contenttweaker:halite>, <ore:sandstone>, 20*210, true);
//Misc
//PitKiln.addRecipe("coral_lime", <pyrotech:material:35>*5, <coralreef:reef>,20*210, true);
//note:add BOP coral here for slightly less return (easily harvestable item versus thick block of reef)

// Modded cobble to stone recipes
val ignStoneDef = <undergroundbiomes:igneous_stone>.definition;
val ignCobbleDef = <undergroundbiomes:igneous_cobble>.definition;
val metaStoneDef = <undergroundbiomes:metamorphic_stone>.definition;
val metaCobbleDef = <undergroundbiomes:metamorphic_cobble>.definition;

for i in 0 to 8 {
    StoneKiln.addRecipe("igneous_cobble_to_stone_"~i, ignStoneDef.makeStack(i), ignCobbleDef.makeStack(i), 20*320, true);
    StoneKiln.addRecipe("metamorphic_cobble_to_stone_"~i, metaStoneDef.makeStack(i), metaCobbleDef.makeStack(i), 20*320, true);
}

StoneKiln.addRecipe("sedimentary_cobble_to_stone0", <undergroundbiomes:sedimentary_stone:0>, <contenttweaker:limestone_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone1", <undergroundbiomes:sedimentary_stone:1>, <contenttweaker:chalk_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone2", <undergroundbiomes:sedimentary_stone:2>, <contenttweaker:shale_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone3", <undergroundbiomes:sedimentary_stone:3>, <contenttweaker:siltstone_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone4", <undergroundbiomes:sedimentary_stone:4>, <contenttweaker:lignite_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone5", <undergroundbiomes:sedimentary_stone:5>, <contenttweaker:dolomite_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone6", <undergroundbiomes:sedimentary_stone:6>, <contenttweaker:greywacke_cobble>, 20*320, true);
StoneKiln.addRecipe("sedimentary_cobble_to_stone7", <undergroundbiomes:sedimentary_stone:7>, <contenttweaker:chert_cobble>, 20*320, true);

StoneKiln.addRecipe("sand_to_glass", <minecraft:glass>, <ore:sand>, 20*320, true);

//Unified kiln recipes

/*
This useful map couldn't have been made without the contribution of the Crafttweaker Discord Server users Silicon_Ent and Zook. Many thanks.
*/

//metal
var stringMat as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril"];
for mat in stringMat {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["ingot"~mat], oreDict["ore"~mat]);
    StoneKiln.addRecipe("StoneKiln"~mat, oreDict["ingot"~mat].firstItem, oreDict["ore"~mat], 20*250, true);
}

var dustMat as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril", "SoulforgedSteel", "CrucibleSteel", "Endorium", "Bronze", "Electrum"];
for mat in dustMat {
    StoneKiln.addRecipe("StoneKiln_dust"~mat, oreDict["ingot"~mat].firstItem, oreDict["dust"~mat], 20*320, true);
}

var rawOre as string[] = ["Iron", "Copper", "Tin", "Silver", "Gold", "Viridium", "Mythril"];
for mat in rawOre {
    StoneKiln.addRecipe("StoneKiln_rawOre"~mat, oreDict["ingot"~mat].firstItem, oreDict["rawOre"~mat], 20*320, true);
}

//gem
var stringMat1 as string[] = ["Coal", "Redstone", "Lapis", "Diamond", "Ruby", "Sapphire", "Peridot", "Emerald", "Quartz", "Amethyst", "EnderBiotite", "Onyx", "Ambrosium", "Zanite"];
for mat1 in stringMat1 {
//optional furnace ore recipes removal  ==>  furnace.remove(oreDict["gem"~mat1], oreDict["ore"~mat1]);
    StoneKiln.addRecipe("StoneKiln"~mat1, oreDict["gem"~mat1].firstItem, oreDict["ore"~mat1], 20*270, true);
}
