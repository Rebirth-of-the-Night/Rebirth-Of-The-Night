import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<endreborn:tool_pickaxe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_axe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_hoe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_shovel_endorium>);

// Anvil Recipes

var test = <endreborn:tool_sword_endorium>.anyDamage().marked("mark");

// addRecipe(IItemstack input1, IItemstack input2, IItemstack output, int exp-cost);
// mods.rockytweaks.Anvil.addRecipe(<endreborn:tool_sword_endorium>.anyDamage().marked("mark"), <endreborn:item_ingot_endorium>, mark.damage + 10, 5);




recipes.remove(<endreborn:item_shard_obsidian>);
mods.jei.JEI.removeAndHide(<endreborn:armour_helmet_dragon>);
mods.jei.JEI.removeAndHide(<endreborn:armour_chestplate_dragon>);
mods.jei.JEI.removeAndHide(<endreborn:armour_leggings_dragon>);
mods.jei.JEI.removeAndHide(<endreborn:armour_boots_dragon>);

mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_endreborn_block_wolframium_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_endreborn_block_wolframium_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_endreborn_block_wolframium_ore:*>);

mods.ltt.LootTable.removeGlobalItem("endreborn:block_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:block_wolframium_ore");
mods.ltt.LootTable.removeGlobalItem("endreborn:item_ingot_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:tool_shovel_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:tool_pickaxe_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:tool_axe_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:tool_sword_wolframium");
mods.ltt.LootTable.removeGlobalItem("endreborn:tool_hoe_wolframium");


var obsidian = <minecraft:obsidian>;
var hammer = <endreborn:tool_hammer_iron>;

recipes.addShapeless("Obsidian Shard", <endreborn:item_shard_obsidian>, [hammer.anyDamage(),obsidian]);



recipes.remove(<endreborn:tool_magnifier>);

var stick = <minecraft:stick>;
var endorium = <endreborn:item_ingot_endorium>;
var essence = <endreborn:item_end_essence>;

recipes.addShaped("Magnitifus", <endreborn:tool_magnifier>,[
	[null, endorium, essence],
    [null, stick, endorium],
    [stick, null, null]
]);



mods.jei.JEI.removeAndHide(<endreborn:item_ingot_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_pickaxe_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_sword_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_hoe_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_axe_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_shovel_wolframium>);
