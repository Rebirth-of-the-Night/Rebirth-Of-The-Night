import crafttweaker.item.IIngredient;

mods.jei.JEI.addDescription(<rustic:cloudsbluff>,"This puffy white flower is only found in mountainous biomes. Cloudsbluff can be used to create balloons for air ships.");

mods.jei.JEI.removeAndHide(<rustic:crop_stake>);

mods.jei.JEI.removeAndHide(<rustic:rope>);
mods.jei.JEI.removeAndHide(<rustic:crushing_tub>);
mods.jei.JEI.hideCategory("rustic.crushing_tub");

mods.jei.JEI.removeAndHide(<rustic:tomato_seeds>);
mods.jei.JEI.removeAndHide(<rustic:tomato>);

mods.jei.JEI.removeAndHide(<rustic:chili_pepper_seeds>);
mods.jei.JEI.removeAndHide(<rustic:chili_pepper>);

mods.jei.JEI.removeAndHide(<rustic:sapling_apple>);
mods.jei.JEI.removeAndHide(<rustic:apple_seeds>);
mods.jei.JEI.removeAndHide(<rustic:leaves_apple>);

mods.jei.JEI.removeAndHide(<rustic:grape_stem>);
mods.jei.JEI.removeAndHide(<rustic:grapes>);

mods.jei.JEI.removeAndHide(<rustic:tomato>);
mods.jei.JEI.removeAndHide(<rustic:chili_pepper>);
mods.jei.JEI.removeAndHide(<rustic:oliveseed>);

mods.jei.JEI.removeAndHide(<dynamictreesphc:grapefruitseed>);

mods.jei.JEI.removeAndHide(<rustic:olives>);
mods.jei.JEI.removeAndHide(<rustic:olive_oil>);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "oliveoil"}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "oliveoil", Amount: 1000}}));

mods.jei.JEI.removeAndHide(<rustic:grape_juice>);
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "grapejuice"}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "grapejuice", Amount: 1000}}));

mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironberryjuice", Amount: 1000}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "applejuice", Amount: 1000}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "alewort", Amount: 1000}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "honey", Amount: 1000}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ale", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "cider", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "ironwine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "mead", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberrywine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wildberryjuice", Amount: 1000}}));
mods.jei.JEI.removeAndHide(<rustic:fluid_bottle>.withTag({Fluid: {FluidName: "wine", Amount: 1000, Tag: {Quality: 0.75 as float}}}));

mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "ironberryjuice"}));
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "wildberryjuice"}));
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "applejuice"}));
mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "alewort"}));

mods.jei.JEI.removeAndHide(<rustic:ironberry_juice>);
mods.jei.JEI.removeAndHide(<rustic:wildberry_juice>);
mods.jei.JEI.removeAndHide(<rustic:apple_juice>);
mods.jei.JEI.removeAndHide(<rustic:ale_wort>);
mods.jei.JEI.removeAndHide(<rustic:honey>);
mods.jei.JEI.removeAndHide(<rustic:beeswax>);
mods.jei.JEI.removeAndHide(<rustic:honeycomb>);
mods.jei.JEI.removeAndHide(<rustic:beehive>);
mods.jei.JEI.removeAndHide(<rustic:bee>);
mods.jei.JEI.removeAndHide(<rustic:apiary>);


mods.jei.JEI.removeAndHide(<rustic:ironberry_juice>);


mods.jei.JEI.removeAndHide(<rustic:tallow>);


# Iron and Gold Lanterns

recipes.remove(<rustic:golden_lantern>);
recipes.remove(<rustic:iron_lantern>);

var iron = <minecraft:iron_ingot>;
var tin = <simpleores:tin_ingot>;
var gold = <minecraft:gold_ingot>;
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