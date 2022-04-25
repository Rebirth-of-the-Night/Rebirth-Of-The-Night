import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.betterwithmods.Crucible;


var IronSand = <betterwithaddons:iron_sand>;
var RedSand = <minecraft:sand:1>;
var Magic = <contenttweaker:volatile_magic>;

//Iron Sand
Crucible.addStoked(
    [
        Magic,
        RedSand * 8
    ],
    [
        IronSand * 2, Magic
    ]
);