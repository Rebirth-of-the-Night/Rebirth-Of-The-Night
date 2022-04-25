import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<craftingcraft:portable_crafting_table:1>);
recipes.removeByMod("craftingcraft");

val rock = <pyrotech:rock> | <pyrotech_compat:rock_igneous:5> | <minecraft:flint>;
recipes.addShapeless("crafting_tools", <contenttweaker:crafting_tools>, [<pyrotech:crude_axe:*>|<minecraft:stone_axe:*>, <ore:rock>|<minecraft:flint>, <ore:stickWood>]);
recipes.addShapeless("crafting_tools_1", <contenttweaker:crafting_tools>, [<ore:genericMetalNuggets>, <ore:stickWood>]);

recipes.addShapeless("crafting_mat", <craftingcraft:portable_crafting_table:0>, [<ore:mat>, <contenttweaker:crafting_tools>]);

recipes.remove(<minecraft:crafting_table>);
recipes.addShapeless("crafting_table", <minecraft:crafting_table>, [<ore:stickMat>, <contenttweaker:crafting_tools>]);

recipes.addShapeless("mythril_block_crafting_table", <randomthings:customworkbench>.withTag({woodName: "simpleores:mythril_block", woodMeta: 0}), [<simpleores:mythril_block>, <contenttweaker:crafting_tools>]);

recipes.addShapeless("cincinnasite_pillar_crafting_table", <randomthings:customworkbench>.withTag({woodName: "betternether:cincinnasite_pillar", woodMeta: 0}), [<betternether:cincinnasite_pillar>, <contenttweaker:crafting_tools>]);

recipes.remove(<aether_legacy:skyroot_crafting_table>);
recipes.addShapeless("skyroot_crafting_table", <aether_legacy:skyroot_crafting_table>, [<aether_legacy:skyroot_plank>, <contenttweaker:crafting_tools>]);

recipes.remove(<arcanearchives:radiant_crafting_table>);
recipes.addShapeless("radiant_crafting_table", <arcanearchives:radiant_crafting_table>, [<arcanearchives:raw_quartz>, <contenttweaker:crafting_tools>]);
