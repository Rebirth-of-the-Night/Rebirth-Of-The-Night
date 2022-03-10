import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;
import mods.rustic.EvaporatingBasin;
import mods.betterwithmods.MiniBlocks;

JEI.removeAndHide(<rustic:lantern_wood>);

JEI.removeAndHide(<rustic:tomato_seeds>);
JEI.removeAndHide(<rustic:tomato>);

JEI.removeAndHide(<rustic:grape_stem>);
JEI.removeAndHide(<rustic:grapes>);
JEI.removeAndHide(<rustic:sapling>);
JEI.removeAndHide(<rustic:tomato>);

JEI.removeAndHide(<rustic:dust_tiny_iron>);
EvaporatingBasin.removeRecipe(<rustic:dust_tiny_iron>);

JEI.removeAndHide(<rustic:brewing_barrel>);
JEI.hideCategory("rustic.brewing");

JEI.hide(<rustic:honey>); // Weird honey item that places fluid
<ore:materialPressedwax>.add(<rustic:beeswax>);
var honeyBottle = <rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}});

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
recipes.addShaped("crop_stake", <rustic:crop_stake>, [
    [MiniBlocks.getMiniBlock("moulding", <ore:plankWood>)],
    [MiniBlocks.getMiniBlock("moulding", <ore:plankWood>)],
    [MiniBlocks.getMiniBlock("moulding", <ore:plankWood>)]
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

// Iron and Gold Lanterns
recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);
recipes.remove(<rustic:silver_lantern>);

var iron = <ore:ingotIron>;
var tin = <ore:ingotTin>;
var silver = <ore:ingotSilver>;
var gold = <ore:ingotGold>;
var torch = <minecraft:torch>;
var glass = <minecraft:glass_pane>;

recipes.addShaped("Gold_Lantern", <rustic:golden_lantern>,[
	[null, gold, null],
    [glass, torch, glass],
    [null, gold, null]
]);

recipes.addShaped("Metal_Lantern", <rustic:iron_lantern>,[
	[null, <ore:genericMetal>, null],
    [glass, torch, glass],
    [null, <ore:genericMetal>, null]
]);

recipes.addShaped("Silver_Lantern", <rustic:silver_lantern>,[
	[null, silver, null],
    [glass, torch, glass],
    [null, silver, null]
]);

// Iron and Gold Candles
recipes.remove(<rustic:candle>);
recipes.remove(<rustic:candle_gold>);
recipes.remove(<rustic:candle_silver>);

var whitecandle = <betterwithmods:candle:0>;

recipes.addShaped("Iron Candle", <rustic:candle>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, iron, null]
]);

recipes.addShaped("Golden Candle", <rustic:candle_gold>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, gold, null]
]);

recipes.addShaped("Silver Candle", <rustic:candle_silver>,[
	[null, null, null],
    [null, whitecandle, null],
    [null, silver, null]
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

// Misc
furnace.addRecipe(<quark:tallow>, <minecraft:rotten_flesh>);

// Beginnings of Potion Revamp (ping Kilo, there is a trello card)

recipes.remove(<rustic:condenser>);
recipes.remove(<rustic:retort>);
recipes.addShaped(<rustic:condenser>, 
[[null, <minecraft:brick>, null],
[<minecraft:brick>, <pyrotech:bucket_stone>.noReturn(), <minecraft:brick>],
[<minecraft:brick>, <minecraft:hardened_clay>, <minecraft:brick>]]);
recipes.addShaped(<rustic:retort>, [
[null, <minecraft:brick>, null],
[<ore:genericMetal>, <ore:genericMetal>, null],
[null, <minecraft:brick>, null]]);

recipes.remove(<rustic:condenser_advanced>);
recipes.remove(<rustic:retort_advanced>);
recipes.addShaped(<rustic:condenser_advanced>, 
[[null, <ore:ingotBrickNether>, null],
[<ore:ingotBrickNether>, <pyrotech:bucket_stone>.noReturn(), <ore:ingotBrickNether>],
[<ore:ingotBrickNether>, <ore:blockSteel>, <ore:ingotBrickNether>]]);
recipes.addShaped(<rustic:retort_advanced>, [
[null, <ore:ingotBrickNether>, null],
[<ore:ingotSteel>, <pyrotech:bucket_stone>.noReturn(), null],
[null, <ore:ingotBrickNether>, null]]);


// fixed unbrewable potion recipes
val regenerationElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regenerationElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regenerationElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});
val healthElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});
val healthElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]});
val luckElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:luck", Duration: 450, Amplifier: 0}]});
val bouncyElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "cyclicmagic:potion.bounce", Duration: 1200, Amplifier: 1}]});	
val bouncyElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "cyclicmagic:potion.bounce", Duration: 2600, Amplifier: 1}]});	
val butterElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "cyclicmagic:potion.butter", Duration: 450, Amplifier: 1}]});
val nightvisionElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]});
val nightvisionExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]});
val nightvisionObsceneExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 14400, Amplifier: 0}]});
val ironskinElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]});
val ironskinElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]});
val ironskinElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]});

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
var genericNugg = <ore:genericMetalNuggets>;
var wheatmat = <betterwithaddons:wheatmat>;
var glowjelly = <mowziesmobs:glowing_jelly>;
var radiantdust = <arcanearchives:radiant_dust>;
var cutLeather = <betterwithmods:material:31>;
var ironBerry = <rustic:ironberries>;

Condenser.removeRecipe(regenerationElixir);
Condenser.removeRecipe(regenerationElixirLong);
Condenser.removeRecipe(regenerationElixirStrong);
Condenser.removeRecipe(healthElixir);
Condenser.removeRecipe(healthElixirStrong);
Condenser.removeRecipe(ironskinElixir);
Condenser.removeRecipe(ironskinElixirLong);
Condenser.removeRecipe(ironskinElixirStrong);

// Condenser.addRecipe(output, itemstack[] inputs, modifier, bottle, fluid, time);
Condenser.addRecipe(luckElixir, fourclover, amanita);
Condenser.addRecipe(regenerationElixir, cohosh, honeycomb);
Condenser.addRecipe(regenerationElixirLong, [cohosh, honeycomb], horsetail);
Condenser.addRecipe(regenerationElixirStrong, [cohosh, honeycomb], root);
Condenser.addRecipe(butterElixir, butter, gnugg);	
Condenser.addRecipe(bouncyElixir, slime, endpearl);	
Condenser.addRecipe(bouncyElixirLong, [slime, endpearl, butter], horsetail);
Condenser.addRecipe(ironskinElixir, [genericNugg, cutLeather, ironBerry]);
Condenser.addRecipe(ironskinElixirLong, [genericNugg, cutLeather, ironBerry], horsetail);
Condenser.addRecipe(ironskinElixirStrong, [genericNugg, cutLeather, ironBerry], root);

//val beef = [<minecraft:beef>, <animania:raw_prime_beef>, <animania:raw_prime_steak>] as IItemStack[];
Condenser.addRecipe(healthElixir, chamomile, <animania:raw_prime_beef>);
Condenser.addRecipe(healthElixirStrong, [chamomile, <animania:raw_prime_beef>], root);

// Removed Default Rustic Nightvision Elixirs
//val slownessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 1800, Amplifier: 0}]});
//val slownessExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 4800, Amplifier: 0}]});

Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}));
Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}));

Condenser.addRecipe(nightvisionElixir, [wheatmat, glowjelly, radiantdust]);
Condenser.addRecipe(nightvisionExtendedElixir, [wheatmat, glowjelly, radiantdust], <minecraft:golden_carrot>);
Condenser.addRecipe(nightvisionObsceneExtendedElixir, [wheatmat, glowjelly, radiantdust], <twilightforest:moonworm>);

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

var furnitureMap = { } as IIngredient[][IItemStack[]];
for wood, item in furnitureWood {
    furnitureMap[[itemUtils.getItem("rustic:chair_"~wood), itemUtils.getItem("rustic:table_"~wood)] as IItemStack[]] = [MiniBlocks.getMiniBlock("siding", item), MiniBlocks.getMiniBlock("moulding", item), MiniBlocks.getMiniBlock("corner", item)] as IIngredient[];
}
for wood, item in bopFurnitureWood {
    furnitureMap[[itemUtils.getItem("rusticbopwoods:chair_"~wood), itemUtils.getItem("rusticbopwoods:table_"~wood)] as IItemStack[]] = [MiniBlocks.getMiniBlock("siding", item), MiniBlocks.getMiniBlock("moulding", item), MiniBlocks.getMiniBlock("corner", item)] as IIngredient[];
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
