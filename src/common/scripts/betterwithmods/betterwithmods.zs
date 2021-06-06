import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Turntable;
import mods.betterwithmods.FilteredHopper;
import mods.betterwithmods.Anvil;
import mods.betterwithmods.HeatRegistry;

furnace.setFuel(<betterwithmods:aesthetic:13>, 28800);
<ore:cobblestone>.add(<betterwithmods:aesthetic:7>);
<ore:stone>.add(<betterwithmods:aesthetic:6>);

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
recipes.addShapeless("betterwithmods_items/material/material_padding_feather", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);
recipes.addShapeless("betterwithmods_items/material/material_padding_wool", <betterwithmods:material:41>, [<ore:wool>,<betterwithmods:material:4>]);

JEI.removeAndHide(<betterwithmods:bark:*>);
JEI.removeAndHide(<betterwithmods:nether_growth>);
JEI.removeAndHide(<betterwithmods:steel_saw>);
JEI.removeAndHide(<betterwithmods:material:52>);
JEI.removeAndHide(<betterwithmods:material:53>);
JEI.removeAndHide(<betterwithmods:fertile_farmland>);

JEI.removeAndHide(<betterwithmods:leather_tanned_boots>);
JEI.removeAndHide(<betterwithmods:leather_tanned_chest>);
JEI.removeAndHide(<betterwithmods:leather_tanned_helmet>);
JEI.removeAndHide(<betterwithmods:leather_tanned_pants>);


JEI.removeAndHide(<betterwithmods:shaft>);
JEI.removeAndHide(<betterwithmods:material:44>);

JEI.removeAndHide(<betterwithmods:material:40>);

JEI.removeAndHide(<betterwithmods:steel_sword>);
JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

JEI.removeAndHide(<betterwithmods:candle_holder>); 
JEI.removeAndHide(<betterwithmods:aesthetic:8>);
JEI.removeAndHide(<betterwithmods:material:46>);

JEI.removeAndHide(<betterwithmods:raw_egg>);
JEI.removeAndHide(<betterwithmods:cooked_egg>);
furnace.remove(<betterwithmods:cooked_egg>);
JEI.removeAndHide(<betterwithmods:ham_and_eggs>);
JEI.removeAndHide(<betterwithmods:raw_scrambled_egg>);
JEI.removeAndHide(<betterwithmods:cooked_scrambled_egg>);
furnace.remove(<betterwithmods:cooked_scrambled_egg>);
JEI.removeAndHide(<betterwithmods:raw_pastry:4>);
JEI.removeAndHide(<betterwithmods:apple_pie>);
furnace.remove(<betterwithmods:apple_pie>);
JEI.removeAndHide(<betterwithmods:raw_omelet>);
JEI.removeAndHide(<betterwithmods:cooked_omelet>);
furnace.remove(<betterwithmods:cooked_omelet>);
JEI.removeAndHide(<betterwithmods:raw_kebab>);
JEI.removeAndHide(<betterwithmods:cooked_kebab>);
furnace.remove(<betterwithmods:cooked_kebab>);
JEI.removeAndHide(<betterwithmods:creeper_oyster>);
LootTable.removeGlobalItem("betterwithmods:creeper_oyster");
JEI.removeAndHide(<betterwithmods:stump_remover>);
JEI.removeAndHide(<betterwithmods:beef_dinner>);
JEI.removeAndHide(<betterwithmods:beef_potatoes>);
JEI.removeAndHide(<betterwithmods:chocolate>);
Cauldron.remove([<betterwithmods:chocolate>]);
Cauldron.remove([<betterwithaddons:thorn_rose>]);
JEI.removeAndHide(<betterwithmods:chowder>);
Cauldron.remove([<betterwithmods:chowder>]);
JEI.removeAndHide(<betterwithmods:hearty_stew>);
Cauldron.remove([<betterwithmods:hearty_stew>]);
JEI.removeAndHide(<betterwithmods:pork_dinner>);
JEI.removeAndHide(<betterwithmods:mystery_meat>);
LootTable.removeGlobalItem("betterwithmods:mystery_meat");
JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooking_pot>);
recipes.remove(<betterwithmods:donut>);
JEI.removeAndHide(<betterwithmods:donut>);
Cauldron.remove([<betterwithmods:donut>]);

JEI.removeAndHide(<betterwithmods:gravel_pile>);
JEI.removeAndHide(<betterwithmods:sand_pile>);
JEI.removeAndHide(<betterwithmods:red_sand_pile>);
recipes.removeByRecipeName("betterwithmods:piles/dirt_slab_0");
JEI.removeAndHide(<betterwithmods:infernal_enchanter>);
JEI.removeAndHide(<betterwithmods:arcane_scroll>);
LootTable.removeGlobalItem("betterwithmods:arcane_scroll");
recipes.removeByRecipeName("betterwithmods:blocks/redstone/comparator");
recipes.removeByRecipeName("betterwithmods:decompress/wicker_decompress");
recipes.remove(<betterwithmods:metal_chime:*>);
recipes.remove(<betterwithmods:bamboo_chime:*>);

//Turntable
Turntable.removeAll();
Turntable.add(<minecraft:clay>, <betterwithmods:unfired_pottery:1>, [<minecraft:clay_ball>]);
Turntable.add(<betterwithmods:unfired_pottery:1>, <contenttweaker:pot_unfired>, []);
Turntable.add(<contenttweaker:pot_unfired>, <betterwithmods:unfired_pottery:3>, [<minecraft:clay_ball>]);
Turntable.add(<betterwithmods:unfired_pottery:3>, <betterwithmods:unfired_pottery:2>, [<minecraft:clay_ball>]);
//Turntable.add(<betterwithmods:unfired_pottery:2>, null, [<minecraft:clay_ball>]);

Turntable.add(<contenttweaker:modelingrefractory>, <contenttweaker:crucible>, [<pyrotech:material:4>*4]);
Turntable.add(<contenttweaker:crucible>, <ceramics:clay_barrel_unfired>, [<pyrotech:material:4>*4]);
Turntable.add(<ceramics:clay_barrel_unfired>, <ceramics:clay_barrel_unfired:1>, [<pyrotech:material:4>*4]);

recipes.addShaped("hardened_nether_sludge", <betterwithmods:aesthetic:2>, [
    [<betterwithmods:nether_clay>, <betterwithmods:nether_clay>],
    [<betterwithmods:nether_clay>, <betterwithmods:nether_clay>]
]);

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

recipes.remove(<betterwithmods:broadhead_arrow>);
recipes.addShaped("broadhead_arrow", <betterwithmods:broadhead_arrow>, [
    [<betterwithmods:material:43>],
    [<ore:stickWood>],
    [<ore:feather>]
]);

recipes.remove(<betterwithmods:single_machine:2>);
recipes.addShaped("filtered_hopper",<betterwithmods:single_machine:2>,[
    [null,<chutes:chute_wood>,null],
    [<betterwithmods:material:0>,<quark:chute>,<betterwithmods:material:0>]
]);

val haft = <betterwithmods:material:36>;
val woodMoulding = mods.betterwithmods.MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);

recipes.remove(haft);
recipes.addShaped("glued_haft",haft*2,[
    [<betterwithmods:material:8>],
    [<ore:slimeball>],
	[woodMoulding]
]);
recipes.addShaped("sewed_haft",haft*2,[
    [<betterwithmods:material:8>],
    [<ore:durableFiber>],
	[woodMoulding]
]);

recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

Cauldron.remove([<minecraft:mushroom_stew>]);
Cauldron.remove([<minecraft:rabbit_stew>]);
Cauldron.addUnstoked([<minecraft:cooked_rabbit>|<animania:cooked_prime_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);
Cauldron.addUnstoked([<betteranimalsplus:turkey_raw>],[<betteranimalsplus:turkey_cooked>]);

Cauldron.addStoked([<betterwithaddons:material:1>*8,<betterwithaddons:material:3>*2,<ore:dung>*8,<betterwithmods:urn:8>],[<betterwithaddons:thorn_rose>,<betterwithmods:urn>]);

// fuckin book

recipes.addShapeless("BWM Manual", <betterwithmods:manual>,[<betterwithmods:material>,<minecraft:book>]);

//Horse Upgrades
Cauldron.addUnstoked([<biomesoplenty:berries>*32,<primitivemobs:camouflage_dye>],[<cyclicmagic:horse_upgrade_variant>]);
Cauldron.addUnstoked([<biomesoplenty:berries>*6,<ore:slimeball>*4],[<cyclicmagic:horse_upgrade_jump>]);
Cauldron.addUnstoked([<biomesoplenty:berries>*4,<ore:listAllsugar>*4],[<cyclicmagic:horse_upgrade_speed>]);

JEI.removeAndHide(<betterwithmods:material:13>); // tallow
Cauldron.remove([<betterwithmods:material:13>]);

JEI.removeAndHide(<betterwithmods:material:47>); // chainmail
Anvil.removeShaped(<betterwithmods:material:47>);

Cauldron.remove([<betterwithmods:material:29>]); // blasting oil
Cauldron.remove([<betterwithmods:material:50>]); // soap
Cauldron.remove([<betterwithmods:material:1>]); // nethercoal
Cauldron.remove([<betterwithaddons:material:5>]); // bone ingot


Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustCarbon>],[<betterwithmods:material:1>]) // coal nethercoal
.setIgnoreHeat(false)
.setPriority(12)
.build();
Cauldron.builder()
.buildRecipe([<betterwithmods:material:16>,<ore:dustRichCarbon>],[<betterwithmods:material:1>*4]) // coke nethercoal
.setIgnoreHeat(false)
.setPriority(3)
.build();

Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);

// Cyclic Apple
FilteredHopper.addFilter("modtweaker:livingSoul", <pyrotech:living_tar>);
// FilteredHopper.addFilter("modtweaker:soulsand", <minecraft:soul_sand>);

// Removal of sawdust, changed in recipes_saw.zs for wood chips from Pyrotech instead
// Cauldron.remove([<minecraft:netherrack>,<betterwithmods:material:22>]); // netherrack and sawdust
Cauldron.addStoked([<pyrotech:rock:7>*16],[<betterwithmods:material:21>]); // chips to potash
FilteredHopper.removeRecipeByInput(<betterwithmods:material:23>); // sawdust from soul dust
FilteredHopper.addSoulUrnRecipe(<betterwithmods:material:23>*8,[<pyrotech:rock:7>*8],[]);
FilteredHopper.addSoulUrnRecipe(<quark:soul_bead>*1,[<betterwithmods:material:38>*1],[<betterwithaddons:congealed>*5]);
FilteredHopper.addFilterRecipe("betterwithmods:soul_sand",<contenttweaker:ardicite>,[<betterwithmods:material:16>*3],[<betterwithmods:material:15>]); 

Cauldron.remove([<betterwithmods:material:6>]); // remove default BWM bark-tanned leather recipe as well as dung variants
Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:7>],[<betterwithmods:material:6>]); // tanned leather
Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:7>],[<betterwithmods:material:6>]);
Cauldron.remove([<betterwithmods:material:32>]); // remove default BWM bark-cut tanned leather recipe as well as dung variants
Cauldron.addUnstoked([<ore:barkWood>*4,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]); // tanned cut leather
Cauldron.addUnstoked([<ore:dung>,<betterwithmods:material:33>*2],[<betterwithmods:material:32>*2]);

JEI.removeAndHide(<betterwithmods:wool_boots>);
JEI.removeAndHide(<betterwithmods:wool_chest>);
JEI.removeAndHide(<betterwithmods:wool_helmet>);
JEI.removeAndHide(<betterwithmods:wool_pants>);

recipes.remove(<betterwithmods:material:45>); // diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*3,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

JEI.removeAndHide(<betterwithmods:chicken_soup>);
JEI.removeAndHide(<betterwithmods:cobblestone:0>);
JEI.removeAndHide(<betterwithmods:cobblestone:1>);
JEI.removeAndHide(<betterwithmods:cobblestone:2>);
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
JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
Anvil.removeShaped(<betterwithmods:steel_battleaxe>);

JEI.removeAndHide(<betterwithmods:steel_sword>);
Anvil.removeShaped(<betterwithmods:steel_sword>);


// Heat sources
/*
HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=north,lit=true>, 1);
HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=east,lit=true>, 1);
HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=south,lit=true>, 1);
HeatRegistry.addHeatSource(<blockstate:futuremc:campfire:facing=west,lit=true>, 1);
HeatRegistry.addHeatSource(<futuremc:campfire>, 1);
*/
//HeatRegistry.addHeatSource(<betternether:cincinnasite_fire_bowl>, 1);
HeatRegistry.addHeatSource(<arcanearchives:brazier_of_hoarding>, 1);
HeatRegistry.addHeatSource(<contenttweaker:fire_block>, 1);
HeatRegistry.addHeatSource(<blockstate:minecraft:fire>, 1);
