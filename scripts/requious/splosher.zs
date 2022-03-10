import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var splosher = <assembly:splosher>;
 
static splosherProgress as mods.requious.SlotVisual = mods.requious.SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",4,2,1,7,mods.requious.GaugeDirection.right(),false);
 
var x = splosher.setTextSlot(4,0).setVisual(mods.requious.SlotVisual.create(7,1)).setRenderText("ASS");
x = splosher.setItemSlot(3,2,ComponentFace.all(),1).setAccess(true,false).setGroup("input");
x = splosher.setFluidSlot(4,3,ComponentFace.all(),1000).setAccess(true,false).allowBucket(true,true).setGroup("liquid");
x = splosher.setDurationSlot(4,2).setGroup("input").setVisual(splosherProgress);
x = splosher.setItemSlot(5,2,ComponentFace.all(),64).setAccess(false,true).setGroup("output");

// vis speck to sliver 
var speckToSliver = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<contenttweaker:vis_sliver>);
}).requireItem("input",<contenttweaker:vis_speck>) .requireFluid("liquid", <liquid:lunar_water>, 100, 100) .requireDuration("input", 200);
splosher.addRecipe(speckToSliver);
 
splosher.setJEIItemSlot(3,2,"JEIinput");
splosher.setJEIItemSlot(5,2,"JEIoutput");
splosher.setJEIFluidSlot(4,3, "JEIliquid");
splosher.setJEIDurationSlot(4,2,"JEIduration",splosherProgress);
 
var speckToSliverJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("JEIoutput",<contenttweaker:vis_sliver>);
}).requireItem("JEIinput",<contenttweaker:vis_speck>) .requireFluid("JEIliquid", <liquid:lunar_water>) .requireDuration("JEIduration", 200);
splosher.addJEIRecipe(speckToSliverJEI);