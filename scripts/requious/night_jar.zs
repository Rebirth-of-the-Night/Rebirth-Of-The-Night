import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
import crafttweaker.world.IWorld;
 
var night_jar = <assembly:night_jar>;

// sets the growth_fermentPointerVisual static as the sand clock icon at coordinates 3,7 in the specified file
static night_jar_2_9 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",2,9);
static night_jar_3_9 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,9);
static night_jar_4_9 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,9);
static night_jar_5_9 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",5,9);
static night_jar_6_9 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",6,9);
static night_jar_2_10 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",2,10);
static night_jar_3_10 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,10);//input
static night_jar_4_10 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,10);//progress
static night_jar_5_10 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",5,10);//output_liquid
static night_jar_6_10 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",6,10);
static night_jar_2_11 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",2,11);
static night_jar_3_11 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,11);//liquid_input
static night_jar_4_11 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,11);
static night_jar_5_11 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",5,11);
static night_jar_6_11 as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",6,11);
static night_jarProgress as SlotVisual = SlotVisual.createGauge("requious:textures/gui/assembly_gauges.png",4,10,7,10,mods.requious.GaugeDirection.right(),false);
 
var x = night_jar.setTextSlot(3,0).setVisual(mods.requious.SlotVisual.create(1,1)).setRenderText("    Night-jar");
x = night_jar.setItemSlot(3,1,ComponentFace.all(),1).setAccess(true,false).setGroup("input").setBackground(night_jar_3_9);
x = night_jar.setFluidSlot(3,3,ComponentFace.all(),1000).setAccess(true,false).setGroup("liquid_input").allowBucket(true,true).setBackground(night_jar_3_11);
x = night_jar.setDurationSlot(4,2).setGroup("input").setVisual(night_jarProgress);
x = night_jar.setFluidSlot(5,2,ComponentFace.all(),1000).setAccess(false,true).setGroup("output_liquid").allowBucket(true,true).setBackground(night_jar_5_10);
//background
night_jar.setDecorationSlot(2,1,night_jar_2_9);
//night_jar.setDecorationSlot(3,1,night_jar_3_9);//input
night_jar.setDecorationSlot(4,1,night_jar_4_9);
night_jar.setDecorationSlot(5,1,night_jar_5_9);
night_jar.setDecorationSlot(6,1,night_jar_6_9);
night_jar.setDecorationSlot(2,2,night_jar_2_10);
night_jar.setDecorationSlot(3,2,night_jar_3_10);
//night_jar.setDecorationSlot(4,2,night_jar_4_10);//progress
//night_jar.setDecorationSlot(5,2,night_jar_5_10);//output_liquid
night_jar.setDecorationSlot(6,2,night_jar_6_10);
night_jar.setDecorationSlot(2,3,night_jar_2_11);
//night_jar.setDecorationSlot(3,3,night_jar_3_11);//liquid_input
night_jar.setDecorationSlot(4,3,night_jar_4_11);
night_jar.setDecorationSlot(5,3,night_jar_5_11);
night_jar.setDecorationSlot(6,3,night_jar_6_11);

// water to lunar water 
var lunar_water = AssemblyRecipe.create(function(container){
    container.addFluidOutput("output_liquid",<liquid:lunar_water>*1000,1000);
})
.requireItem("input",<contenttweaker:luna_quintessence>)
.requireFluid("liquid_input", <liquid:water>*1000)
.requireWorldCondition("world",function(container){ return !container.world.isDayTime(); }, 200)
.requireDuration("input", 1200);
night_jar.addRecipe(lunar_water);
 
night_jar.setJEIItemSlot(3,1,"JEIinput");
night_jar.setJEIFluidSlot(5,2,"JEIoutput_liquid");
night_jar.setJEIFluidSlot(3,3, "JEIliquid_input");
night_jar.setJEIDurationSlot(4,2,"JEIduration",night_jarProgress);
 
var JEIlunar_water = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("JEIoutput_liquid",<liquid:lunar_water>*1000,1000);
})
.requireItem("JEIinput",<contenttweaker:luna_quintessence>)
.requireFluid("JEIliquid_input", <liquid:water>*1000)
.requireDuration("JEIduration", 1200);
night_jar.addJEIRecipe(JEIlunar_water);
