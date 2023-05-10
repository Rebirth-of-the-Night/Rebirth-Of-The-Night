import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import crafttweaker.world.IWorld;
 
var night_jar = <assembly:night_jar>;
 
static night_jarProgress as mods.requious.SlotVisual = mods.requious.SlotVisual.createGauge("requious:textures/gui/assembly_slots.png",4,2,1,7,mods.requious.GaugeDirection.right(),false);
 
var x = night_jar.setTextSlot(4,0).setVisual(mods.requious.SlotVisual.create(7,1)).setRenderText("Night Jar");
x = night_jar.setItemSlot(3,2,ComponentFace.all(),1).setAccess(true,false).setGroup("input");
x = night_jar.setFluidSlot(4,3,ComponentFace.all(),1000).setAccess(true,false).allowBucket(true,true).setGroup("liquid_input");
x = night_jar.setDurationSlot(4,2).setGroup("input").setVisual(night_jarProgress);
x = night_jar.setFluidSlot(5,2,ComponentFace.all(),1000).setAccess(false,true).allowBucket(true,false).setGroup("output_liquid");

// vis speck to sliver 
var lunar_water = AssemblyRecipe.create(function(container){
    container.addFluidOutput("output_liquid",<liquid:lunar_water>, 1000);
})
.requireItem("input",<contenttweaker:luna_quintessence>)
.requireFluid("liquid_input", <liquid:water>, 1000, 1000)
.requireWorldCondition("world",function(container){ return !container.world.isDayTime(); }, 200)
.requireDuration("input", 400);
night_jar.addRecipe(lunar_water);
 
night_jar.setJEIItemSlot(3,2,"JEIinput");
night_jar.setJEIFluidSlot(5,2,"JEIoutput_liquid");
night_jar.setJEIFluidSlot(4,3, "JEIliquid_input");
night_jar.setJEIDurationSlot(4,2,"JEIduration",night_jarProgress);
 
var JEIlunar_water = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("JEIoutput_liquid",<liquid:lunar_water>, 1000);
})
.requireItem("JEIinput",<contenttweaker:luna_quintessence>)
.requireFluid("JEIliquid_input", <liquid:water>, 1000, 1000)
.requireDuration("JEIduration", 400);
night_jar.addJEIRecipe(JEIlunar_water);
