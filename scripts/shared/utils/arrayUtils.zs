#priority 9998

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import scripts.shared.private.Combination;

// functions for dealing with arrays, for both in and outside of recipes. most of these deal with string arrays

	// joins together two string arrays
function joinStrArrays(array1 as string[], array2 as string[]) as string[] {
	var newArray = array1 as string[];
	for i in 0 to array2.length {
		newArray += array2[i];
	}
	return newArray;
}

function joinISArrays(array1 as IItemStack[], array2 as IItemStack[]) as IItemStack[] {
	var newArray = array1 as IItemStack[];
	for i in 0 to array2.length {
		newArray += array2[i];
	}
	return newArray;
}

	// trims a string array
function trimStrArray(array as string, start as int, end as int) as string[] {
	var newArray = [] as string[];
	for i in start to end {
		newArray += array[i];
	}
	return newArray;
}

	// these functions take a string (or two) and adds it onto each member of an array, spitting back out an array of either oredict entries or itemstacks.
	// this way i (and you, if i let others use this) don't have to manually modify each and every entry of similarly named items.
	// it used to be a lot longer in terms of code, but i realized that arrays could be passed instead of strings and it'd work just fine. not only that,
	// but as it turns out, recursion is fantastic for this sort of thing (despite how much i hate it)
	
	//
	// this is how it'd look in usage. "array" is, obviously, an array that got declared beforehand. note: you can have as many arrays as you want!
	// for adding a prefix:
	// concatOD([["stuff"], array]);
	//
	// note: unless you're just passing one or two values to a parameter, then i HIGHLY suggest declaring your arrays as variables outside of this function.
	// this centralizes the values, meaning that it's much easier to go back and change things if you have to. it'll also make it way easier for anyone who
	// wants to make a spinoff.

	// this one returns an IOreDictEntry array
function concatOD(ar as string[][]) as IOreDictEntry[] {
	var str = Combination().concat(ar) as string[];
	var od = [] as IOreDictEntry[];
	
	for i in 0 to str.length {
		od += oreDict.get(str[i]);
	}
	
	return od;
}

	// this one returns an IItemStack array
function concatIS(ar as string[][]) as IItemStack[] {
	var str = Combination().concat(ar) as string[];
	var it = [] as IItemStack[];
	
	for i in 0 to str.length {
		it += itemUtils.getItem(str[i]);
	}
	
	return it;
}

	// just returns the raw strings. i'd rather have this instead of calling the concatenator directly for consistency sake
function concatString(ar as string[][]) as string[] {
	return Combination().concat(ar);
}