import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;

JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:return_normal"}));
JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:return_normal"}));

JEI.removeAndHide(<minecraft:lingering_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
JEI.removeAndHide(<minecraft:potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));
JEI.removeAndHide(<minecraft:splash_potion>.withTag({Potion: "extraalchemy:cheat_death_normal"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:night_vision"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "minecraft:fire_resistance"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_normal"}));

JEI.removeAndHide(<extraalchemy:potion_ring>.withTag({Potion: "extraalchemy:leech_strong"}));

recipes.remove(<extraalchemy:empty_ring>);

recipes.removeByRecipeName("extraalchemy:minecraft_strong_regeneration");
recipes.removeByRecipeName("extraalchemy:minecraft_regeneration");

brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}), <minecraft:speckled_melon>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:harming"}), <minecraft:gunpowder>);

//Empty Potion Ring
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>],
    [<minecraft:glass_bottle>],
    [<ore:inertRing>]])
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<extraalchemy:empty_ring>)
  .create();