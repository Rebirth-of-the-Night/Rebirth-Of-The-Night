import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.arcanearchives.GCT;
import crafttweaker.item.IItemTransformer;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<glaretorch:del>);
JEI.removeAndHide(<glaretorch:blocklight>);
recipes.removeByRecipeName("betterwithmods:torch");
recipes.remove(<glaretorch:itemglaretorchsmall>);
recipes.remove(<glaretorch:itemglaretorch>);
recipes.remove(<glaretorch:itemglaretorchlarge>);
recipes.remove(<glaretorch:itemglaretorchlarge2>);

<glaretorch:itemglaretorchlarge2>.addTooltip("Largest possible glaretorch; its light illuminates a huge area.");

var quartz = <arcanearchives:quartz_sliver>;
var ncoal = <betterwithmods:material:1>;
var small = <glaretorch:itemglaretorchsmall>;
var gshaft = <contenttweaker:glareshaft_small>;
var ultimate = <glaretorch:itemglaretorchlarge2>;
var filament = <betterwithmods:material:19>;
var latch = <ore:latchRedstone>;
var electrum = <ore:ingotElectrum>;
var lumres = <betterwithaddons:wheatmat:0>;
var metal = <ore:genericMetal>;
var lightEssence = <biomesoplenty:biome_essence>;
var voidurn = <betterwithmods:urn:9>.transformReplace(<betterwithmods:urn:0>);
var lightblock = <betterwithmods:light>;
var obsidian = <minecraft:obsidian>;
var quartzlamp = <randomthings:quartzlamp>;
var destrarrow = <betterwithaddons:greatarrow_destruction>;
var shardnight = <contenttweaker:shard_of_night>;
var voidripper = <endreborn:ender_sword>;

// del
RecipeBuilder.get("mage")
  .setShaped([
    [quartzlamp, ultimate, obsidian],
    [shardnight, voidurn, shardnight],
    [destrarrow, lightblock, voidripper]])
  .addTool(<contenttweaker:luna_rune>, 3)
  .addTool(<contenttweaker:disint_rune>, 3)
  .addOutput(<glaretorch:del>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// small
recipes.addShaped("glare_small", small, [
	[null, ncoal, null],
	[lumres, latch, lumres], 
	[null, metal, null]
]);
recipes.addShaped("glareshaft_small",gshaft*8, [
	[metal, metal, metal],
	[metal, small.reuse(), metal],
	[metal, metal, metal]
]);

// ultimate
recipes.addShaped("glare_ultimate", ultimate,[
	[electrum, lightEssence, electrum],
    [null, filament, null], 
	[null, quartz, null]
]);
