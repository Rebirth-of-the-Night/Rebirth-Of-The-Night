import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.remove(<simpleores:onyx_bow>);
recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:mythril_bow>);
recipes.remove(<simpleores:mythril_sword>);


var x = <simpleores:onyx_rod>;
var y = <minecraft:string>;
var z = <simpleores:mythril_rod>;
var v = <minecraft:nether_star>;

var diamond = <minecraft:diamond>;
var bow = <simpleores:mythril_bow>;
var gem = <simpleores:onyx_gem>;
var mythril = <simpleores:mythril_ingot>;


var blazerod = <minecraft:blaze_rod>;


recipes.addShaped("Oynx Bow", <simpleores:onyx_bow>,[
	[gem, gem, gem],
    [diamond, bow, gem],
    [gem, gem, gem]
]);


recipes.addShaped("Mythril Bow", <simpleores:mythril_bow>,[
	[null, z, y],
    [v, null, y],
    [null, z, y]
]);


recipes.addShaped("Mythril Sword", <simpleores:mythril_sword>,[
	[null, z, null],
    [mythril, z, mythril],
    [null, blazerod, null]
]);

recipes.addShaped("Onyx Sword", <simpleores:onyx_sword>,[
	[null, gem, null],
    [null, gem, null],
    [null, blazerod, null]
]);


