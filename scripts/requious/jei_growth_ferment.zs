import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var growth_ferment = <assembly:growth_ferment>;

// sets the growth_fermentPointerVisual static as the sand clock icon at coordinates 3,7 in the specified file
static growth_fermentPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,7);
static growth_interactionPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,7);
 
// jei structure for ferment barrel and bottle right click
growth_ferment.setJEIItemSlot(3,3,"input");
growth_ferment.setJEIItemSlot(4,3,"barrel");
growth_ferment.setJEIItemSlot(5,3,"output");
growth_ferment.setJEIDurationSlot(4,4,"growth_fermentPointer", growth_fermentPointerVisual);
growth_ferment.setJEIItemSlot(3,4,"added");
growth_ferment.setJEIFluidSlot(3,2,"inputFluid");
growth_ferment.setJEIDecoration(4,2,"interactionPointer", growth_interactionPointerVisual);
growth_ferment.setJEIFluidSlot(5,2,"outputFluid");


var cider_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:1>);
})
.requireItem("input",<growthcraft_apples:applecider>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_a);

var cider_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:1>);
})
.requireItem("input",<growthcraft_apples:applecider>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(cider_b);

var cider_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:2>);
})
.requireItem("input",<growthcraft_apples:applecider:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_c);

var cider_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:2>);
})
.requireItem("input",<growthcraft_apples:applecider:3>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_d);

var cider_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:3>);
})
.requireItem("input",<growthcraft_apples:applecider:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_e);

var cider_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:3>);
})
.requireItem("input",<growthcraft_apples:applecider:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_f);

var cider_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:7>);
})
.requireItem("input",<growthcraft_apples:applecider:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_potentextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_g);

var cider_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:4>);
})
.requireItem("input",<growthcraft_apples:applecider:2>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_ethereal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_h);

var cider_i = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:4>);
})
.requireItem("input",<growthcraft_apples:applecider:3>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_ethereal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_i);

var cider_j = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:5>);
})
.requireItem("input",<growthcraft_apples:applecider:2>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_j);

var cider_k = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:5>);
})
.requireItem("input",<growthcraft_apples:applecider:3>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(cider_k);

var cider_l = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:1>);
})
.requireItem("input",<growthcraft_apples:applecider>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:applejuice>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireDuration("duration",144000);
growth_ferment.addJEIRecipe(cider_l);

var cider_m = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:1>);
})
.requireItem("input",<growthcraft_apples:applecider>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:applejuice>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_fermented>)
.requireDuration("duration",95040);
growth_ferment.addJEIRecipe(cider_m);

var cider_n = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:2>);
})
.requireItem("input",<growthcraft_apples:applecider:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:cider>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_potent>)
.requireDuration("duration",144000);
growth_ferment.addJEIRecipe(cider_n);

var cider_o = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_apples:applecider:3>);
})
.requireItem("input",<growthcraft_apples:applecider:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:cider>)
.requireFluid("outputFluid",<liquid:fluid_booze_apple_cider_extended>)
.requireDuration("duration",144000);
growth_ferment.addJEIRecipe(cider_o);

var wine_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:1>);
})
.requireItem("input",<growthcraft_grapes:grapewine>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_a);

var wine_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:1>);
})
.requireItem("input",<growthcraft_grapes:grapewine>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(wine_b);

var wine_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:17>);
})
.requireItem("input",<growthcraft_grapes:grapewine:16>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_c);

var wine_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:17>);
})
.requireItem("input",<growthcraft_grapes:grapewine:16>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(wine_d);

var wine_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:9>);
})
.requireItem("input",<growthcraft_grapes:grapewine:8>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_e);

var wine_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:9>);
})
.requireItem("input",<growthcraft_grapes:grapewine:8>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_juice>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(wine_f);

var wine_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:2>);
})
.requireItem("input",<growthcraft_grapes:grapewine:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_g);

var wine_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:3>);
})
.requireItem("input",<growthcraft_grapes:grapewine:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_h);

var wine_i = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:18>);
})
.requireItem("input",<growthcraft_grapes:grapewine:17>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_i);

var wine_j = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:18>);
})
.requireItem("input",<growthcraft_grapes:grapewine:19>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_j);

var wine_k = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:10>);
})
.requireItem("input",<growthcraft_grapes:grapewine:9>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_k);

var wine_l = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:10>);
})
.requireItem("input",<growthcraft_grapes:grapewine:11>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_l);

var wine_m = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:3>);
})
.requireItem("input",<growthcraft_grapes:grapewine:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_m);

var wine_n = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:3>);
})
.requireItem("input",<growthcraft_grapes:grapewine:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_n);

var wine_o = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:19>);
})
.requireItem("input",<growthcraft_grapes:grapewine:17>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_o);

var wine_p = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:19>);
})
.requireItem("input",<growthcraft_grapes:grapewine:18>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_p);

var wine_q = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:11>);
})
.requireItem("input",<growthcraft_grapes:grapewine:9>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_q);

var wine_r = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:11>);
})
.requireItem("input",<growthcraft_grapes:grapewine:10>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_r);

var wine_s = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:4>);
})
.requireItem("input",<growthcraft_grapes:grapewine:2>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_s);

var wine_t = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:4>);
})
.requireItem("input",<growthcraft_grapes:grapewine:3>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_t);

var wine_u = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:20>);
})
.requireItem("input",<growthcraft_grapes:grapewine:18>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_u);

var wine_v = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:20>);
})
.requireItem("input",<growthcraft_grapes:grapewine:19>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_v);

var wine_w = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:12>);
})
.requireItem("input",<growthcraft_grapes:grapewine:10>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_w);

var wine_x = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:12>);
})
.requireItem("input",<growthcraft_grapes:grapewine:11>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_ambrosia>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_x);

var wine_y = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:6>);
})
.requireItem("input",<growthcraft_grapes:grapewine:2>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_y);

var wine_z = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:6>);
})
.requireItem("input",<growthcraft_grapes:grapewine:3>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_purple_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_z);

var wine_1a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:22>);
})
.requireItem("input",<growthcraft_grapes:grapewine:18>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_1a);

var wine_1b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:22>);
})
.requireItem("input",<growthcraft_grapes:grapewine:19>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_red_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_red_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_1b);

var wine_1c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:14>);
})
.requireItem("input",<growthcraft_grapes:grapewine:10>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_1c);

var wine_1d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:14>);
})
.requireItem("input",<growthcraft_grapes:grapewine:11>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_green_wine_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_green_wine_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_1d);

var wine_1e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_grapes:grapewine:1>);
})
.requireItem("input",<growthcraft_grapes:grapewine>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:grapejuice>)
.requireFluid("outputFluid",<liquid:fluid_booze_purple_wine>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(wine_1e);