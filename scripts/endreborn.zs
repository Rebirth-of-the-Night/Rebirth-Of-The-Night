import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<endreborn:tool_pickaxe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_axe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_hoe_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:tool_shovel_endorium>);
mods.jei.JEI.removeAndHide(<endreborn:block_rune>);

// Anvil Recipes

var test = <endreborn:tool_sword_endorium>.anyDamage().marked("mark");

// Anvil.addRecipe(IIngredient left, IIngredient right, IItemStack output, int cost, @Optional IRecipeFunction function)
mods.rockytweaks.Anvil.addRecipe(<endreborn:tool_sword_endorium>.anyDamage(), <endreborn:item_ingot_endorium>, <endreborn:tool_sword_endorium>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<endreborn:ender_sword>.anyDamage(), <endreborn:item_ingot_endorium>, <endreborn:ender_sword>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<endreborn:tool_magnifier>.anyDamage(), <endreborn:item_ingot_endorium>, <endreborn:tool_magnifier>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<endreborn:entropy_wand>.anyDamage(), <endreborn:item_ingot_endorium>, <endreborn:entropy_wand>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});



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
mods.ltt.LootTable.removeGlobalItem("endreborn:dragon_scales");


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
recipes.removeByRecipeName("endreborn:blocks/cobblestone");
recipes.removeByRecipeName("endreborn:blocks/purpur_block");


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
mods.jei.JEI.removeAndHide(<endreborn:block_wolframium>);
mods.jei.JEI.removeAndHide(<endreborn:block_wolframium_ore>);


var crystal = <endreborn:item_lormyte_crystal>;
var obsidianshard = <endreborn:item_shard_obsidian>;

recipes.addShaped("End Shards", <endreborn:item_end_shard>,[
	[obsidianshard, obsidianshard, obsidianshard],
    [crystal, endorium, crystal],
    [crystal, crystal, crystal]
]);

var smoothendstone = <endreborn:block_end_stone_smooth>;

recipes.addShaped("Being Of Entropy", <endreborn:death_essence>,[
	[smoothendstone, smoothendstone, smoothendstone],
    [smoothendstone, <endreborn:item_end_rune>, smoothendstone],
    [smoothendstone, smoothendstone, smoothendstone]
]);

/*
recipes.remove(<endreborn:item_end_rune>);
recipes.addShaped("End Rune", <endreborn:item_end_rune>,[
	[<endreborn:item_end_shard>, <endreborn:item_end_shard>, <endreborn:item_end_shard>],
    [<endreborn:item_end_shard>, <endreborn:item_advanced_ender_pearl>, <endreborn:item_end_shard>],
    [<endreborn:item_end_shard>, <endreborn:item_end_shard>, <endreborn:item_end_shard>]
]);
*/

recipes.addShaped("String of Life", <endreborn:item_ender_string>,[
	[<endreborn:item_raw_endorium>, <endreborn:item_world_mirror>, <endreborn:item_raw_endorium>],
    [<endreborn:item_angel_feather>, <minecraft:string>, <endreborn:item_angel_feather>],
    [<endreborn:item_lormyte_crystal>, <endreborn:item_lormyte_crystal>, <endreborn:item_lormyte_crystal>]
]);


recipes.remove(<endreborn:tool_sword_endorium>);
recipes.addShaped("Endorium Sword", <endreborn:tool_sword_endorium>,[
    [null, <endreborn:item_ingot_endorium>, null],
    [null, <endreborn:item_ingot_endorium>, null],
    [null, <spartanweaponry:material:0>, null]
]);

