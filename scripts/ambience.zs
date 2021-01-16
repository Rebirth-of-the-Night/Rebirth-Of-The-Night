import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<ambience:soundnizer>);
JEI.removeAndHide(<ambience:songswitcher>);
JEI.removeAndHide(<ambience:speaker>);
JEI.removeAndHide(<ambience:alarm_white>);
JEI.removeAndHide(<ambience:alarm_red>);
JEI.removeAndHide(<ambience:alarm_orange>);
JEI.removeAndHide(<ambience:alarm_yellow>);
JEI.removeAndHide(<ambience:alarm_lime>);
JEI.removeAndHide(<ambience:alarm_green>);
JEI.removeAndHide(<ambience:alarm_lightblue>);
JEI.removeAndHide(<ambience:alarm_cyan>);
JEI.removeAndHide(<ambience:alarm_blue>);
JEI.removeAndHide(<ambience:alarm_purple>);
JEI.removeAndHide(<ambience:alarm_magenta>);
JEI.removeAndHide(<ambience:alarm_pink>);
JEI.removeAndHide(<ambience:alarm_brown>);
JEI.removeAndHide(<ambience:bell>);
JEI.removeAndHide(<ambience:songswitcher_lit>);

val alarmColors as string[] = [
    "white",
    "red",
    "orange",
    "yellow",
    "lime",
    "green",
    "lightblue",
    "cyan",
    "blue",
    "purple",
    "magenta",
    "pink",
    "brown"
] as string[];

val alarmStates as string[] = [ "", "lit_" ] as string[];

for color in alarmColors {
    for state in alarmStates {
        JEI.removeAndHide(itemUtils.getItem("ambience:alarm_"~state~color));
    }
}

// add as loot
// unique boss drop?
recipes.remove(<ambience:horn>);
// LootTable.removeGlobalItem("ambience:horn");


