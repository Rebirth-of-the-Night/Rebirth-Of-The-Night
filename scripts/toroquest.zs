import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

// dupe bug with corpse complex
JEI.removeAndHide(<toroquest:ender_idol>);

val removedScrolls as string[] = [
    "earth",
    "water",
    "moon",
    "fire",
    "null",
    "wind",
    "sun"
] as string[];

for scroll in removedScrolls {
    JEI.removeAndHide(itemUtils.getItem("toroquest:scroll_"~scroll));
}
