import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

/*
nyx:meteor_hammer
nyx:meteor_glass
nyx:meteor_shovel
nyx:meteor_boots
nyx:star_stairs
nyx:scythe
nyx:meteor_hoe
nyx:chiseled_star_block
nyx:meteor_shard
nyx:meteor_pants
nyx:meteor_axe
nyx:fallen_star
nyx:meteor_dust
nyx:meteor_chest
nyx:gleaning_meteor_rock
nyx:meteor_ingot
nyx:meteor_rock
nyx:star_slab
nyx:meteor_finder
nyx:meteor_sword
nyx:crystal
nyx:meteor_block
nyx:cracked_star_block
nyx:star_block
nyx:unrefined_crystal
nyx:meteor_bow
nyx:meteor_pickaxe
nyx:meteor_helm
nyx:lunar_water_bottle
*/



recipes.remove(<nyx:star_block>);


recipes.remove(<nyx:meteor_hammer>);
mods.betterwithmods.Anvil.addShaped(<nyx:meteor_hammer>,
[
   [<nyx:meteor_block>, <nyx:meteor_block>, null, null],
   [<nyx:meteor_block>, <nyx:meteor_block>, <minecraft:blaze_rod>, <minecraft:blaze_rod>],
   [<nyx:meteor_block>, <nyx:meteor_block>, <minecraft:blaze_rod>, <minecraft:blaze_rod>],
   [<nyx:meteor_block>, <nyx:meteor_block>, null, null]
]);

recipes.remove(<nyx:scythe>);
mods.betterwithmods.Anvil.addShaped(<nyx:scythe>,
[
   [null, <nyx:crystal>, null, null],
   [<nyx:crystal>, null, null, null],
   [<nyx:meteor_ingot>, null, <nyx:meteor_ingot>, <spartanfire:witherbone_handle>],
   [<nyx:crystal>, <nyx:meteor_ingot>, null, null]
]);