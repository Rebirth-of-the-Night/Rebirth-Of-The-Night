#modloaded aether_legacy

import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;
import mods.ltt.LootTable;
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemCondition;
import mods.betterwithaddons.Infuser;

JEI.removeAndHide(<aether_legacy:life_shard>);
LootTable.removeGlobalItem("aether_legacy:life_shard");

// make aether grass/dirt have same hardness as OW dirt/grass
val aether_dirt as IItemStack = <aether_legacy:aether_dirt>;
aether_dirt.hardness = 0.6;
val aether_grass as IItemStack = <aether_legacy:aether_grass>;
aether_grass.hardness = 0.5;

recipes.removeByRecipeName("aether_legacy:furnace_from_holystone");
recipes.removeShaped(<minecraft:stone_pressure_plate>);
recipes.addShaped("stone_pressure_plate_fixed", <minecraft:stone_pressure_plate>, [
    [<ore:stoneWithoutHolystone>, <ore:stoneWithoutHolystone>]
]);

JEI.removeAndHide(<aether_legacy:skyroot_double_slab>);
LootTable.removeGlobalItem("aether_legacy:skyroot_double_slab");

JEI.removeAndHide(<aeble:obsidian_ring>);
JEI.removeAndHide(<aeble:zanite_ring>);
JEI.removeAndHide(<aeble:ice_ring>);
LootTable.removeGlobalItem("aeble:obsidian_ring");
LootTable.removeGlobalItem("aeble:zanite_ring");
LootTable.removeGlobalItem("aeble:ice_ring");

LootTable.removeModEntry("aeble");

JEI.removeAndHide(<aether_legacy:sun_altar>);
LootTable.removeGlobalItem("aether_legacy:sun_altar");

LootTable.removeGlobalItem("aether_legacy:holystone_sword");
JEI.removeAndHide(<aether_legacy:holystone_sword>);

JEI.removeAndHide(<aether_legacy:golden_feather>);
LootTable.removeGlobalItem("aether_legacy:golden_feather");

JEI.removeAndHide(<aether_legacy:swetty_ball>);
LootTable.removeGlobalItem("aether_legacy:swetty_ball");

JEI.removeAndHide(<aether_legacy:lightning_knife>);
LootTable.removeGlobalItem("aether_legacy:lightning_knife");

recipes.remove(<aether_legacy:aetherium_core>);
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <aether_legacy:golden_amber>, <contenttweaker:vis_sliver>],
    [<aether_legacy:golden_amber>, <aether_legacy:zanite_gemstone>, <aether_legacy:golden_amber>],
    [<contenttweaker:vis_sliver>, <aether_legacy:golden_amber>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:sol_rune>, 1)
  .addTool(<contenttweaker:air_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<aether_legacy:aetherium_core>)
  .create();

JEI.removeAndHide(<aether_legacy:obsidian_chestplate>);
JEI.removeAndHide(<aether_legacy:obsidian_helmet>);
JEI.removeAndHide(<aether_legacy:obsidian_boots>);
JEI.removeAndHide(<aether_legacy:obsidian_leggings>);
LootTable.removeGlobalItem("aether_legacy:obsidian_chestplate");
LootTable.removeGlobalItem("aether_legacy:obsidian_helmet");
LootTable.removeGlobalItem("aether_legacy:obsidian_boots");
LootTable.removeGlobalItem("aether_legacy:obsidian_leggings");

JEI.removeAndHide(<aether_legacy:iron_ring>);
JEI.removeAndHide(<aether_legacy:golden_ring>);
JEI.removeAndHide(<aether_legacy:zanite_ring>);
JEI.removeAndHide(<aether_legacy:ice_ring>);
JEI.removeAndHide(<aether_legacy:iron_pendant>);
JEI.removeAndHide(<aether_legacy:golden_pendant>);
JEI.removeAndHide(<aether_legacy:zanite_pendant>);
JEI.removeAndHide(<aether_legacy:ice_pendant>);
JEI.removeAndHide(<aether_legacy:white_apple>);
JEI.removeAndHide(<aether_legacy:candy_cane_sword>);
JEI.removeAndHide(<aether_legacy:candy_cane>);
JEI.removeAndHide(<aether_legacy:ginger_bread_man>);
JEI.removeAndHide(<aether_legacy:zanite_gloves>);
JEI.removeAndHide(<aether_legacy:phoenix_gloves>);
JEI.removeAndHide(<aether_legacy:leather_gloves>);
JEI.removeAndHide(<aether_legacy:iron_gloves>);
JEI.removeAndHide(<aether_legacy:golden_gloves>);
JEI.removeAndHide(<aether_legacy:chain_gloves>);
JEI.removeAndHide(<aether_legacy:diamond_gloves>);
JEI.removeAndHide(<aether_legacy:gravitite_gloves>);
JEI.removeAndHide(<aether_legacy:neptune_gloves>);
JEI.removeAndHide(<aether_legacy:obsidian_gloves>);
JEI.removeAndHide(<aether_legacy:valkyrie_gloves>);
LootTable.removeGlobalItem("aether_legacy:iron_ring");
LootTable.removeGlobalItem("aether_legacy:golden_ring");
LootTable.removeGlobalItem("aether_legacy:zanite_ring");
LootTable.removeGlobalItem("aether_legacy:ice_ring");
LootTable.removeGlobalItem("aether_legacy:iron_pendant");
LootTable.removeGlobalItem("aether_legacy:golden_pendant");
LootTable.removeGlobalItem("aether_legacy:zanite_pendant");
LootTable.removeGlobalItem("aether_legacy:ice_pendant");
LootTable.removeGlobalItem("aether_legacy:white_apple");
LootTable.removeGlobalItem("aether_legacy:candy_cane_sword");
LootTable.removeGlobalItem("aether_legacy:candy_cane");
LootTable.removeGlobalItem("aether_legacy:ginger_bread_man");
LootTable.removeGlobalItem("aether_legacy:zanite_gloves");
LootTable.removeGlobalItem("aether_legacy:phoenix_gloves");
LootTable.removeGlobalItem("aether_legacy:leather_gloves");
LootTable.removeGlobalItem("aether_legacy:iron_gloves");
LootTable.removeGlobalItem("aether_legacy:golden_gloves");
LootTable.removeGlobalItem("aether_legacy:chain_gloves");
LootTable.removeGlobalItem("aether_legacy:diamond_gloves");
LootTable.removeGlobalItem("aether_legacy:gravitite_gloves");
LootTable.removeGlobalItem("aether_legacy:neptune_gloves");
LootTable.removeGlobalItem("aether_legacy:obsidian_gloves");
LootTable.removeGlobalItem("aether_legacy:valkyrie_gloves");
LootTable.removeGlobalItem("aether_legacy:cloud_staff");

JEI.removeAndHide(<aether_legacy:red_cape>);
JEI.removeAndHide(<aether_legacy:blue_cape>);
JEI.removeAndHide(<aether_legacy:yellow_cape>);
JEI.removeAndHide(<aether_legacy:white_cape>);
JEI.removeAndHide(<aether_legacy:swet_cape>);
JEI.removeAndHide(<aether_legacy:invisibility_cape>);
JEI.removeAndHide(<aether_legacy:agility_cape>);
JEI.removeAndHide(<aether_legacy:valkyrie_cape>);
LootTable.removeGlobalItem("aether_legacy:red_cape");
LootTable.removeGlobalItem("aether_legacy:blue_cape");
LootTable.removeGlobalItem("aether_legacy:yellow_cape");
LootTable.removeGlobalItem("aether_legacy:white_cape");
LootTable.removeGlobalItem("aether_legacy:swet_cape");
LootTable.removeGlobalItem("aether_legacy:invisibility_cape");
LootTable.removeGlobalItem("aether_legacy:agility_cape");
LootTable.removeGlobalItem("aether_legacy:valkyrie_cape");

JEI.removeAndHide(<aether_legacy:regeneration_stone>);
JEI.removeAndHide(<aether_legacy:iron_bubble>);
JEI.removeAndHide(<aether_legacy:repulsion_shield>);
LootTable.removeGlobalItem("aether_legacy:regeneration_stone");
LootTable.removeGlobalItem("aether_legacy:iron_bubble");
LootTable.removeGlobalItem("aether_legacy:repulsion_shield");

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

// Gravitite ingot rework

var gravitite_ingot = <ore:ingotGravitite>;
var gravitite_block = <ore:blockEnchantedGravitite>;

recipes.remove(<aether_legacy:gravitite_leggings>);
recipes.remove(<aether_legacy:gravitite_helmet>);
recipes.remove(<aether_legacy:gravitite_chestplate>);
recipes.remove(<aether_legacy:gravitite_boots>);
recipes.addShaped("gravitite_ingot_helmet", <aether_legacy:gravitite_helmet>,
[[gravitite_ingot,gravitite_ingot,gravitite_ingot],
  [gravitite_ingot,null,gravitite_ingot]]);
recipes.addShaped("gravitite_ingot_chestplate", <aether_legacy:gravitite_chestplate>,
 [[gravitite_ingot,null,gravitite_ingot],
  [gravitite_ingot,gravitite_ingot,gravitite_ingot],
  [gravitite_ingot,gravitite_ingot,gravitite_ingot]]);
recipes.addShaped("gravitite_ingot_leggings", <aether_legacy:gravitite_leggings>,
 [[gravitite_ingot,gravitite_ingot,gravitite_ingot],
  [gravitite_ingot,null,gravitite_ingot],
  [gravitite_ingot,null,gravitite_ingot]]);
recipes.addShaped("gravitite_ingot_boots", <aether_legacy:gravitite_boots>,
 [[gravitite_ingot,null,gravitite_ingot],
  [gravitite_ingot,null,gravitite_ingot]]);

recipes.addShaped("gravitite_block", gravitite_block.firstItem,
 [[gravitite_ingot,gravitite_ingot,gravitite_ingot],
  [gravitite_ingot,gravitite_ingot,gravitite_ingot],
  [gravitite_ingot,gravitite_ingot,gravitite_ingot]]);
recipes.addShapeless("block_to_gravitite", gravitite_ingot.firstItem*9,
 [gravitite_block]);

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

JEI.removeAndHide(<aether_legacy:gravitite_pickaxe>);
JEI.removeAndHide(<aether_legacy:gravitite_axe>);
JEI.removeAndHide(<aether_legacy:gravitite_shovel>);
JEI.removeAndHide(<aether_legacy:lore_book>);


var egrav = <ore:ingotGravitite>;
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
    [goldcloud, <aether_legacy:swetty_ball>, goldcloud],
    [goldcloud, goldcloud, goldcloud]
]);