import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.arcanearchives.GCT;
import crafttweaker.item.IItemTransformer;

mods.jei.JEI.removeAndHide(<glaretorch:del>);

recipes.removeByRecipeName("betterwithmods:torch");
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
var coal = <ore:gemCoal>;
var ncoal = <betterwithmods:material:1>;
var torch = <minecraft:torch>;
var small = <glaretorch:itemglaretorchsmall>;
var medium = <glaretorch:itemglaretorch>;
var large = <glaretorch:itemglaretorchlarge>;
var larger = <glaretorch:itemglaretorchlarge2>;
var star = <nyx:fallen_star>;
var glow = <minecraft:glowstone_dust>;
var filament = <betterwithmods:material:19>;
var latch = <ore:latchRedstone>;


//small
recipes.addShaped("coalGlare", small*1,[
	[coal],
    [coal], 
	[torch]
]);
recipes.addShaped("stackCoalGlare", small*3,[
	[coal,coal,coal],
    [coal,torch,coal],
	[stick,torch,stick]
]);

recipes.addShaped("ncoalGlare", small*4,[
	[ncoal],
    [ncoal], 
	[torch]
]);
recipes.addShaped("stackNcoalGlare", small*12,[
	[ncoal,ncoal,ncoal],
    [ncoal,stick,ncoal],
	[stick,torch,stick]
]);

recipes.addShaped("starGlare", small*6,[
	[star],
    [star], 
	[torch]
]);
recipes.addShaped("stackStarGlare", small*18,[
	[star,star,star],
    [star,stick,star],
	[stick,torch,stick]
]);


//medium
recipes.addShaped("MediumGlare", medium*4,[
	[star],
    [small], 
	[small]
]);
recipes.addShaped("MediumStarGlare", medium*4,[
	[glow],
    [small], 
	[small]
]);
mods.betterwithaddons.Infuser.addShaped(medium*8,[
[star],
[small],
[small]], 1);
mods.betterwithaddons.Infuser.addShaped(medium*8,[
[glow],
[small],
[small]], 1);

//large
recipes.addShaped("LargeGlare", large*4,[
	[filament],
    [medium], 
	[medium]
]);
mods.betterwithmods.Anvil.addShaped(large*16,[
      [ncoal, ncoal, stick, ncoal],
      [medium, medium, latch, star],
      [medium, medium, latch, star],
      [ncoal, ncoal, stick, ncoal]
   ]);

//Glare Experts
//The Mechanist
GCT.addRecipe("ComplexVeryLargeGlare", larger*64, [<ore:filament>*4, <betterwithmods:material:34>*4, large*16, <ore:shardGlass>*16, <minecraft:stick>*16]);
//The Magician
mods.betterwithaddons.Infuser.addShaped(larger*16,[
[star,star,star],
[star,large,star],
[star,star,star]], 8);
//The Glaring Issue
recipes.addShapeless("EpicureanVeryLargeGlare", larger*4, [<betterwithaddons:wheatmat>,<ore:jarPixieAny>.transformReplace(<iceandfire:jar_empty>)]);