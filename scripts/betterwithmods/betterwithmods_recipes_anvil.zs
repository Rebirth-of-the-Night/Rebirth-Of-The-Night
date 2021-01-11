import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


//Steel Anvil
recipes.remove(<betterwithmods:steel_anvil>);

var steel = <dungeontactics:steel_ingot>;
var steelblock = <dungeontactics:steel_block>;

recipes.addShaped("Steel Anvil", <betterwithmods:steel_anvil>,[
	[steelblock, steelblock, steelblock],
	[null, steel, null],
	[steel, steel, steel]
]);


// Heart of diamond
mods.betterwithmods.Anvil.addShaped(<quark:diamond_heart>, 
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
   mods.betterwithmods.Anvil.addShaped(<quark:pipe> * 12, 
   [
      [null, <ore:ingotIron>, <ore:ingotIron>, null],
      [<ore:ingotCopper>, item, item, <ore:ingotCopper>],
      [<ore:ingotCopper>, item, item, <ore:ingotCopper>],
      [null, <ore:ingotIron>, <ore:ingotIron>, null]
   ]);
}

// Sledgehammer
recipes.remove(<pyrotech:diamond_hammer>);
mods.betterwithmods.Anvil.addShaped(<pyrotech:diamond_hammer>, #Refined Sledgehammer
[
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [<betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>, <betterwithmods:material:36>],
   [<ore:ingotSoulforgedSteel>, <ore:ingotSoulforgedSteel>, null, null],
   [null, null, null, null]
]);

// Broadhead
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:material:43>);
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:43>,
[
   [null, null, <dungeontactics:steel_nugget>, null],
   [<dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>, <dungeontactics:steel_nugget>],
   [null, null, <dungeontactics:steel_nugget>, null]
]);

// Greatarrow Head
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:material:0>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:material:0>, 
[
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>],
   [<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [null, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]
]);

// Arrows
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow>, #Greatarrow
[
   [<ore:nuggetSteel>, <ore:nuggetSteel>, null],
   [<ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSteel>, <ore:nuggetSteel>, null]
]);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow_destruction>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow_destruction>, #Destructive Greatarrow
[
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, <ore:nuggetSoulforgedSteel>, null]
]);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatarrow_lightning>);
mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatarrow_lightning>, #Lightning Greatarrow
[
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, <ore:arrowSoulforgedSteel>, <betterwithmods:material:36>, <ore:feather>],
   [<ore:latchRedstone>, <ore:latchRedstone>, <ore:nuggetSoulforgedSteel>, null],
   [null, null, null, null]
]);