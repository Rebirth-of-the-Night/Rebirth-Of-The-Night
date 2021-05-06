import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.betterwithmods.Anvil;


JEI.removeAndHide(<malisisdoors:hitechdoor>);
JEI.removeAndHide(<malisisdoors:forcefielditem>);
JEI.removeAndHide(<malisisdoors:door_factory>);
// JEI.removeAndHide(<malisisdoors:carriage_door>);
JEI.removeAndHide(<malisisdoors:medieval_door>);
JEI.removeAndHide(<malisisdoors:trapdoor_acacia>);
JEI.removeAndHide(<malisisdoors:trapdoor_birch>);
JEI.removeAndHide(<malisisdoors:trapdoor_dark_oak>);
JEI.removeAndHide(<malisisdoors:trapdoor_jungle>);
JEI.removeAndHide(<malisisdoors:trapdoor_spruce>);
JEI.removeAndHide(<malisisdoors:customdooritem>);
// JEI.removeAndHide(<malisisdoors:laboratory_door>);
recipes.remove(<malisisdoors:rustyhatch>);
recipes.remove(<malisisdoors:rustyhandle>);
recipes.remove(<malisisdoors:rustyladder>);
recipes.remove(<malisisdoors:camofencegate>);
recipes.remove(<malisisdoors:factory_door>);
recipes.remove(<malisisdoors:sliding_trapdoor>);
recipes.remove(<malisisdoors:garage_door>);
recipes.remove(<malisisdoors:jail_door>);
recipes.remove(<malisisdoors:laboratory_door>);
recipes.remove(<malisisdoors:carriage_door>);

// Rusty
recipes.addShaped("Bunker Handle", <malisisdoors:rustyhandle>,[
    [null, null, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [null, <ore:ingotCopper>, null]
]);
recipes.addShaped("Bunker Ladder", <malisisdoors:rustyladder>,[
    [<ore:ingotCopper>, null, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, null, <ore:ingotCopper>]
]);


// Doors
recipes.addShapeless("Camouflaged Fence Gate", <malisisdoors:camofencegate>,[
	<ore:fenceGateWood>,<primitivemobs:camouflage_dye>
]);
recipes.addShaped("Rusty Hatch", <malisisdoors:rustyhatch>,[
	  [<simpleores:copper_ingot>],
    [<simpleores:copper_ingot>, <malisisdoors:rustyhandle>],
    [<simpleores:copper_ingot>]
]);
recipes.addShaped("Factory Door", <malisisdoors:factory_door> * 3,[
	  [<ore:ingotTin>, <ore:ingotTin>],
    [<ore:latchRedstone>, <ore:latchRedstone>],
    [<ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShaped("Rampart Trapdoor", <malisisdoors:sliding_trapdoor> * 3,[
  	[<ore:latchRedstone>, <ore:ingotTin>, <ore:ingotTin>],
	  [<ore:latchRedstone>, <ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShaped("Rampart Door", <malisisdoors:laboratory_door> * 3,[
	  [<ore:latchRedstone>, <ore:latchRedstone>],
    [<ore:ingotTin>, <ore:ingotTin>],
    [<ore:ingotTin>, <ore:ingotTin>]
]);
recipes.addShaped("Reinforced Door", <malisisdoors:jail_door> * 3,[
	  [<minecraft:iron_bars>, <minecraft:iron_bars>],
    [<ore:plankWood>, <ore:plankWood>],
    [<minecraft:iron_bars>, <minecraft:iron_bars>]
]);

//Huge Doors
Anvil.addShaped(<malisisdoors:garage_door> * 9, [
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>]
]);

for brick in <ore:StoneHugeBrick>.items {
    for plank in <ore:plankWood>.items {
        Anvil.addShaped(<malisisdoors:carriage_door>, [
            [brick, brick, brick, brick],
            [brick, <ore:latchRedstone>, plank, plank],
            [brick, <ore:latchRedstone>, plank, plank],
            [brick, brick, brick, brick]
        ]);
    }
}