import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;
import mods.rustic.EvaporatingBasin;
import mods.betterwithmods.MiniBlocks;

var honeyBottle = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});
var iron = <ore:ingotIron>;
var tin = <ore:ingotTin>;
var silver = <ore:ingotSilver>;
var gold = <ore:ingotGold>;
var torch = <minecraft:torch>;
var glass = <minecraft:glass_pane>;
var cohosh = <rustic:cohosh>;
var honeycomb = <rustic:honeycomb>;
var chamomile = <rustic:chamomile>;
var root = <rustic:marsh_mallow>;
var horsetail = <rustic:horsetail>;
var fourclover = <contenttweaker:4leaf_clover>;
var amanita = <minecraft:red_mushroom>;
var slime = <minecraft:slime_ball>;
var endpearl = <minecraft:ender_pearl>;
var butter = <harvestcraft:butteritem>;
var gnugg = <minecraft:gold_nugget>;
var inugg = <minecraft:iron_nugget>;
var snugg = <iceandfire:silver_nugget>;
var genericNugg = <ore:genericMetalNuggets>;
var wheatmat = <betterwithaddons:wheatmat>;
var glowjelly = <mowziesmobs:glowing_jelly>;
var radiantdust = <arcanearchives:radiant_dust>;
var cutLeather = <betterwithmods:material:31>;
var ironBerry = <rustic:ironberries>;
var stymphalian_feather = <iceandfire:stymphalian_bird_feather>;

JEI.removeAndHide(<rustic:lantern_wood>);

JEI.removeAndHide(<rustic:apple_seeds>);
JEI.removeAndHide(<rustic:leaves_apple>);
JEI.removeAndHide(<rustic:sapling_apple>);

JEI.removeAndHide(<rustic:grape_stem>);
JEI.removeAndHide(<rustic:grapes>);
JEI.removeAndHide(<rustic:sapling>);
JEI.removeAndHide(<rustic:tallow>);

JEI.removeAndHide(<rustic:dust_tiny_iron>);
EvaporatingBasin.removeRecipe(<rustic:dust_tiny_iron>);

JEI.removeAndHide(<rustic:brewing_barrel>);
JEI.hideCategory("rustic.brewing");

JEI.hide(<rustic:honey>); // Weird honey item that places fluid
<ore:materialPressedwax>.add(<rustic:beeswax>);

<ore:foodHoneydrop>.add(honeyBottle);
<ore:dropHoney>.add(honeyBottle);
<ore:foodHoney>.add(honeyBottle);
<ore:listAllsugar>.add(<rustic:honeycomb>);
<ore:listAllsugar>.add(honeyBottle);

furnace.setFuel(<rustic:beeswax>, 100);


recipes.remove(<rustic:liquid_barrel>);
recipes.addShaped("liquid_barrel", <rustic:liquid_barrel>, [
	[<ore:plankWood>, null, <ore:plankWood>],
    [<ore:genericMetal>, null, <ore:genericMetal>],
    [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]
]);

recipes.remove(<rustic:crop_stake>);
recipes.addShaped("crop_stake", <rustic:crop_stake>*3, [
	[<ore:fenceWood>],
    [<ore:fenceWood>],
    [<ore:fenceWood>]
]);

// oredict herbs
val alcHerb = <ore:alcHerb>;
alcHerb.add(
    <rustic:aloe_vera>,
    <rustic:blood_orchid>,
    <rustic:chamomile>,
    <rustic:cohosh>,
    <rustic:deathstalk_mushroom>,
    <rustic:horsetail>,
    <rustic:mooncap_mushroom>,
    <rustic:wind_thistle>,
    <rustic:cloudsbluff>,
    <rustic:core_root>,
    <rustic:ginseng>,
    <rustic:marsh_mallow>,
    <rustic:honeycomb>,
    <rustic:olives>,
    <rustic:ironberries>,
    <rustic:chili_pepper>
);

// Chili pepper to chili seed recipe
recipes.addShapeless("chili_seed", <rustic:chili_pepper_seeds>, [<rustic:chili_pepper>]);

// Iron and Gold Lanterns
recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);
recipes.remove(<rustic:silver_lantern>);

recipes.addShaped("Gold_Lantern", <rustic:golden_lantern>,[
	[null, gold, null],
    [glass, torch, glass],
    [gnugg, gnugg, gnugg]
]);

recipes.addShaped("Metal_Lantern", <rustic:iron_lantern>,[
	[null, <ore:genericMetal>, null],
    [glass, torch, glass],
    [genericNugg, genericNugg, genericNugg]
]);

recipes.addShaped("Silver_Lantern", <rustic:silver_lantern>,[
	[null, silver, null],
    [glass, torch, glass],
    [snugg, snugg, snugg]
]);

// Iron and Gold Candles
recipes.remove(<rustic:candle>);
recipes.remove(<rustic:candle_gold>);
recipes.remove(<rustic:candle_silver>);

var whitecandle = <betterwithmods:candle:0>;

recipes.addShaped("Iron Candle", <rustic:candle>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, inugg, null]
]);

recipes.addShaped("Golden Candle", <rustic:candle_gold>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, gnugg, null]
]);

recipes.addShaped("Silver Candle", <rustic:candle_silver>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, snugg, null]
]);

// Grape seed compat (in case you want to grow rustic grapes using rope/crop stakes)
// recipes.addShapeless("grape_seed_compat", <rustic:grape_stem>, [<harvestcraft:grapeseeditem>]);

// CrushingTub recipes
CrushingTub.addRecipe(<liquid:fluid_honey> * 50, null, <biomesoplenty:hive:3> * 1);

CrushingTub.removeRecipe(<rustic:grapes>);
CrushingTub.removeRecipe(<rustic:ironberries>);
CrushingTub.removeRecipe(<rustic:olives>);
CrushingTub.removeRecipe(<minecraft:apple>);

// CrushingTub growthcraft compat
CrushingTub.addRecipe(<liquid:fluid_booze_apple_juice>*160, <dynamictrees:appleseed>, <minecraft:apple>*1);
CrushingTub.addRecipe(<liquid:fluid_booze_purple_juice>*160, null, <growthcraft_grapes:grape:10>*1);
CrushingTub.addRecipe(<liquid:fluid_booze_red_juice>*160, null, <growthcraft_grapes:grape:14>*1);
CrushingTub.addRecipe(<liquid:fluid_booze_green_juice>*160, null, <growthcraft_grapes:grape:13>*1);

// Rework rustic furniture to use BWM miniblocks
var furnitureWood as IIngredient[string] = {
    "oak" : <minecraft:planks:0>,
    "big_oak" : <minecraft:planks:5>,
    "birch" : <minecraft:planks:2>,
    "spruce" : <minecraft:planks:1>,
    "acacia" : <minecraft:planks:4>,
    "jungle" : <minecraft:planks:3>,
    "olive" : <rustic:planks:0>,
    "ironwood" : <rustic:planks:1>
} as IIngredient[string];

var bopFurnitureWood as IIngredient[string] = {
    "sacred_oak" : <biomesoplenty:planks_0:0>,
    "cherry" : <biomesoplenty:planks_0:1>,
    "umbran" : <biomesoplenty:planks_0:2>,
    "fir" : <biomesoplenty:planks_0:3>,
    "ethereal" : <biomesoplenty:planks_0:4>,
    "magic" : <biomesoplenty:planks_0:5>,
    "mangrove" : <biomesoplenty:planks_0:6>,
    "palm" : <biomesoplenty:planks_0:7>,
    "redwood" : <biomesoplenty:planks_0:8>,
    "willow" : <biomesoplenty:planks_0:9>,
    "pine" : <biomesoplenty:planks_0:10>,
    "hellbark" : <biomesoplenty:planks_0:11>,
    "jacaranda" : <biomesoplenty:planks_0:12>,
    "mahogany" : <biomesoplenty:planks_0:13>,
    "ebony" : <biomesoplenty:planks_0:14>,
    "eucalyptus" : <biomesoplenty:planks_0:15>
} as IIngredient[string];

var rusticCompatWood as IIngredient[string] = {
    "white_stained" : <quark:stained_planks:0>,
    "orange_stained" : <quark:stained_planks:1>,
    "magenta_stained" : <quark:stained_planks:2>,
    "light_blue_stained" : <quark:stained_planks:3>,
    "yellow_stained" : <quark:stained_planks:4>,
    "lime_stained" : <quark:stained_planks:5>,
    "pink_stained" : <quark:stained_planks:6>,
    "gray_stained" : <quark:stained_planks:7>,
    "light_gray_stained" : <quark:stained_planks:8>,
    "cyan_stained" : <quark:stained_planks:9>,
    "purple_stained" : <quark:stained_planks:10>,
    "blue_stained" : <quark:stained_planks:11>,
    "brown_stained" : <quark:stained_planks:12>,
    "green_stained" : <quark:stained_planks:13>,
    "red_stained" : <quark:stained_planks:14>,
    "black_stained" : <quark:stained_planks:15>,
    "reed" : <betternether:reeds_block>,
    "stalagnate" : <betternether:stalagnate_planks>,
    "tenebra" : <defiledlands:tenebra_planks>,
    "wyrmwood" : <stygian:endplanks>,
    "skyroot" : <aether_legacy:skyroot_plank>,
    "sortingwood" : <twilightforest:sort_planks>,
    "mangrove" : <twilightforest:mangrove_planks>,
    "transwood" : <twilightforest:trans_planks>,
    "darkwood" : <twilightforest:dark_planks>,
    "twilight_oak" : <twilightforest:twilight_oak_planks>,
    "canopy" : <twilightforest:canopy_planks>,
    "minewood" : <twilightforest:mine_planks>
    
} as IIngredient[string];

var furnitureMap = { } as IIngredient[][IItemStack[]];
for wood, item in furnitureWood {
    furnitureMap[[itemUtils.getItem("rustic:chair_"~wood), itemUtils.getItem("rustic:table_"~wood)] as IItemStack[]] = [MiniBlocks.getMiniBlock("siding", item), MiniBlocks.getMiniBlock("moulding", item), MiniBlocks.getMiniBlock("corner", item)] as IIngredient[];
}
for wood, item in bopFurnitureWood {
    furnitureMap[[itemUtils.getItem("rusticbopwoods:chair_"~wood), itemUtils.getItem("rusticbopwoods:table_"~wood)] as IItemStack[]] = [MiniBlocks.getMiniBlock("siding", item), MiniBlocks.getMiniBlock("moulding", item), MiniBlocks.getMiniBlock("corner", item)] as IIngredient[];
}
for wood, item in rusticCompatWood {
    furnitureMap[[itemUtils.getItem("rusticcompat:chair_"~wood), itemUtils.getItem("rusticcompat:table_"~wood)] as IItemStack[]] = [MiniBlocks.getMiniBlock("siding", item), MiniBlocks.getMiniBlock("moulding", item), MiniBlocks.getMiniBlock("corner", item)] as IIngredient[];
}

var count as int = 0 as int;
for furnitureList, materialList in furnitureMap{
    recipes.remove(furnitureList[0]);
    recipes.addShapedMirrored("rustic_chair_"~count, furnitureList[0],[
        [materialList[1], null, null],
        [materialList[0], materialList[0], materialList[0]],
        [materialList[2], null, materialList[2]]
    ]);

    recipes.remove(furnitureList[1]);
    recipes.addShaped("rustic_table_"~count, furnitureList[1],[
        [materialList[0], materialList[0], materialList[0]],
        [materialList[2], null, materialList[2]],
        [materialList[2], null, materialList[2]]
    ]);
    count += 1;
}
