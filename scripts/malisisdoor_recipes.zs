import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;


mods.jei.JEI.removeAndHide(<malisisdoors:hitechdoor>);
mods.jei.JEI.removeAndHide(<malisisdoors:forcefielditem>);
mods.jei.JEI.removeAndHide(<malisisdoors:door_factory>);
mods.jei.JEI.removeAndHide(<malisisdoors:carriage_door>);

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

mods.betterwithmods.Anvil.addShaped(<malisisdoors:medieval_door>, [
   [<minecraft:quartz>, <minecraft:quartz>,<minecraft:quartz>, <minecraft:quartz>],
   [<quark:carved_wood:*>, <quark:carved_wood:*>,<quark:carved_wood:*>, <minecraft:quartz>],
   [<quark:carved_wood:*>, <quark:carved_wood:*>,<quark:carved_wood:*>, <minecraft:quartz>],
   [<minecraft:quartz>, <minecraft:quartz>,<minecraft:quartz>, <minecraft:quartz>]
]);