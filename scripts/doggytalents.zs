import crafttweaker.item.IIngredient;


mods.jei.JEI.removeAndHide(<doggytalents:radar>);
mods.jei.JEI.removeAndHide(<doggytalents:radio_collar>);


recipes.remove(<doggytalents:training_treat>);

var sugar = <minecraft:sugar>;
var wheat = <minecraft:wheat>;
var bone = <minecraft:bone>;


recipes.addShaped("Training Treat", <doggytalents:training_treat>,[
	[sugar, sugar, sugar],
    [wheat, bone, wheat],
    [wheat, wheat, wheat]
]);