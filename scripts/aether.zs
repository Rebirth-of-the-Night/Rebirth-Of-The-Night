import crafttweaker.item.IIngredient;
import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions; 

mods.jei.JEI.removeAndHide(<aether_legacy:skyroot_double_slab>);



mods.jei.JEI.removeAndHide(<aeble:obsidian_ring>);
mods.jei.JEI.removeAndHide(<aeble:zanite_ring>);
mods.jei.JEI.removeAndHide(<aeble:ice_ring>);
mods.ltt.LootTable.removeGlobalItem("aeble:obsidian_ring");
mods.ltt.LootTable.removeGlobalItem("aeble:zanite_ring");
mods.ltt.LootTable.removeGlobalItem("aeble:ice_ring");
mods.ltt.LootTable.removeModEntry("aeble");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:sun_altar");
<aether_legacy:sun_altar>.addTooltip("DO NOT USE! This is an unintended drop that RotN can not remove.");


mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_chestplate");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_helmet");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_boots");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_leggings");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:golden_feather");


mods.jei.JEI.removeAndHide(<aether_legacy:swetty_ball>);
mods.ltt.LootTable.removeGlobalItem("aether_legacy:swetty_ball");

mods.jei.JEI.removeAndHide(<aether_legacy:aetherium_core>);
recipes.addShaped("aetherium core", <aether_legacy:aetherium_core>,[
	[<aether_legacy:golden_amber>, <betterslimes:yellow_slime>, null],
    [<aether_legacy:zanite_gemstone>, null, null],
    [null, null, null]
]);

mods.jei.JEI.removeAndHide(<aether_legacy:obsidian_chestplate>);
mods.jei.JEI.removeAndHide(<aether_legacy:obsidian_helmet>);
mods.jei.JEI.removeAndHide(<aether_legacy:obsidian_boots>);
mods.jei.JEI.removeAndHide(<aether_legacy:obsidian_leggings>);

mods.jei.JEI.removeAndHide(<aether_legacy:repulsion_shield>);
mods.jei.JEI.removeAndHide(<aether_legacy:iron_ring>);
mods.jei.JEI.removeAndHide(<aether_legacy:golden_ring>);
mods.jei.JEI.removeAndHide(<aether_legacy:zanite_ring>);
mods.jei.JEI.removeAndHide(<aether_legacy:ice_ring>);
mods.jei.JEI.removeAndHide(<aether_legacy:iron_pendant>);
mods.jei.JEI.removeAndHide(<aether_legacy:golden_pendant>);
mods.jei.JEI.removeAndHide(<aether_legacy:zanite_pendant>);
mods.jei.JEI.removeAndHide(<aether_legacy:ice_pendant>);
mods.jei.JEI.removeAndHide(<aether_legacy:zanite_gloves>);
mods.jei.JEI.removeAndHide(<aether_legacy:phoenix_gloves>);
mods.ltt.LootTable.removeGlobalItem("aether_legacy:iron_ring");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:golden_ring");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:zanite_ring");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:ice_ring");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:iron_pendant");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:golden_pendant");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:zanite_pendant");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:ice_pendant");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:zanite_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:phoenix_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:leather_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:iron_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:golden_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:chain_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:diamond_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:gravitite_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:neptune_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:valkyrie_gloves");

mods.ltt.LootTable.removeGlobalItem("aether_legacy:red_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:blue_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:yellow_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:white_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:swet_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:invisibility_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:agility_cape");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:obsidian_gloves");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:valkyrie_cape");

mods.ltt.LootTable.removeGlobalItem("aether_legacy:regeneration_stone");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:iron_bubble");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:repulsion_shield");

//Fix trapdoor recipes
val skyplank = <aether_legacy:skyroot_plank>;
recipes.remove(<aether_legacy:skyroot_trapdoor>);
recipes.addShaped("aether_legacy_skyroot_trapdoor", <aether_legacy:skyroot_trapdoor>*6,
    [[null,null,null],
    [skyplank,skyplank,skyplank],
    [skyplank,skyplank,skyplank]]);

var sand = <ore:sand>;
var shard = <aether_legacy:ambrosium_shard>;
var quicks = <aether_legacy:quicksoil>;

recipes.addShaped("quicksoil", quicks*8,[
    [sand, sand, sand],
    [sand, shard, sand],
    [sand, sand, sand]
]);

var skyBedList = <aether_legacy:skyroot_bed:0>|<aether_legacy:skyroot_bed:1>|<aether_legacy:skyroot_bed:2>|<aether_legacy:skyroot_bed:3>|<aether_legacy:skyroot_bed:4>|<aether_legacy:skyroot_bed:5>|<aether_legacy:skyroot_bed:6>|<aether_legacy:skyroot_bed:7>|<aether_legacy:skyroot_bed:8>|<aether_legacy:skyroot_bed:9>|<aether_legacy:skyroot_bed:10>|<aether_legacy:skyroot_bed:11>|<aether_legacy:skyroot_bed:12>|<aether_legacy:skyroot_bed:13>|<aether_legacy:skyroot_bed:14>|<aether_legacy:skyroot_bed:15>;

recipes.addShapeless("white_skyroot_bed",<aether_legacy:skyroot_bed:0>,[skyBedList,<ore:dyeWhite>]);
recipes.removeByRecipeName("aether_legacy_addon:orange_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("orange_skyroot_bed",<aether_legacy:skyroot_bed:1>,[skyBedList,<ore:dyeOrange>]);
recipes.removeByRecipeName("aether_legacy_addon:magenta_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("magenta_skyroot_bed",<aether_legacy:skyroot_bed:2>,[skyBedList,<ore:dyeMagenta>]);
recipes.removeByRecipeName("aether_legacy_addon:light_blue_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("light_blue_skyroot_bed",<aether_legacy:skyroot_bed:3>,[skyBedList,<ore:dyeLightBlue>]);
recipes.removeByRecipeName("aether_legacy_addon:yellow_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("yellow_skyroot_bed",<aether_legacy:skyroot_bed:4>,[skyBedList,<ore:dyeYellow>]);
recipes.removeByRecipeName("aether_legacy_addon:lime_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("lime_skyroot_bed",<aether_legacy:skyroot_bed:5>,[skyBedList,<ore:dyeLime>]);
recipes.removeByRecipeName("aether_legacy_addon:pink_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("pink_skyroot_bed",<aether_legacy:skyroot_bed:6>,[skyBedList,<ore:dyePink>]);
recipes.removeByRecipeName("aether_legacy_addon:gray_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("gray_skyroot_bed",<aether_legacy:skyroot_bed:7>,[skyBedList,<ore:dyeGray>]);
recipes.removeByRecipeName("aether_legacy_addon:silver_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("light_gray_skyroot_bed",<aether_legacy:skyroot_bed:8>,[skyBedList,<ore:dyeLightGray>]);
recipes.removeByRecipeName("aether_legacy_addon:cyan_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("cyan_skyroot_bed",<aether_legacy:skyroot_bed:9>,[skyBedList,<ore:dyeCyan>]);
recipes.removeByRecipeName("aether_legacy_addon:purple_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("purple_skyroot_bed",<aether_legacy:skyroot_bed:10>,[skyBedList,<ore:dyePurple>]);
recipes.removeByRecipeName("aether_legacy_addon:blue_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("blue_skyroot_bed",<aether_legacy:skyroot_bed:11>,[skyBedList,<ore:dyeBlue>]);
recipes.removeByRecipeName("aether_legacy_addon:brown_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("brown_skyroot_bed",<aether_legacy:skyroot_bed:12>,[skyBedList,<ore:dyeBrown>]);
recipes.removeByRecipeName("aether_legacy_addon:green_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("green_skyroot_bed",<aether_legacy:skyroot_bed:13>,[skyBedList,<ore:dyeGreen>]);
recipes.removeByRecipeName("aether_legacy_addon:red_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("red_skyroot_bed",<aether_legacy:skyroot_bed:14>,[skyBedList,<ore:dyeRed>]);
recipes.removeByRecipeName("aether_legacy_addon:black_skyroot_bed_from_white_skyroot_bed");
recipes.addShapeless("black_skyroot_bed",<aether_legacy:skyroot_bed:15>,[skyBedList,<ore:dyeBlack>]);

recipes.removeByRecipeName("quark:gravisand");
recipes.addShaped("quickgravisand", <quark:gravisand>*8,[
    [quicks, quicks, quicks],
    [quicks, <ore:enderpearl>, quicks],
    [quicks, quicks, quicks]
]);

mods.jei.JEI.removeAndHide(<aether_legacy:gravitite_pickaxe>);
mods.jei.JEI.removeAndHide(<aether_legacy:gravitite_axe>);
mods.jei.JEI.removeAndHide(<aether_legacy:gravitite_shovel>);
mods.jei.JEI.removeAndHide(<aether_legacy:lore_book>);

recipes.remove(<atop:amethyst_pickaxe>);
recipes.remove(<atop:amethyst_axe>);
recipes.remove(<atop:amethyst_shovel>);

var egrav = <aether_legacy:enchanted_gravitite>;
var stick = <aether_legacy:skyroot_stick>;

recipes.addShaped("gravitite_pick", <atop:amethyst_pickaxe>,[
    [egrav, egrav, egrav],
    [null, stick, null],
    [null, stick, null]
]);

recipes.addShaped("gravitite_axe", <atop:amethyst_axe>,[
    [egrav, egrav],
    [egrav, stick],
    [null, stick]
]);

recipes.addShaped("gravitite_shovel", <atop:amethyst_shovel>,[
    [egrav],
    [stick],
    [stick]
]);
