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
recipes.remove(<spartanshields:shield_basic_lead>);



var onyxrod = <simpleores:onyx_rod>;
var mythril = <simpleores:mythril_ingot>;



//Mythril
mods.betterwithmods.Anvil.addShaped(<spartanshields:shield_basic_lead>, 
[
   [<ore:ingotMythril>, <ore:ingotMythril>, null, null],
   [<ore:ingotMythril>, <spartanshields:shield_basic_gold>, <ore:ingotMythril>, <ore:ingotMythril>],
   [<ore:ingotMythril>, <spartanshields:shield_basic_gold>, <ore:ingotMythril>, <ore:ingotMythril>],
   [<ore:ingotMythril>, <ore:ingotMythril>, null, null]
]);   
mods.rockytweaks.Anvil.addRecipe(<spartanshields:shield_basic_lead>.anyDamage(), <ore:ingotMythril>, <spartanshields:shield_basic_lead>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});


mods.jei.JEI.addDescription([<spartanshields:shield_basic_lead>.withTag({RepairCost: 0, display: {Name: "Mythril Shield"}})],["It's on the edge of the abyss that this shield truly shines."]);
