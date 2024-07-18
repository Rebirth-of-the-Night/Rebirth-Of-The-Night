#reloadable
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.futuremc.Stonecutter;

recipes.removeByMod("cathedral");

var dulcetbrass = <ore:ingotDulcetBrass>;
var dulcetbrassNugg = <ore:nuggetDulcetBrass>;
var bleakseal = <railcraft:frostbound:2>;
var basalt = <chisel:basalt2:7>;

//Bleakseal and Brass
recipes.addShaped("bleakseal_railing",<cathedral:cathedral_railing_various:3>*8,[
    [bleakseal,bleakseal,bleakseal],
    [bleakseal,bleakseal,bleakseal]
]);

recipes.addShaped("bleakseal_pillar",<cathedral:cathedral_pillar_various:3>*4,[
    [bleakseal],
    [<ore:ingotBrass>],
    [bleakseal]
]);

recipes.addShaped("brass_railing",<cathedral:cathedral_railing_various:6>*8,[
    [<contenttweaker:brass_plate>,<contenttweaker:brass_plate>,<contenttweaker:brass_plate>],
    [<contenttweaker:brass_plate>,<contenttweaker:brass_plate>,<contenttweaker:brass_plate>]
]);

recipes.addShaped("brass_chain",<cathedral:cathedral_chain_various:1>*12,[
    [<ore:ingotBrass>],
    [<ore:ingotBrass>],
    [<ore:ingotBrass>]
]);

recipes.addShaped("brass_bars",<chisel:ironpane:7>*16,[
    [<ore:ingotBrass>,<ore:ingotBrass>,<ore:ingotBrass>],
    [<ore:ingotBrass>,<ore:ingotBrass>,<ore:ingotBrass>]
]);

//Dulcet Brass and Basalt

recipes.addShaped("dulcet_brass_railing",<cathedral:cathedral_railing_various:12>*8,[
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>],
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>]
]);

recipes.addShaped("dwarven_pillar",<cathedral:cathedral_pillar_various:12>*4,[
    [basalt],
    [dulcetbrass],
    [basalt]
]);

recipes.addShaped("basalt_pillar",<cathedral:cathedral_pillar_various:11>*4,[
    [basalt],
    [basalt],
    [basalt]
]);

recipes.addShaped("basalt_railing",<cathedral:cathedral_railing_various:11>*8,[
    [basalt,basalt,basalt],
    [basalt,basalt,basalt]
]);

recipes.addShaped("dulcet_brass_chain",<cathedral:cathedral_chain_various:2>*12,[
    [dulcetbrass],
    [dulcetbrass],
    [dulcetbrass]
]);

recipes.addShaped("dulcet_brass_embedded_plate",<cathedral:dwemer_block_carved>*8,[
    [basalt,basalt,basalt],
    [basalt,dulcetbrass,basalt],
    [basalt,basalt,basalt]
]);

recipes.addShaped("dulcet_brass_bars",<cathedral:dwemer_bars_normal>*16,[
    [dulcetbrass,dulcetbrass,dulcetbrass],
    [dulcetbrass,dulcetbrass,dulcetbrass]
]);

recipes.addShaped("dulcet_brass_plate",<cathedral:dwemer_block_carved:11>*24,[
    [dulcetbrass,dulcetbrass,dulcetbrass],
    [dulcetbrass,<minetraps:nails>,dulcetbrass],
    [dulcetbrass,dulcetbrass,dulcetbrass]
]);

recipes.addShaped("dulcet_brass_door",<cathedral:dwemer_door_normal>,[
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>],
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>]
]);

recipes.addShaped("tall_dulcet_brass_door",<cathedral:dwemer_door_tall>,[
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>],
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>],
    [<cathedral:dwemer_block_carved:11>,<cathedral:dwemer_block_carved:11>]
]);

//Stonecutter Recipes

Stonecutter.addOutputs(<cathedral:dwemer_block_carved>,
							<cathedral:dwemer_block_carved:1>,
							<cathedral:dwemer_block_carved:2>,
                            <cathedral:dwemer_block_carved:5>,
                            <cathedral:dwemer_block_carved:6>,
                            <cathedral:dwemer_block_carved:7>,
                            <cathedral:dwemer_block_carved:8>,
                            <cathedral:dwemer_block_carved:9>,
                            <cathedral:dwemer_block_carved:10>,
                            <cathedral:dwemer_block_carved:12>);

Stonecutter.addOutputs(<cathedral:dwemer_block_carved:11>,
							<cathedral:dwemer_block_carved:3>,
							<cathedral:dwemer_block_carved:4>,
                            <cathedral:dwemer_glass_normal>,
                            <cathedral:dwemer_glass_normal:1>);

Stonecutter.addOutputs(<cathedral:dwemer_bars_normal>,
							<cathedral:dwemer_bars_normal:1>,
							<cathedral:dwemer_bars_normal:2>,
                            <cathedral:dwemer_bars_normal:3>,
                            <cathedral:dwemer_bars_normal:4>,
                            <cathedral:dwemer_bars_normal:5>);

