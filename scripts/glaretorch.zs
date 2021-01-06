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

<glaretorch:itemglaretorchsmall>.displayName = "Glaretorch";
<glaretorch:itemglaretorch>.displayName = "Aetherial Glaretorch";
<glaretorch:itemglaretorchlarge>.displayName = "End Glaretorch";
<glaretorch:itemglaretorchlarge2>.displayName = "Ultimate Glaretorch";
<glaretorch:itemglaretorchlarge2>.addTooltip("Largest possible glaretorch; its light illuminates a huge area.");

var quartz = <arcanearchives:quartz_sliver>;
var coal = <minecraft:coal>;
var ccoal = <minecraft:coal:1>;
var coke = <pyrotech:material:1>;
var ncoal = <betterwithmods:material:1>;
var small = <glaretorch:itemglaretorchsmall>;
var large2 = <glaretorch:itemglaretorchlarge2>;
var filament = <betterwithmods:material:19>;
var latch = <ore:latchRedstone>;
var electrum = <contenttweaker:material_part:12>;
var metal = <ore:genericMetal>;

//small
recipes.addShaped("glare_small", small, 
	[[null, <betterwithmods:material:1>, null],
	[<betterwithaddons:wheatmat>, <betterwithmods:material:34>, <betterwithaddons:wheatmat>], 
	[null, metal, null]]);
recipes.addShaped("glareshaft_small",<contenttweaker:glareshaft_small>*8,
	[[metal,metal,metal],
	[metal,small.reuse(),metal],
	[metal,metal,metal]]);

//large2
recipes.addShaped("glare_large", large2,[
	[electrum,null,electrum],
    [null,filament,null], 
	[null,quartz,null]
]);
