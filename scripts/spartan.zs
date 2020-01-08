import crafttweaker.item.IIngredient;

//Remove unnecessary weapons
mods.jei.JEI.removeAndHide(<spartanweaponry:dagger_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:longsword_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:katana_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:saber_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:rapier_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:greatsword_wood>);
//mods.jei.JEI.removeAndHide(<spartanweaponry:hammer_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:warhammer_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:spear_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:halberd_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:pike_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:lance_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_knife_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:throwing_axe_wood>);
//mods.jei.JEI.removeAndHide(<spartanweaponry:javelin_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:battleaxe_wood>);
//mods.jei.JEI.removeAndHide(<spartanweaponry:mace_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:glaive_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:dagger_wood>);
mods.jei.JEI.removeAndHide(<spartanweaponry:dynamite>);




recipes.remove(<spartanweaponry:battleaxe_lead>);
//recipes.remove(<spartanshields:shield_basic_lead>);



var onyxrod = <simpleores:onyx_rod>;
var mythril = <simpleores:mythril_ingot>;

//Lead for Mythril crafting swap
recipes.addShaped("Mythril Battleaxe", <spartanweaponry:battleaxe_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Battleaxe"}}),[
	[mythril, mythril, mythril],
    [mythril, onyxrod, mythril],
    [null, onyxrod, null]
]);

recipes.addShaped("Mythril Shield", <spartanshields:shield_basic_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Shield"}}),[
	[mythril, mythril, mythril],
    [mythril, mythril, mythril],
    [null, mythril, null]
]);

//Info
mods.jei.JEI.addDescription([<spartanweaponry:battleaxe_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Battleaxe"}})],["There's no foe that could resist the power of this axe"]);

mods.jei.JEI.addDescription([<spartanshields:shield_basic_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Shield"}})],["It's on the edge of the abyss that this shield truly shines"]);
