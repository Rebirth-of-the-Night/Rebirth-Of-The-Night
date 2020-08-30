import crafttweaker.item.IIngredient;

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

// Rebirth of the Bed AETHER EDITION

recipes.remove(<aether_legacy:skyroot_bed:*>);

recipes.addShaped("Rebirth_of_the_Bed_Aether",<aether_legacy:skyroot_bed>,[
    [null,null,null],
    [null,<ore:bed>,null],
    [<ore:plankSkyroot>,<ore:plankSkyroot>,<ore:plankSkyroot>]
]);

var skyBedColors = <aether_legacy:skyroot_bed:0>|<aether_legacy:skyroot_bed:1>|<aether_legacy:skyroot_bed:2>|<aether_legacy:skyroot_bed:3>|<aether_legacy:skyroot_bed:4>|<aether_legacy:skyroot_bed:5>|<aether_legacy:skyroot_bed:6>|<aether_legacy:skyroot_bed:7>|<aether_legacy:skyroot_bed:8>|<aether_legacy:skyroot_bed:9>|<aether_legacy:skyroot_bed:10>|<aether_legacy:skyroot_bed:11>|<aether_legacy:skyroot_bed:12>|<aether_legacy:skyroot_bed:13>|<aether_legacy:skyroot_bed:14>|<aether_legacy:skyroot_bed:15>;

recipes.addShapeless("white_skyroot_bed_fromother",<aether_legacy:skyroot_bed:0>,[skyBedColors,<ore:dyeWhite>]);
recipes.addShapeless("orange_skyroot_bed_fromother",<aether_legacy:skyroot_bed:1>,[skyBedColors,<ore:dyeOrange>]);
recipes.addShapeless("magenta_skyroot_bed_fromother",<aether_legacy:skyroot_bed:2>,[skyBedColors,<ore:dyeMagenta>]);
recipes.addShapeless("light_blue_skyroot_bed_fromother",<aether_legacy:skyroot_bed:3>,[skyBedColors,<ore:dyeLightBlue>]);
recipes.addShapeless("yellow_skyroot_bed_fromother",<aether_legacy:skyroot_bed:4>,[skyBedColors,<ore:dyeYellow>]);
recipes.addShapeless("lime_skyroot_bed_fromother",<aether_legacy:skyroot_bed:5>,[skyBedColors,<ore:dyeLime>]);
recipes.addShapeless("pink_skyroot_bed_fromother",<aether_legacy:skyroot_bed:6>,[skyBedColors,<ore:dyePink>]);
recipes.addShapeless("gray_skyroot_bed_fromother",<aether_legacy:skyroot_bed:7>,[skyBedColors,<ore:dyeGray>]);
recipes.addShapeless("light_gray_skyroot_bed_fromother",<aether_legacy:skyroot_bed:8>,[skyBedColors,<ore:dyeLightGray>]);
recipes.addShapeless("cyan_skyroot_bed_fromother",<aether_legacy:skyroot_bed:9>,[skyBedColors,<ore:dyeCyan>]);
recipes.addShapeless("purple_skyroot_bed_fromother",<aether_legacy:skyroot_bed:10>,[skyBedColors,<ore:dyePurple>]);
recipes.addShapeless("blue_skyroot_bed_fromother",<aether_legacy:skyroot_bed:11>,[skyBedColors,<ore:dyeBlue>]);
recipes.addShapeless("brown_skyroot_bed_fromother",<aether_legacy:skyroot_bed:12>,[skyBedColors,<ore:dyeBrown>]);
recipes.addShapeless("green_skyroot_bed_fromother",<aether_legacy:skyroot_bed:13>,[skyBedColors,<ore:dyeGreen>]);
recipes.addShapeless("red_skyroot_bed_fromother",<aether_legacy:skyroot_bed:14>,[skyBedColors,<ore:dyeRed>]);
recipes.addShapeless("black_skyroot_bed_fromother",<aether_legacy:skyroot_bed:15>,[skyBedColors,<ore:dyeBlack>]);

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

recipes.addShapedMirrored("gravitite_axe", <atop:amethyst_axe>,[
    [egrav, egrav],
    [egrav, stick],
    [null, stick]
]);

recipes.addShaped("gravitite_shovel", <atop:amethyst_shovel>,[
    [egrav],
    [stick],
    [stick]
]);

<aether_legacy:blue_berry>.maxStackSize = 16;
