import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


var branchArray = [<dynamictrees:oakbranch>,<dynamictrees:oakbranchx>,<dynamictrees:sprucebranch>,<dynamictrees:sprucebranchx>,<dynamictrees:birchbranch>,<dynamictrees:junglebranch>,<dynamictrees:acaciabranch>,<dynamictrees:darkoakbranch>,<dynamictrees:darkoakbranchx>,<dynamictreesbop:magicbranch>,<dynamictreesbop:umbranbranch>,<dynamictreesbop:umbranbranchx>,<dynamictreesbop:firbranch>,<dynamictreesbop:firbranchx>,<dynamictreesbop:cherrybranch>,<dynamictreesbop:deadbranch>,<dynamictreesbop:jacarandabranch>,<dynamictreesbop:redwoodbranch>,<dynamictreesbop:redwoodbranchx>,<dynamictreesbop:willowbranch>,<dynamictreesbop:hellbarkbranch>,<dynamictreesbop:pinebranch>,<dynamictreesbop:palmbranch>,<dynamictreesbop:mahoganybranch>,<dynamictreesbop:ebonybranch>,<dynamictreesbop:bamboobranch>,<dynamictreesbop:eucalyptusbranch>,<dynamictreesphc:cinnamonbranch>,<dynamictreesphc:maplebranch>,<dynamictreesphc:paperbarkbranch>,<rustic:olivebranch>,<rustic:ironwoodbranch>,<rustic:ironwoodbranchx>,<dynamictrees:cactusbranch>,<dynamictreesquark:blossomingbranch>,<dynamictreesquark:swampoakbranch>,<dynamictreestheaether:skyrootbranch>,<dynamictreestheaether:goldenoakbranch>,<dynamictreestheaether:crystalbranch>,<dynamictreestheaether:holidaybranch>,<dynamictreesttf:sicklytwilightoakbranch>,<dynamictreesttf:canopybranch>,<dynamictreesttf:mangrovebranch>,<dynamictreesttf:darkwoodbranch>,<dynamictreesttf:robusttwilightoakbranch>,<dynamictreesttf:robusttwilightoakbranchx>,<dynamictreesttf:treeoftimecorebranch>,<dynamictreesttf:treeoftimebranch>,<dynamictreesttf:treeoftimebranchx>,<dynamictreesttf:treeoftransformationcorebranch>,<dynamictreesttf:treeoftransformationbranch>,<dynamictreesttf:minerstreecorebranch>,<dynamictreesttf:minerstreebranch>,<dynamictreesttf:sortingtreecorebranch>,<dynamictreesttf:sortingtreebranch>,<dynamictreesttf:rainbowoakbranch>,<dynamictrees:junglebranchx>] as IItemStack[];

for branch in branchArray{
    mods.jei.JEI.hide(branch);
}

mods.jei.JEI.removeAndHide(<rustic:tomato_seeds>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<rustic:grape_stem>);
mods.jei.JEI.removeAndHide(<rustic:grapes>);
mods.jei.JEI.removeAndHide(<rustic:sapling>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<dynamictreesphc:grapefruitseed>);

mods.jei.JEI.removeAndHide(<rustic:honey>);
mods.jei.JEI.removeAndHide(<rustic:beeswax>);
mods.jei.JEI.removeAndHide(<rustic:honeycomb>);
mods.jei.JEI.removeAndHide(<rustic:beehive>);
mods.jei.JEI.removeAndHide(<rustic:bee>);
mods.jei.JEI.removeAndHide(<rustic:apiary>);
mods.jei.JEI.removeAndHide(<rustic:tallow>);

# Iron and Gold Lanterns

recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);

var iron = <ore:ingotIron>;
var tin = <ore:ingotTin>;
var gold = <ore:ingotGold>;
var torch = <minecraft:torch>;
var glass = <minecraft:glass_pane>;


recipes.addShaped("Gold Lantern", <rustic:golden_lantern>,[
	[null, gold, null],
    [glass, torch, glass],
    [null, gold, null]
]);

recipes.addShaped("Tin Lantern", <rustic:iron_lantern>,[
	[null, tin, null],
    [glass, torch, glass],
    [null, tin, null]
]);



# Iron and Gold Candles

recipes.remove(<rustic:candle>);
recipes.remove(<rustic:candle_gold>);

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


# Grape seed compat (in case you want to grow rustic grapes using rope/crop stakes)

# recipes.addShapeless("grape_seed_compat", <rustic:grape_stem>, [<harvestcraft:grapeseeditem>]);

# Crushing tub recipes
mods.rustic.CrushingTub.addRecipe(<liquid:honey> * 250, null, <harvestcraft:honeyitem> * 1);
mods.rustic.CrushingTub.addRecipe(<liquid:grapejuice> * 250, null, <harvestcraft:grapeitem> * 1);

# Misc
furnace.addRecipe(<quark:tallow>, <minecraft:rotten_flesh>);


# fixed unbrewable potion recipes
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

var cohosh = <rustic:cohosh>;
var honeycomb = <harvestcraft:honeycombitem>;
var chamomile = <rustic:chamomile>;
var root = <rustic:marsh_mallow>;
var horsetail = <rustic:horsetail>;
var fourclover = <contenttweaker:4leaf_clover>;
var amanita = <minecraft:red_mushroom>;
var slime = <minecraft:slime_ball>;
var endpearl = <minecraft:ender_pearl>;
var butter = <harvestcraft:butteritem>;
var gnugg = <minecraft:gold_nugget>;
var wheatmat = <betterwithaddons:wheatmat>;
var glowjelly = <mowziesmobs:glowing_jelly>;
var radiantdust = <arcanearchives:radiant_dust>;

mods.rustic.Condenser.removeRecipe(regenerationElixir);
mods.rustic.Condenser.removeRecipe(regenerationElixirLong);
mods.rustic.Condenser.removeRecipe(regenerationElixirStrong);
mods.rustic.Condenser.removeRecipe(healthElixir);
mods.rustic.Condenser.removeRecipe(healthElixirStrong);

// mods.rustic.Condenser.addRecipe(output, itemstack[] inputs, modifier, bottle, fluid, time);
mods.rustic.Condenser.addRecipe(luckElixir, fourclover, amanita);
mods.rustic.Condenser.addRecipe(regenerationElixir, cohosh, honeycomb);
mods.rustic.Condenser.addRecipe(regenerationElixirLong, [cohosh, honeycomb], horsetail);
mods.rustic.Condenser.addRecipe(regenerationElixirStrong, [cohosh, honeycomb], root);
mods.rustic.Condenser.addRecipe(butterElixir, butter, gnugg);	
mods.rustic.Condenser.addRecipe(bouncyElixir, slime, endpearl);	
mods.rustic.Condenser.addRecipe(bouncyElixirLong, [slime, endpearl, butter], horsetail);

//val beef = [<minecraft:beef>, <animania:raw_prime_beef>, <animania:raw_prime_steak>] as IItemStack[];
mods.rustic.Condenser.addRecipe(healthElixir, chamomile, <animania:raw_prime_beef>);
mods.rustic.Condenser.addRecipe(healthElixirStrong, [chamomile, <animania:raw_prime_beef>], root);

// Removed Default Rustic Nightvision Elixirs
//val slownessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 1800, Amplifier: 0}]});
//val slownessExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 4800, Amplifier: 0}]});

mods.rustic.Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}));
mods.rustic.Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}));

mods.rustic.Condenser.addRecipe(nightvisionElixir, [wheatmat, glowjelly, radiantdust]);
mods.rustic.Condenser.addRecipe(nightvisionExtendedElixir, [wheatmat, glowjelly, radiantdust], <minecraft:golden_carrot>);
mods.rustic.Condenser.addRecipe(nightvisionObsceneExtendedElixir, [wheatmat, glowjelly, radiantdust], <twilightforest:moonworm>);