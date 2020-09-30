import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByRecipeName("iceandfire:dragonmeal_alternate");

mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_block>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_gem>);

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);

recipes.remove(<iceandfire:dragon_horn>);
recipes.addShaped("dragon_horn",<iceandfire:dragon_horn>,[
  [null,null,<iceandfire:dragonbone>],
  [null,<iceandfire:dragonbone>,<iceandfire:dragonbone>],
  [<ore:stickWood>,<iceandfire:dragonbone>,null]
]);

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
