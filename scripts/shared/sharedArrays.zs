#priority 9500

import scripts.shared.utils.arrayUtils.concatString;

static trees as string[] = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"];

static tools as string[] = ["pickaxe", "shovel", "axe", "hoe", "sword"];

static colors as string[] = ["White", "Orange", "Magenta", "LightBlue", "Yellow", "Lime", "pink", "Gray", "LightGray", "Cyan", "Purple", "Blue", "Brown", "Green", "Red", "Black"];

static oreDyes as string[] = concatString(["ore:dye"], colors, [""]);