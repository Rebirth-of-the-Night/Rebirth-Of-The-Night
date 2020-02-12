import crafttweaker.item.IIngredient;

recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

recipes.addShaped("Table Upgrade", <eplus:table_upgrade>,[
	[<minecraft:gold_block>, <minecraft:writable_book>, <minecraft:gold_block>],
    [<minecraft:obsidian>, <simpleores:mythril_ingot>, <minecraft:obsidian>],
    [<minecraft:gold_block>, <minecraft:ender_eye>, <minecraft:gold_block>]
]);



# Test