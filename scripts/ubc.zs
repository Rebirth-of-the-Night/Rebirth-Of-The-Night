import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.block.IBlockDefinition;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByRecipeName("undergroundbiomes:vanilla_button");
recipes.removeByRecipeName("undergroundbiomes:vanilla_sandstone");

// Remove charbiotite
JEI.removeAndHide(<undergroundbiomes:lignite_coal>);

val anySandstone as IIngredient = <undergroundbiomes:igneous_sandstone:*>|<undergroundbiomes:metamorphic_sandstone:*>|<undergroundbiomes:sedimentary_sandstone:*> as IIngredient;

RecipeBuilder.get("mage")
  .setName("ubc_sandstone_to_sandstone")
  .setShaped([
    [anySandstone,anySandstone,anySandstone],
    [anySandstone,<contenttweaker:vis_speck>,anySandstone],
    [anySandstone,anySandstone,anySandstone]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<minecraft:sandstone>*9)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

recipes.removeByRecipeName("undergroundbiomes:bone_fossil_bone_meal");
recipes.addShapeless("bone_fossil_to_bone_meal", <minecraft:dye:15>*2, [<undergroundbiomes:fossil_piece:0>|<undergroundbiomes:fossil_piece:1>|<undergroundbiomes:fossil_piece:2>|<undergroundbiomes:fossil_piece:3>|<undergroundbiomes:fossil_piece:4>|<undergroundbiomes:fossil_piece:5>|<undergroundbiomes:fossil_piece:6>|<undergroundbiomes:fossil_piece:7>]);

// rocks to buttons
recipes.remove(<minecraft:stone_button>);
recipes.addShapeless("stone_button",<minecraft:stone_button>, [<pyrotech:rock>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:5>);
recipes.addShapeless("basalt_button",<undergroundbiomes:igneous_stone_button:5>, [<pyrotech_compat:rock_igneous:5>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:4>);
recipes.addShapeless("gabbro_button",<undergroundbiomes:igneous_stone_button:4>, [<pyrotech_compat:rock_igneous:4>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:1>);
recipes.addShapeless("black_granite_button",<undergroundbiomes:igneous_stone_button:1>, [<pyrotech_compat:rock_igneous:1>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:2>);
recipes.addShapeless("rhyolite_button",<undergroundbiomes:igneous_stone_button:2>, [<pyrotech_compat:rock_igneous:2>]);

recipes.remove(<undergroundbiomes:igneous_stone_button>);
recipes.addShapeless("red_granite_button",<undergroundbiomes:igneous_stone_button>, [<pyrotech_compat:rock_igneous>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:7>);
recipes.addShapeless("dacite_button",<undergroundbiomes:igneous_stone_button:7>, [<pyrotech_compat:rock_igneous:7>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:6>);
recipes.addShapeless("komatiite_button",<undergroundbiomes:igneous_stone_button:6>, [<pyrotech_compat:rock_igneous:6>]);

recipes.remove(<undergroundbiomes:igneous_stone_button:3>);
recipes.addShapeless("andesite_button",<undergroundbiomes:igneous_stone_button:3>, [<pyrotech_compat:rock_igneous:3>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:7>);
recipes.addShapeless("migmatite_button",<undergroundbiomes:metamorphic_stone_button:7>, [<pyrotech_compat:rock_metamorphic:7>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:6>);
recipes.addShapeless("soapstone_button",<undergroundbiomes:metamorphic_stone_button:6>, [<pyrotech_compat:rock_metamorphic:6>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:3>);
recipes.addShapeless("quartzite_button",<undergroundbiomes:metamorphic_stone_button:3>, [<pyrotech_compat:rock_metamorphic:3>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:5>);
recipes.addShapeless("green_schist_button",<undergroundbiomes:metamorphic_stone_button:5>, [<pyrotech_compat:rock_metamorphic:5>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:4>);
recipes.addShapeless("blue_schist_button",<undergroundbiomes:metamorphic_stone_button:4>, [<pyrotech_compat:rock_metamorphic:4>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:1>);
recipes.addShapeless("eclogite_button",<undergroundbiomes:metamorphic_stone_button:1>, [<pyrotech_compat:rock_metamorphic:1>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button>);
recipes.addShapeless("gneiss_button",<undergroundbiomes:metamorphic_stone_button>, [<pyrotech_compat:rock_metamorphic>]);

recipes.remove(<undergroundbiomes:metamorphic_stone_button:2>);
recipes.addShapeless("marble_button",<undergroundbiomes:metamorphic_stone_button:2>, [<pyrotech_compat:rock_metamorphic:2>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:2>);
recipes.addShapeless("shale_button",<undergroundbiomes:sedimentary_stone_button:2>, [<pyrotech_compat:rock_sedimentary:1>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button>);
recipes.addShapeless("limestone_button",<undergroundbiomes:sedimentary_stone_button>, [<pyrotech:rock:8>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:1>);
recipes.addShapeless("chalk_button",<undergroundbiomes:sedimentary_stone_button:1>, [<pyrotech_compat:rock_sedimentary>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:4>);
recipes.addShapeless("lignite_button",<undergroundbiomes:sedimentary_stone_button:4>, [<pyrotech_compat:rock_igneous_sand:9>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:5>);
recipes.addShapeless("dolomite_button",<undergroundbiomes:sedimentary_stone_button:5>, [<pyrotech_compat:rock_sedimentary:3>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:7>);
recipes.addShapeless("chert_button",<undergroundbiomes:sedimentary_stone_button:7>, [<pyrotech_compat:rock_sedimentary:5>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:6>);
recipes.addShapeless("greywacke_button",<undergroundbiomes:sedimentary_stone_button:6>, [<pyrotech_compat:rock_sedimentary:4>]);

recipes.remove(<undergroundbiomes:sedimentary_stone_button:3>);
recipes.addShapeless("siltstone_button",<undergroundbiomes:sedimentary_stone_button:3>, [<pyrotech_compat:rock_sedimentary:2>]);


