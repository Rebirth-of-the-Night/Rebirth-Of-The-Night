import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.vanillaanvilrepair.addRepairEntry;

var exoriteItems = <atop:amethyst_helmet> | <atop:amethyst_chestplate> | <atop:amethyst_leggings> | <atop:amethyst_sword> | <atop:amethyst_boots> | <atop:amethyst_hoe> | <atop:amethyst_pickaxe> | <atop:amethyst_shovel> | <atop:amethyst_axe> | <atop:topaz_sword>;
addRepairEntry(exoriteItems, <contenttweaker:exorite_ingot>);

var rubyItems = <atop:ruby_helmet> | <atop:ruby_chestplate> | <atop:ruby_leggings> | <atop:ruby_boots> | <atop:ruby_pickaxe> | <atop:ruby_sword> | <atop:ruby_shovel> | <atop:ruby_axe> | <atop:ruby_hoe>;
addRepairEntry(rubyItems, <ore:gemRuby>);

var peridotItems = <atop:peridot_helmet> | <atop:peridot_chestplate> | <atop:peridot_leggings> | <atop:peridot_boots> | <atop:peridot_sword> | <atop:peridot_pickaxe> | <atop:peridot_axe> | <atop:peridot_shovel> | <atop:peridot_hoe>;
addRepairEntry(peridotItems, <ore:gemPeridot>);

var sapphireItems = <atop:sapphire_helmet> | <atop:sapphire_chestplate> | <atop:sapphire_leggings> | <atop:sapphire_boots> | <atop:sapphire_sword> | <atop:sapphire_pickaxe> | <atop:sapphire_axe> | <atop:sapphire_shovel> | <atop:sapphire_hoe>;
addRepairEntry(sapphireItems, <ore:gemSapphire>);



mods.jei.JEI.removeAndHide(<atop:amber_boots>);
mods.jei.JEI.removeAndHide(<atop:amber_chestplate>);
mods.jei.JEI.removeAndHide(<atop:amber_leggings>);
mods.jei.JEI.removeAndHide(<atop:amber_helmet>);
// used for Mari's dev relic
recipes.remove(<atop:amber_sword>);

// used for new gravitite 
//mods.jei.JEI.removeAndHide(<atop:amber_pickaxe>);
//mods.jei.JEI.removeAndHide(<atop:amber_shovel>);
//mods.jei.JEI.removeAndHide(<atop:amber_axe>);
mods.jei.JEI.removeAndHide(<atop:amber_hoe>);

mods.jei.JEI.removeAndHide(<atop:topaz_boots>);
mods.jei.JEI.removeAndHide(<atop:topaz_chestplate>);
mods.jei.JEI.removeAndHide(<atop:topaz_leggings>);
mods.jei.JEI.removeAndHide(<atop:topaz_helmet>);
//mods.jei.JEI.removeAndHide(<atop:topaz_sword>);
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
