import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.arcanearchives.GCT;

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

var stick = <ore:stickWood>;
var coal = <minecraft:coal>;
var torch = <minecraft:torch>;
var small = <glaretorch:itemglaretorchsmall>;
var medium = <glaretorch:itemglaretorch>;
var large = <glaretorch:itemglaretorchlarge>;
var star = <nyx:fallen_star>;
var glow = <minecraft:glowstone_dust>;
var filament = <betterwithmods:material:19>;

recipes.addShaped("startorch", torch*16,[
	[star],
    [star,stick,star],
	[stick,stick,stick]
]);

recipes.addShaped("SmallGlareTorch", <glaretorch:itemglaretorchsmall>*4,[
	[star],
    [torch], 
	[torch]
]);

recipes.addShaped("MediumGlareTorch", <glaretorch:itemglaretorch>*4,[
	[glow],
    [small], 
	[small]
]);

recipes.addShaped("LargeGlareTorch", <glaretorch:itemglaretorchlarge>*4,[
	[filament],
    [medium], 
	[medium]
]);

//Glare Experts
//The Mechanist
GCT.addRecipe("ComplexVeryLargeGlareTorch", <glaretorch:itemglaretorchlarge2>*64, [<ore:filament>*4, <betterwithmods:material:34>*4, <glaretorch:itemglaretorchlarge>*16, <ore:shardGlass>*16, <minecraft:stick>*16]);
//The Magician
mods.betterwithaddons.Infuser.addShaped(<glaretorch:itemglaretorchlarge2>*16,[
[star,star,star],
[star,large,star],
[star,star,star]], 8);
//The Glaring Issue
recipes.addShapeless("EpicureanGlareTorch", <glaretorch:itemglaretorchlarge2>*4, [<betterwithaddons:wheatmat>,<ore:jarPixieAny>]);