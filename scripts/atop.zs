import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.vanillaanvilrepair.addRepairEntry;

var exoriteItems = <atop:amethyst_helmet> | <atop:amethyst_chestplate> | <atop:amethyst_leggings> | <atop:amethyst_sword> | <atop:amethyst_boots> | <atop:amethyst_hoe> | <atop:amethyst_pickaxe> | <atop:amethyst_shovel> | <atop:amethyst_axe> | <atop:topaz_sword>;
addRepairEntry(exoriteItems, <contenttweaker:exorite_ingot>);

var rubyItems = <atop:ruby_helmet> | <atop:ruby_chestplate> | <atop:ruby_leggings> | <atop:ruby_boots> | <atop:ruby_pickaxe> | <atop:ruby_sword> | <atop:ruby_shovel> | <atop:ruby_axe> | <atop:ruby_hoe>;
addRepairEntry(rubyItems, <contenttweaker:ruby_ingot>);

var peridotItems = <atop:peridot_helmet> | <atop:peridot_chestplate> | <atop:peridot_leggings> | <atop:peridot_boots> | <atop:peridot_sword> | <atop:peridot_pickaxe> | <atop:peridot_axe> | <atop:peridot_shovel> | <atop:peridot_hoe>;
addRepairEntry(peridotItems, <contenttweaker:peridot_ingot>);

var sapphireItems = <atop:sapphire_helmet> | <atop:sapphire_chestplate> | <atop:sapphire_leggings> | <atop:sapphire_boots> | <atop:sapphire_sword> | <atop:sapphire_pickaxe> | <atop:sapphire_axe> | <atop:sapphire_shovel> | <atop:sapphire_hoe>;
addRepairEntry(sapphireItems, <contenttweaker:sapphire_ingot>);



JEI.removeAndHide(<atop:amber_boots>);
JEI.removeAndHide(<atop:amber_chestplate>);
JEI.removeAndHide(<atop:amber_leggings>);
JEI.removeAndHide(<atop:amber_helmet>);
// used for Mari dev relic
recipes.remove(<atop:amber_sword>);

// used for new gravitite 
//JEI.removeAndHide(<atop:amber_pickaxe>);
//JEI.removeAndHide(<atop:amber_shovel>);
//JEI.removeAndHide(<atop:amber_axe>);
JEI.removeAndHide(<atop:amber_hoe>);

JEI.removeAndHide(<atop:topaz_boots>);
JEI.removeAndHide(<atop:topaz_chestplate>);
JEI.removeAndHide(<atop:topaz_leggings>);
JEI.removeAndHide(<atop:topaz_helmet>);
//JEI.removeAndHide(<atop:topaz_sword>);
JEI.removeAndHide(<atop:topaz_pickaxe>);
JEI.removeAndHide(<atop:topaz_shovel>);
JEI.removeAndHide(<atop:topaz_axe>);
JEI.removeAndHide(<atop:topaz_hoe>);

JEI.removeAndHide(<atop:tanzanite_boots>);
JEI.removeAndHide(<atop:tanzanite_chestplate>);
JEI.removeAndHide(<atop:tanzanite_leggings>);
JEI.removeAndHide(<atop:tanzanite_helmet>);
JEI.removeAndHide(<atop:tanzanite_sword>);
JEI.removeAndHide(<atop:tanzanite_pickaxe>);
JEI.removeAndHide(<atop:tanzanite_shovel>);
JEI.removeAndHide(<atop:tanzanite_axe>);
JEI.removeAndHide(<atop:tanzanite_hoe>);

JEI.removeAndHide(<atop:malachite_boots>);
JEI.removeAndHide(<atop:malachite_chestplate>);
JEI.removeAndHide(<atop:malachite_leggings>);
JEI.removeAndHide(<atop:malachite_helmet>);
JEI.removeAndHide(<atop:malachite_sword>);
JEI.removeAndHide(<atop:malachite_pickaxe>);
JEI.removeAndHide(<atop:malachite_shovel>);
JEI.removeAndHide(<atop:malachite_axe>);
JEI.removeAndHide(<atop:malachite_hoe>);
