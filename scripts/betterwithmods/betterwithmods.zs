import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//Fix trapdoor recipes
val skyplank = <aether_legacy:skyroot_plank>;
recipes.remove(<aether_legacy:skyroot_trapdoor>);
recipes.addShaped("aether_legacy_skyroot_trapdoor", <aether_legacy:skyroot_trapdoor>*6,
    [[null,null,null],
    [skyplank,skyplank,skyplank],
    [skyplank,skyplank,skyplank]]);
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

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);
mods.jei.JEI.removeAndHide(<betterwithmods:shaft>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:44>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:40>);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>); 
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:8>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);
mods.jei.JEI.removeAndHide(<betterwithmods:siding_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:moulding_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:siding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:moulding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));

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
recipes.remove(<betterwithmods:metal_chime:*>);
recipes.remove(<betterwithmods:bamboo_chime:*>);

val arrayMoulding = [<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "oak"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "spruce"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "birch"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "jungle"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "acacia"}, Name: "minecraft:planks"}}),<betterwithmods:moulding_wood>.withTag({texture: {Properties: {variant: "dark_oak"}, Name: "minecraft:planks"}})] as IItemStack[];

val arrayWindChime = [<betterwithmods:metal_chime:0>,<betterwithmods:metal_chime:1>,<betterwithmods:metal_chime:2>,<betterwithmods:metal_chime:3>,<betterwithmods:metal_chime:4>,<betterwithmods:metal_chime:5>] as IItemStack[];

val arrayBambooChime = [<betterwithmods:bamboo_chime:0>,<betterwithmods:bamboo_chime:1>,<betterwithmods:bamboo_chime:2>,<betterwithmods:bamboo_chime:3>,<betterwithmods:bamboo_chime:4>,<betterwithmods:bamboo_chime:5>,] as IItemStack[];

for i, output in arrayWindChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:ingotIron>,arrayMoulding[i],<ore:ingotIron>]
    ]);
}

for i, output in arrayBambooChime{
    recipes.addShaped(output,[
        [null,<minecraft:string>,null],
        [<minecraft:string>,<ore:pressurePlateWood>,<minecraft:string>],
        [<ore:sugarcane>,arrayMoulding[i],<ore:sugarcane>]
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

recipes.addShaped("refractored_crucible",<contenttweaker:crucible>,[
    [<pyrotech:material:9>,null,<pyrotech:material:9>],
    [<pyrotech:material:9>,<pyrotech:material:9>,<pyrotech:material:9>],
    [<pyrotech:material:9>,<pyrotech:material:9>,<pyrotech:material:9>]
]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);
mods.betterwithmods.Cauldron.remove([<minecraft:rabbit_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:cooked_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

mods.betterwithmods.Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
mods.betterwithmods.Cauldron.addUnstoked([<harvestcraft:grubitem>],[<harvestcraft:cookedgrubitem>]);
mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);
mods.betterwithmods.Cauldron.addUnstoked([<betteranimalsplus:turkey_raw>],[<betteranimalsplus:turkey_cooked>]);

mods.betterwithmods.Cauldron.addStoked([<betterwithaddons:material:1>*8,<betterwithaddons:material:3>*2,<ore:dung>*8,<betterwithmods:urn:8>],[<betterwithaddons:thorn_rose>,<betterwithmods:urn>]);

val arrayLeather = [<primitivemobs:cooked_dodo>,<animania:cooked_prime_beef>,<animania:cooked_prime_mutton>,<animania:cooked_prime_pork>,<animania:cooked_prime_chicken>,<animania:cooked_horse>,<animania:cooked_prime_rabbit>,<animania:cooked_frog_legs>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<animania:cooked_chevon>,<animania:cooked_prime_chevon>,<aether_legacy:burnt_cockatrice>,<aether_legacy:cooked_enchanted_cockatrice>,<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<harvestcraft:crabcookeditem>,<quark:cooked_crab_leg>,<betteranimalsplus:venisoncooked>,<twilightforest:cooked_venison>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:piranha_cooked>,<mod_lavacow:zombiepiranha_item_cooked>,<twilightforest:cooked_meef>,<betteranimalsplus:turkey_leg_cooked>,<betteranimalsplus:pheasantcooked>,<betteranimalsplus:turkey_cooked>,<betterwithmods:cooked_wolf_chop>] as IItemStack[];

for cookedFood in arrayLeather{
    mods.betterwithmods.Cauldron.addUnstoked([cookedFood],[<minecraft:leather>]);
    furnace.addRecipe(<minecraft:leather>,cookedFood,0.1);
}

//Horse Upgrades
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*32,<primitivemobs:camouflage_dye>],[<cyclicmagic:horse_upgrade_variant>]);
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*6,<ore:slimeball>*4],[<cyclicmagic:horse_upgrade_jump>]);
mods.betterwithmods.Cauldron.addUnstoked([<biomesoplenty:berries>*4,<ore:listAllsugar>*4],[<cyclicmagic:horse_upgrade_speed>]);

//Charbiotite
mods.betterwithmods.Cauldron.builder()
.buildRecipe([<pyrotech:material:15>*9,<contenttweaker:end_orb>,<minecraft:rotten_flesh>*9],[<undergroundbiomes:lignite_coal>*3])
.setHeat(2)
.setPriority(6)
.build();

mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:13>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);

//Cyclic Apple
mods.betterwithmods.Cauldron.addStoked([<rats:purifying_liquid>,<minecraft:emerald>],[<cyclicmagic:apple_emerald>*3]);//emerald

#Removal of sawdust, changed in recipes_saw.zs for wood chips from Pyrotech instead
mods.betterwithmods.Cauldron.remove([<minecraft:netherrack>,<betterwithmods:material:22>]); # netherrack and sawdust
mods.betterwithmods.Cauldron.addStoked([<pyrotech:rock:7>*16],[<betterwithmods:material:21>]); # chips to potash
mods.betterwithmods.FilteredHopper.removeRecipeByInput(<betterwithmods:material:23>); #sawdust from soul dust
mods.betterwithmods.FilteredHopper.addSoulUrnRecipe(<betterwithmods:material:23>*8,[<pyrotech:rock:7>*8],[]);
mods.betterwithmods.FilteredHopper.addSoulUrnRecipe(<quark:soul_bead>*1,[<betterwithmods:material:38>*1],[<betterwithaddons:congealed>*5]);

mods.betterwithmods.FilteredHopper.addFilter("modtweaker:livingSoul", <pyrotech:living_tar>);

mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);

recipes.remove(<betterwithmods:material:45>); # diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*4,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
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
recipes.addShaped("betterminingcharge",<betterwithmods:mining_charge>*64,[
    [<betterwithmods:rope>,<ore:slimeball>,<betterwithmods:rope>],
    [<betterwithmods:dynamite>,<betterwithmods:dynamite>,<betterwithmods:dynamite>],
    [<betterwithmods:dynamite>,<betterwithmods:dynamite>,<betterwithmods:dynamite>]
]);

//Descriptions



// Remove unused refined weapons
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.betterwithmods.Anvil.removeShaped(<betterwithmods:steel_sword>);

// Gem tools Rework

/*val diamondAll = [
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_hoe>,
    <minecraft:diamond_axe>,
	<minecraft:diamond_pickaxe>,
	<spartanweaponry:dagger_diamond>,
	<spartanweaponry:longsword_diamond>,
	<spartanweaponry:katana_diamond>,
	<spartanweaponry:saber_diamond>,
	<spartanweaponry:rapier_diamond>,
	<spartanweaponry:greatsword_diamond>,
	<spartanweaponry:hammer_diamond>,
	<spartanweaponry:warhammer_diamond>,
	<spartanweaponry:spear_diamond>,
	<spartanweaponry:halberd_diamond>,
	<spartanweaponry:pike_diamond>,
	<spartanweaponry:lance_diamond>,
	<spartanweaponry:longbow_diamond>,
	<spartanweaponry:throwing_knife_diamond>,
	<spartanweaponry:throwing_axe_diamond>,
	<spartanweaponry:javelin_diamond>,
	<spartanweaponry:boomerang_diamond>,
	<spartanweaponry:battleaxe_diamond>,
	<spartanweaponry:mace_diamond>,
	<spartanweaponry:glaive_diamond>,
	<spartanweaponry:staff_diamond>
] as IIngredient[];


for item in diamondAll{
    recipes.remove(item);
}
*/

// Heat sources
/*mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:minecraftfuture:campfire:facing=north,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:minecraftfuture:campfire:facing=east,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:minecraftfuture:campfire:facing=south,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<blockstate:minecraftfuture:campfire:facing=west,lit=true>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<minecraftfuture:campfire>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<betternether:cincinnasite_fire_bowl>, 1);
mods.betterwithmods.HeatRegistry.addHeatSource(<arcanearchives:brazier_of_hoarding>, 1);
*/