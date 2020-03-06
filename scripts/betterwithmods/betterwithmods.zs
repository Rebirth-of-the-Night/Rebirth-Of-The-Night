import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;

//Bark fixes
//recipes.addShapeless("barkexample",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<minecraft:oak_log>]);
//Also add axes to oredict in minecraft.zs
//Birch and Alicio give 8 (immeeeersion)
recipes.remove(<betterwithmods:bark:*>);
recipes.addShapeless("axe_blookwood_bark",<betterwithmods:bark:6>*4,[<ore:toolAxe>.reuse(),<betterwithmods:blood_log>]);
recipes.addShapeless("axe_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<minecraft:log:0>]);
recipes.addShapeless("axe_spruce_bark",<betterwithmods:bark:1>*4,[<ore:toolAxe>.reuse(),<minecraft:log:1>]);
recipes.addShapeless("axe_birch_bark",<betterwithmods:bark:2>*8,[<ore:toolAxe>.reuse(),<minecraft:log:2>]);
recipes.addShapeless("axe_jungle_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.reuse(),<minecraft:log:3>]);
recipes.addShapeless("axe_acacia_bark",<betterwithmods:bark:4>*4,[<ore:toolAxe>.reuse(),<minecraft:log2:0>]);
recipes.addShapeless("axe_dark_oak_bark",<betterwithmods:bark:5>*4,[<ore:toolAxe>.reuse(),<minecraft:log2:1>]);
recipes.addShapeless("axe_sacred_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_0:4>]);
recipes.addShapeless("axe_cherry_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_0:5>]);
recipes.addShapeless("axe_umbran_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_0:6>]);
recipes.addShapeless("axe_fir_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_0:7>]);
recipes.addShapeless("axe_ethereal_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_1:4>]);
recipes.addShapeless("axe_magic_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_1:5>]);
recipes.addShapeless("axe_mangrove_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_1:6>]);
recipes.addShapeless("axe_palm_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_1:7>]);
recipes.addShapeless("axe_redwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_2:4>]);
recipes.addShapeless("axe_willow_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_2:5>]);
recipes.addShapeless("axe_pine_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_2:6>]);
recipes.addShapeless("axe_hellbark_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_2:7>]);
recipes.addShapeless("axe_jacaranda_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_3:4>]);
recipes.addShapeless("axe_mahogany_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_3:5>]);
recipes.addShapeless("axe_ebony_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_3:6>]);
recipes.addShapeless("axe_eucalyptus_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<biomesoplenty:log_3:7>]);
recipes.addShapeless("axe_olive_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<rustic:log:0>]);
recipes.addShapeless("axe_ironwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<rustic:log:1>]);
recipes.addShapeless("axe_wyrmwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<stygian:endlog>]);
recipes.addShapeless("axe_maple_bark",<betterwithmods:bark:1>*4,[<ore:toolAxe>.reuse(),<harvestcraft:pammaple>]);
recipes.addShapeless("axe_paperbark_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.reuse(),<harvestcraft:pampaperbark>]);
recipes.addShapeless("axe_cinnamon_bark",<betterwithmods:bark:3>*4,[<ore:toolAxe>.reuse(),<harvestcraft:pamcinnamon>]);
recipes.addShapeless("axe_twilight_oak_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:twilight_log:0>]);
recipes.addShapeless("axe_canopy_tree_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:twilight_log:1>]);
recipes.addShapeless("axe_twilight_mangrove_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:twilight_log:2>]);
recipes.addShapeless("axe_darkwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:twilight_log:3>]);
recipes.addShapeless("axe_timewood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:magic_log:0>]);
recipes.addShapeless("axe_transwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:magic_log:1>]);
recipes.addShapeless("axe_minewood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:magic_log:2>]);
recipes.addShapeless("axe_sortingwood_bark",<betterwithmods:bark:0>*4,[<ore:toolAxe>.reuse(),<twilightforest:magic_log:3>]);

mods.betterwithmods.Saw.remove(<twilightforest:twilight_log:3>);
mods.betterwithmods.Saw.add(<twilightforest:twilight_log:3>,[<twilightforest:dark_planks>*4,<betterwithmods:bark:0>,<betterwithmods:material:22>*2]);

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

recipes.removeByRecipeName("betterwithmods:items/material/material.padding");
recipes.addShapeless("betterwithmods_items/material/material_padding", <betterwithmods:material:41>, [<ore:feather>,<betterwithmods:material:4>]);

mods.betterwithmods.Mill.addRecipe([<minecraft:rotten_flesh>],[<minecraft:leather>]);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>);
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:5>);
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:8>);


recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);
mods.betterwithmods.Cauldron.remove([<minecraft:rabbit_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:cooked_rabbit>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<minecraft:rabbit_stew>*5]);
mods.betterwithmods.Cauldron.remove([<betterwithmods:hearty_stew>]);
mods.betterwithmods.Cauldron.addUnstoked([<minecraft:chicken>|<minecraft:cooked_chicken>|<minecraft:beef>|<minecraft:cooked_beef>|<minecraft:porkchop>|<minecraft:cooked_porkchop>|<minecraft:mutton>|<minecraft:cooked_mutton>,<ore:cookedCarrot>,<ore:cookedPotato>,<ore:foodFlour>,<ore:listAllmushroom>*3,<minecraft:bowl>*5],[<betterwithmods:hearty_stew>*5]);

mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:dodo>],[<primitivemobs:cooked_dodo>]);
mods.betterwithmods.Cauldron.addUnstoked([<primitivemobs:cooked_dodo>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_beef>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_mutton>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_pork>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_chicken>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_horse>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_rabbit>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_frog_legs>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_peacock>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_peacock>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_chevon>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<animania:cooked_prime_chevon>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<aether_legacy:burnt_cockatrice>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<aether_legacy:cooked_enchanted_cockatrice>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<betteranimalsplus:crab_meat_cooked>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:cooked_mystery_meat>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<mod_lavacow:mimic_claw_cooked>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<harvestcraft:crabcookeditem>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<quark:cooked_crab_leg>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<betteranimalsplus:venisoncooked>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<twilightforest:cooked_venison>],[<minecraft:leather>]);
mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:cooked_bat_wing>],[<minecraft:leather>]);



mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:13>]);

mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);



mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:45>); # diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*4,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

mods.jei.JEI.removeAndHide(<betterwithmods:chicken_soup>);

//Descriptions
mods.jei.JEI.addDescription(<betterwithmods:material:14>,"Used as a late-game crafting material. It can craft a Mattock- the best mining tool available! It is also needed for some advanced contraptions.");
mods.jei.JEI.addDescription(<betterwithmods:hemp>,"An extremely useful plant, it can make very high quality and durable fibers with a variety of uses, like sails and different kinds of cloth.");
mods.jei.JEI.addDescription(<betterwithmods:material:3>,"High quality fiber used in advanced recipes where string falls short; can be made by interlacing some plants.");
mods.jei.JEI.addDescription(<betterwithmods:saw>,"Much more precise than any axe, the saw can make some nice half-blocks.");
