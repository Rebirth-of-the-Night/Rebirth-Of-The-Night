import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<aether_legacy:skyroot_double_slab>);
mods.jei.JEI.removeAndHide(<aether_legacy:skyroot_pickaxe>);
mods.jei.JEI.removeAndHide(<aether_legacy:skyroot_axe>);
mods.jei.JEI.removeAndHide(<aether_legacy:skyroot_shovel>);
mods.ltt.LootTable.removeGlobalItem("aether_legacy:skyroot_pickaxe");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:skyroot_axe");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:skyroot_shovel");

mods.jei.JEI.removeAndHide(<aeble:obsidian_ring>);
mods.jei.JEI.removeAndHide(<aeble:zanite_ring>);
mods.jei.JEI.removeAndHide(<aeble:ice_ring>);
mods.ltt.LootTable.removeGlobalItem("aeble:obsidian_ring");
mods.ltt.LootTable.removeGlobalItem("aeble:zanite_ring");
mods.ltt.LootTable.removeGlobalItem("aeble:ice_ring");
mods.ltt.LootTable.removeModEntry("aeble");
mods.ltt.LootTable.removeGlobalItem("aether_legacy:sun_altar");

mods.ltt.LootTable.removeGlobalItem("aether_legacy:holystone_sword");
mods.jei.JEI.removeAndHide(<aether_legacy:holystone_sword>);


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

recipes.remove(<aether_legacy:skyroot_bed_item>);

recipes.addShaped("Rebirth_of_the_Bed_Aether",<aether_legacy:skyroot_bed_item>,[
    [null,null,null],
    [null,<ore:bed>,null],
    [<ore:plankSkyroot>,<ore:plankSkyroot>,<ore:plankSkyroot>]
]);

<aether_legacy:skyroot_bed_item>.addTooltip("Allows you to sleep in the Aether");



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


var egrav = <aether_legacy:enchanted_gravitite>;
var stick = <aether_legacy:skyroot_stick>;

recipes.remove(<atop:amber_pickaxe>);
recipes.addShaped("gravitite_pick", <atop:amber_pickaxe>,[
    [egrav, egrav, egrav],
    [null, stick, null],
    [null, stick, null]
]);

recipes.remove(<atop:amber_axe>);
recipes.addShapedMirrored("gravitite_axe", <atop:amber_axe>,[
    [egrav, egrav],
    [egrav, stick],
    [null, stick]
]);

recipes.remove(<atop:amber_shovel>);
recipes.addShaped("gravitite_shovel", <atop:amber_shovel>,[
    [egrav],
    [stick],
    [stick]
]);

<aether_legacy:blue_berry>.maxStackSize = 16;

recipes.remove(<aether_legacy:cold_parachute>);
recipes.remove(<aether_legacy:golden_parachute>);

var coldcloud = <aether_legacy:aercloud:0>;
var goldcloud = <aether_legacy:aercloud:2>;

recipes.addShaped("cold_parachute", <aether_legacy:cold_parachute>,[
    [<minecraft:string>, null, <minecraft:string>],
    [coldcloud, <ore:slimeball>, coldcloud],
    [coldcloud, coldcloud, coldcloud]
]);

recipes.addShaped("golden_parachute", <aether_legacy:golden_parachute>,[
    [<betterwithmods:material:8>, null, <betterwithmods:material:8>],
    [goldcloud, <ore:slimeball>, goldcloud],
    [goldcloud, goldcloud, goldcloud]
]);