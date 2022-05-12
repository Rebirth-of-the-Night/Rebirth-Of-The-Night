#priority 9999

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import mods.betterwithmods.Anvil;
import mods.jei.JEI;

import scripts.shared.utils.arrayUtils.concatString;

//	GENERAL STUFF
//	things that fuck with pretty much any recipes/items go here

	// gets an itemstack array based on a string and a range of numbers
	// example: metaArray("minecraft:dye", 0, 5) would get an array of dyes with meta 0 through 5
function metaArray(item as string, min as int = 0, max as int = 15) as IItemStack[] {
	var a = [] as IItemStack[];
	
	for i in min to max + 1 {
		var it = itemUtils.getItem(item, i);
		if (isNull(it)) break;
		a += it;
	}
	
	return a;
}

function conMeta(a as string[], b as string[], c as string[], min as int = 0, max as int = 15) as IItemStack[] {
	var ar = concatString(a, b, c) as string[];
	var new = [] as IItemStack[];
	
	for h in ar {
		var m = metaArray(h, min, max);
		for i in m {
			print(i.name);
			new += i;
		}
	}
	
	return new;
}

	// removes and hides a whole array. setting "hide" to false means that it only removes, and doesn't also hide
function removeRecipeArray(array as IItemStack[], hide as bool = true) {
	if (hide) {
		for i in 0 to array.length {
			JEI.removeAndHide(array[i]);
		}
	} else {
		for i in 0 to array.length {
			recipes.remove(array[i]);
		}
	}
}

function removeRecipeNameArray(array as string[]) {
	for i in 0 to array.length {
		recipes.removeByRecipeName(array[i]);
	}
}

	// removes and hides all items found via regex. setting "hide" to false means that it only removes, and doesn't also hide
function removeRecipeArrayRegex(regex as string, hide as bool = true) {
	var array = itemUtils.getItemsByRegexRegistryName(regex);
	removeRecipeArray(array, hide);
}

	// makes an array filled with the same item over and over and over again, can be whatever length you want. this one is for itemstacks
function uniformArrayIS(item as IItemStack, length as int) as IItemStack[] {
	var array = [] as IItemStack[];
	
	for i in 0 to length {
		array += item;
	}
	
	return array;
}

	// this one is for oredict entries
function uniformArrayOD(oreDict as IOreDictEntry, length as int) as IOreDictEntry[] {
	var array = [] as IOreDictEntry[];
	
	for i in 0 to length {
		array += oreDict;
	}
	
	return array;
}

// SPECIFIC STUFF

function removeAnvilRecipes(array as IItemStack[]) {
	for i in 0 to array.length {
		Anvil.removeShaped(array[i]);
	}
}