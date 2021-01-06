import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<malisisdoors:hitechdoor>);
mods.jei.JEI.removeAndHide(<malisisdoors:forcefielditem>);
mods.jei.JEI.removeAndHide(<malisisdoors:door_factory>);
#mods.jei.JEI.removeAndHide(<malisisdoors:carriage_door>);
mods.jei.JEI.removeAndHide(<malisisdoors:medieval_door>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_acacia>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_birch>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_dark_oak>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_jungle>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_spruce>);
mods.jei.JEI.removeAndHide(<malisisdoors:customdooritem>);
#mods.jei.JEI.removeAndHide(<malisisdoors:laboratory_door>);
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

#Rusty
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


#Doors
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
mods.betterwithmods.Anvil.addShaped(<malisisdoors:garage_door> * 9, [
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>],
   [<ore:ingotSteel>, <rustic:iron_lattice>,<rustic:iron_lattice>, <ore:latchRedstone>]
]);
mods.betterwithmods.Anvil.addShaped(<malisisdoors:carriage_door>, [
   [<ore:StoneHugeBrick>, <ore:StoneHugeBrick>,<ore:StoneHugeBrick>, <ore:StoneHugeBrick>],
   [<ore:StoneHugeBrick>, <ore:latchRedstone>,<ore:plankWood>, <ore:plankWood>],
   [<ore:StoneHugeBrick>, <ore:latchRedstone>,<ore:plankWood>, <ore:plankWood>],
   [<ore:StoneHugeBrick>, <ore:StoneHugeBrick>,<ore:StoneHugeBrick>, <ore:StoneHugeBrick>]
]);