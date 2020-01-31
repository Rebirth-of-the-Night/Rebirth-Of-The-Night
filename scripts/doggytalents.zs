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

recipes.remove(<doggytalents:wool_collar>);
recipes.addShaped("Collar", <doggytalents:wool_collar>,[
	[null, <minecraft:string>, null],
    [<minecraft:string>, null, <minecraft:string>],
    [null, <minecraft:string>, null]
]);

recipes.remove(<doggytalents:tiny_bone>);
recipes.addShapedMirrored("Tiny Bone", <doggytalents:tiny_bone>,[
	[<ore:stickBone>, <ore:ingotTin>],
    [<ore:ingotTin>, <ore:stickBone>]
]);
