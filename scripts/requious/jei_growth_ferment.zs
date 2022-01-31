import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var growth_ferment = <assembly:growth_ferment>;

// sets the growth_fermentPointerVisual static as the sand clock icon at coordinates 3,7 in the specified file
static growth_fermentPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,7);
static growth_interactionPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,7);
 
// jei structure for ferment barrel and bottle right click
growth_ferment.setJEIFluidSlot(3,3,"input");
growth_ferment.setJEIItemSlot(4,3,"barrel");
growth_ferment.setJEIFluidSlot(5,3,"output");
growth_ferment.setJEIDurationSlot(4,4,"growth_fermentPointer", growth_fermentPointerVisual);
growth_ferment.setJEIItemSlot(3,4,"added");
growth_ferment.setJEIItemSlot(3,2,"rawInput");
growth_ferment.setJEIDecoration(4,2,"interactionPointer", growth_interactionPointerVisual);
growth_ferment.setJEIItemSlot(5,2,"product");


var cider_a = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_fermented>);
})
.requireFluid("input",<liquid:fluid_booze_apple_juice>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<growthcraft_apples:applecider>)
.requireItem("product",<growthcraft_apples:applecider:1>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_a);

var cider_b = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_fermented>);
})
.requireFluid("input",<liquid:fluid_booze_apple_juice>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<growthcraft_apples:applecider>)
.requireItem("product",<growthcraft_apples:applecider:1>)
.requireDuration("duration", 15840);
growth_ferment.addJEIRecipe(cider_b);

var cider_c = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_potent>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_fermented>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:2>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_c);

var cider_d = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_potent>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_extended>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:2>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_d);

var cider_e = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_extended>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_fermented>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:3>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_e);

var cider_f = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_extended>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_potent>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:3>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_f);

var cider_g = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_potentextended>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_potent>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:7>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_g);

var cider_h = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_ethereal>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_potent>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:4>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_h);

var cider_i = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_ethereal>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_extended>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:4>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_i);

var cider_j = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_intoxicated>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_potent>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:5>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_j);

var cider_k = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_intoxicated>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_extended>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:5>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_k);

var cider_l = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_poisoned>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_fermented>)
.requireItem("added",<ore:yeastPoison>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:6>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_l);

var cider_m = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_poisoned>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_potent>)
.requireItem("added",<ore:yeastPoison>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:6>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_m);

var cider_n = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_poisoned>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_ethereal>)
.requireItem("added",<ore:yeastPoison>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:6>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_n);

var cider_o = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_poisoned>);
})
.requireFluid("input",<liquid:fluid_booze_apple_cider_intoxicated>)
.requireItem("added",<ore:yeastPoison>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:6>)
.requireDuration("duration", 24000);
growth_ferment.addJEIRecipe(cider_o);

var cider_p = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_fermented>);
})
.requireFluid("input",<liquid:applejuice>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:1>)
.requireDuration("duration", 144000);
growth_ferment.addJEIRecipe(cider_p);

var cider_q = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_fermented>);
})
.requireFluid("input",<liquid:applejuice>)
.requireItem("added",<ore:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:1>)
.requireDuration("duration", 95040);
growth_ferment.addJEIRecipe(cider_q);

var cider_r = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_potent>);
})
.requireFluid("input",<liquid:cider>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:2>)
.requireDuration("duration", 144000);
growth_ferment.addJEIRecipe(cider_r);

var cider_s = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_extended>);
})
.requireFluid("input",<liquid:cider>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:3>)
.requireDuration("duration", 144000);
growth_ferment.addJEIRecipe(cider_s);

var cider_t = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_poisoned>);
})
.requireFluid("input",<liquid:cider>)
.requireItem("added",<ore:yeastPoison>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireItem("rawInput",<minecraft:glass_bottle>)
.requireItem("product", <growthcraft_apples:applecider:6>)
.requireDuration("duration", 144000);
growth_ferment.addJEIRecipe(cider_t);

