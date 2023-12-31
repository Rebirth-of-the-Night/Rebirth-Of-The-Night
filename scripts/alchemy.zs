import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;
import mods.rustic.EvaporatingBasin;
import mods.betterwithmods.MiniBlocks;

var thistle = <rustic:wind_thistle>;
var fasthaw = <cyclicmagic:horse_upgrade_speed>;
var jumphaw = <cyclicmagic:horse_upgrade_jump>;
var ironBerry = <rustic:ironberries>;
var genericNugg = <ore:genericMetalNuggets>;
var goldNugg = <minecraft:gold_nugget>;
var slime = <ore:slimeball>;
var niter = <betterwithmods:material:26>;
var mallow = <rustic:marsh_mallow>;
var cloudsbluff = <rustic:cloudsbluff>;
var cloudgold = <aether_legacy:aercloud:2>;
var cohosh = <rustic:cohosh>;
var honeycomb = <rustic:honeycomb>;
var chamomile = <rustic:chamomile>;
var bloodorchid = <rustic:blood_orchid>;
var horsetail = <rustic:horsetail>;
var fourclover = <contenttweaker:4leaf_clover>;
var core = <rustic:core_root>;
var hotspring = <liquid:hot_spring_water> * 125;
var lunarwater = <liquid:lunar_water> * 125;
var spirits = <betterwithaddons:ancestry_bottle>;
var fleshblock = <charm:rotten_flesh_block>;

//Change condenser recipes
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


//Define elixir vals for removal
val regenerationElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 900, Amplifier: 0}]});
val regenerationElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 1800, Amplifier: 0}]});
val regenerationElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:regeneration", Duration: 450, Amplifier: 1}]});
val healthElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 0}]});
val healthElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health", Duration: 1, Amplifier: 1}]});
val nightvisionElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]});
val nightvisionExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]});
val nightvisionObsceneExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 14400, Amplifier: 0}]});
val ironskinElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 3600, Amplifier: 0}]});
val ironskinElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 9600, Amplifier: 0}]});
val ironskinElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:ironskin", Duration: 1800, Amplifier: 1}]});
val witherElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 900, Amplifier: 0}]});
val witherElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 1800, Amplifier: 0}]});
val witherElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:wither", Duration: 450, Amplifier: 1}]});
val healthboostElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 3600, Amplifier: 0}]});
val healthboostElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 9600, Amplifier: 0}]});
val healthboostElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 1800, Amplifier: 1}]});
val speedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 3600, Amplifier: 0}]});
val speedElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 0}]});
val speedElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:speed", Duration: 1800, Amplifier: 1}]});
val strengthElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 3600, Amplifier: 0}]});
val strengthElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val strengthElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:strength", Duration: 1800, Amplifier: 1}]});
val featherElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 3600, Amplifier: 0}]});
val featherElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val blazingtrailElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 3600, Amplifier: 0}]});
val blazingtrailElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "rustic:blazing_trail", Duration: 9600, Amplifier: 0}]});
val hasteElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 3600, Amplifier: 0}]});
val hasteElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 9600, Amplifier: 0}]});
val hasteElixirStrong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:haste", Duration: 1800, Amplifier: 1}]});
val fireresistanceElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 3600, Amplifier: 0}]});
val fireresistanceElixirLong = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 0}]});

//Remove default rustic elixir recipes
Condenser.removeRecipe(regenerationElixir);
Condenser.removeRecipe(regenerationElixirLong);
Condenser.removeRecipe(regenerationElixirStrong);
Condenser.removeRecipe(healthElixir);
Condenser.removeRecipe(healthElixirStrong);
Condenser.removeRecipe(ironskinElixir);
Condenser.removeRecipe(ironskinElixirLong);
Condenser.removeRecipe(ironskinElixirStrong);
Condenser.removeRecipe(nightvisionElixir);
Condenser.removeRecipe(nightvisionExtendedElixir);
Condenser.removeRecipe(witherElixir);
Condenser.removeRecipe(witherElixirLong);
Condenser.removeRecipe(witherElixirStrong);
Condenser.removeRecipe(healthboostElixir);
Condenser.removeRecipe(healthboostElixirLong);
Condenser.removeRecipe(healthboostElixirStrong);
Condenser.removeRecipe(speedElixir);
Condenser.removeRecipe(speedElixirLong);
Condenser.removeRecipe(speedElixirStrong);
Condenser.removeRecipe(strengthElixir);
Condenser.removeRecipe(strengthElixirLong);
Condenser.removeRecipe(strengthElixirStrong);
Condenser.removeRecipe(featherElixir);
Condenser.removeRecipe(featherElixirLong);
Condenser.removeRecipe(blazingtrailElixir);
Condenser.removeRecipe(blazingtrailElixirLong);
Condenser.removeRecipe(hasteElixir);
Condenser.removeRecipe(hasteElixirLong);
Condenser.removeRecipe(hasteElixirStrong);
Condenser.removeRecipe(fireresistanceElixir);
Condenser.removeRecipe(fireresistanceElixirLong);
JEI.removeAndHide(regenerationElixir);
JEI.removeAndHide(regenerationElixirLong);
JEI.removeAndHide(regenerationElixirStrong);

//Define elixirs for addition
val speedElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Speed Elixir"},ElixirEffects: [{Effect: "minecraft:speed", Duration: 9600, Amplifier: 1}]});
val magnetismElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Magnetic Elixir"},ElixirEffects: [{Effect: "extraalchemy:effect.magnetism", Duration: 7200, Amplifier: 1}]});
val bouncyElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Bouncy Elixir"},ElixirEffects: [{Effect: "cyclicmagic:potion.bounce", Duration: 7200, Amplifier: 1}]});
val luckElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Lucky Elixir"},ElixirEffects: [{Effect: "minecraft:luck", Duration: 9600, Amplifier: 1}]});
val featherElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Feather Elixir"},ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val healthboostElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Health Boost Elixir"},ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 7200, Amplifier: 1}]});
val strengthElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Strength Elixir"},ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val forcefulElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Forceful Elixir"},ElixirEffects: [{Effect: "elenaidodge2:forceful", Duration: 9600, Amplifier: 1}]});

//Add recipes
//Condenser.addRecipe(output, itemstack[] inputs, modifier, bottle, fluid, time);

/////CRAFTABLE IN OVERWORLD\\\\\
Condenser.addRecipe(speedElixirOverworld, [thistle, fasthaw]);
Condenser.addRecipe(magnetismElixirOverworld, [ironBerry, genericNugg]);
Condenser.addRecipe(bouncyElixirOverworld, [slime, mallow]);
Condenser.addRecipe(luckElixirOverworld, [fourclover, goldNugg], null, null, hotspring);
Condenser.addRecipe(featherElixirOverworld, [cloudsbluff, cloudgold], null, null, hotspring);
Condenser.addRecipe(healthboostElixirOverworld, [bloodorchid, fleshblock], null, null, lunarwater);
Condenser.addRecipe(strengthElixirOverworld, [core, spirits], null, null, lunarwater);
Condenser.addRecipe(forcefulElixirOverworld, [core, jumphaw], null, null, lunarwater);

/////CRAFTABLE POST-NETHER\\\\\

/////CRAFTABLE POST-AETHER\\\\\

/////CRAFTABLE POST-BENEATH\\\\\

/////CRAFTABLE POST-END\\\\\

/////CRAFTABLE POST-TWILIGHT FOREST\\\\\