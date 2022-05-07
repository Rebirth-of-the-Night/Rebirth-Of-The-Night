import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
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

	// trims a string array
function trimArray(array as string, start as int, end as int) as string[] {
	var newArray = [] as string[];

	for i in start to end {
		newArray += array[i];
	}
	
	return newArray;
}

	// removes and hides a whole array
function removeAndHideArray(array as IItemStack[]) {
	for i in 0 to array.length {
		JEI.removeAndHide(array[i]);
	}
}
	
	// these functions take a string (or two) and adds it onto each member of an array, spitting back out an array of either oredict entries of itemstacks. 
	// this way i (and you, if i let others use this) don't have to manually modify each and every entry of similarly named items.
	// it used to be a lot longer in terms of code, but i realized that arrays could be passed instead of strings and it'd work just fine :)
	// in fact, it's more flexible now - it can concatenate multiple arrays of strings!
	
	// the way it works is that you input three arrays; depending on how it's all arranged, you can add prefixes, suffixes, or both! not only that.
	// but if you wanna only do this to some parts of an array, then you can!
	//
	// this is how it'd look in usage. "array" is, obviously, an array that got declared beforehand. note that you don't HAVE to abide by these, 
	// but imo it's much more readable if you do
	// for adding a prefix:
	// concatOD(["stuff"], array, [""]);
	//
	// for adding a suffix:
	// concatOD([""], array, ["stuff"]);
	//
	// for both:
	// concatOD(["stuff"], array, ["moreStuff"]);
	//
	// for just adding two arrays together:
	// concatOD(array1, array2, [""]);
	//
	// if you wanna only do some parts of an array for whatever reason, then you can do that.
	// example:
	// concatOD(["stuff"], trimArray(array, 2, 7), [""]);
	// this makes it so that only entires 2 through 7 in the array are passed
	//
	// note: unless you're just passing one or two values to a parameter, then i HIGHLY suggest declaring your arrays as variables outside of this function.
	// this centralizes the values, meaning that it's much easier to go back and change things if you have to. it'll also make it way easier for anyone who
	// wants to make a spinoff.

	// this one returns an IOreDictEntry array
function concatOD(concArray1 as string[], concArray2 as string[], concArray3 as string[]) as IOreDictEntry[] {
	var stringArray = concatenator(concArray1, concArray2, concArray3) as string[];
	var oreArray = [] as IOreDictEntry[];
	
	for i in 0 to stringArray.length {
		oreArray += oreDict.get(stringArray[i]);
	}
	
	return oreArray;
}

	// this one returns an IItemStack array
function concatIS(concArray1 as string[], concArray2 as string[], concArray3 as string[]) as IItemStack[] {
	var stringArray = concatenator(concArray1, concArray2, concArray3) as string[];
	var itemArray = [] as IItemStack[];
	
	for i in 0 to stringArray.length {
		itemArray += itemUtils.getItem(stringArray[i]);
	}
	
	return itemArray;
}

	// just returns the raw strings. i'd rather have this instead of calling concatenator directly for consistency sake
function concatString(concArray1 as string[], concArray2 as string[], concArray3 as string[]) as string[] {
	return concatenator(concArray1, concArray2, concArray3);
}
	
	// does the actual concatenation, i'd make it private if i could. don't use it outside of this file god dammit!
function concatenator(concArray1 as string[], concArray2 as string[], concArray3 as string[]) as string[] {
	var stringArray = [] as string[];
	var ca1Length = 0;
	var ca2Length = concArray2.length;
	var ca3Length = 0;
	
	if (concArray1[0] != "") {
		ca1Length = concArray1.length;
	}
	
	if (concArray3[0] != "") {
		ca3Length = concArray3.length;
	}
	
	for h in 0 to ca3Length {
		for k in 0 to ca1Length {
			for i in 0 to ca2Length {
				stringArray += concArray1[k] + concArray2[i] + concArray3[h];
			}
		}
	}
	
	return stringArray;
}
