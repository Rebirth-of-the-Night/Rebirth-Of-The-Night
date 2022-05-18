#priority 9500

import scripts.shared.utils.arrayUtils.concatString;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.item.IItemStack;

static trees as string[] = ["oak", "spruce", "birch", "jungle", "acacia", "dark_oak"];

static tools as string[] = ["pickaxe", "shovel", "axe", "hoe", "sword"];

static armor as string[] = ["helmet", "chestplate", "leggings", "boots"];

static colors as string[] = ["White", "Orange", "Magenta", "LightBlue", "Yellow", "Lime", "Pink", "Gray", "LightGray", "Cyan", "Purple", "Blue", "Brown", "Green", "Red", "Black"];

static oreDyes as string[] = concatString(["ore:dye"], colors, [""]);

static stoneArray as string[] = concatString(["osv:magma_deposits_undergroundbiomes_"], 
										["metamorphic_stone", "igneous_stone", "sedimentary_stone"], 
										["_1", "_2", "_3", "_4", "_5", "_6", "_7", ""]);