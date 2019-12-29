import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<simpleores:copper_bucket>);


recipes.remove(<simpleores:onyx_bow>);
recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:mythril_bow>);
recipes.remove(<simpleores:mythril_sword>);

recipes.remove(<simpleores:mythril_sword>);
recipes.remove(<simpleores:mythril_pickaxe>);
recipes.remove(<simpleores:mythril_axe>);
recipes.remove(<simpleores:mythril_shovel>);
recipes.remove(<simpleores:mythril_hoe>);

recipes.remove(<simpleores:adamantium_sword>);
recipes.remove(<simpleores:adamantium_pickaxe>);
recipes.remove(<simpleores:adamantium_axe>);
recipes.remove(<simpleores:adamantium_shovel>);
recipes.remove(<simpleores:adamantium_hoe>);

recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:onyx_pickaxe>);
recipes.remove(<simpleores:onyx_axe>);
recipes.remove(<simpleores:onyx_shovel>);
recipes.remove(<simpleores:onyx_hoe>);


var x = <simpleores:onyx_rod>;
var y = <minecraft:string>;
var z = <simpleores:mythril_rod>;
var v = <minecraft:nether_star>;

var diamond = <minecraft:diamond>;
var bow = <simpleores:mythril_bow>;
var gem = <simpleores:onyx_gem>;
var mythril = <simpleores:mythril_ingot>;
var adam = <simpleores:adamantium_ingot>;


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
recipes.addShaped("Mythril Pickaxe", <simpleores:mythril_pickaxe>,[
    [mythril, mythril, mythril],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Mythril Axe", <simpleores:mythril_axe>,[
    [mythril, mythril, null],
    [mythril, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Mythril Shovel", <simpleores:mythril_shovel>,[
    [null, mythril, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Mythril Hoe", <simpleores:mythril_hoe>,[
    [mythril, mythril, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);

recipes.addShaped("Onyx Sword", <simpleores:onyx_sword>,[
	[null, x, null],
    [gem, x, gem],
    [null, blazerod, null]
]);
recipes.addShaped("Onyx Pickaxe", <simpleores:onyx_pickaxe>,[
    [gem, gem, gem],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Onyx Axe", <simpleores:onyx_axe>,[
    [gem, gem, null],
    [gem, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Onyx Shovel", <simpleores:onyx_shovel>,[
    [null, gem, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Onyx Hoe", <simpleores:onyx_hoe>,[
    [gem, gem, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);


recipes.addShaped("Adamantium Sword", <simpleores:adamantium_sword>,[
    [null, adam, null],
    [null, adam, null],
    [adam, blazerod, null]
]);
recipes.addShaped("Adamantium Pickaxe", <simpleores:adamantium_pickaxe>,[
    [adam, adam, adam],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Adamantium Axe", <simpleores:adamantium_axe>,[
    [adam, adam, null],
    [adam, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Adamantium Shovel", <simpleores:adamantium_shovel>,[
    [null, adam, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);
recipes.addShaped("Adamantium Hoe", <simpleores:adamantium_hoe>,[
    [adam, adam, null],
    [null, blazerod, null],
    [null, blazerod, null]
]);