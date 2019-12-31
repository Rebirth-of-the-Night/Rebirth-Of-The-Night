import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;



//Remove Iron to Dragon Steel
mods.iceandfire.recipes.removeFireDragonForgeRecipe(<iceandfire:dragonsteel_fire_ingot>);
mods.iceandfire.recipes.removeIceDragonForgeRecipe(<iceandfire:dragonsteel_ice_ingot>);


//Steelier steel
mods.iceandfire.recipes.addFireDragonForgeRecipe
	(<dungeontactics:steel_ingot>,<iceandfire:fire_dragon_blood>,<iceandfire:dragonsteel_fire_ingot>); 
mods.iceandfire.recipes.addIceDragonForgeRecipe
	(<dungeontactics:steel_ingot>,<iceandfire:ice_dragon_blood>,<iceandfire:dragonsteel_ice_ingot>);
	
//golden apple
mods.iceandfire.recipes.addFireDragonForgeRecipe(<minecraft:apple>, <minecraft:milk_bucket>, <minecraft:golden_apple>);