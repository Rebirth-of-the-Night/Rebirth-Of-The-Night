import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import mods.betterwithmods.Anvil;
import mods.jei.JEI;

	// gets an itemstack array based on a string and a range of numbers
	// example: metaArray("minecraft:dye", 0, 5) would get an array of dyes with meta 0 through 5
function metaArray(item as string, metaMin as int, metaMax as int) as IItemStack[] {
	var array = [] as IItemStack[];

	for i in metaMin to metaMax {
		array += itemUtils.getItem(item, i);
	}
	
	return array;
}

	// removes and hides a whole array
function removeAndHideArray(array as IItemStack[]) {
	for i in 0 to array.length {
		JEI.removeAndHide(array[i]);
	}
}

function removeAnvilRecipes(array as IItemStack[]) {
	for i in 0 to array.length {
		Anvil.removeShaped(array[i]);
	}
}