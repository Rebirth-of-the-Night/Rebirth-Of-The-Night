import crafttweaker.item.IIngredient;

recipes.remove(<glaretorch:itemglaretorchsmall>);
recipes.remove(<glaretorch:itemglaretorch>);
recipes.remove(<glaretorch:itemglaretorchlarge>);
recipes.remove(<glaretorch:itemglaretorchlarge2>);


var coal = <minecraft:coal>;
var torch = <minecraft:torch>;
var small = <glaretorch:itemglaretorchsmall>;
var medium = <glaretorch:itemglaretorch>;
var large = <glaretorch:itemglaretorchlarge>;


recipes.addShaped("SmallGlareTorch", <glaretorch:itemglaretorchsmall>,[
	[coal, coal, coal],
    [coal, torch, coal],
    [null, null, null]
]);

recipes.addShaped("MediumGlareTorch", <glaretorch:itemglaretorch>,[
	[coal, coal, coal],
    [coal, small, coal],
    [null, null, null]
]);

recipes.addShaped("LargeGlareTorch", <glaretorch:itemglaretorchlarge>,[
	[coal, coal, coal],
    [coal, medium, coal],
    [null, null, null]
]);

recipes.addShaped("VeryLargeGlareTorch", <glaretorch:itemglaretorchlarge2>,[
	[coal, coal, coal],
    [coal, large, coal],
    [null, null, null]
]);