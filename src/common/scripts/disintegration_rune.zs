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


