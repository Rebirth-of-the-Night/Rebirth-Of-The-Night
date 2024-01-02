import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.rustic.CrushingTub;
import mods.rustic.Condenser;
import mods.rustic.EvaporatingBasin;
import mods.betterwithmods.MiniBlocks;

//Define ingredients
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
var cloudblue = <aether_legacy:aercloud:1>;
var cloudwhite = <aether_legacy:aercloud:0>;
var cohosh = <rustic:cohosh>;
var honeycomb = <rustic:honeycomb>;
var chamomile = <rustic:chamomile>;
var bloodorchid = <rustic:blood_orchid>;
var horsetail = <rustic:horsetail>;
var fourclover = <contenttweaker:4leaf_clover>;
var core = <rustic:core_root>;
var spirits = <betterwithaddons:ancestry_bottle>;
var fleshblock = <charm:rotten_flesh_block>;
var tarblock = <pyrotech:living_tar>;
var tear = <minecraft:ghast_tear>;
var petal = <aether_legacy:aechor_petal>;
var ironW = <contenttweaker:material_part:49>;
var aloe = <rustic:aloe_vera>;
var blazepowder = <minecraft:blaze_powder>;
var cincinnasite = <betternether:cincinnasite>;
var gearsteel = <pyrotech:cog_bone>;
var deathstalk = <rustic:deathstalk_mushroom>;
var bronzefeather = <iceandfire:stymphalian_bird_feather>;
var bottle = <minecraft:glass_bottle>;

//Define liquids
var hotspring = <liquid:hot_spring_water>;
var lunarwater = <liquid:lunar_water>;
var blood = <liquid:blood>;
var spiritfire = <liquid:unstable_spiritfire>;
var poison = <liquid:poison>;
var dreadcold = <liquid:dread_cold>;

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
val featherElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Featherlight Elixir"},ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val healthboostElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Health Boost Elixir"},ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 7200, Amplifier: 1}]});
val strengthElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Strength Elixir"},ElixirEffects: [{Effect: "minecraft:strength", Duration: 9600, Amplifier: 0}]});
val forcefulElixirOverworld = <rustic:elixir>.withTag({display:{LocName:"Simple Forceful Elixir"},ElixirEffects: [{Effect: "elenaidodge2:forceful", Duration: 9600, Amplifier: 1}]});

val healthElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Healing Elixir"},ElixirEffects: [{Effect: "minecraft:instant_health", Amplifier: 2}]});
val ironskinElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Ironskin Elixir"},ElixirEffects: [{Effect: "rustic:ironskin", Duration: 4800, Amplifier: 1}]});
val fireresElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Fire Resistance Elixir"},ElixirEffects: [{Effect: "minecraft:fire_resistance", Duration: 9600, Amplifier: 3}]});
val enduranceElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Endurance Elixir"},ElixirEffects: [{Effect: "elenaidodge2:endurance", Duration: 14400, Amplifier: 0}]});
val hasteElixirNether = <rustic:elixir>.withTag({display:{LocName:"Simple Haste Elixir"},ElixirEffects: [{Effect: "minecraft:haste", Duration: 6000, Amplifier: 1}]});

val poisonresElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Poison Resistance Elixir"},ElixirEffects: [{Effect: "mowziesmobs:poison_resist", Duration: 9600, Amplifier: 0}]});
val jumpboostElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Jump Boost Elixir"},ElixirEffects: [{Effect: "minecraft:jump_boost", Duration: 9600, Amplifier: 1}]});
val featheryElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Feathers Elixir"},ElixirEffects: [{Effect: "elenaidodge2:feathers", Duration: 1200, Amplifier: 5}]});
val replenishmentElixirAether = <rustic:elixir>.withTag({display:{LocName:"Simple Replenishment Elixir"},ElixirEffects: [{Effect: "minecraft:replenishment", Duration: 900, Amplifier: 0}]});

val speedElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Speed Elixir"},ElixirEffects: [{Effect: "minecraft:speed", Duration: 18000, Amplifier: 1},{Effect: "elenaidodge2:forceful", Duration: 9600, Amplifier: 1}]});
val magnetismElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Magnetic Elixir"},ElixirEffects: [{Effect: "extraalchemy:effect.magnetism", Duration: 18000, Amplifier: 1}]});
val bouncyElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Bouncy Elixir"},ElixirEffects: [{Effect: "cyclicmagic:potion.bounce", Duration: 18000, Amplifier: 1}]});
val luckElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Lucky Elixir"},ElixirEffects: [{Effect: "minecraft:luck", Duration: 18000, Amplifier: 1}]});
val featherElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Featherlight Elixir"},ElixirEffects: [{Effect: "rustic:feather", Duration: 9600, Amplifier: 0}]});
val healthboostElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Health Boost Elixir"},ElixirEffects: [{Effect: "minecraft:health_boost", Duration: 12000, Amplifier: 2}]});
val strengthElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Strength Elixir"},ElixirEffects: [{Effect: "minecraft:strength", Duration: 12000, Amplifier: 1}]});
val forcefulElixirBeneath = <rustic:elixir>.withTag({display:{LocName:"Advanced Forceful Elixir"},ElixirEffects: [{Effect: "elenaidodge2:forceful", Duration: 12000, Amplifier: 2}]});




//Add recipes
//Condenser.addRecipe(output, itemstack[] inputs, modifier, bottle, fluid, time);

/////CRAFTABLE IN OVERWORLD\\\\\
Condenser.addRecipe(speedElixirOverworld, [thistle, fasthaw]);
Condenser.addRecipe(magnetismElixirOverworld, [ironBerry, genericNugg]);
Condenser.addRecipe(bouncyElixirOverworld, [slime, mallow]);
Condenser.addRecipe(luckElixirOverworld, [fourclover, goldNugg], null, bottle, hotspring * 125);
Condenser.addRecipe(featherElixirOverworld, [cloudsbluff, cloudgold], null, bottle, hotspring * 125);
Condenser.addRecipe(healthboostElixirOverworld, [bloodorchid, fleshblock], null, bottle, lunarwater * 125);
Condenser.addRecipe(strengthElixirOverworld, [core, spirits], null, bottle, lunarwater * 125);
Condenser.addRecipe(forcefulElixirOverworld, [core, jumphaw], null, bottle, lunarwater * 125);

/////CRAFTABLE POST-NETHER\\\\\
Condenser.addRecipe(healthElixirNether, [tear, tarblock], null, bottle, lunarwater * 250);
Condenser.addRecipe(ironskinElixirNether, [ironW, horsetail], null, bottle, blood * 125);
Condenser.addRecipe(fireresElixirNether, [aloe, blazepowder], null, bottle, blood * 125);
Condenser.addRecipe(enduranceElixirNether, [horsetail, thistle], null, bottle, spiritfire * 250);
Condenser.addRecipe(hasteElixirNether, [cincinnasite, gearsteel], null, bottle, spiritfire * 125);

/////CRAFTABLE POST-AETHER\\\\\
Condenser.addRecipe(poisonresElixirAether, [petal, deathstalk], null, bottle, poison * 125);
Condenser.addRecipe(jumpboostElixirAether, [thistle, cloudblue], null, bottle, hotspring * 125);
Condenser.addRecipe(featheryElixirAether, [bronzefeather, cloudwhite], null, bottle, dreadcold * 125);
Condenser.addRecipe(replenishmentElixirAether, [cloudgold, tear], null, bottle, dreadcold * 125);

/////CRAFTABLE POST-BENEATH\\\\\
Condenser.addRecipe(speedElixirBeneath, [thistle, fasthaw], null, bottle, lunarwater * 250);
Condenser.addRecipe(magnetismElixirBeneath, [ironBerry, genericNugg], null, bottle, lunarwater * 250);
Condenser.addRecipe(bouncyElixirBeneath, [slime, mallow], null, bottle, lunarwater * 250);
Condenser.addRecipe(luckElixirBeneath, [fourclover, goldNugg], null, bottle, lunarwater * 250);
Condenser.addRecipe(featherElixirBeneath, [cloudsbluff, cloudgold], null, bottle, lunarwater * 250);
Condenser.addRecipe(healthboostElixirBeneath, [bloodorchid, fleshblock], null, bottle, lunarwater * 250);
Condenser.addRecipe(strengthElixirBeneath, [core, spirits], null, bottle, lunarwater * 250);
Condenser.addRecipe(forcefulElixirBeneath, [core, jumphaw], null, bottle, lunarwater * 250);

/////CRAFTABLE POST-END\\\\\

/////CRAFTABLE POST-TWILIGHT FOREST\\\\\