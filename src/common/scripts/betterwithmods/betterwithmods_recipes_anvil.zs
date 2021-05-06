import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.betterwithmods.Anvil;

//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);

<ore:gearSteel>.add(<betterwithmods:material:48>);
<ore:gearSoulforgedSteel>.remove(<betterwithmods:material:48>);
<ore:gearSoulforgedSteel>.add(<pyrotech:cog_bone>);

var leatherBelt = <betterwithmods:material:9>;
var cSteelNugget = <ore:nuggetSteel>;
var cSteelIngot = <ore:ingotSteel>;
var redstoneLatch = <ore:latchRedstone>;
var steelGear = <ore:gearSteel>;
var sfsGear = <ore:gearSoulforgedSteel>;
var sfsNugget = <ore:nuggetSoulforgedSteel>;
var sfsIngot = <ore:ingotSoulforgedSteel>;

Anvil.removeShaped(<betterwithmods:steel_axle>);
Anvil.addShaped(<betterwithmods:steel_axle>, [
   [null, null, cSteelNugget, steelGear],
   [null, cSteelNugget, leatherBelt, cSteelNugget],
   [cSteelNugget, leatherBelt, cSteelNugget, null],
   [steelGear, cSteelNugget, null, null]
]);

Anvil.removeShaped(<betterwithmods:steel_gearbox>);
Anvil.addShaped(<betterwithmods:steel_gearbox>, [
   [cSteelIngot, cSteelIngot, steelGear, cSteelIngot],
   [steelGear, steelGear, redstoneLatch, cSteelIngot],
   [cSteelIngot, redstoneLatch, steelGear, steelGear],
   [cSteelIngot, steelGear, cSteelIngot, cSteelIngot]
]);

Anvil.removeShaped(steelGear.firstItem);
Anvil.addShaped(steelGear.firstItem, [
   [null, cSteelNugget, cSteelNugget, null],
   [cSteelNugget, cSteelIngot, cSteelIngot, cSteelNugget],
   [cSteelNugget, cSteelIngot, cSteelIngot, cSteelNugget],
   [null, cSteelNugget, cSteelNugget, null]
]);

Anvil.addShaped(sfsGear.firstItem, [
   [null, sfsNugget, sfsNugget, null],
   [sfsNugget, sfsIngot, sfsIngot, sfsNugget],
   [sfsNugget, sfsIngot, sfsIngot, sfsNugget],
   [null, sfsNugget, sfsNugget, null]
]);

recipes.removeByRecipeName("betterwithmods:blocks/mech/fix_steel_gearbox");
recipes.addShapeless("steel_gearbox_fix", <betterwithmods:steel_gearbox>, [<betterwithmods:steel_broken_gearbox>, steelGear, steelGear, steelGear, steelGear]);

// Heart of diamond
Anvil.addShaped(<quark:diamond_heart>, 
[
   [<contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <ore:gemDiamond>, <ore:gemDiamond>, <contenttweaker:vis_shard>],
   [<contenttweaker:vis_shard>, <ore:gemDiamond>, <ore:gemDiamond>, <arcanearchives:shaped_quartz>],
   [<arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>, <arcanearchives:shaped_quartz>, <contenttweaker:vis_shard>]
]);

// Pipes
val paneGlass = <ore:paneGlass>;
paneGlass.addItems([<betternether:quartz_glass_pane>, <betternether:quartz_glass_framed_pane>,<netherex:soul_glass_pane>,<quark:framed_glass_pane>]);

for item in paneGlass.items{
   Anvil.addShaped(<quark:pipe> * 12, 
   [
      [null, <ore:ingotIron>, <ore:ingotIron>, null],
      [<ore:ingotCopper>, item, item, <ore:ingotCopper>],
      [<ore:ingotCopper>, item, item, <ore:ingotCopper>],
      [null, <ore:ingotIron>, <ore:ingotIron>, null]
   ]);
}

// Sledgehammer
recipes.remove(<pyrotech:diamond_hammer>);
Anvil.addShaped(<pyrotech:diamond_hammer>, #Refined Sledgehammer
[
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>],
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [null, null, null, null]
]);

// Broadhead
Anvil.removeShaped(<betterwithmods:material:43>);
Anvil.addShaped(<betterwithmods:material:43>,
[
   [null, null, <dungeontactics:steel_nugget>, null],
   [<dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>],
   [null, null, <dungeontactics:steel_nugget>, null]
]);

// Greatarrow Head
Anvil.removeShaped(<betterwithaddons:material:0>);
Anvil.addShaped(<betterwithaddons:material:0>, 
[
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
   [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);

// Arrows
Anvil.removeShaped(<betterwithaddons:greatarrow>);
Anvil.addShaped(<betterwithaddons:greatarrow>, #Greatarrow
[
   [<ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [<ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSteel>, <ore:nuggetSteel>, null]
]);
Anvil.removeShaped(<betterwithaddons:greatarrow_destruction>);
Anvil.addShaped(<betterwithaddons:greatarrow_destruction>, #Destructive Greatarrow
[
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null]
]);
Anvil.removeShaped(<betterwithaddons:greatarrow_lightning>);
Anvil.addShaped(<betterwithaddons:greatarrow_lightning>, #Lightning Greatarrow
[
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);