import crafttweaker.item.IIngredient;

mods.jei.JEI.addDescription(<iceandfire:silver_ingot>,"A material known to be effectively used against undead mobs. Silver is strong in damage and mining speed, but weak in other aspects.");


recipes.remove(<iceandfire:dragonsteel_fire_sword>);
recipes.remove(<iceandfire:dragonsteel_ice_sword>);

var witherbonehandle = <spartanfire:witherbone_handle>;
var firedragonsteel = <iceandfire:dragonsteel_fire_ingot>;
var icedragonsteel = <iceandfire:dragonsteel_ice_ingot>;

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


recipes.removeByRecipeName("iceandfire:dragonmeal_alternate");


mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_block>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_gem>);

recipes.remove(<iceandfire:earplugs>);
recipes.addShapeless("iceandfire_earplugs", <iceandfire:earplugs>, [<ore:buttonWood>, <ore:buttonWood>, <betterwithmods:material:4>, <betterwithmods:material:4>]);