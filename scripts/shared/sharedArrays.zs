import scripts.shared.utils.recipeUtils.concatString;

static trees as string[] = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"];

static tools as string[] = ["pickaxe", "shovel", "sword", "axe", "hoe"];

static colors as string[] = ["White", "Orange", "Magenta", "LightBlue", "Yellow", "Lime", "pink", "Gray", "LightGray", "Cyan", "Purple", "Blue", "Brown", "Green", "Red", "Black"];

static oreDyes as string[] = concatString(["ore:dye"], colors, [""]);