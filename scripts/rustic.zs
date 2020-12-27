import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


var branchArray = [<dynamictrees:oakbranch>,<dynamictrees:oakbranchx>,<dynamictrees:sprucebranch>,<dynamictrees:sprucebranchx>,<dynamictrees:birchbranch>,<dynamictrees:junglebranch>,<dynamictrees:acaciabranch>,<dynamictrees:darkoakbranch>,<dynamictrees:darkoakbranchx>,<dynamictreesbop:magicbranch>,<dynamictreesbop:umbranbranch>,<dynamictreesbop:umbranbranchx>,<dynamictreesbop:firbranch>,<dynamictreesbop:firbranchx>,<dynamictreesbop:cherrybranch>,<dynamictreesbop:deadbranch>,<dynamictreesbop:jacarandabranch>,<dynamictreesbop:redwoodbranch>,<dynamictreesbop:redwoodbranchx>,<dynamictreesbop:willowbranch>,<dynamictreesbop:hellbarkbranch>,<dynamictreesbop:pinebranch>,<dynamictreesbop:palmbranch>,<dynamictreesbop:mahoganybranch>,<dynamictreesbop:ebonybranch>,<dynamictreesbop:bamboobranch>,<dynamictreesbop:eucalyptusbranch>,<dynamictreesphc:cinnamonbranch>,<dynamictreesphc:maplebranch>,<dynamictreesphc:paperbarkbranch>,<rustic:olivebranch>,<rustic:ironwoodbranch>,<rustic:ironwoodbranchx>,<dynamictrees:cactusbranch>,<dynamictreesquark:blossomingbranch>,<dynamictreesquark:swampoakbranch>,<dynamictreestheaether:skyrootbranch>,<dynamictreestheaether:goldenoakbranch>,<dynamictreestheaether:crystalbranch>,<dynamictreestheaether:holidaybranch>,<dynamictreesttf:canopybranch>,<dynamictreesttf:mangrovebranch>,<dynamictreesttf:darkwoodbranch>,<dynamictreesttf:treeoftimecorebranch>,<dynamictreesttf:treeoftimebranch>,<dynamictreesttf:treeoftimebranchx>,<dynamictreesttf:treeoftransformationcorebranch>,<dynamictreesttf:treeoftransformationbranch>,<dynamictreesttf:minerstreecorebranch>,<dynamictreesttf:minerstreebranch>,<dynamictreesttf:sortingtreecorebranch>,<dynamictreesttf:sortingtreebranch>,<dynamictreesttf:rainbowoakbranch>,<dynamictrees:junglebranchx>,<dynamictreesttf:twilightoakbranch>,<dynamictreesttf:twilightoakbranchx>] as IItemStack[];

for branch in branchArray{
    mods.jei.JEI.hide(branch);
}




mods.jei.JEI.removeAndHide(<rustic:lantern_wood>);


mods.jei.JEI.removeAndHide(<rustic:tomato_seeds>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<rustic:grape_stem>);
mods.jei.JEI.removeAndHide(<rustic:grapes>);
mods.jei.JEI.removeAndHide(<rustic:sapling>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<dynamictreesphc:grapefruitseed>);

mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));



recipes.remove(<rustic:liquid_barrel>);
recipes.addShaped("Liquid Barrel", <rustic:liquid_barrel>,[
	[<ore:plankWood>, null, <ore:plankWood>],
    [<ore:genericMetal>, null, <ore:genericMetal>],
    [<ore:plankWood>, <ore:slabWood>, <ore:plankWood>]
]);



# Iron and Gold Lanterns

recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);
recipes.remove(<rustic:silver_lantern>);

var iron = <ore:ingotIron>;
var tin = <ore:ingotTin>;
var silver = <ore:ingotSilver>;
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

recipes.addShaped("Silver Lantern", <rustic:silver_lantern>,[
	[null, silver, null],
    [glass, torch, glass],
    [null, silver, null]
]);



# Iron and Gold Candles

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

// Rework rustic furniture to use BWM miniblocks

var furnitureMap = {
    [<rustic:chair_oak>, <rustic:table_oak>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}})],
    [<rustic:chair_big_oak>, <rustic:table_big_oak>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})],
    [<rustic:chair_birch>, <rustic:table_birch>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}})],
    [<rustic:chair_spruce>, <rustic:table_spruce>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}})],
    [<rustic:chair_acacia>, <rustic:table_acacia>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}})],
    [<rustic:chair_jungle>, <rustic:table_jungle>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}})],
    [<rustic:chair_olive>, <rustic:table_olive>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "olive"}, Name: "rustic:planks"}})],
    [<rustic:chair_ironwood>, <rustic:table_ironwood>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "ironwood"}, Name: "rustic:planks"}})],
    [<rusticbopwoods:chair_sacred_oak>, <rusticbopwoods:table_sacred_oak>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "sacred_oak"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "sacred_oak"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "sacred_oak"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_cherry>, <rusticbopwoods:table_cherry>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "cherry"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "cherry"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "cherry"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_umbran>, <rusticbopwoods:table_umbran>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "umbran"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "umbran"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "umbran"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_fir>, <rusticbopwoods:table_fir>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "fir"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "fir"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "fir"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_ethereal>, <rusticbopwoods:table_ethereal>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ethereal"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "ethereal"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "ethereal"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_magic>, <rusticbopwoods:table_magic>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "magic"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "magic"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "magic"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_mangrove>, <rusticbopwoods:table_mangrove>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "mangrove"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "mangrove"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "mangrove"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_palm>, <rusticbopwoods:table_palm>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "palm"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "palm"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "palm"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_redwood>, <rusticbopwoods:table_redwood>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "redwood"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "redwood"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "redwood"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_willow>, <rusticbopwoods:table_willow>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "willow"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "willow"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "willow"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_pine>, <rusticbopwoods:table_pine>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "pine"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "pine"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "pine"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_hellbark>, <rusticbopwoods:table_hellbark>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "hellbark"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "hellbark"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "hellbark"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_jacaranda>, <rusticbopwoods:table_jacaranda>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "jacaranda"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jacaranda"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "jacaranda"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_mahogany>, <rusticbopwoods:table_mahogany>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "mahogany"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "mahogany"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "mahogany"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_ebony>, <rusticbopwoods:table_ebony>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "ebony"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "ebony"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "ebony"}, Name: "biomesoplenty:planks_0"}})],
    [<rusticbopwoods:chair_eucalyptus>, <rusticbopwoods:table_eucalyptus>] : [<betterwithmods:siding_wood>.withTag({texture: {Properties: {variant: "eucalyptus"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "eucalyptus"}, Name: "biomesoplenty:planks_0"}}), <betterwithmods:corner_wood>.withTag({texture: {Properties: {variant: "eucalyptus"}, Name: "biomesoplenty:planks_0"}})]
} as IItemStack[][IItemStack[]];

for furnitureList, materialList in furnitureMap{
    recipes.remove(furnitureList[0]);
    recipes.addShaped(furnitureList[0],[
        [materialList[1], null, null],
        [materialList[0], materialList[0], materialList[0]],
        [materialList[2], null, materialList[2]]
    ]);

    recipes.remove(furnitureList[1]);
    recipes.addShaped(furnitureList[1],[
        [materialList[0], materialList[0], materialList[0]],
        [materialList[2], null, materialList[2]],
        [materialList[2], null, materialList[2]]
    ]);
}