import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;

// Recipe for Tier 2 Mage worktable
recipes.addShaped(<artisanworktables:workstation:7>, [[<minecraft:dye:4>, <minecraft:carpet:11>, <minecraft:dye:4>],[<contenttweaker:vis_speck>, <minecraft:crafting_table>, <contenttweaker:vis_speck>], [<ore:stoneSlab>, <ore:stone>, <ore:stoneSlab>]]);

// Quill (One quill fits all! Using 'gold' since it has the lowest durability)
recipes.remove(<artisanworktables:artisans_quill_gold>);
recipes.addShapeless(<artisanworktables:artisans_quill_gold>, [<ore:feather>,<ore:nuggetGold>,<ore:dye>,<minecraft:glass_bottle>]);

// Gemcutter - removed for now because AA gem cutter table doesnt work with tools with durability?
//recipes.remove(<artisanworktables:artisans_gemcutter_gold>);
//recipes.addShapeless(<artisanworktables:artisans_gemcutter_gold>, [<arcanearchives:shaped_quartz>,<betterwithmods:material:3>,<spartanweaponry:material>]);
