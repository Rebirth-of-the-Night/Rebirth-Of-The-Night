import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockState;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.advancedmortars.Mortar; //to make porcelain
import mods.jei.JEI;
import mods.foundry.AlloyMixer;
import mods.foundry.BurnerHeater;
import mods.foundry.Casting;
import mods.foundry.CastingTable;
import mods.foundry.Heating;
import mods.foundry.Infuser;
import mods.foundry.Melting;
import mods.foundry.MoldStation;
import mods.betterwithmods.Anvil;

/*
mB means miniBucket, forge's liquid metric unit
16  mB = 1 nugget
144 mB = 1 ingot
288 mB = 1 ore block
1 bucket = 6 ingots, 8 nuggets, 8 mB

1 ore block = 192 mb (ingot + 1/3 extra)
*/

//heat source
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=0>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=1>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=2>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=3>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=4>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=5>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=6>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=7>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=8>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=9>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=10>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=11>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=12>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=13>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=14>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:stoked_flame:age=15>, 1500);
Heating.addStateSource(<blockstate:betterwithmods:creative_generator>, 2500);

// burner heater fuel
BurnerHeater.clear();
BurnerHeater.addFuel(<pyrotech:coal_coke_block>, 3200, 1700*100);
BurnerHeater.addFuel(<betterwithmods:aesthetic:13>, 2800, 1900*100);
BurnerHeater.addFuel(<contenttweaker:charmpeat>, 800, 2600*100);

//recipes
val porcelain_bricks = <contenttweaker:brick_ceramics_porcelain>;

recipes.removeByRecipeName("ceramics:tools/cake");
recipes.removeByRecipeName("ceramics:decoration/bricks_slab");
JEI.removeAndHide(<foundry:componentblock>);
JEI.removeAndHide(<foundry:componentblock:1>);
JEI.removeAndHide(<foundry:componentblock:2>);
JEI.removeAndHide(<foundry:machine>);
JEI.removeAndHide(<foundry:machine:4>);
JEI.removeAndHide(<foundry:bronze_cauldron>);
JEI.removeAndHide(<foundry:mold:2>);
JEI.removeAndHide(<foundry:mold:3>);
JEI.removeAndHide(<foundry:mold:5>);
JEI.removeAndHide(<foundry:mold:6>);
JEI.removeAndHide(<foundry:mold:18>);
JEI.removeAndHide(<foundry:mold:19>);
JEI.removeAndHide(<foundry:mold:20>);
JEI.removeAndHide(<foundry:mold:21>);
JEI.removeAndHide(<foundry:casting_table:1>);
JEI.removeAndHide(<foundry:casting_table:2>);
JEI.removeAndHide(<foundry:small_clay>);
JEI.removeAndHide(<foundry:machine:5>); // Induction Heater
JEI.removeAndHide(<foundry:machine:8>); // Alloying Crucible
JEI.removeAndHide(<foundry:machine:9>); // Fluid Heater
JEI.hideCategory("foundry.alloyingcrucible");
JEI.hideCategory("foundry.fluidheater");
recipes.removeByRecipeName("foundry:clay");

recipes.remove(<ceramics:clay_barrel_unfired>);
recipes.remove(<ceramics:clay_barrel_unfired:1>);//Recipes for these are found in pottery.zs and betterwithmods.zs

recipes.remove(<foundry:mold_station>);
recipes.remove(<foundry:burner_heater>);

recipes.addShaped("melting_crucible_standard", <foundry:machine:7>,[ //Melting Crucible Refractory
	[<betterwithmods:aesthetic:7>, <pyrotech:material:5>, <betterwithmods:aesthetic:7>],
    [<contenttweaker:brick_pyrotech_refractory>, <betterwithmods:cooking_pot>, <contenttweaker:brick_pyrotech_refractory>],
    [<betterwithmods:aesthetic:7>, <contenttweaker:brick_pyrotech_refractory>, <betterwithmods:aesthetic:7>]
]);
recipes.addShaped("melting_crucible_advanced", <foundry:machine:6>,[ //Melting Crucible Porcelain
	[<betterwithmods:aesthetic:7>, <ceramics:unfired_clay:5>, <betterwithmods:aesthetic:7>],
    [porcelain_bricks, <foundry:machine:7> | <betterwithmods:cooking_pot>, porcelain_bricks],
    [<betterwithmods:aesthetic:7>, porcelain_bricks, <betterwithmods:aesthetic:7>]
]);

recipes.addShaped("metal_infuser", <foundry:machine:3>,[ //metal_infuser
	[null, <ore:hopper>, null],
    [<ceramics:unfired_clay:5>, <foundry:machine:7>, <ceramics:unfired_clay:5>]
]);

recipes.addShaped("burner_heater", <foundry:burner_heater>,[ //Burner Heater (solid fuel)
	[porcelain_bricks, <betterwithmods:aesthetic:3>, porcelain_bricks],
    [porcelain_bricks, <betternether:cincinnasite_forge>, porcelain_bricks],
    [porcelain_bricks, porcelain_bricks, porcelain_bricks]
]);

recipes.addShaped("mold_station", <foundry:mold_station>,[ //Mold Station
	[<minecraft:crafting_table>],
    [<pyrotech:brick_kiln>]
]); 

for i in 0 to 6 {
    Anvil.addShaped(<foundry:machine:1>, // Metal Caster
    [
        [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
        [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <betterwithmods:grate>.definition.makeStack(i), <ceramics:faucet>],
        [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <betterwithmods:grate>.definition.makeStack(i), <ceramics:faucet>],
        [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
    ]);
}

Anvil.addShaped(<foundry:machine:2>, //Alloy Mixer
[
   [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>],
   [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <pyrotech:bucket_stone>, <minecraft:hopper>],
   [<ceramics:unfired_clay:5>, <pyrotech:bucket_stone>, <pyrotech:bucket_stone>, <minecraft:hopper>],
   [null, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>, <ceramics:unfired_clay:5>]
]);

//Porcelain Recipe
val kaolin_quartz = <pyrotech:material:37>;

recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_quartz");
recipes.removeByRecipeName("ceramics:decoration/unfired_porcelain_bone_meal");

Mortar.addRecipe(["diamond"], <ceramics:unfired_clay:4> * 9, 5, [kaolin_quartz, <pyrotech:material:4> * 8]);
Mortar.addRecipe(["diamond"], <ceramics:unfired_clay:4>, 5, [kaolin_quartz, <minecraft:clay_ball> * 8]);

recipes.addShapeless("unfired_porcelain_bricks",<contenttweaker:unfired_porcelain_brick>,[<ceramics:unfired_clay:4>]);

//Refracotta colors
val refracotta = <contenttweaker:refracotta>;
val reGray = <contenttweaker:refracotta_gray>;
val reYell = <contenttweaker:refracotta_yellow>;
val reCyan = <contenttweaker:refracotta_cyan>;
val reMagen = <contenttweaker:refracotta_magenta>;
val reLime = <contenttweaker:refracotta_lime>;
val reWhite = <contenttweaker:refracotta_white>;
val rePink = <contenttweaker:refracotta_pink>;
val reBrown = <contenttweaker:refracotta_brown>;
val reLBlue = <contenttweaker:refracotta_light_blue>;
val reRed = <contenttweaker:refracotta_red>;
val reGreen = <contenttweaker:refracotta_green>;
val reBlue = <contenttweaker:refracotta_blue>;
val reBlack = <contenttweaker:refracotta_black>;
val rePurp = <contenttweaker:refracotta_purple>;
val reLGray = <contenttweaker:refracotta_light_gray>;
val reOran = <contenttweaker:refracotta_orange>;

recipes.addShaped("black_refracotta", reBlack*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeBlack>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("red_refracotta", reRed*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeRed>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("green_refracotta", reGreen*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeGreen>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("brown_refracotta", reBrown*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeBrown>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("blue_refracotta", reBlue*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeBlue>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("purple_refracotta", rePurp*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyePurple>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("cyan_refracotta", reCyan*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeCyan>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("light_gray_refracotta", reLGray*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeLightGray>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("gray_refracotta", reGray*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeGray>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("pink_refracotta", rePink*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyePink>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("lime_refracotta", reLime*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeLime>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("yellow_refracotta", reYell*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeYellow>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("light_blue_refracotta", reLBlue*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeLightBlue>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("magenta_refracotta", reMagen*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeMagenta>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("orange_refracotta", reOran*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeOrange>,refracotta],
    [refracotta,refracotta,refracotta]
]);
recipes.addShaped("white_refracotta", reWhite*8,[
	[refracotta,refracotta,refracotta],
    [refracotta,<ore:dyeWhite>,refracotta],
    [refracotta,refracotta,refracotta]
]);

// Infuser // Infuser.addRecipe(ILiquidStack output, ILiquidStack input, IIngredient substance, int energy);

// Alloy Mixer // AlloyMixer.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
AlloyMixer.addRecipe(<liquid:electrum>*4, [<liquid:gold>*4, <liquid:silver>*3, <liquid:ambrosium>*2]);

// Melting // Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int melting_point, @Optional int speed)
Melting.addRecipe(<liquid:soulforged_steel>*144, <betterwithmods:material:14>, 2350); // SFS and SFS artifacts
Melting.addRecipe(<liquid:soulforged_steel>*(144*16), <betterwithmods:steel_block>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <ore:nuggetSoulforgedSteel>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact1>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact2>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact3>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact4>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact5>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact6>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact7>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*16, <contenttweaker:sfs_artifact8>, 2350);
Melting.addRecipe(<liquid:soulforged_steel>*144, <ore:dustSoulforgedSteel>, 2350);
Melting.addRecipe(<liquid:coade_stone>*144, <contenttweaker:masonry_brick>, 1373); // stone
Melting.addRecipe(<liquid:coade_stone>*144, <pyrotech:rock>, 1373);
Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:stone>, 1373);
Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:cobblestone>, 1373);
Melting.addRecipe(<liquid:coade_stone>*(144*4), <ore:StoneHugeBrick>, 1373);
Melting.addRecipe(<liquid:coade_stone>*(144*4*8), <quark:sturdy_stone>, 1373);
Melting.addRecipe(<liquid:electrum>*144, <ore:ingotElectrum>, 1400); // electrum
Melting.addRecipe(<liquid:electrum>*(144*9), <ore:blockElectrum>, 1400);
Melting.addRecipe(<liquid:electrum>*16, <ore:nuggetElectrum>, 1400);
Melting.addRecipe(<liquid:mythril>*144, <simpleores:mythril_ingot>, 2500); // mythril
Melting.addRecipe(<liquid:mythril>*(144*9), <simpleores:mythril_block>, 2500);
Melting.addRecipe(<liquid:mythril>*16, <ore:nuggetMythril>, 2500);
Melting.addRecipe(<liquid:mythril>*192, <ore:rawOreMythril>, 2500);
Melting.addRecipe(<liquid:mythril>*144, <ore:dustMythril>, 2500);
Melting.addRecipe(<liquid:viridium>*144, <simpleores:adamantium_ingot>, 2500); // viridium
Melting.addRecipe(<liquid:viridium>*(144*9), <simpleores:adamantium_block>, 2500);
Melting.addRecipe(<liquid:viridium>*16, <ore:nuggetViridium>, 2500);
Melting.addRecipe(<liquid:viridium>*192, <ore:rawOreViridium>, 2500);
Melting.addRecipe(<liquid:viridium>*144, <ore:dustViridium>, 2500);
Melting.addRecipe(<liquid:ambrosium>*144, <ore:gemAmbrosium>, 300); // ambrosium
Melting.addRecipe(<liquid:ambrosium>*(144*9), <aether_legacy:ambrosium_block>, 300);
Melting.addRecipe(<liquid:ambrosium>*144, <ore:dustAmbrosium>, 300);
Melting.addRecipe(<liquid:iron>*144, <ore:ingotIron>, 1550); // iron
Melting.addRecipe(<liquid:iron>*16, <ore:nuggetIron>, 1550);
Melting.addRecipe(<liquid:iron>*192, <ore:rawOreIron>, 1550);
Melting.addRecipe(<liquid:tin>*144, <ore:ingotTin>, 1550); // tin
Melting.addRecipe(<liquid:tin>*16, <ore:nuggetTin>, 1550);
Melting.addRecipe(<liquid:tin>*192, <ore:rawOreTin>, 1550);
Melting.addRecipe(<liquid:zinc>*144, <ore:ingotZinc>, 692); // zinc
Melting.addRecipe(<liquid:zinc>*16, <ore:nuggetZinc>, 692);
Melting.addRecipe(<liquid:zinc>*192, <pyrotech:rock:3>, 692);
Melting.addRecipe(<liquid:zinc>*144, <ore:dustZinc>, 692);
Melting.addRecipe(<liquid:brass>*144, <ore:dustBrass>, 1200); // brass
Melting.addRecipe(<liquid:copper>*144, <ore:ingotCopper>, 1550); // copper
Melting.addRecipe(<liquid:copper>*16, <ore:nuggetCopper>, 1550);
Melting.addRecipe(<liquid:copper>*192, <ore:rawOreCopper>, 1550);
Melting.addRecipe(<liquid:gold>*144, <ore:ingotGold>, 1750); // gold
Melting.addRecipe(<liquid:gold>*192, <ore:rawOreGold>, 1750);
Melting.addRecipe(<liquid:gold>*16, <ore:nuggetGold>, 1750); 
Melting.addRecipe(<liquid:silver>*144, <ore:ingotSilver>, 1750); // silver
Melting.addRecipe(<liquid:silver>*192, <ore:rawOreSilver>, 1750);
Melting.addRecipe(<liquid:silver>*16, <ore:nuggetSilver>, 1750);
Melting.addRecipe(<liquid:gravitite>*144, <ore:ingotGravitite>, 392); // gravitite
Melting.addRecipe(<liquid:gravitite>*192, <ore:rawOreGravitite>, 392);
Melting.addRecipe(<liquid:gravitite>*16, <ore:nuggetGravitite>, 392);
Melting.addRecipe(<liquid:knightmetal>*144, <ore:ingotKnightmetal>, 2350); // knightmetal
Melting.addRecipe(<liquid:ironwood>*144, <ore:ingotIronwood>, 2350); // ironwood
Melting.addRecipe(<liquid:steeleaf>*144, <ore:ingotSteeleaf>, 2350); // steeleaf
Melting.addRecipe(<liquid:fiery>*144, <ore:ingotFiery>, 2350); // fiery

Melting.addRecipe(<liquid:blood>*288, <aether_legacy:vampire_blade>, 1450); // miscellaneous melting
Melting.addRecipe(<liquid:blood>*48, <charm:rotten_flesh_block>, 1300);
Melting.addRecipe(<liquid:blood>*1, <biomesoplenty:fleshchunk>, 600);
Melting.addRecipe(<liquid:blood>*10, <biomesoplenty:flesh>, 600);
Melting.addRecipe(<liquid:blood>*16, <betterwithmods:blood_log>, 800);
Melting.addRecipe(<liquid:ender_slag>*1000, <ore:endstone>, 1200);

Melting.addRecipe(<liquid:steel>*144, <ore:dustCrucibleSteel>, 1800);

// Deprecated
/*Melting.addRecipe(<liquid:mythril>*192, <ore:oreMythril>, 2500);
Melting.addRecipe(<liquid:viridium>*192, <ore:oreViridium>, 2500);

*/

Melting.removeRecipe(<dungeontactics:steel_dust>);
Melting.removeRecipe(<dungeontactics:steel_tinydust>);
Melting.removeRecipe(<dungeontactics:copper_tinydust>);
Melting.removeRecipe(<dungeontactics:tin_tinydust>);
Melting.removeRecipe(<dungeontactics:gold_tinydust>);
Melting.removeRecipe(<dungeontactics:silver_tinydust>);
Melting.removeRecipe(<dungeontactics:iron_tinydust>);
Melting.removeRecipe(<betterwithmods:material:48>);

//Removed molds
MoldStation.removeRecipe([//Gear
1,0,1,0,1,0,
0,1,1,1,0,0,
1,1,1,1,1,0,
0,1,1,1,0,0,
1,0,1,0,1,0,
0,0,0,0,0,0
]);
MoldStation.removeRecipe([//Rod
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);
MoldStation.removeRecipe([//Slab
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0,
4,4,4,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4
]);
MoldStation.removeRecipe([//Stairs
0,0,0,4,4,4,
0,0,0,4,4,4,
0,0,0,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4,
4,4,4,4,4,4
]);
//Molds //moldStation.addRecipe(IItemStack output, int width, int height, int[] grid)
MoldStation.addRecipe(<contenttweaker:mattock_mold>, 6, 6, [
1,2,2,2,2,0,
1,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,0,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:mason_pick_mold>, 6, 6, [
0,3,3,3,2,0,
2,0,1,2,1,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,0,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:dagger_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:longsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,1,4,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:saber_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,0,0,0,
0,1,2,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:rapier_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,1,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:katana_mold>, 6, 6, [
0,0,0,1,0,0,
0,0,0,1,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,3,1,0,0
]);

MoldStation.addRecipe(<contenttweaker:greatsword_mold>, 6, 6, [
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,2,0,0,0,
0,0,4,0,0,0,
1,2,2,2,1,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:hammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,2,3,2,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:warhammer_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,2,3,0,0,0,
0,2,3,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:spear_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
0,1,2,1,0,0,
0,2,3,2,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:halberd_mold>, 6, 6, [
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,2,0,0,0,
0,1,2,1,1,0,
0,1,3,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:pike_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,2,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:lance_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0,
0,1,2,1,0,0,
0,1,2,1,0,0,
0,1,0,1,0,0
]);

MoldStation.addRecipe(<contenttweaker:throwing_knife_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:throwing_axe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,1,1,0,0,0,
0,1,1,0,0,0,
0,0,1,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:javelin_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,1,0,0,0,
0,1,1,1,0,0,
0,1,1,1,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:boomerang_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0,
0,3,1,1,0,0,
0,1,0,0,0,0,
0,1,0,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:battleaxe_mold>, 6, 6, [
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,1,1,0,
1,2,3,2,1,0,
1,0,2,0,1,0,
0,0,2,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:mace_mold>, 6, 6, [
0,0,0,0,0,0,
0,1,1,1,0,0,
1,2,2,2,1,0,
1,2,2,2,1,0,
0,1,1,1,0,0,
0,1,0,1,0,0
]);

MoldStation.addRecipe(<contenttweaker:glaive_mold>, 6, 6, [
0,0,1,0,0,0,
0,0,1,0,0,0,
0,0,2,0,0,0,
1,2,2,0,0,0,
0,1,3,0,0,0,
0,0,1,0,0,0
]);

MoldStation.addRecipe(<contenttweaker:staff_mold>, 6, 6, [
0,0,0,0,1,2,
0,0,0,0,1,1,
0,0,0,0,0,0,
0,0,0,0,0,0,
1,1,0,0,0,0,
2,1,0,0,0,0
]);

MoldStation.addRecipe(<foundry:mold:21>, 6, 6, [
0,0,0,0,0,0,
0,0,2,0,0,0,
0,2,3,2,0,0,
0,0,2,0,0,0,
0,0,0,0,0,0,
0,0,0,0,0,0
]);

// Casted IItemStacks //Casting.addRecipe(IItemStack output, ILiquidStack input, IItemStack mold, @Optional IIngredient extra, @Optional int speed)
// casting weapons is -2 nugget per ingot cheaper than crafting them in a crafting table / steel anvil
// casting doesnt accept oredict entries for optional ingredient

// HELMET //
Casting.removeRecipe(<liquid:iron>*720, <foundry:mold:14>);
Casting.addRecipe(<minecraft:iron_helmet>, <liquid:iron>*((144*5)-(16*2*5)), <foundry:mold:14>);//iron
Casting.removeRecipe(<liquid:gold>*720, <foundry:mold:14>);
Casting.addRecipe(<minecraft:golden_helmet>, <liquid:gold>*((144*5)-(16*2*5)), <foundry:mold:14>);//gold
Casting.addRecipe(<atop:mud_helmet>, <liquid:bronze>*((144*5)-(16*2*5)), <foundry:mold:14>);//bronze
Casting.addRecipe(<iceandfire:armor_silver_metal_helmet>, <liquid:silver>*((144*5)-(16*2*5)), <foundry:mold:14>);//silver
Casting.addRecipe(<dungeontactics:steel_helmet>, <liquid:steel>*((144*5)-(16*2*5)), <foundry:mold:14>);//steel 
Casting.addRecipe(<aether_legacy:gravitite_helmet>, <liquid:gravitite>*((144*5)-(16*2*5)), <foundry:mold:14>);//gravitite 
Casting.addRecipe(<simpleores:adamantium_helmet>, <liquid:viridium>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//viridium
Casting.addRecipe(<simpleores:mythril_helmet>, <liquid:mythril>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//mythril
Casting.addRecipe(<simpleores:onyx_helmet>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_helmet>, <liquid:soulforged_steel>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//SFS
Casting.addRecipe(<twilightforest:knightmetal_helmet>, <liquid:knightmetal>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//knightly
Casting.addRecipe(<twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6 as short}]}), <liquid:ironwood>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//ironwood
Casting.addRecipe(<twilightforest:fiery_helmet>, <liquid:fiery>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//fiery
Casting.addRecipe(<twilightforest:steeleaf_helmet>.withTag({ench: [{lvl: 2 as short, id: 4 as short}]}), <liquid:steeleaf>*((144*8)-(16*2*8)), <foundry:mold:14>, <betterwithmods:material:42>*2);//steeleaf

// CHESTPLATE //
Casting.removeRecipe(<liquid:iron>*1152, <foundry:mold:15>);
Casting.addRecipe(<minecraft:iron_chestplate>, <liquid:iron>*((144*8)-(16*2*8)), <foundry:mold:15>);//iron
Casting.removeRecipe(<liquid:gold>*1152, <foundry:mold:15>);
Casting.addRecipe(<minecraft:golden_chestplate>, <liquid:gold>*((144*8)-(16*2*8)), <foundry:mold:15>);//gold
Casting.addRecipe(<atop:mud_chestplate>, <liquid:bronze>*((144*8)-(16*2*8)), <foundry:mold:15>);//bronze
Casting.addRecipe(<iceandfire:armor_silver_metal_chestplate>, <liquid:silver>*((144*8)-(16*2*8)), <foundry:mold:15>);//silver
Casting.addRecipe(<dungeontactics:steel_chestplate>, <liquid:steel>*((144*8)-(16*2*8)), <foundry:mold:15>);//steel
Casting.addRecipe(<aether_legacy:gravitite_chestplate>, <liquid:gravitite>*((144*8)-(16*2*8)), <foundry:mold:15>);//gravitite
Casting.addRecipe(<simpleores:adamantium_chestplate>, <liquid:viridium>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//viridium
Casting.addRecipe(<simpleores:mythril_chestplate>, <liquid:mythril>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//mythril
Casting.addRecipe(<simpleores:onyx_chestplate>, <liquid:onyx_alloy>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_chest>, <liquid:soulforged_steel>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//SFS
Casting.addRecipe(<twilightforest:knightmetal_chestplate>, <liquid:knightmetal>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//knightly
Casting.addRecipe(<twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), <liquid:ironwood>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//ironroot
Casting.addRecipe(<twilightforest:fiery_chestplate>, <liquid:fiery>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//fiery
Casting.addRecipe(<twilightforest:steeleaf_chestplate>.withTag({ench: [{lvl: 2 as short, id: 3 as short}]}), <liquid:steeleaf>*((144*12)-(16*2*12)), <foundry:mold:15>, <betterwithmods:material:42>*2);//steeleaf


// LEGGINGS //
Casting.removeRecipe(<liquid:iron>*1008, <foundry:mold:16>);
Casting.addRecipe(<minecraft:iron_leggings>, <liquid:iron>*((144*7)-(16*2*7)), <foundry:mold:16>);//iron
Casting.removeRecipe(<liquid:gold>*1008, <foundry:mold:16>);
Casting.addRecipe(<minecraft:golden_leggings>, <liquid:gold>*((144*7)-(16*2*7)), <foundry:mold:16>);//gold
Casting.addRecipe(<atop:mud_leggings>, <liquid:bronze>*((144*7)-(16*2*7)), <foundry:mold:16>);//bronze
Casting.addRecipe(<iceandfire:armor_silver_metal_leggings>, <liquid:silver>*((144*7)-(16*2*7)), <foundry:mold:16>);//silver
Casting.addRecipe(<dungeontactics:steel_leggings>, <liquid:steel>*((144*7)-(16*2*7)), <foundry:mold:16>);//steel
Casting.addRecipe(<aether_legacy:gravitite_leggings>, <liquid:gravitite>*((144*7)-(16*2*7)), <foundry:mold:16>);//gravitite
Casting.addRecipe(<simpleores:adamantium_leggings>, <liquid:viridium>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//viridium
Casting.addRecipe(<simpleores:mythril_leggings>, <liquid:mythril>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//mythril
Casting.addRecipe(<simpleores:onyx_leggings>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//onyx
Casting.addRecipe(<betterwithmods:steel_pants>, <liquid:soulforged_steel>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//SFS
Casting.addRecipe(<twilightforest:knightmetal_leggings>, <liquid:knightmetal>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//knightly
Casting.addRecipe(<twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), <liquid:ironwood>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//ironroot
Casting.addRecipe(<twilightforest:fiery_leggings>, <liquid:fiery>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//fiery
Casting.addRecipe(<twilightforest:steeleaf_leggings>.withTag({ench: [{lvl: 2 as short, id: 1 as short}]}), <liquid:steeleaf>*((144*6)-(16*2*6)), <foundry:mold:16>, <betterwithmods:material:42>*6);//steeleaf

// BOOTS //
Casting.removeRecipe(<liquid:iron>*576, <foundry:mold:17>);
Casting.addRecipe(<minecraft:iron_boots>, <liquid:iron>*((144*4)-(16*2*4)), <foundry:mold:17>);//iron
Casting.removeRecipe(<liquid:gold>*576, <foundry:mold:17>);
Casting.addRecipe(<minecraft:golden_boots>, <liquid:gold>*((144*4)-(16*2*4)), <foundry:mold:17>);//gold
Casting.addRecipe(<atop:mud_boots>, <liquid:bronze>*((144*4)-(16*2*4)), <foundry:mold:17>);//bronze
Casting.addRecipe(<iceandfire:armor_silver_metal_boots>, <liquid:silver>*((144*4)-(16*2*4)), <foundry:mold:17>);//silver
Casting.addRecipe(<dungeontactics:steel_boots>, <liquid:steel>*((144*4)-(16*2*4)), <foundry:mold:17>);//steel
Casting.addRecipe(<aether_legacy:gravitite_boots>, <liquid:gravitite>*((144*4)-(16*2*4)), <foundry:mold:17>);//gravitite
Casting.addRecipe(<simpleores:adamantium_boots>, <liquid:viridium>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//viridium
Casting.addRecipe(<simpleores:mythril_boots>, <liquid:mythril>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//mythril
Casting.addRecipe(<simpleores:onyx_boots>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_boots>, <liquid:soulforged_steel>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//SFS
Casting.addRecipe(<twilightforest:knightmetal_boots>, <liquid:knightmetal>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//knightly
Casting.addRecipe(<twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 2 as short}]}), <liquid:ironwood>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//ironroot
Casting.addRecipe(<twilightforest:fiery_boots>, <liquid:fiery>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//fiery
Casting.addRecipe(<twilightforest:steeleaf_boots>.withTag({ench: [{lvl: 2 as short, id: 2 as short}]}), <liquid:steeleaf>*((144*6)-(16*2*6)), <foundry:mold:17>, <betterwithmods:material:42>*2);//steeleaf

// ARMING SWORD //
Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:10>, <minecraft:stick>);//iron
Casting.addRecipe(<minecraft:iron_sword>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);
Casting.removeRecipe(<liquid:gold>*288, <foundry:mold:10>, <minecraft:stick>);//gold
Casting.addRecipe(<minecraft:golden_sword>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);
Casting.addRecipe(<atop:mud_sword>, <liquid:bronze>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<iceandfire:silver_sword>, <liquid:silver>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//silver
Casting.addRecipe(<dungeontactics:steel_cutlass>, <liquid:steel>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//steel
Casting.addRecipe(<aether_legacy:gravitite_sword>, <liquid:gravitite>*((144*2)-(16*2*2)), <foundry:mold:10>, <spartanweaponry:material>);//gravitite
Casting.addRecipe(<simpleores:adamantium_sword>, <liquid:viridium>*((144*4)-(16*2*4)), <foundry:mold:10>, <minecraft:blaze_rod>);//viridium
Casting.addRecipe(<simpleores:mythril_sword>, <liquid:mythril>*((144*4)-(16*2*4)), <foundry:mold:10>, <minecraft:blaze_rod>);//mythril
Casting.addRecipe(<simpleores:onyx_sword>, <liquid:onyx_alloy>*((144*4)-(16*2*6)), <foundry:mold:10>, <minecraft:blaze_rod>);//onyx
Casting.addRecipe(<twilightforest:knightmetal_sword>, <liquid:knightmetal>*((144*4)-(16*2*6)), <foundry:mold:10>, <spartanfire:witherbone_handle>);//knightly
Casting.addRecipe(<twilightforest:ironwood_sword>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), <liquid:ironwood>*((144*4)-(16*2*6)), <foundry:mold:10>, <spartanfire:witherbone_handle>);//ironroot
Casting.addRecipe(<twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), <liquid:fiery>*((144*4)-(16*2*6)), <foundry:mold:10>, <spartanfire:witherbone_handle>);//fiery
Casting.addRecipe(<twilightforest:steeleaf_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), <liquid:steeleaf>*((144*4)-(16*2*6)), <foundry:mold:10>, <spartanfire:witherbone_handle>);//steeleaf

// PICKAXE //
Casting.removeRecipe(<liquid:iron>*432, <foundry:mold:8>, <minecraft:stick>*2);//iron
Casting.addRecipe(<minecraft:iron_pickaxe>, <liquid:iron>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);
Casting.removeRecipe(<liquid:gold>*432, <foundry:mold:8>, <minecraft:stick>*2);//gold
Casting.addRecipe(<minecraft:golden_pickaxe>, <liquid:gold>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);
Casting.addRecipe(<atop:mud_pickaxe>, <liquid:bronze>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//bronze
Casting.addRecipe(<iceandfire:silver_pickaxe>, <liquid:silver>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//silver
Casting.addRecipe(<dungeontactics:steel_pickaxe>, <liquid:steel>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//steel
Casting.addRecipe(<aether_legacy:gravitite_pickaxe>, <liquid:gravitite>*((144*3)-(16*2*3)), <foundry:mold:8>, <ore:stickWood>*2);//gravitite
Casting.addRecipe(<simpleores:adamantium_pickaxe>, <liquid:viridium>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//viridium
Casting.addRecipe(<simpleores:mythril_pickaxe>, <liquid:mythril>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//mythril
Casting.addRecipe(<simpleores:onyx_pickaxe>, <liquid:onyx_alloy>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_pickaxe>, <liquid:soulforged_steel>*((144*3)-(16*2*3)), <foundry:mold:8>, <betterwithmods:material:36>*3);//SFS
Casting.addRecipe(<pyrotech:diamond_hammer>, <liquid:soulforged_steel>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <betterwithmods:material:36>*4);
Casting.addRecipe(<twilightforest:knightmetal_pickaxe>, <liquid:knightmetal>*((144*5)-(16*2*5)), <foundry:mold:8>, <iceandfire:witherbone>*2);//knightly
Casting.addRecipe(<twilightforest:ironwood_pickaxe>.withTag({ench: [{lvl: 1 as short, id: 32 as short}]}), <liquid:ironwood>*((144*5)-(16*2*5)), <foundry:mold:8>, <iceandfire:witherbone>*2);//ironroot
Casting.addRecipe(<twilightforest:fiery_pickaxe>, <liquid:fiery>*((144*5)-(16*2*5)), <foundry:mold:8>, <minecraft:blaze_rod>*2);//fiery
Casting.addRecipe(<twilightforest:steeleaf_pickaxe>.withTag({ench: [{lvl: 2 as short, id: 35 as short}]}), <liquid:steeleaf>*((144*5)-(16*2*5)), <foundry:mold:8>, <iceandfire:witherbone>*2);//steeleaf


// MATTOCK //
Casting.addRecipe(<betterwithmods:steel_mattock>, <liquid:soulforged_steel>*((144*4)-(16*2*4)), <contenttweaker:mattock_mold>, <betterwithmods:material:36>*3);//SFS

// MASON PICK //
Casting.addRecipe(<contenttweaker:mythril_masonpick>, <liquid:mythril>*((144*8)-(16*2*8)), <contenttweaker:mason_pick_mold>, <betterwithmods:material:36>*3);//SFS
Casting.addRecipe(<contenttweaker:sfs_masonpick>, <liquid:soulforged_steel>*((144*8)-(16*2*8)), <contenttweaker:mason_pick_mold>, <betterwithmods:material:36>*3);//SFS

// AXE //
Casting.removeRecipe(<liquid:iron>*432, <foundry:mold:9>, <minecraft:stick>*2);//iron
Casting.addRecipe(<minecraft:iron_axe>, <liquid:iron>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);
Casting.removeRecipe(<liquid:gold>*432, <foundry:mold:9>, <minecraft:stick>*2);//gold
Casting.addRecipe(<minecraft:golden_axe>, <liquid:gold>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);
Casting.addRecipe(<atop:mud_axe>, <liquid:bronze>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//bronze
Casting.addRecipe(<iceandfire:silver_axe>, <liquid:silver>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//silver
Casting.addRecipe(<dungeontactics:steel_axe>, <liquid:steel>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//steel
Casting.addRecipe(<aether_legacy:gravitite_axe>, <liquid:gravitite>*((144*3)-(16*2*3)), <foundry:mold:9>, <ore:stickWood>*2);//gravitite
Casting.addRecipe(<simpleores:adamantium_axe>, <liquid:viridium>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//viridium
Casting.addRecipe(<simpleores:mythril_axe>, <liquid:mythril>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//mythril
Casting.addRecipe(<simpleores:onyx_axe>, <liquid:onyx_alloy>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_axe>, <liquid:soulforged_steel>*((144*3)-(16*2*3)), <foundry:mold:9>, <betterwithmods:material:36>*3);//SFS
Casting.addRecipe(<twilightforest:knightmetal_axe>, <liquid:knightmetal>*((144*5)-(16*2*5)), <foundry:mold:9>, <iceandfire:witherbone>*2);//knightly
Casting.addRecipe(<twilightforest:ironwood_axe>.withTag({ench: [{lvl: 1 as short, id: 35 as short}]}), <liquid:ironwood>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//ironwood
Casting.addRecipe(<twilightforest:steeleaf_axe>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}), <liquid:steeleaf>*((144*5)-(16*2*5)), <foundry:mold:9>, <minecraft:blaze_rod>*2);//steeleaf

// SHOVEL //
Casting.removeRecipe(<liquid:iron>*144, <foundry:mold:11>, <minecraft:stick>*2);//iron
Casting.addRecipe(<minecraft:iron_shovel>, <liquid:iron>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);
Casting.removeRecipe(<liquid:gold>*144, <foundry:mold:11>, <minecraft:stick>*2);//gold
Casting.addRecipe(<minecraft:golden_shovel>, <liquid:gold>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);
Casting.addRecipe(<atop:mud_shovel>, <liquid:bronze>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//bronze
Casting.addRecipe(<iceandfire:silver_shovel>, <liquid:silver>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//silver
Casting.addRecipe(<dungeontactics:steel_shovel>, <liquid:steel>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//steel
Casting.addRecipe(<aether_legacy:gravitite_shovel>, <liquid:gravitite>*((144)-(16*2)), <foundry:mold:11>, <ore:stickWood>*2);//gravitite
Casting.addRecipe(<simpleores:adamantium_shovel>, <liquid:viridium>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//viridium
Casting.addRecipe(<simpleores:mythril_shovel>, <liquid:mythril>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//mythril
Casting.addRecipe(<simpleores:onyx_shovel>, <liquid:onyx_alloy>*((144*3)-(16*2*3)), <foundry:mold:11>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_shovel>, <liquid:soulforged_steel>*((144)-(16*2)), <foundry:mold:11>, <betterwithmods:material:36>*3);//SFS
Casting.addRecipe(<twilightforest:ironwood_shovel>.withTag({ench: [{lvl: 1 as short, id: 34 as short}]}), <liquid:ironwood>*((144*3)-(16*2*3)), <foundry:mold:11>, <iceandfire:witherbone>*2);//ironwood
Casting.addRecipe(<twilightforest:steeleaf_shovel>.withTag({ench: [{lvl: 2 as short, id: 32 as short}]}), <liquid:steeleaf>*((144*3)-(16*2*3)), <foundry:mold:11>, <iceandfire:witherbone>*2);//steeleaf

// HOE //
Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:12>, <minecraft:stick>*2);//iron
Casting.addRecipe(<minecraft:iron_hoe>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);
Casting.removeRecipe(<liquid:gold>*288, <foundry:mold:12>, <minecraft:stick>*2);//gold
Casting.addRecipe(<minecraft:golden_hoe>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);
Casting.addRecipe(<atop:mud_hoe>, <liquid:bronze>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//bronze
Casting.addRecipe(<iceandfire:silver_hoe>, <liquid:silver>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//silver
Casting.addRecipe(<dungeontactics:steel_hoe>, <liquid:steel>*((144*2)-(16*2*2)), <foundry:mold:12>, <ore:stickWood>*2);//steel
Casting.addRecipe(<simpleores:adamantium_hoe>, <liquid:viridium>*((144*4)-(16*2*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//viridium
Casting.addRecipe(<simpleores:mythril_hoe>, <liquid:mythril>*((144*4)-(16*2*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//mythril
Casting.addRecipe(<simpleores:onyx_hoe>, <liquid:onyx_alloy>*((144*4)-(16*2*4)), <foundry:mold:12>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<betterwithmods:steel_hoe>, <liquid:soulforged_steel>*((144*2)-(16*2*2)), <foundry:mold:12>, <betterwithmods:material:36>*3);//SFS
Casting.addRecipe(<twilightforest:ironwood_hoe>.withTag({ench: [{lvl: 1 as short, id: 34}]}), <liquid:ironwood>*((144*2)-(16*2*2)), <foundry:mold:12>, <iceandfire:witherbone>*2);//ironwood
Casting.addRecipe(<twilightforest:steeleaf_hoe>.withTag({ench: [{lvl: 2 as short, id: 34}]}), <liquid:steeleaf>*((144*2)-(16*2*2)), <foundry:mold:12>, <iceandfire:witherbone>*2);//steeleaf

// DAGGER //
Casting.addRecipe(<spartanweaponry:dagger_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//copper
Casting.addRecipe(<spartanweaponry:dagger_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:dagger_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:dagger_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:dagger_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:dagger_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:dagger_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:dagger_adamantium>, <liquid:viridium>*(144-(16*2)), <contenttweaker:dagger_mold>, <minecraft:blaze_rod>);//viridium
Casting.addRecipe(<spartantwilight:dagger_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), <liquid:steeleaf>*(144-(16*2)), <contenttweaker:dagger_mold>, <spartanfire:witherbone_handle>);//steeleaf

// LONGSWORD //
Casting.addRecipe(<spartanweaponry:longsword_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:longsword_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:longsword_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:longsword_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:longsword_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:longsword_gravitite>, <liquid:gravitite>*((144*4)-(16*2*4)), <contenttweaker:longsword_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:longsword_mythril>, <liquid:mythril>*((144*5)-(16*2*5)), <contenttweaker:longsword_mold>, <minecraft:blaze_rod>);//mythril
Casting.addRecipe(<spartantwilight:longsword_knightly>, <liquid:knightmetal>*((144*5)-(16*2*5)), <contenttweaker:longsword_mold>, <spartanfire:witherbone_handle>);//knightmetal

// SABER //
Casting.addRecipe(<spartanweaponry:saber_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:saber_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:saber_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:saber_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:saber_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:saber_gravitite>, <liquid:gravitite>*((144*3)-(16*2*3)), <contenttweaker:saber_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:saber_adamantium>, <liquid:viridium>*((144*4)-(16*2*4)), <contenttweaker:saber_mold>, <minecraft:blaze_rod>);//viridium
Casting.addRecipe(<spartantwilight:saber_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), <liquid:steeleaf>*((144*4)-(16*2*4)), <contenttweaker:saber_mold>, <spartanfire:witherbone_handle>);//steeleaf

// RAPIER //
Casting.addRecipe(<spartanweaponry:rapier_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:rapier_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:rapier_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:rapier_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:rapier_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:rapier_gravitite>, <liquid:gravitite>*((144*4)-(16*2*4)), <contenttweaker:rapier_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:rapier_mythril>, <liquid:mythril>*((144*5)-(16*2*5)), <contenttweaker:rapier_mold>, <minecraft:blaze_rod>);//mythril
Casting.addRecipe(<spartantwilight:rapier_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), <liquid:steeleaf>*((144*5)-(16*2*5)), <contenttweaker:rapier_mold>, <spartanfire:witherbone_handle>);//steeleaf

//KATANA //
Casting.addRecipe(<spartanweaponry:katana_iron>, <liquid:iron>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:katana_gold>, <liquid:gold>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:katana_bronze>, <liquid:bronze>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:katana_silver>, <liquid:silver>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:katana_steel>, <liquid:steel>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//steel
Casting.addRecipe(<spartancompat:katana_gravitite>, <liquid:gravitite>*((144*2)-(16*2*2)), <contenttweaker:katana_mold>, <spartanweaponry:material>);//gravitite
Casting.addRecipe(<spartancompat:katana_adamantium>, <liquid:viridium>*((144*3)-(16*2*3)), <contenttweaker:katana_mold>, <minecraft:blaze_rod>);//viridium
Casting.addRecipe(<spartantwilight:katana_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), <liquid:fiery>*((144*3)-(16*2*3)), <contenttweaker:katana_mold>, <spartanfire:witherbone_handle>);//fiery

// GREATSWORD //
Casting.addRecipe(<spartanweaponry:greatsword_iron>, <liquid:iron>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:greatsword_gold>, <liquid:gold>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:greatsword_bronze>, <liquid:bronze>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:greatsword_silver>, <liquid:silver>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:greatsword_steel>, <liquid:steel>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:greatsword_gravitite>, <liquid:gravitite>*((144*6)-(16*2*6)), <contenttweaker:greatsword_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:greatsword_onyx>, <liquid:onyx_alloy>*((144*9)-(16*2*9)), <contenttweaker:greatsword_mold>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<spartantwilight:greatsword_knightly>, <liquid:knightmetal>*((144*9)-(16*2*9)), <contenttweaker:greatsword_mold>, <spartanfire:witherbone_handle>*2);//knightmetal

// WARMALLET //
Casting.addRecipe(<spartanweaponry:hammer_copper>, <liquid:copper>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//copper
Casting.addRecipe(<spartanweaponry:hammer_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:hammer_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:hammer_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:hammer_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:hammer_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:hammer_gravitite>, <liquid:gravitite>*((144*4)-(16*2*4)), <contenttweaker:hammer_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:hammer_onyx>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <contenttweaker:hammer_mold>, <minecraft:blaze_rod>*4);//onyx
Casting.addRecipe(<spartantwilight:hammer_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), <liquid:fiery>*((144*8)-(16*2*8)), <contenttweaker:hammer_mold>, <spartanfire:witherbone_handle>*4);//fiery

// WARHAMMER //
Casting.addRecipe(<spartanweaponry:warhammer_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:warhammer_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:warhammer_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:warhammer_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:warhammer_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>); //steel
Casting.addRecipe(<spartancompat:warhammer_gravitite>, <liquid:gravitite>*((144*3)-(16*2*3)), <contenttweaker:warhammer_mold>, <spartanweaponry:material>); //gravitite
Casting.addRecipe(<spartancompat:warhammer_onyx>, <liquid:onyx_alloy>*((144*6)-(16*2*6)), <contenttweaker:warhammer_mold>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<spartantwilight:warhammer_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), <liquid:ironwood>*((144*6)-(16*2*6)), <contenttweaker:warhammer_mold>, <spartanfire:witherbone_handle>*2);//ironroot

// SPEAR //
Casting.addRecipe(<spartanweaponry:spear_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//copper
Casting.addRecipe(<spartanweaponry:spear_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//iron
Casting.addRecipe(<spartanweaponry:spear_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//gold
Casting.addRecipe(<spartanweaponry:spear_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//bronze
Casting.addRecipe(<spartanweaponry:spear_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//silver
Casting.addRecipe(<spartanweaponry:spear_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//steel
Casting.addRecipe(<spartancompat:spear_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:spear_mold>, <spartanweaponry:material:1>);//gravitite
Casting.addRecipe(<spartancompat:spear_adamantium>, <liquid:viridium>*((144*2)-(16*2*2)), <contenttweaker:spear_mold>, <minecraft:blaze_rod>*2);//viridium

// HALBERD //
Casting.addRecipe(<spartanweaponry:halberd_iron>, <liquid:iron>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//iron
Casting.addRecipe(<spartanweaponry:halberd_gold>, <liquid:gold>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//gold
Casting.addRecipe(<spartanweaponry:halberd_bronze>, <liquid:bronze>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//bronze
Casting.addRecipe(<spartanweaponry:halberd_silver>, <liquid:silver>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//silver
Casting.addRecipe(<spartanweaponry:halberd_steel>, <liquid:steel>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//steel
Casting.addRecipe(<spartancompat:halberd_gravitite>, <liquid:gravitite>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanweaponry:material:1>);//gravitite
Casting.addRecipe(<spartancompat:halberd_onyx>, <liquid:onyx_alloy>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<spartantwilight:halberd_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), <liquid:fiery>*((144*4)-(16*2*4)), <contenttweaker:halberd_mold>, <spartanfire:witherbone_handle>*2);//fiery

// PIKE //
Casting.addRecipe(<spartanweaponry:pike_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//copper
Casting.addRecipe(<spartanweaponry:pike_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//iron
Casting.addRecipe(<spartanweaponry:pike_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//gold
Casting.addRecipe(<spartanweaponry:pike_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//bronze
Casting.addRecipe(<spartanweaponry:pike_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//silver
Casting.addRecipe(<spartanweaponry:pike_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//steel
Casting.addRecipe(<spartancompat:pike_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:pike_mold>, <spartanweaponry:material:1>*2);//gravitite
Casting.addRecipe(<spartancompat:spear_onyx>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <contenttweaker:pike_mold>, <minecraft:blaze_rod>*2);//onyx

// LANCE //
Casting.addRecipe(<spartanweaponry:lance_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//iron
Casting.addRecipe(<spartanweaponry:lance_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//gold
Casting.addRecipe(<spartanweaponry:lance_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//bronze
Casting.addRecipe(<spartanweaponry:lance_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//silver
Casting.addRecipe(<spartanweaponry:lance_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//steel
Casting.addRecipe(<spartancompat:lance_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:lance_mold>, <spartanweaponry:material>*3);//gravitite
Casting.addRecipe(<spartancompat:lance_mythril>, <liquid:mythril>*((144*3)-(16*2*3)), <contenttweaker:lance_mold>, <minecraft:blaze_rod>*3);//mythril

// THROWING KNIFE //
Casting.addRecipe(<spartanweaponry:throwing_knife_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:throwing_knife_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:throwing_knife_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:throwing_knife_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:throwing_knife_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//steel
Casting.addRecipe(<spartancompat:throwing_knife_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanweaponry:material>);//gravitite
Casting.addRecipe(<spartancompat:throwing_knife_mythril>, <liquid:mythril>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <minecraft:blaze_rod>);//mythril
// Casting.addRecipe(<spartancompat:throwing_knife_adamantium>, <liquid:viridium>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <minecraft:blaze_rod>);//viridium
Casting.addRecipe(<spartantwilight:throwing_knife_steeleaf>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}), <liquid:steeleaf>*(144-(16*2)), <contenttweaker:throwing_knife_mold>, <spartanfire:witherbone_handle>);//steeleaf

// THROWING AXE //
Casting.addRecipe(<spartanweaponry:throwing_axe_copper>, <liquid:copper>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//copper
Casting.addRecipe(<spartanweaponry:throwing_axe_iron>, <liquid:iron>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//iron
Casting.addRecipe(<spartanweaponry:throwing_axe_gold>, <liquid:gold>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//gold
Casting.addRecipe(<spartanweaponry:throwing_axe_bronze>, <liquid:bronze>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//bronze
Casting.addRecipe(<spartanweaponry:throwing_axe_silver>, <liquid:silver>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//silver
Casting.addRecipe(<spartanweaponry:throwing_axe_steel>, <liquid:steel>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//steel
Casting.addRecipe(<spartancompat:throwing_axe_gravitite>, <liquid:gravitite>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanweaponry:material>);//gravitite
Casting.addRecipe(<spartancompat:throwing_axe_mythril>, <liquid:mythril>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <minecraft:blaze_rod>);//mythril
// Casting.addRecipe(<spartancompat:throwing_axe_onyx>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <minecraft:blaze_rod>);//onyx
Casting.addRecipe(<spartantwilight:throwing_axe_fiery>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}), <liquid:fiery>*((144*2)-(16*2*2)), <contenttweaker:throwing_axe_mold>, <spartanfire:witherbone_handle>);//fiery

// JAVELIN //
Casting.addRecipe(<spartanweaponry:javelin_copper>, <liquid:copper>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//copper
Casting.addRecipe(<spartanweaponry:javelin_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//iron
Casting.addRecipe(<spartanweaponry:javelin_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//gold
Casting.addRecipe(<spartanweaponry:javelin_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//bronze
Casting.addRecipe(<spartanweaponry:javelin_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//silver
Casting.addRecipe(<spartanweaponry:javelin_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//steel
Casting.addRecipe(<spartancompat:javelin_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:javelin_mold>, <spartanweaponry:material:1>);//gravitite
Casting.addRecipe(<spartancompat:javelin_mythril>, <liquid:mythril>*((144*2)-(16*2*2)), <contenttweaker:javelin_mold>, <minecraft:blaze_rod>*2);//mythril
Casting.addRecipe(<spartantwilight:javelin_knightly>, <liquid:knightmetal>*((144*2)-(16*2*2)), <contenttweaker:javelin_mold>, <spartanfire:witherbone_handle>*2);//knightmetal

// BOOMERANG //
Casting.addRecipe(<spartanweaponry:boomerang_iron>, <liquid:iron>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//iron
Casting.addRecipe(<spartanweaponry:boomerang_gold>, <liquid:gold>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//gold
Casting.addRecipe(<spartanweaponry:boomerang_bronze>, <liquid:bronze>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//bronze
Casting.addRecipe(<spartanweaponry:boomerang_silver>, <liquid:silver>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//silver
Casting.addRecipe(<spartanweaponry:boomerang_steel>, <liquid:steel>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//steel
Casting.addRecipe(<spartancompat:boomerang_gravitite>, <liquid:gravitite>*(144-(16*2)), <contenttweaker:boomerang_mold>, <ore:plankWood>*4);//gravitite
Casting.addRecipe(<spartancompat:boomerang_mythril>, <liquid:mythril>*(144-(16*2)), <contenttweaker:boomerang_mold>, <minecraft:blaze_rod>*4);//mythril
Casting.addRecipe(<spartantwilight:boomerang_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), <liquid:ironwood>*(144-(16*2)), <contenttweaker:boomerang_mold>, <spartanfire:witherbone_handle>*4);//ironroot

// BATTLEAXE //
Casting.addRecipe(<spartanweaponry:battleaxe_iron>, <liquid:iron>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//iron
Casting.addRecipe(<spartanweaponry:battleaxe_gold>, <liquid:gold>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//gold
Casting.addRecipe(<spartanweaponry:battleaxe_bronze>, <liquid:bronze>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//bronze
Casting.addRecipe(<spartanweaponry:battleaxe_silver>, <liquid:silver>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//silver
Casting.addRecipe(<spartanweaponry:battleaxe_steel>, <liquid:steel>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//steel
Casting.addRecipe(<spartancompat:battleaxe_gravitite>, <liquid:gravitite>*((144*5)-(16*2*5)), <contenttweaker:battleaxe_mold>, <spartanweaponry:material>*2);//gravitite
Casting.addRecipe(<spartancompat:battleaxe_onyx>, <liquid:onyx_alloy>*((144*8)-(16*2*8)), <contenttweaker:battleaxe_mold>, <minecraft:blaze_rod>*2);//onyx
Casting.addRecipe(<spartantwilight:battleaxe_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), <liquid:ironwood>*((144*8)-(16*2*8)), <contenttweaker:battleaxe_mold>, <spartanfire:witherbone_handle>*2);//ironroot

// MACE //
Casting.addRecipe(<spartanweaponry:mace_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//iron
Casting.addRecipe(<spartanweaponry:mace_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//gold
Casting.addRecipe(<spartanweaponry:mace_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//bronze
Casting.addRecipe(<spartanweaponry:mace_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//silver
Casting.addRecipe(<spartanweaponry:mace_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//steel
Casting.addRecipe(<spartancompat:mace_gravitite>, <liquid:gravitite>*((144*3)-(16*2*3)), <contenttweaker:mace_mold>, <spartanweaponry:material>*2);//gravitite
Casting.addRecipe(<spartancompat:mace_mythril>, <liquid:mythril>*((144*7)-(16*2*7)), <contenttweaker:mace_mold>, <minecraft:blaze_rod>*3);//mythril

// GLAIVE //
Casting.addRecipe(<spartanweaponry:glaive_iron>, <liquid:iron>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//iron
Casting.addRecipe(<spartanweaponry:glaive_gold>, <liquid:gold>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//gold
Casting.addRecipe(<spartanweaponry:glaive_bronze>, <liquid:bronze>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//bronze
Casting.addRecipe(<spartanweaponry:glaive_silver>, <liquid:silver>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//silver
Casting.addRecipe(<spartanweaponry:glaive_steel>, <liquid:steel>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//steel
Casting.addRecipe(<spartancompat:glaive_gravitite>, <liquid:gravitite>*((144*3)-(16*2*3)), <contenttweaker:glaive_mold>, <spartanweaponry:material:1>);//gravitite
Casting.addRecipe(<spartancompat:glaive_mythril>, <liquid:mythril>*((144*4)-(16*2*4)), <contenttweaker:glaive_mold>, <minecraft:blaze_rod>*3);//mythril
Casting.addRecipe(<spartantwilight:glaive_knightly>, <liquid:knightmetal>*((144*4)-(16*2*4)), <contenttweaker:glaive_mold>, <spartanfire:witherbone_handle>*3);//knightmetal

// QUARTERSTAFF //
Casting.addRecipe(<spartanweaponry:staff_iron>, <liquid:iron>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//iron
Casting.addRecipe(<spartanweaponry:staff_gold>, <liquid:gold>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//gold
Casting.addRecipe(<spartanweaponry:staff_bronze>, <liquid:bronze>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//bronze
Casting.addRecipe(<spartanweaponry:staff_silver>, <liquid:silver>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//silver
Casting.addRecipe(<spartanweaponry:staff_steel>, <liquid:steel>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//steel
Casting.addRecipe(<spartancompat:staff_gravitite>, <liquid:gravitite>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanweaponry:material:1>);//gravitite
Casting.addRecipe(<spartancompat:staff_adamantium>, <liquid:viridium>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <minecraft:blaze_rod>*2);//viridium
Casting.addRecipe(<spartantwilight:staff_ironwood>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}), <liquid:ironwood>*((144*2)-(16*2*2)), <contenttweaker:staff_mold>, <spartanfire:witherbone_handle>*2);//ironroot

// SHEARS //
Casting.removeRecipe(<liquid:iron>*288, <foundry:mold:13>);
Casting.addRecipe(<minecraft:shears>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:13>);
Casting.addRecipe(<simpleores:mythril_shears>, <liquid:mythril>*((144*2)-(16*2*2)), <foundry:mold:13>);
Casting.addRecipe(<simpleores:adamantium_shears>, <liquid:viridium>*((144*2)-(16*2*2)), <foundry:mold:13>);
Casting.addRecipe(<simpleores:onyx_shears>, <liquid:onyx_alloy>*((144*2)-(16*2*2)), <foundry:mold:13>);

// PLATES //
Casting.addRecipe(<minecraft:light_weighted_pressure_plate>, <liquid:gold>*((144*2)-(16*2*2)), <foundry:mold:1>);
Casting.addRecipe(<minecraft:heavy_weighted_pressure_plate>, <liquid:iron>*((144*2)-(16*2*2)), <foundry:mold:1>);
Casting.addRecipe(<betterwithmods:steel_pressure_plate>, <liquid:soulforged_steel>*((144*2)-(16*2*2)), <foundry:mold:1>, <minecraft:redstone>);

// MISC //
Casting.removeRecipe(<liquid:iron>*576, <foundry:mold:2>);

val lava_bricks = <ceramics:clay_hard:5>;
recipes.removeByRecipeName("ceramics:decoration/lava_bricks/block");
Casting.addRecipe(lava_bricks*1, <liquid:lava>*100, <foundry:mold:4>,<contenttweaker:brick_pyrotech_refractory>|porcelain_bricks);
Casting.addRecipe(lava_bricks*1, <liquid:coade_stone>*144, <foundry:mold:4>,<contenttweaker:brick_pyrotech_refractory>|porcelain_bricks);
Casting.addRecipe(<contenttweaker:material_part:8>, <liquid:mythril>*16, <foundry:mold:7>);
Casting.addRecipe(<contenttweaker:material_part:8>, <liquid:residual_mythril>*1000, <foundry:mold:7>);

val marine_bricks = <ceramics:clay_hard:2>;
recipes.removeByRecipeName("ceramics:decoration/marine_bricks/block");
recipes.addShaped("marine_bricks", marine_bricks*8,[
   [porcelain_bricks, porcelain_bricks, porcelain_bricks],
   [porcelain_bricks, <ore:dyeBlue>, porcelain_bricks],
   [porcelain_bricks,porcelain_bricks, porcelain_bricks]
]);

val mono_bricks = <ceramics:clay_hard:7>;
recipes.removeByRecipeName("ceramics:decoration/monochrome_bricks/block");
recipes.addShaped("monochrome_bricks", mono_bricks*8,[
   [porcelain_bricks, porcelain_bricks, porcelain_bricks],
   [porcelain_bricks, <ore:dyeBlack>, porcelain_bricks],
   [porcelain_bricks,porcelain_bricks, porcelain_bricks]
]);


//Missing Block Casting Recipes
// addBlockRecipe(IItemStack output, ILiquidStack input)
CastingTable.addBlockRecipe(<simpleores:adamantium_block>, <liquid:viridium>*1296);
CastingTable.addBlockRecipe(<simpleores:mythril_block>, <liquid:mythril>*1296);
CastingTable.addBlockRecipe(<simpleores:mythril_block>, <liquid:residual_mythril>*(9000*9));
CastingTable.addBlockRecipe(<simpleores:onyx_block>, <liquid:onyx_alloy>*1296);
CastingTable.addBlockRecipe(<contenttweaker:block_electrum>, <liquid:electrum>*1296);
CastingTable.addBlockRecipe(<aether_legacy:enchanted_gravitite>, <liquid:gravitite>*1296);
CastingTable.addBlockRecipe(<betterwithmods:steel_block>, <liquid:soulforged_steel>*(144*16));
CastingTable.addBlockRecipe(<minecraft:stone>, <liquid:coade_stone>*576);
CastingTable.addBlockRecipe(<endreborn:block_end_stone_smooth>, <liquid:ender_slag>*1000);
CastingTable.addBlockRecipe(<aether_legacy:ambrosium_block>, <liquid:ambrosium>*1296);
CastingTable.addBlockRecipe(<twilightforest:block_storage>, <liquid:ironwood>*1296);
CastingTable.addBlockRecipe(<twilightforest:block_storage:1>, <liquid:fiery>*1296);
CastingTable.addBlockRecipe(<twilightforest:block_storage:2>, <liquid:steeleaf>*1296);
CastingTable.addBlockRecipe(<twilightforest:knightmetal_block>, <liquid:knightmetal>*1296);

//Missing Ingot Casting Recipes
// addIngotRecipe(IItemStack output, ILiquidStack input)
CastingTable.addIngotRecipe(<simpleores:adamantium_ingot>, <liquid:viridium>*144);
CastingTable.addIngotRecipe(<simpleores:mythril_ingot>, <liquid:mythril>*144);
CastingTable.addIngotRecipe(<simpleores:mythril_ingot>, <liquid:residual_mythril>*9000);
CastingTable.addIngotRecipe(<ore:ingotZinc>.firstItem, <liquid:zinc>*144);
CastingTable.addIngotRecipe(<ore:ingotElectrum>.firstItem, <liquid:electrum>*144);
CastingTable.addIngotRecipe(<ore:ingotGravitite>.firstItem, <liquid:gravitite>*144);
CastingTable.addIngotRecipe(<betterwithmods:material:14>, <liquid:soulforged_steel>*144);
CastingTable.addIngotRecipe(<contenttweaker:masonry_brick>, <liquid:coade_stone>*144);
CastingTable.addIngotRecipe(<betterwithmods:material:39>, <liquid:ender_slag>*250);
CastingTable.addIngotRecipe(<twilightforest:ironwood_ingot>, <liquid:ironwood>*144);
CastingTable.addIngotRecipe(<twilightforest:fiery_ingot>, <liquid:fiery>*144);
CastingTable.addIngotRecipe(<twilightforest:knightmetal_ingot>, <liquid:knightmetal>*144);
CastingTable.addIngotRecipe(<twilightforest:steeleaf_ingot>, <liquid:steeleaf>*144);
