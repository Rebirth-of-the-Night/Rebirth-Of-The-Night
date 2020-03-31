import crafttweaker.item.IIngredient;


mods.rockytweaks.Anvil.addRecipe(<atop:amethyst_helmet>.anyDamage(), <ore:gemAmethyst>, <atop:amethyst_helmet>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:amethyst_chestplate>.anyDamage(), <ore:gemAmethyst>, <atop:amethyst_chestplate>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:amethyst_leggings>.anyDamage(), <ore:gemAmethyst>, <atop:amethyst_leggings>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:amethyst_boots>.anyDamage(), <ore:gemAmethyst>, <atop:amethyst_boots>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});

mods.rockytweaks.Anvil.addRecipe(<atop:ruby_helmet>.anyDamage(), <ore:gemRuby>, <atop:ruby_helmet>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:ruby_chestplate>.anyDamage(), <ore:gemRuby>, <atop:ruby_chestplate>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:ruby_leggings>.anyDamage(), <ore:gemRuby>, <atop:ruby_leggings>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:ruby_boots>.anyDamage(), <ore:gemRuby>, <atop:ruby_boots>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});

mods.rockytweaks.Anvil.addRecipe(<atop:peridot_helmet>.anyDamage(), <ore:gemPeridot>, <atop:peridot_helmet>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:peridot_chestplate>.anyDamage(), <ore:gemPeridot>, <atop:peridot_chestplate>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:peridot_leggings>.anyDamage(), <ore:gemPeridot>, <atop:peridot_leggings>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:peridot_boots>.anyDamage(), <ore:gemPeridot>, <atop:peridot_boots>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});

mods.rockytweaks.Anvil.addRecipe(<atop:sapphire_helmet>.anyDamage(), <ore:gemSapphire>, <atop:sapphire_helmet>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:sapphire_chestplate>.anyDamage(), <ore:gemSapphire>, <atop:sapphire_chestplate>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:sapphire_leggings>.anyDamage(), <ore:gemSapphire>, <atop:sapphire_leggings>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<atop:sapphire_boots>.anyDamage(), <ore:gemSapphire>, <atop:sapphire_boots>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});


// used for Mari's dev relic
//mods.jei.JEI.removeAndHide(<atop:amethyst_sword>);
recipes.remove(<atop:amethyst_sword>);
mods.jei.JEI.removeAndHide(<atop:amethyst_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:amethyst_shovel>);
mods.jei.JEI.removeAndHide(<atop:amethyst_axe>);
mods.jei.JEI.removeAndHide(<atop:amethyst_hoe>);

mods.jei.JEI.removeAndHide(<atop:sapphire_sword>);
mods.jei.JEI.removeAndHide(<atop:sapphire_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:sapphire_shovel>);
mods.jei.JEI.removeAndHide(<atop:sapphire_axe>);
mods.jei.JEI.removeAndHide(<atop:sapphire_hoe>);

mods.jei.JEI.removeAndHide(<atop:peridot_sword>);
mods.jei.JEI.removeAndHide(<atop:peridot_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:peridot_shovel>);
mods.jei.JEI.removeAndHide(<atop:peridot_axe>);
mods.jei.JEI.removeAndHide(<atop:peridot_hoe>);

mods.jei.JEI.removeAndHide(<atop:ruby_sword>);
mods.jei.JEI.removeAndHide(<atop:ruby_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:ruby_shovel>);
mods.jei.JEI.removeAndHide(<atop:ruby_axe>);
mods.jei.JEI.removeAndHide(<atop:ruby_hoe>);


mods.jei.JEI.removeAndHide(<atop:amber_boots>);
mods.jei.JEI.removeAndHide(<atop:amber_chestplate>);
mods.jei.JEI.removeAndHide(<atop:amber_leggings>);
mods.jei.JEI.removeAndHide(<atop:amber_helmet>);
mods.jei.JEI.removeAndHide(<atop:amber_sword>);
mods.jei.JEI.removeAndHide(<atop:amber_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:amber_shovel>);
mods.jei.JEI.removeAndHide(<atop:amber_axe>);
mods.jei.JEI.removeAndHide(<atop:amber_hoe>);

mods.jei.JEI.removeAndHide(<atop:topaz_boots>);
mods.jei.JEI.removeAndHide(<atop:topaz_chestplate>);
mods.jei.JEI.removeAndHide(<atop:topaz_leggings>);
mods.jei.JEI.removeAndHide(<atop:topaz_helmet>);
mods.jei.JEI.removeAndHide(<atop:topaz_sword>);
mods.jei.JEI.removeAndHide(<atop:topaz_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:topaz_shovel>);
mods.jei.JEI.removeAndHide(<atop:topaz_axe>);
mods.jei.JEI.removeAndHide(<atop:topaz_hoe>);

mods.jei.JEI.removeAndHide(<atop:tanzanite_boots>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_chestplate>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_leggings>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_helmet>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_sword>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_shovel>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_axe>);
mods.jei.JEI.removeAndHide(<atop:tanzanite_hoe>);

mods.jei.JEI.removeAndHide(<atop:malachite_boots>);
mods.jei.JEI.removeAndHide(<atop:malachite_chestplate>);
mods.jei.JEI.removeAndHide(<atop:malachite_leggings>);
mods.jei.JEI.removeAndHide(<atop:malachite_helmet>);
mods.jei.JEI.removeAndHide(<atop:malachite_sword>);
mods.jei.JEI.removeAndHide(<atop:malachite_pickaxe>);
mods.jei.JEI.removeAndHide(<atop:malachite_shovel>);
mods.jei.JEI.removeAndHide(<atop:malachite_axe>);
mods.jei.JEI.removeAndHide(<atop:malachite_hoe>);
