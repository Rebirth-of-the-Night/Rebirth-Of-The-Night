import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;


recipes.removeShapeless(<davincisvessels:balloon:*>,[<minecraft:string>,<minecraft:wool:*>]);

var bluff = <rustic:cloudsbluff>;
var wool = <minecraft:wool>;


recipes.addShaped("Air Balloon", <davincisvessels:balloon>,[
	[<minecraft:string>, wool, <minecraft:string>],
    [wool, bluff, wool],
    [<minecraft:string>, wool, <minecraft:string>]
]);


var balloon = <bountifulbaubles:trinketballoon>;

recipes.addShaped("Air Balloon 2", <davincisvessels:balloon>*10,[
	[<minecraft:string>, wool, <minecraft:string>],
    [wool, balloon, wool],
    [<minecraft:string>, wool, <minecraft:string>]
]);



var cloud = <aether_legacy:aercloud>;


recipes.addShaped("Air Balloon 3", <davincisvessels:balloon>,[
	[<minecraft:string>, wool, <minecraft:string>],
    [wool, cloud, wool],
    [<minecraft:string>, wool, <minecraft:string>]
]);