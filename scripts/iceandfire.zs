import crafttweaker.item.IIngredient;



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


mods.jei.JEI.removeAndHide(<iceandfire:silver_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_ingot>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_block>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_nugget>);

mods.jei.JEI.removeAndHide(<iceandfire:silver_pickaxe>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_axe>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_hoe>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_sword>);
mods.jei.JEI.removeAndHide(<iceandfire:silver_shovel>);

mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_helmet>);
mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_chestplate>);
mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_leggings>);
mods.jei.JEI.removeAndHide(<iceandfire:armor_silver_metal_boots>);

mods.jei.JEI.removeAndHide(<iceandfire:sapphire_ore>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_block>);
mods.jei.JEI.removeAndHide(<iceandfire:sapphire_gem>);
