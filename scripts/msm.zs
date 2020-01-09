import crafttweaker.item.IIngredient;

mods.jei.JEI.removeAndHide(<msmlegacy:wither_bane>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_candy>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_infinity>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_keyblade>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_master>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_molten>);
mods.jei.JEI.removeAndHide(<msmlegacy:relic_pie>);


var silver = <dungeontactics:silver_ingot>;
var obsidian = <minecraft:obsidian>;
var heartcrystal = <scalinghealth:crystalshard>;
var handle = <spartanweaponry:material:0>;

recipes.remove(<msmlegacy:vampiric_blade>);
recipes.addShaped("Vampiric Blade", <msmlegacy:vampiric_blade>,[
	[null, silver, heartcrystal],
    [obsidian, heartcrystal, silver],
    [handle, obsidian, null]
]);

var iron = <minecraft:iron_ingot>;
var redstone = <minecraft:redstone>;
var diamond = <minecraft:diamond>;
var lapis = <minecraft:dye:4>;

recipes.remove(<msmlegacy:draconic_blade>);
recipes.addShaped("Draconic Blade", <msmlegacy:draconic_blade>,[
	[null, iron, redstone],
    [lapis, diamond, iron],
    [handle, lapis, null]
]);



var ruby = <biomesoplenty:gem:1>;
var chili = <harvestcraft:chilipepperitem>;
var blaze = <betterwithmods:material:27>;

recipes.remove(<msmlegacy:relic_aqueous>);
recipes.addShaped("Red Hot Chili Pepper Sword", <msmlegacy:relic_aqueous>.withTag({ench: [{lvl: 1 as short, id: 20 as short}, {lvl: 1 as short, id: 88 as short}]}),[
	[null, blaze, ruby],
    [chili, ruby, blaze],
    [handle, chili, null]
]);