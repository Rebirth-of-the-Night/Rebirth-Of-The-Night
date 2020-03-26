import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;


recipes.removeShapeless(<davincisvessels:balloon:*>,[<minecraft:string>,<minecraft:wool:*>]);

//lore
mods.jei.JEI.addDescription(<davincisvessels:balloon:*>,"There are plenty of stories about lands only the bravest sailors would venture into. 40% of the mass of a flying ship must be composed of balloons to take flight.");

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


//Using Fiber

var fiber = <ore:durableFiber>;

recipes.addShaped("Air Balloon Fiber 1", <davincisvessels:balloon>*2,[
	[fiber, wool, fiber],
    [wool, bluff, wool],
    [fiber, wool, fiber]
]);

recipes.addShaped("Air Balloon Fiber 2", <davincisvessels:balloon>*15,[
	[fiber, wool, fiber],
    [wool, balloon, wool],
    [fiber, wool, fiber]
]);

recipes.addShaped("Air Balloon Fiber 3", <davincisvessels:balloon>*2,[
	[fiber, wool, fiber],
    [wool, cloud, wool],
    [fiber, wool, fiber]
]);
