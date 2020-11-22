import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("caves_and_cliffs");
<caves_and_cliffs:copper_ore>.displayName = "Wonder Geode";

recipes.addShapeless ("moss_block", <caves_and_cliffs:moss>, [<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>,<pyrotech:rock_grass>|<contenttweaker:moss_patch>]);