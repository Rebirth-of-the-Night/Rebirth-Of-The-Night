import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import crafttweaker.world.IWorld;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

var redstolyzer = <assembly:redstolyzer>;
 
static redstolyzerProgress as mods.requious.SlotVisual = mods.requious.SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",4,2,1,7,mods.requious.GaugeDirection.right(),false);
 
var x = redstolyzer.setTextSlot(2,0).setVisual(mods.requious.SlotVisual.create(7,1)).setRenderText("GIGA ASS");
x = redstolyzer.setItemSlot(3,2,ComponentFace.all(),1).setAccess(true,false).setGroup("input");
x = redstolyzer.setItemSlot(4,1,ComponentFace.all(),1).setAccess(true,false).setGroup("catalyst");
x = redstolyzer.setFluidSlot(4,3,ComponentFace.all(),1000).setAccess(true,false).allowBucket(true,true).setGroup("liquid");
x = redstolyzer.setDurationSlot(4,2).setGroup("input").setVisual(redstolyzerProgress);
x = redstolyzer.setItemSlot(5,2,ComponentFace.all(),64).setAccess(false,true).setGroup("output");

// copperon to charged copperon 
var copperonToCharged = AssemblyRecipe.create(function(container){
    container.addItemOutput("output",<contenttweaker:charged_copperon>);
})
.requireItem("input",<pyrotech:rock:1>)
.requireItem("catalyst",<minecraft:redstone>)
.requireFluid("liquid", <liquid:water>, 100, 100)
.requireWorldCondition("world",function(container){ return !container.world.isDayTime(); }, 20)
.requireDuration("input", 200);
redstolyzer.addRecipe(copperonToCharged);

// Lye
var lye = AssemblyRecipe.create(function(container){
    container.addItemOutput("output",<basketcase:twig_dark_oak>);
})
.requireItem("input",<ore:dustSalt>)
.requireItem("catalyst",<minecraft:redstone>)
.requireFluid("liquid", <liquid:water>, 100, 100)
.requireWorldCondition("world",function(container){ return !container.world.isDayTime(); }, 20)
.requireDuration("input", 200);
redstolyzer.addRecipe(lye);
 
redstolyzer.setJEIItemSlot(3,2,"JEIinput");
redstolyzer.setJEIItemSlot(4,1,"JEIcatalyst");
redstolyzer.setJEIItemSlot(5,2,"JEIoutput");
redstolyzer.setJEIFluidSlot(4,3, "JEIliquid");
redstolyzer.setJEIDurationSlot(4,2,"JEIduration",redstolyzerProgress);

// copperon to charged copperon 
var copperonToChargedJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("JEIoutput",<contenttweaker:charged_copperon>);
})
.requireItem("JEIinput",<pyrotech:rock:1>)
.requireItem("JEIcatalyst",<minecraft:redstone>)
.requireFluid("JEIliquid", <liquid:water>)
.requireDuration("JEIduration", 200);
redstolyzer.addJEIRecipe(copperonToChargedJEI);

// lye
var lyeJEI = AssemblyRecipe.create(function(container) {
    container.addItemOutput("JEIoutput",<basketcase:twig_dark_oak>);
})
.requireItem("JEIinput",<ore:dustSalt>)
.requireItem("JEIcatalyst",<minecraft:redstone>)
.requireFluid("JEIliquid", <liquid:water>)
.requireDuration("JEIduration", 200);
redstolyzer.addJEIRecipe(lyeJEI);