import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.remove(<iceandfire:dragonsteel_fire_sword>);
recipes.remove(<iceandfire:dragonsteel_ice_sword>);

var witherbonehandle = <spartanfire:witherbone_handle>;
var firedragonsteel = <iceandfire:dragonsteel_fire_ingot>;
var icedragonsteel = <iceandfire:dragonsteel_ice_ingot>;
var witherbone = <iceandfire:witherbone>;

recipes.addShaped("Fire Dragonsteel Sword", <iceandfire:dragonsteel_fire_sword>,[
	[null, firedragonsteel, null],
    [null, firedragonsteel, null],
    [null, witherbonehandle, null]
]);
recipes.addShaped("Ice Dragonsteel Sword", <iceandfire:dragonsteel_ice_sword>,[
	[null, icedragonsteel, null],
    [null, icedragonsteel, null],
    [null, witherbonehandle, null]
]);

recipes.remove(<iceandfire:dragonsteel_fire_axe>);
recipes.remove(<iceandfire:dragonsteel_ice_axe>);

recipes.addShapedMirrored("Fire Dragonsteel Axe", <iceandfire:dragonsteel_fire_axe>,[
	[firedragonsteel, firedragonsteel, null],
    [firedragonsteel, witherbone, null],
    [null, witherbone, null]
]);
recipes.addShapedMirrored("Ice Dragonsteel Axe", <iceandfire:dragonsteel_ice_axe>,[
	[icedragonsteel, icedragonsteel, null],
    [icedragonsteel, witherbone, null],
    [null, witherbone, null]
]);

recipes.remove(<iceandfire:dragonsteel_fire_hoe>);
recipes.remove(<iceandfire:dragonsteel_ice_hoe>);

recipes.addShapedMirrored("Fire Dragonsteel Hoe", <iceandfire:dragonsteel_fire_hoe>,[
	[firedragonsteel, firedragonsteel, null],
    [null, witherbone, null],
    [null, witherbone, null]
]);
recipes.addShapedMirrored("Ice Dragonsteel Hoe", <iceandfire:dragonsteel_ice_hoe>,[
	[icedragonsteel, icedragonsteel, null],
    [null, witherbone, null],
    [null, witherbone, null]
]);

recipes.removeByRecipeName("iceandfire:dragonmeal_alternate");

mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_block>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_gem>);

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("iceandfire_earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);

// Pixie Wand
recipes.remove(<iceandfire:pixie_wand>);

RecipeBuilder.get("mage")
  .setShaped([
    [null, null, <iceandfire:pixie_dust>],
    [null, <iceandfire:pixie_wings>, null],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addOutput(<iceandfire:pixie_wand>)
  .create();

// Siren Flute
recipes.remove(<iceandfire:siren_flute>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <iceandfire:siren_tear>, <contenttweaker:vis_shard>],
    [<iceandfire:shiny_scales>, <iceandfire:dragon_flute>, <iceandfire:shiny_scales>],
    [<contenttweaker:vis_shard>, <iceandfire:shiny_scales>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:fae_rune>, 1)
  .addOutput(<iceandfire:siren_flute>)
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