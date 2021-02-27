import crafttweaker.item.IIngredient;
import mods.vanillaanvilrepair.addRepairEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.jei.JEI;
import mods.ltt.LootTable;

JEI.removeAndHide(<endreborn:tool_pickaxe_endorium>);
JEI.removeAndHide(<endreborn:tool_axe_endorium>);
JEI.removeAndHide(<endreborn:tool_hoe_endorium>);
JEI.removeAndHide(<endreborn:tool_shovel_endorium>);
JEI.removeAndHide(<endreborn:tool_hammer_iron>);
JEI.removeAndHide(<endreborn:entropy_user>);
JEI.removeAndHide(<endreborn:item_dragonite_seeds>);
JEI.removeAndHide(<endreborn:item_dragonite_tea>);
JEI.removeAndHide(<endreborn:food_dragonite_berries>);
JEI.removeAndHide(<endreborn:food_chorus_soup>);
JEI.removeAndHide(<endreborn:block_end_forge>);
JEI.removeAndHide(<endreborn:block_rune>);
JEI.removeAndHide(<endreborn:item_world_mirror>);
JEI.removeAndHide(<endreborn:entropy_wand>);
JEI.removeAndHide(<endreborn:broken_ender_flower>);
JEI.removeAndHide(<patchouli:guide_book>.withTag({"patchouli:book": "endreborn:book"}));
recipes.removeByRecipeName("endreborn:book");

<endreborn:sword_shard>.addTooltip("Rare drop from End Guards");

// Anvil Recipes
// Anvil.addRecipe(IIngredient left, IIngredient right, IItemStack output, int cost, @Optional IRecipeFunction function)
var endoriumItems = <endreborn:tool_sword_endorium> | <endreborn:ender_sword> | <endreborn:tool_magnifier>;
mods.vanillaanvilrepair.addRepairEntry(endoriumItems, <endreborn:item_ingot_endorium>);

var obsidianArmor = <endreborn:armour_chestplate_obsidian> | <endreborn:armour_leggings_obsidian> | <endreborn:armour_boots_obsidian> | <endreborn:armour_helmet_helmet>;
mods.vanillaanvilrepair.addRepairEntry(obsidianArmor, <endreborn:item_shard_obsidian>);

JEI.removeAndHide(<endreborn:armour_helmet_dragon>);
JEI.removeAndHide(<endreborn:armour_chestplate_dragon>);
JEI.removeAndHide(<endreborn:armour_leggings_dragon>);
JEI.removeAndHide(<endreborn:armour_boots_dragon>);

LootTable.removeGlobalItem("endreborn:block_wolframium");
LootTable.removeGlobalItem("endreborn:block_wolframium_ore");
LootTable.removeGlobalItem("endreborn:item_ingot_wolframium");
LootTable.removeGlobalItem("endreborn:wolframium_nugget");
LootTable.removeGlobalItem("endreborn:tool_shovel_wolframium");
LootTable.removeGlobalItem("endreborn:tool_pickaxe_wolframium");
LootTable.removeGlobalItem("endreborn:tool_axe_wolframium");
LootTable.removeGlobalItem("endreborn:tool_sword_wolframium");
LootTable.removeGlobalItem("endreborn:tool_hoe_wolframium");
LootTable.removeGlobalItem("endreborn:dragon_scales"); // Re-added in loot.json
LootTable.removeGlobalItem("endreborn:item_angel_feather");
LootTable.removeGlobalItem("endreborn:item_dragonite_seeds");
LootTable.removeGlobalItem("endreborn:item_dragonite_tea");
LootTable.removeGlobalItem("endreborn:food_dragonite_berries");
LootTable.removeGlobalItem("endreborn:entropy_user");


//sledgehammer recipes are in pyrotech_recipes_anvil.zs these are just removals
recipes.removeByRecipeName("endreborn:items/item_lormyte_crystal");
recipes.removeByRecipeName("endreborn:items/glowstone_dust");
recipes.removeByRecipeName("endreborn:items/brick");
recipes.removeByRecipeName("endreborn:items/quartz_block");
recipes.removeByRecipeName("endreborn:items/obsidian shard");
recipes.removeByRecipeName("endreborn:items/prismarine_2");
recipes.removeByRecipeName("endreborn:items/prismarine_2");
recipes.removeByRecipeName("endreborn:items/item_raw_endorium");
recipes.removeByRecipeName("endreborn:items/prismarine");
recipes.removeByRecipeName("endreborn:items/anycobble");
recipes.removeByRecipeName("endreborn:items/netherbrick");
recipes.removeByRecipeName("endreborn:items/catalyst");
recipes.removeByRecipeName("endreborn:items/purpur_block");
recipes.removeByRecipeName("endreborn:items/item_shard_obsidian");
recipes.removeByRecipeName("endreborn:blocks/cobblestone");
recipes.removeByRecipeName("endreborn:blocks/purpur_block");
recipes.removeByRecipeName("endreborn:tools/item_ender_string");
recipes.removeByRecipeName("endreborn:items/food_ender_flesh");


recipes.remove(<endreborn:tool_magnifier>);

RecipeBuilder.get("mage")
  .setShaped([
    [null, <endreborn:item_ingot_endorium>, <ore:ingotGravitite>],
    [null, <minecraft:end_rod>, <dungeontactics:steel_ingot>], 
    [<minecraft:end_rod>, null, null]])
  .addTool(<endreborn:item_end_rune>, 1)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<endreborn:tool_magnifier>)
  .create();


JEI.removeAndHide(<endreborn:item_ingot_wolframium>);
JEI.removeAndHide(<endreborn:wolframium_nugget>);
JEI.removeAndHide(<endreborn:tool_pickaxe_wolframium>);
JEI.removeAndHide(<endreborn:tool_sword_wolframium>);
JEI.removeAndHide(<endreborn:tool_hoe_wolframium>);
JEI.removeAndHide(<endreborn:tool_axe_wolframium>);
JEI.removeAndHide(<endreborn:tool_shovel_wolframium>);
JEI.removeAndHide(<endreborn:block_wolframium>);
JEI.removeAndHide(<endreborn:block_wolframium_ore>);


var crystal = <endreborn:item_lormyte_crystal>;
var obsidianshard = <endreborn:item_shard_obsidian>;

JEI.removeAndHide(<endreborn:e_end_bricks_wall>);
JEI.removeAndHide(<quark:end_bricks_wall>);
JEI.removeAndHide(<quark:end_bricks_stairs>);

var smoothendstone = <endreborn:block_end_stone_smooth>;
var endstone = <minecraft:end_stone>;
var purpur = <minecraft:purpur_block>;

recipes.remove(smoothendstone);
recipes.addShaped("smooth_end_stone", smoothendstone*9, [
    [endstone,endstone,endstone],
    [endstone,endstone,endstone],
    [endstone,endstone,endstone]
]);

recipes.addShaped("xorcite", <endreborn:death_essence>,[
	[<endreborn:item_end_shard>, smoothendstone, <endreborn:item_end_shard>],
    [smoothendstone, <endreborn:item_end_shard>, smoothendstone],
    [<endreborn:item_end_shard>, smoothendstone, <endreborn:item_end_shard>]
]);



recipes.addShaped("String of Life", <endreborn:item_ender_string>,[
	[<endreborn:item_raw_endorium>, <endreborn:death_essence>, <endreborn:item_raw_endorium>],
    [<endreborn:item_angel_feather>, <minecraft:string>, <endreborn:item_angel_feather>],
    [<endreborn:item_lormyte_crystal>, <endreborn:item_lormyte_crystal>, <endreborn:item_lormyte_crystal>]
]);


recipes.remove(<endreborn:tool_sword_endorium>);
recipes.addShaped("Endorium Sword", <endreborn:tool_sword_endorium>,[
    [null, <endreborn:item_ingot_endorium>, null],
    [null, <endreborn:item_ingot_endorium>, null],
    [null, <spartanweaponry:material:0>, null]
]);

recipes.remove(<endreborn:ender_sword>);
recipes.addShaped("Void Sword", <endreborn:ender_sword>,[
    [<endreborn:item_end_essence>, <endreborn:item_ender_string>, <endreborn:item_end_essence>],
    [<endreborn:item_ingot_endorium>, <endreborn:item_end_rune>, <endreborn:item_ingot_endorium>],
    [null, <endreborn:sword_shard>, null]
]);


recipes.remove(<endreborn:block_purpur_lamp>);
recipes.addShaped("Purpur Lamp", <endreborn:block_purpur_lamp>,[
    [<minecraft:purpur_block>, <minecraft:purpur_block>, <minecraft:purpur_block>],
    [<minecraft:glass_pane>, <endreborn:block_end_magma>, <minecraft:glass_pane>],
    [<minecraft:purpur_block>, <minecraft:purpur_block>, <minecraft:purpur_block>]
]);

recipes.remove(<endreborn:ender_bow>);
recipes.addShaped("endorium_bow",<endreborn:ender_bow>,[
    [<minecraft:string>,<ore:stickWood>,null],
    [<minecraft:string>,null,<endreborn:item_ingot_endorium>],
    [<minecraft:string>,<ore:stickWood>,null]
]);

// changes to end rune behavior
recipes.remove(<endreborn:item_end_rune>);
val endrune = <endreborn:item_end_rune>;
endrune.maxStackSize = 1;
endrune.maxDamage = 8;
