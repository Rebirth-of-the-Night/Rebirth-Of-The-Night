import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.vanillaanvilrepair.addRepairEntry;

var exoriteItems = <atop:amethyst_helmet> | <atop:amethyst_chestplate> | <atop:amethyst_leggings> | <atop:amethyst_sword> | <atop:amethyst_boots> | <atop:amethyst_hoe> | <atop:amethyst_pickaxe> | <atop:amethyst_shovel> | <atop:amethyst_axe> | <atop:topaz_sword>;
addRepairEntry(exoriteItems, <contenttweaker:exorite_ingot>);

var rubyItems = <atop:ruby_helmet> | <atop:ruby_chestplate> | <atop:ruby_leggings> | <atop:ruby_boots> | <atop:ruby_pickaxe> | <atop:ruby_sword> | <atop:ruby_shovel> | <atop:ruby_axe> | <atop:ruby_hoe> | <spartanweaponry:greatsword_diamond> | <spartanweaponry:mace_diamond> | <spartanweaponry:throwing_axe_diamond>;
addRepairEntry(rubyItems, <contenttweaker:ruby_ingot>);

var peridotItems = <atop:peridot_helmet> | <atop:peridot_chestplate> | <atop:peridot_leggings> | <atop:peridot_boots> | <atop:peridot_sword> | <atop:peridot_pickaxe> | <atop:peridot_axe> | <atop:peridot_shovel> | <atop:peridot_hoe> | <spartanweaponry:boomerang_diamond> | <spartanweaponry:rapier_diamond> | <spartanweaponry:staff_diamond>;
addRepairEntry(peridotItems, <contenttweaker:peridot_ingot>);

var sapphireItems = <atop:sapphire_helmet> | <atop:sapphire_chestplate> | <atop:sapphire_leggings> | <atop:sapphire_boots> | <atop:sapphire_sword> | <atop:sapphire_pickaxe> | <atop:sapphire_axe> | <atop:sapphire_shovel> | <atop:sapphire_hoe> | <spartanweaponry:hammer_diamond> | <spartanweaponry:javelin_diamond> | <spartanweaponry:longsword_diamond>;
addRepairEntry(sapphireItems, <contenttweaker:sapphire_ingot>);

var diamondItems = <minecraft:diamond_helmet> | <minecraft:diamond_chestplate> | <minecraft:diamond_leggings> | <minecraft:diamond_boots> | <minecraft:diamond_sword> | <minecraft:diamond_pickaxe> | <minecraft:diamond_axe> | <minecraft:diamond_shovel> | <minecraft:diamond_hoe> | <spartanweaponry:halberd_diamond> | <spartanweaponry:saber_diamond> | <spartanweaponry:throwing_knife_diamond> | <quark:pickarang>;
addRepairEntry(diamondItems, <betterwithmods:material:45>);


JEI.removeAndHide(<atop:amber_boots>);
JEI.removeAndHide(<atop:amber_chestplate>);
JEI.removeAndHide(<atop:amber_leggings>);
JEI.removeAndHide(<atop:amber_helmet>);
JEI.removeAndHide(<atop:amber_sword>);

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

/* JEI.removeAndHide(<atop:tanzanite_boots>);
JEI.removeAndHide(<atop:tanzanite_chestplate>);
JEI.removeAndHide(<atop:tanzanite_leggings>);
JEI.removeAndHide(<atop:tanzanite_helmet>); */
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


recipes.remove(<atop:tanzanite_helmet>);
recipes.remove(<atop:tanzanite_chestplate>);
recipes.remove(<atop:tanzanite_leggings>);
recipes.remove(<atop:tanzanite_boots>);

// flower armor
recipes.addShaped("flower_crown", <atop:tanzanite_helmet>.withTag({ench: [{lvl: 1 as short, id: 7}]}), [
  [<ore:flower>, <ore:flower>, <ore:flower>],
  [<pyrotech:material:12>, <ore:stickWood>, <pyrotech:material:12>]
]);
recipes.addShaped("flower_chestplate", <atop:tanzanite_chestplate>.withTag({ench: [{lvl: 1 as short, id: 7}]}), [
    [<ore:flower>, null, <ore:flower>],
    [<pyrotech:material:12>, <ore:stickWood>, <pyrotech:material:12>],
    [<ore:flower>, <pyrotech:material:12>, <ore:flower>]
]);
recipes.addShaped("flower_leggings", <atop:tanzanite_leggings>.withTag({ench: [{lvl: 1 as short, id: 7}]}), [
    [<ore:flower>, <ore:stickWood>, <ore:flower>],
    [<pyrotech:material:12>, <ore:flower>, <pyrotech:material:12>],
    [<ore:flower>, null, <ore:flower>]
]);
recipes.addShaped("flower_boots", <atop:tanzanite_boots>.withTag({ench: [{lvl: 1 as short, id: 7}]}), [
    [<pyrotech:material:12>, <ore:flower>, <pyrotech:material:12>],
    [<ore:flower>, <ore:stickWood>, <ore:flower>]
]);
