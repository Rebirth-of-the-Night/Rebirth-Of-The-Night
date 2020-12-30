import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.removeByRecipeName("betterwithmods:quark/spruce_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/birch_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/acacia_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/dark_oak_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/jungle_trapdoor");
recipes.removeByRecipeName("betterwithmods:decompress/ender_pearl_decompress");
recipes.removeByRecipeName("betterwithmods:decompress/melon_decompress");
recipes.removeByRecipeName("betterwithmods:blocks/shaft-back");
recipes.removeByRecipeName("betterwithmods:piles/sand_0");
recipes.removeByRecipeName("betterwithmods:piles/gravel");
recipes.removeByRecipeName("betterwithmods:piles/red_sand_pile");
recipes.removeByRecipeName("betterwithmods:piles/dirt_0");
recipes.removeByRecipeName("betterwithmods:items/patchouli_manual");

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);

mods.jei.JEI.removeAndHide(<betterwithmods:leather_tanned_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:leather_tanned_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:leather_tanned_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:leather_tanned_pants>);


mods.jei.JEI.removeAndHide(<betterwithmods:shaft>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:44>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:40>);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>); 
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:8>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);

mods.jei.JEI.removeAndHide(<betterwithmods:raw_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:ham_and_eggs>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_scrambled_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_scrambled_egg>);
furnace.remove(<betterwithmods:cooked_scrambled_egg>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_pastry:4>);
mods.jei.JEI.removeAndHide(<betterwithmods:apple_pie>);
furnace.remove(<betterwithmods:apple_pie>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_omelet>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_omelet>);
furnace.remove(<betterwithmods:cooked_omelet>);
mods.jei.JEI.removeAndHide(<betterwithmods:raw_kebab>);
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_kebab>);
furnace.remove(<betterwithmods:cooked_kebab>);
mods.jei.JEI.removeAndHide(<betterwithmods:creeper_oyster>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:creeper_oyster");
mods.jei.JEI.removeAndHide(<betterwithmods:stump_remover>);
mods.jei.JEI.removeAndHide(<betterwithmods:beef_dinner>);
mods.jei.JEI.removeAndHide(<betterwithmods:beef_potatoes>);
mods.jei.JEI.removeAndHide(<betterwithmods:chocolate>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:chocolate>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:thorn_rose>]);
mods.jei.JEI.removeAndHide(<betterwithmods:chowder>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:chowder>]);
mods.jei.JEI.removeAndHide(<betterwithmods:hearty_stew>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:hearty_stew>]);
mods.jei.JEI.removeAndHide(<betterwithmods:pork_dinner>);
mods.jei.JEI.removeAndHide(<betterwithmods:mystery_meat>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:mystery_meat");
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooking_pot>);
recipes.remove(<betterwithmods:donut>);
mods.jei.JEI.removeAndHide(<betterwithmods:donut>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:donut>]);

mods.jei.JEI.removeAndHide(<betterwithmods:dirt_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:gravel_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:sand_pile>);
mods.jei.JEI.removeAndHide(<betterwithmods:red_sand_pile>);
recipes.removeByRecipeName("betterwithmods:piles/dirt_slab_0");
mods.jei.JEI.removeAndHide(<betterwithmods:infernal_enchanter>);
mods.jei.JEI.removeAndHide(<betterwithmods:arcane_scroll>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:arcane_scroll");
recipes.removeByRecipeName("betterwithmods:blocks/redstone/comparator");
recipes.removeByRecipeName("betterwithmods:decompress/wicker_decompress");
recipes.remove(<betterwithmods:metal_chime:*>);
recipes.remove(<betterwithmods:bamboo_chime:*>);

//Turntable
mods.betterwithmods.Turntable.removeAll();
mods.betterwithmods.Turntable.add(<minecraft:clay>, <betterwithmods:unfired_pottery:1>, [<minecraft:clay_ball>]);
mods.betterwithmods.Turntable.add(<betterwithmods:unfired_pottery:1>, <contenttweaker:pot_unfired>, [<minecraft:clay_ball>]);
mods.betterwithmods.Turntable.add(<rustic:vase>, <betterwithmods:unfired_pottery:3>, [<minecraft:clay_ball>]);
mods.betterwithmods.Turntable.add(<betterwithmods:unfired_pottery:3>, <betterwithmods:unfired_pottery:2>, [<minecraft:clay_ball>]);

mods.betterwithmods.Turntable.add(<contenttweaker:modelingrefractory>, <contenttweaker:crucible>, [<pyrotech:material:4>*4]);
mods.betterwithmods.Turntable.add(<contenttweaker:crucible>, <ceramics:clay_barrel_unfired>, [<pyrotech:material:4>*4]);
mods.betterwithmods.Turntable.add(<ceramics:clay_barrel_unfired>, <ceramics:clay_barrel_unfired:1>, [<pyrotech:material:4>*4]);

val arrayMoulding = [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})] as IItemStack[];

val arrayWindChime = [<betterwithmods:metal_chime:0>,<betterwithmods:metal_chime:1>,<betterwithmods:metal_chime:2>,<betterwithmods:metal_chime:3>,<betterwithmods:metal_chime:4>,<betterwithmods:metal_chime:5>] as IItemStack[];

val arrayBambooChime = [<betterwithmods:bamboo_chime:0>,<betterwithmods:bamboo_chime:1>,<betterwithmods:bamboo_chime:2>,<betterwithmods:bamboo_chime:3>,<betterwithmods:bamboo_chime:4>,<betterwithmods:bamboo_chime:5>,] as IItemStack[];

for i, output in arrayWindChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:genericMetal>,arrayMoulding[i],<ore:genericMetal>]
    ]);
}

for i, output in arrayBambooChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:hollowReed>,arrayMoulding[i],<ore:hollowReed>]
    ]);
}

recipes.remove(<betterwithmods:single_machine:2>);
recipes.addShaped("filtered_hopper",<betterwithmods:single_machine:2>,[
    [null,<chutes:chute_wood>,null],
    [<betterwithmods:material:0>,<quark:chute>,<betterwithmods:material:0>]
]);

recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

recipes.addShaped("wax_candle",<betterwithmods:candle>,[
    [null,<minecraft:string>,null],
    [null,<harvestcraft:beeswaxitem>,null],
    [null,<harvestcraft:beeswaxitem>,null]
]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);
mods.betterwithmods.Cauldron.remove([<minecraft:rabbit_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:cooked_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

mods.betterwithmods.Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
mods.betterwithmods.Cauldron.addUnstoked([<harvestcraft:grubitem>],[<harvestcraft:cookedgrubitem>]);
mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);
mods.betterwithmods.Cauldron.addUnstoked([<betteranimalsplus:turkey_raw>],[<betteranimalsplus:turkey_cooked>]);

mods.betterwithmods.Cauldron.addStoked([<betterwithaddons:material:1>*8,<betterwithaddons:material:3>*2,<ore:dung>*8,<betterwithmods:urn:8>],[<betterwithaddons:thorn_rose>,<betterwithmods:urn>]);

// fuckin book

recipes.addShapeless("BWM Manual", <betterwithmods:manual>,[<betterwithmods:material>,<minecraft:book>]);

//Horse Upgrades
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*32,<primitivemobs:camouflage_dye>],[<cyclicmagic:horse_upgrade_variant>]);
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*6,<ore:slimeball>*4],[<cyclicmagic:horse_upgrade_jump>]);
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*4,<ore:listAllsugar>*4],[<cyclicmagic:horse_upgrade_speed>]);

//Charbiotite
// mods.betterwithmods.Cauldron.builder()
// .buildRecipe([<pyrotech:material:15>*9,<contenttweaker:end_orb>,<minecraft:rotten_flesh>*9],[<undergroundbiomes:lignite_coal>*3])
// .setHeat(2)
// .setPriority(6)
// .build();

mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:13>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:1>]); # nethercoal

mods.betterwithmods.Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustCarbon>],[<betterwithmods:material:1>]) #coal nethercoal
.setIgnoreHeat(false)
.setPriority(12)
.build();
mods.betterwithmods.Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustRichCarbon>],[<betterwithmods:material:1>*4]) #coke nethercoal
.setIgnoreHeat(false)
.setPriority(3)
.build();

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);

//Cyclic Apple
mods.betterwithmods.FilteredHopper.addFilter("modtweaker:livingSoul", <pyrotech:living_tar>);
mods.betterwithmods.FilteredHopper.addFilter("modtweaker:soulsand", <minecraft:soul_sand>);

#Removal of sawdust, changed in recipes_saw.zs for wood chips from Pyrotech instead
//mods.betterwithmods.Cauldron.remove([<minecraft:netherrack>,<betterwithmods:material:22>]); # netherrack and sawdust
mods.betterwithmods.Cauldron.addStoked([<pyrotech:rock:7>*16],[<betterwithmods:material:21>]); # chips to potash
mods.betterwithmods.FilteredHopper.removeRecipeByInput(<betterwithmods:material:23>); #sawdust from soul dust
mods.betterwithmods.FilteredHopper.addSoulUrnRecipe(<betterwithmods:material:23>*8,[<pyrotech:rock:7>*8],[]);
mods.betterwithmods.FilteredHopper.addSoulUrnRecipe(<quark:soul_bead>*1,[<betterwithmods:material:38>*1],[<betterwithaddons:congealed>*5]);
mods.betterwithmods.FilteredHopper.addFilterRecipe("modtweaker:soulsand",<contenttweaker:starblock>,[<betterwithmods:material:16>*3],[<betterwithmods:material:15>]); 

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:6>]); #remove default BWM bark-tanned leather recipe as well as dung variants
mods.betterwithmods.Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:7>],[<betterwithmods:material:6>]); # tanned leather
mods.betterwithmods.Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:7>],[<betterwithmods:material:6>]);
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:32>]); #remove default BWM bark-cut tanned leather recipe as well as dung variants
mods.betterwithmods.Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]); # tanned cut leather
mods.betterwithmods.Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]);

mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);

recipes.remove(<betterwithmods:material:45>); # diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*3,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

mods.jei.JEI.removeAndHide(<betterwithmods:chicken_soup>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:0>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:1>);
mods.jei.JEI.removeAndHide(<betterwithmods:cobblestone:2>);
furnace.remove(<minecraft:stone:1>);
furnace.remove(<minecraft:stone:3>);
furnace.remove(<minecraft:stone:5>);

// better mining charge
recipes.remove(<betterwithmods:mining_charge>);
recipes.addShaped("betterminingcharge",<betterwithmods:mining_charge>*4,[
    [null,<betterwithmods:rope>,<ore:slimeball>],
    [null,<betterwithmods:dynamite_bundle>,null],
    [null,<betterwithmods:dynamite_bundle>,null]
]);

//Descriptions



// Remove unused refined weapons
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_sword>);


// Heat sources
/*
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=north,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=east,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=south,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=west,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<futuremc:campfire>, 1);
*/
mods.betterwithmods.HeatRegistry.addHeatSource(<betternether:cincinnasite_fire_bowl>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<arcanearchives:brazier_of_hoarding>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<contenttweaker:fire_block>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:minecraft:fire>, 1);
