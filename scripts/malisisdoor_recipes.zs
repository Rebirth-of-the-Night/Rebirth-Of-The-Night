import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<malisisdoors:hitechdoor>);
mods.jei.JEI.removeAndHide(<malisisdoors:forcefielditem>);
mods.jei.JEI.removeAndHide(<malisisdoors:door_factory>);
mods.jei.JEI.removeAndHide(<malisisdoors:carriage_door>);
mods.jei.JEI.removeAndHide(<malisisdoors:medieval_door>);


mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_acacia>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_birch>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_dark_oak>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_jungle>);
mods.jei.JEI.removeAndHide(<malisisdoors:trapdoor_spruce>);
mods.jei.JEI.removeAndHide(<malisisdoors:customdooritem>);
mods.jei.JEI.removeAndHide(<malisisdoors:laboratory_door>);



recipes.remove(<malisisdoors:rustyhandle>);
recipes.remove(<malisisdoors:rustyladder>);

recipes.remove(<malisisdoors:camofencegate>);
recipes.remove(<malisisdoors:factory_door>);
recipes.remove(<malisisdoors:sliding_trapdoor>);
recipes.remove(<malisisdoors:garage_door>);

//Rusty
recipes.addShaped("Rusty Handle", <malisisdoors:rustyhandle>,[
  [null, null, null],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [null, <ore:ingotCopper>, null]
]);
recipes.addShaped("Rusty Ladder", <malisisdoors:rustyladder>,[
  [<ore:ingotCopper>, null, <ore:ingotCopper>],
    [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>],
    [<ore:ingotCopper>, null, <ore:ingotCopper>]
]);


//Doors
recipes.addShapeless("Camouflaged Fence Gate", <malisisdoors:camofencegate>,[
	<ore:fenceGateWood>,<primitivemobs:camouflage_dye>
]);
recipes.addShaped("Factory Door", <malisisdoors:factory_door>,[
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

recipes.remove(<malisisdoors:wood_sliding_door>);
recipes.addShaped("wood_sliding_door",<malisisdoors:wood_sliding_door>,[
  [<ore:plankWood>,<minecraft:glass>,null],
  [<ore:plankWood>,<minecraft:glass>,null],
  [<ore:plankWood>,<minecraft:glass>,null]
]);

recipes.remove(<malisisdoors:shoji_door>);
recipes.addShaped("shoji_door",<malisisdoors:shoji_door>,[
  [<ore:plankWood>,<minecraft:paper>,null],
  [<ore:plankWood>,<minecraft:paper>,null],
  [<ore:plankWood>,<minecraft:paper>,null]
]);

recipes.remove(<malisisdoors:saloon>);
recipes.addShaped("saloon",<malisisdoors:saloon>,[
  [<ore:plankWood>,<ore:plankWood>,null],
  [<ore:stickWood>,<ore:stickWood>,null],
  [<ore:plankWood>,<ore:plankWood>,null]
]);