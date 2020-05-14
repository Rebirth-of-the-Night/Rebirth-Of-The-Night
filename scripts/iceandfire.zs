import crafttweaker.item.IIngredient;

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

recipes.remove(<iceandfire:pixie_wand>);
recipes.remove(<iceandfire:siren_flute>);

recipes.addShaped("Pixie Wand", <iceandfire:pixie_wand>, [
   [null, null, <contenttweaker:fae_orb>],
   [null, <iceandfire:pixie_wings>, null], 
   [<ore:stickWood>, null, null]]);

recipes.addShaped("Siren Flute", <iceandfire:siren_flute>, [
   [<iceandfire:shiny_scales>, <iceandfire:siren_tear>, <iceandfire:shiny_scales>],
   [<iceandfire:shiny_scales>, <iceandfire:dragon_flute>, <iceandfire:shiny_scales>], 
   [<iceandfire:shiny_scales>, <contenttweaker:fae_rune>.anyDamage().transformDamage(), <iceandfire:shiny_scales>]]);