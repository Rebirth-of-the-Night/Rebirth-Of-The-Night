import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<malisisdoors:camofencegate>);
recipes.remove(<malisisdoors:factory_door>);
recipes.remove(<malisisdoors:sliding_trapdoor>);
recipes.remove(<malisisdoors:garage_door>);

//Doors
recipes.addShapeless("Camouflaged Fence Gate", <malisisdoors:camofencegate>,[
	<ore:fenceGateWood>,<primitivemobs:camouflage_dye>
]);
recipes.addShaped("Factory Door", <malisisdoors:factory_door>.withTag({item: 9388, redstoneBehavior: 0, proximityDetection: 0 as byte, sound: "pneumatic_door", openingTime: 12, autoCloseTime: 0, block: 2354, doubleDoor: 1 as byte, movement: "sliding_split_door"}),[
	[<ore:ingotTin>, <ore:ingotTin>],
    [<ore:latchRedstone>, <ore:latchRedstone>],
    [<ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShaped("Sliding trapdoor", <malisisdoors:sliding_trapdoor>,[
	[<ore:latchRedstone>, <ore:ingotTin>, <ore:ingotTin>],
	[<ore:latchRedstone>, <ore:ingotTin>, <ore:ingotTin>]
]);

//Huge Doors
mods.betterwithmods.Anvil.addShaped(<malisisdoors:garage_door>, [
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>]
]);