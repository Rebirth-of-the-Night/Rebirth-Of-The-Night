import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

#################
# Special Items #
#################

// Volatile Powder

RecipeBuilder.get("mage")
  .setShapeless([<contenttweaker:volatile_core>])
  .addOutput(<contenttweaker:volatile_powder>*8)
  .addTool(<contenttweaker:disint_rune>, 1)
  .addTool(<contenttweaker:luna_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

###########
# BAUBLES #
###########

# Baubles will output 1 vis item of their respective tier, 100% of the time. 
# They will also output 1 extra vis item, and 1 of each quintessence of the respective runes used to craft them, at a 10% chance each.

// Inert

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:amuletsinempty>])
  .addOutput(<contenttweaker:vis_speck>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_speck>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<ore:inertAmulet>])
  .addOutput(<contenttweaker:vis_speck>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_speck>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Mundane

RecipeBuilder.get("mage")
  .setShapeless([<artifacts:shiny_red_balloon>])
  .addOutput(<contenttweaker:vis_speck>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_speck>, 0.1)
  .setExtraOutputTwo(<contenttweaker:air_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:amuletcross>])
  .addOutput(<contenttweaker:vis_speck>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_speck>, 0.1)
  .setExtraOutputTwo(<contenttweaker:air_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Arcane

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:amuletsinwrath>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:strength_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:amuletsinpride>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:life_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:amuletsingluttony>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:energy_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<artifacts:cobalt_shield>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:strength_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<randomthings:obsidianskullring>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:nether_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<mod_lavacow:dreamcatcher>])
  .addOutput(<contenttweaker:vis_sliver>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_sliver>, 0.1)
  .setExtraOutputTwo(<contenttweaker:mind_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Mystical

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketblackdragonscale>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:nether_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:death_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketobsidianskull>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:nether_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:draconic_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:magicmirror>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:end_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:wormholemirror>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:end_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:soul_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketbrokenheart>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:life_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:soul_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketbezoar>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:poison_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:water_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketshulkerheart>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:end_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:earth_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:ringoverclocking>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:energy_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<bountifulbaubles:trinketmagiclenses>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:luna_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:sol_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<artifacts:lucky_horseshoe>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:aether_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:air_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<mod_lavacow:halo_necklace>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:strength_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<iceandfire:siren_flute>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:fae_quintessence>, 0.1)
  .setExtraOutputThree(<contenttweaker:water_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<randomthings:lavacharm>])
  .addOutput(<contenttweaker:vis_shard>)
  .addTool(<contenttweaker:disint_rune>, 1)
  .setExtraOutputOne(<contenttweaker:vis_shard>, 0.1)
  .setExtraOutputTwo(<contenttweaker:nether_quintessence>, 0.1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Inert

//recipes.addShapeless("disintrune11", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:amuletsinempty>]);

//recipes.addShapeless("disintrune12", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:crowngold>]);

//recipes.addShapeless("disintrune13", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <totemexpansion:totem_base>]);

//recipes.addShapeless("disintrune14", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <extraalchemy:empty_ring>]);

//recipes.addShapeless("disintrune17", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <iceandfire:dragon_flute>]);

//recipes.addShapeless("disintrune18", <bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <biomesoplenty:log_1>]);

// Mundane


//recipes.addShapeless("disintrune22", <bountifulbaubles:spectralsilt> * 1, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <extraalchemy:potion_ring:0>]);




recipes.addShapeless("disintrune28", <bountifulbaubles:spectralsilt> * 2, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_life_1>]);

recipes.addShapeless("disintrune29", <bountifulbaubles:spectralsilt> * 2, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_keeping_1>]);


//recipes.addShapeless("disintrune220", <bountifulbaubles:spectralsilt> * 2, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <rats:rat_flute>]);

//recipes.addShapeless("disintrune221", <bountifulbaubles:spectralsilt> * 1, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <wards:enchanted_paper>]);

// Arcane




recipes.addShapeless("disintrune39", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:twilight_scepter>]);

recipes.addShapeless("disintrune310", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:lifedrain_scepter>]);

recipes.addShapeless("disintrune311", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:zombie_scepter>]);

recipes.addShapeless("disintrune312", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:shield_scepter>]);


recipes.addShapeless("disintrune314", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_life_2>]);

recipes.addShapeless("disintrune315", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_keeping_2>]);

recipes.addShapeless("disintrune316", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <mod_lavacow:sludge_wand>]);

recipes.addShapeless("disintrune317", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <endreborn:entropy_wand>]);

//recipes.addShapeless("disintrune318", <bountifulbaubles:spectralsilt> * 3, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <minecraft:enchanted_book>]);






// Mystical

//recipes.addShapeless("disintrune4", <bountifulbaubles:spectralsilt> * 4, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <>]);






recipes.addShapeless("disintrune411", <bountifulbaubles:spectralsilt> * 4, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_keeping_3>]);



recipes.addShapeless("disintrune414", <bountifulbaubles:spectralsilt> * 4, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <iceandfire:pixie_wand>]);





// Ascended

//recipes.addShapeless("disintrune5", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <>]);

recipes.addShapeless("disintrune51", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:trinketapple>]);

recipes.addShapeless("disintrune52", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:trinketvitamins>]);

recipes.addShapeless("disintrune53", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:ringfreeaction>]);

recipes.addShapeless("disintrune56", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <bountifulbaubles:trinketmixeddragonscale>]);

recipes.addShapeless("disintrune57", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <dungeontactics:lantern_magic>]);

recipes.addShapeless("disintrune58", <bountifulbaubles:spectralsilt> * 5, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <iceandfire:cockatrice_scepter>]);

//template
//recipes.addShapeless(<bountifulbaubles:spectralsilt>, [<contenttweaker:disint_rune>, <>]);
//recipes.addShapeless("disintrune", <bountifulbaubles:spectralsilt> * 2, [<contenttweaker:disint_rune>.anyDamage().transformDamage(), <>]);
