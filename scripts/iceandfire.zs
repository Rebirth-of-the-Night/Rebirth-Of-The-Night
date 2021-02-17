import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import crafttweaker.item.IItemCondition;
import mods.betterwithaddons.Infuser;
import crafttweaker.item.IItemStack;

recipes.removeByRecipeName("iceandfire:dragonmeal_alternate");

mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_block>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_gem>);

LootTweaker.getTable("iceandfire:mausoleum_chest").getPool("mausoleum_chest").removeEntry("iceandfire:sapphire_gem");

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);

recipes.remove(<iceandfire:dragon_horn>);
recipes.addShaped("dragon_horn",<iceandfire:dragon_horn>,[
  [null,null,<iceandfire:dragonbone>],
  [null,<iceandfire:dragonbone>,<iceandfire:dragonbone>],
  [<ore:stickWood>,<iceandfire:dragonbone>,null]
]);

recipes.remove(<iceandfire:tide_trident>);
recipes.addShaped("tide_trident",<iceandfire:tide_trident>,[
  [<iceandfire:sea_serpent_fang>,<iceandfire:sea_serpent_fang>,<iceandfire:sea_serpent_fang>],
  [<ore:seaSerpentScale>,<ore:ingotableGem>,<ore:seaSerpentScale>],
  [null,<iceandfire:witherbone>,null]
]);

recipes.removeByRecipeName("iceandfire:summoning_crystal_fire");
recipes.addShapeless("fire_dragon_summoning_crystal",<iceandfire:summoning_crystal_fire>,[<iceandfire:fire_dragon_blood>,<minecraft:ender_pearl>,<minecraft:diamond>,<biomesoplenty:gem:1>]);

// Pixie Wand
recipes.remove(<iceandfire:pixie_wand>);

RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <iceandfire:pixie_dust>],
    [null, <iceandfire:pixie_wings>, null],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addOutput(<iceandfire:pixie_wand>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

// Siren Flute
recipes.remove(<iceandfire:siren_flute>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <iceandfire:siren_tear>, <contenttweaker:vis_shard>],
    [<iceandfire:shiny_scales>, <iceandfire:dragon_flute>, <iceandfire:shiny_scales>],
    [<contenttweaker:vis_shard>, <iceandfire:shiny_scales>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addTool(<contenttweaker:water_rune>, 1)
  .addOutput(<iceandfire:siren_flute>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.remove(<iceandfire:dread_stone>);
recipes.addShaped("dread_stone",<iceandfire:dread_stone>,[
    [<ore:stone>,<ore:stone>,<ore:stone>],
    [<ore:stone>,<iceandfire:dread_shard>,<ore:stone>],
    [<ore:stone>,<ore:stone>,<ore:stone>]
]);

recipes.remove(<iceandfire:dragon_stick>);
recipes.addShaped("dragon_command_staff",<iceandfire:dragon_stick>,[
    [<iceandfire:dragon_skull:*>],
    [<spartanweaponry:material:1>]
]);

recipes.remove(<iceandfire:myrmex_desert_swarm>);
recipes.addShaped("desert_myrmex_swarm",<iceandfire:myrmex_desert_swarm>*6,[
    [<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_resin>],
    [<iceandfire:myrmex_desert_resin>,<iceandfire:myrmex_desert_egg:4>,<iceandfire:myrmex_desert_resin>],
    [<iceandfire:myrmex_desert_resin>,<ore:stick>,<iceandfire:myrmex_desert_resin>]
]);

recipes.remove(<iceandfire:myrmex_jungle_swarm>);
recipes.addShaped("jungle_myrmex_swarm",<iceandfire:myrmex_jungle_swarm>*6,[
    [<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_resin>],
    [<iceandfire:myrmex_jungle_resin>,<iceandfire:myrmex_jungle_egg:4>,<iceandfire:myrmex_jungle_resin>],
    [<iceandfire:myrmex_jungle_resin>,<ore:stick>,<iceandfire:myrmex_jungle_resin>]
]);

// Dread Lich Staff

# Change durability
<iceandfire:lich_staff>.maxDamage = 32;

# Recipe
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:ice>, <contenttweaker:shard_of_night>],
    [<contenttweaker:vis_speck>, <contenttweaker:scepter_base_mundane>, <minecraft:skull>],
    [<contenttweaker:abyssal_sapphire>, <contenttweaker:vis_speck>, null]])
  .addTool(<contenttweaker:luna_rune>, 1)
  .addOutput(<iceandfire:lich_staff:32>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<iceandfire:lich_staff>,
[<iceandfire:lich_staff>.anyDamage(),<contenttweaker:vis_speck>], 32);
