import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<glaretorch:del>);


recipes.remove(<glaretorch:itemglaretorchsmall>);
recipes.remove(<glaretorch:itemglaretorch>);
recipes.remove(<glaretorch:itemglaretorchlarge>);
recipes.remove(<glaretorch:itemglaretorchlarge2>);

<glaretorch:itemglaretorchsmall>.displayName = "Small Glaretorch";
<glaretorch:itemglaretorch>.displayName = "Glaretorch";
<glaretorch:itemglaretorchlarge>.displayName = "Large Glaretorch";
<glaretorch:itemglaretorchlarge2>.displayName = "Brilliant Glaretorch";
<glaretorch:itemglaretorchlarge2>.addTooltip("Largest possible glaretorch; its light illuminates a huge area.");

var coal = <minecraft:coal>;
var torch = <minecraft:torch>;
var small = <glaretorch:itemglaretorchsmall>;
var medium = <glaretorch:itemglaretorch>;
var large = <glaretorch:itemglaretorchlarge>;


recipes.addShaped("SmallGlareTorch", <glaretorch:itemglaretorchsmall>,[
	[coal, coal, coal],
    [coal, torch, coal]
]);

recipes.addShaped("MediumGlareTorch", <glaretorch:itemglaretorch>,[
	[coal, coal, coal],
    [coal, small, coal]
]);

recipes.addShaped("LargeGlareTorch", <glaretorch:itemglaretorchlarge>,[
	[coal, coal, coal],
    [coal, medium, coal]
]);

recipes.addShaped("VeryLargeGlareTorch", <glaretorch:itemglaretorchlarge2>,[
	[coal, coal, coal],
    [coal, large, coal]
]);