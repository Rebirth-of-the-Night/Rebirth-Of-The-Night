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
recipes.removeByRecipeName("betternether:stalagnate_planks_trapdoor");
recipes.removeByRecipeName("betternether:stalagnate_planks_chest");
recipes.removeByRecipeName("betterwithmods:quark/spruce_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/birch_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/acacia_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/dark_oak_trapdoor");
recipes.removeByRecipeName("betterwithmods:quark/jungle_trapdoor");
recipes.removeByRecipeName("betterwithmods:decompress/ender_pearl_decompress");

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);
recipes.remove(<betterwithmods:shaft>);
recipes.addShapeless("stickShaft", <betterwithmods:shaft>,[<ore:stickWood>]);

recipes.addShaped("twine_durable_cloth", <aether_legacy:skyroot_trapdoor>*6,
    [[<pyrotech:material:26>,<pyrotech:material:26>,<pyrotech:material:26>],
    [<ore:wool>,<ore:wool>,<ore:wool>]]);

mods.betterwithmods.Mill.addRecipe([<minecraft:rotten_flesh>],[<minecraft:leather>]);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>); 
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:8>);
mods.jei.JEI.removeAndHide(<betterwithmods:material:46>);
mods.jei.JEI.removeAndHide(<betterwithmods:siding_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:moulding_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.jei.JEI.removeAndHide(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_mulberry"}}));
mods.betterwithmods.Saw.remove(<betterwithaddons:log_mulberry>);

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
mods.jei.JEI.removeAndHide(<betterwithmods:chowder>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:chowder>]);
mods.jei.JEI.removeAndHide(<betterwithmods:hearty_stew>);
mods.betterwithmods.Cauldron.remove([<betterwithmods:hearty_stew>]);
mods.jei.JEI.removeAndHide(<betterwithmods:pork_dinner>);
mods.jei.JEI.removeAndHide(<betterwithmods:mystery_meat>);
mods.ltt.LootTable.removeGlobalItem("betterwithmods:mystery_meat");
mods.jei.JEI.removeAndHide(<betterwithmods:cooked_mystery_meat>);
furnace.remove(<betterwithmods:cooked_mystery_meat>);
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
        [<minecraft:iron_ingot>,arrayMoulding[i],<minecraft:iron_ingot>]
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
    [<betterwithmods:siding_wood>,null,<betterwithmods:siding_wood>],
    [<betterwithmods:material:0>,<ore:pressurePlateWood>,<betterwithmods:material:0>],
    [null,<betterwithmods:corner_wood>,null]
]);

recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);
mods.betterwithmods.Cauldron.remove([<minecraft:rabbit_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:cooked_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);

mods.betterwithmods.Cauldron.addUnstoked([<quark:crab_leg>],[<quark:cooked_crab_leg>]);
mods.betterwithmods.Cauldron.addUnstoked([<harvestcraft:grubitem>],[<harvestcraft:cookedgrubitem>]);
mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);

val arrayLeather = [<primitivemobs:cooked_dodo>,<animania:cooked_prime_beef>,<animania:cooked_prime_mutton>,<animania:cooked_prime_pork>,<animania:cooked_prime_chicken>,<animania:cooked_horse>,<animania:cooked_prime_rabbit>,<animania:cooked_frog_legs>,<animania:cooked_peacock>,<animania:cooked_prime_peacock>,<animania:cooked_chevon>,<animania:cooked_prime_chevon>,<aether_legacy:burnt_cockatrice>,<aether_legacy:cooked_enchanted_cockatrice>,<betteranimalsplus:crab_meat_cooked>,<mod_lavacow:mimic_claw_cooked>,<harvestcraft:crabcookeditem>,<quark:cooked_crab_leg>,<betteranimalsplus:venisoncooked>,<twilightforest:cooked_venison>,<betterwithmods:cooked_bat_wing>,<mod_lavacow:piranha_cooked>,<mod_lavacow:zombiepiranha_item_cooked>,<twilightforest:cooked_meef>] as IItemStack[];

for cookedFood in arrayLeather{
    mods.betterwithmods.Cauldron.addUnstoked([cookedFood],[<minecraft:leather>]);
    furnace.addRecipe(<minecraft:leather>,cookedFood,0.1);
}

mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:13>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);

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

mods.jei.JEI.removeAndHide(<betterwithmods:material:45>); # diamond ingot


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

