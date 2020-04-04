import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.jei.JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:return_normal"}));
mods.jei.JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:return_normal"}));

mods.jei.JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
mods.jei.JEI.removeAndHide(<minecraft:potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
mods.jei.JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));

mods.jei.JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:night_vision"}));

mods.jei.JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:fire_resistance"}));

mods.jei.JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_normal"}));

mods.jei.JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_strong"}));

recipes.remove(<extraalchemy:empty_ring>);

recipes.addShaped("Potion Ring Base", <extraalchemy:empty_ring>, [
[null, <dungeontactics:magic_powder>, null],
[null, <minecraft:glass_bottle>, null], 
[null, <qualitytools:emerald_ring>, null]]);