import crafttweaker.item.IIngredient;


recipes.remove(<endreborn:item_shard_obsidian>);

mods.ltt.LootTable.removeGlobalItem("item_ingot_wolframium");


var obsidian = <minecraft:obsidian>;
var hammer = <endreborn:tool_hammer_iron>;

recipes.addShaped("Obsidian Shard", <endreborn:item_shard_obsidian>,[
	[null, null, null],
    [null, null, null],
    [obsidian, hammer, null]
]);




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
