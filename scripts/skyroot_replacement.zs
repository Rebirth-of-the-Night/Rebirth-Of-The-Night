import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;

// Temp file for skyroot sorting out
var hiddenItems as string[] = [ ] as string[];

var hiddenItemsSpartan as string[] = [
    "handle",
    "pole",
    "dagger",
    "longsword",
    "halberd",
    "saber",
    "rapier",
    "greatsword",
    "hammer",
    "warhammer",
    "spear",
    "pike",
    "katana",
    "lance",
    "longbow",
    "crossbow",
    "throwing_knife",
    "throwing_axe",
    "javelin",
    "boomerang",
    "battleaxe",
    "mace",
    "glaive",
    "staff"
] as string[];

for s in hiddenItemsSpartan {
    hiddenItems += "spartancompat:"~s~"_skyroot";
}

var hiddenItemsAether as string[] = [
    "sword",
    "pickaxe",
    "axe",
    "shovel"
] as string[];

for s in hiddenItemsAether {
    hiddenItems += "aether_legacy:skyroot_"~s;
}

for item in hiddenItems {
    JEI.removeAndHide(itemUtils.getItem(item));
    LootTable.removeGlobalItem(item);
}
