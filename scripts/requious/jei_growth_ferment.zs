import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var growth_ferment = <assembly:growth_ferment>;

// sets the growth_fermentPointerVisual static as the sand clock icon at coordinates 3,7 in the specified file
static growth_fermentPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",3,7);
static growth_interactionPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",4,7);
 
// jei structure for ferment barrel and bottle right click
growth_ferment.setJEIItemSlot(3,2,"input");
growth_ferment.setJEIItemSlot(4,3,"barrel");
growth_ferment.setJEIItemSlot(5,2,"output");
growth_ferment.setJEIDurationSlot(4,4,"growth_fermentPointer", growth_fermentPointerVisual);
growth_ferment.setJEIItemSlot(3,4,"added");
growth_ferment.setJEIFluidSlot(3,3,"inputFluid");
growth_ferment.setJEIDecoration(4,2,"interactionPointer", growth_interactionPointerVisual);
growth_ferment.setJEIFluidSlot(5,3,"outputFluid");


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

var mead_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead>);
})
.requireItem("input",<forge:bucketfilled>.withTag({FluidName: "fluid_honey", Amount: 1000}))
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_honey>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_young>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_a);

var mead_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:1>);
})
.requireItem("input",<growthcraft_bees:mead>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_young>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_fermented>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_b);

var mead_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:1>);
})
.requireItem("input",<growthcraft_bees:mead>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_young>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_fermented>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(mead_c);

var mead_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:3>);
})
.requireItem("input",<growthcraft_bees:mead>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_d);

var mead_dd = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:3>);
})
.requireItem("input",<growthcraft_bees:mead:2>)
.requireItem("added",<minecraft:glowstone_dust>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_dd);

var mead_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:8>);
})
.requireItem("input",<growthcraft_bees:mead:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_potentextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_e);

var mead_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:7>);
})
.requireItem("input",<growthcraft_bees:mead:3>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_f);

var mead_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:4>);
})
.requireItem("input",<growthcraft_bees:mead:3>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_ethereal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_g);

var mead_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:4>);
})
.requireItem("input",<growthcraft_bees:mead:2>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_ethereal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_h);

var mead_i = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:5>);
})
.requireItem("input",<growthcraft_bees:mead:3>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_i);

var mead_j = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_bees:mead:5>);
})
.requireItem("input",<growthcraft_bees:mead:2>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_mead_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_mead_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(mead_j);

var sake_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:2>);
})
.requireItem("input",<growthcraft_rice:sakebottle:1>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_mash>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_fermented>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(sake_a);

var sake_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:3>);
})
.requireItem("input",<growthcraft_rice:sakebottle:2>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(sake_b);

var sake_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:4>);
})
.requireItem("input",<growthcraft_rice:sakebottle:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(sake_c);

var sake_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:5>);
})
.requireItem("input",<growthcraft_rice:sakebottle:4>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(sake_d);

var sake_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:6>);
})
.requireItem("input",<growthcraft_rice:sakebottle:3>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_potent_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(sake_e);

var sake_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_rice:sakebottle:9>);
})
.requireItem("input",<growthcraft_rice:sakebottle:6>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_sake_potent_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_sake_magical>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(sake_f);

var ale_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:1>);
})
.requireItem("input",<growthcraft_hops:hopale>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_unhopped>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_normal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_a);

var ale_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:1>);
})
.requireItem("input",<growthcraft_hops:hopale>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_unhopped>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_normal>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(ale_b);

var ale_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:2>);
})
.requireItem("input",<growthcraft_hops:hopale:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_normal>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_c);

var ale_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:2>);
})
.requireItem("input",<growthcraft_hops:hopale:3>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_d);

var ale_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:2>);
})
.requireItem("input",<growthcraft_hops:hopale:3>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_e);

var ale_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:3>);
})
.requireItem("input",<growthcraft_hops:hopale:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_normal>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_f);

var ale_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:3>);
})
.requireItem("input",<growthcraft_hops:hopale:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_g);

var ale_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:5>);
})
.requireItem("input",<growthcraft_hops:hopale:2>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_h);

var ale_i = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:5>);
})
.requireItem("input",<growthcraft_hops:hopale:3>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_i);

var ale_j = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:6>);
})
.requireItem("input",<growthcraft_hops:hopale:5>)
.requireItem("added",<ore:yeastLager>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_hyperextended>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_lager>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_j);

var ale_k = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:7>);
})
.requireItem("input",<growthcraft_hops:hopale:2>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_k);

var ale_l = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:hopale:7>);
})
.requireItem("input",<growthcraft_hops:hopale:3>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_hopale_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_hopale_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(ale_l);

var lager_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:1>);
})
.requireItem("input",<growthcraft_hops:lager>)
.requireItem("added",<ore:yeastBrewers>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_young>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_normal>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_a);

var lager_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:1>);
})
.requireItem("input",<growthcraft_hops:lager>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_young>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_normal>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(lager_b);

var lager_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:2>);
})
.requireItem("input",<growthcraft_hops:lager:1>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_normal>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_c);

var lager_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:2>);
})
.requireItem("input",<growthcraft_hops:lager:3>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_d);

var lager_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:3>);
})
.requireItem("input",<growthcraft_hops:lager:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_normal>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_e);

var lager_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:4>);
})
.requireItem("input",<growthcraft_hops:lager:3>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_f);

var lager_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:8>);
})
.requireItem("input",<growthcraft_hops:lager:7>)
.requireItem("added",<ore:yeastEthereal>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_potentextended>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_magical>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_g);

var lager_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:5>);
})
.requireItem("input",<growthcraft_hops:lager:2>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_h);

var lager_i = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_hops:lager:5>);
})
.requireItem("input",<growthcraft_hops:lager:3>)
.requireItem("added",<ore:yeastOrigin>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_lager_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_lager_intoxicated>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(lager_i);

var kumis_a = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle>);
})
.requireItem("input",<minecraft:milk_bucket>)
.requireItem("added",<minecraft:nether_wart>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_milk>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_fermented>)
.requireDuration("duration",15840);
growth_ferment.addJEIRecipe(kumis_a);

var kumis_b = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:1>);
})
.requireItem("input",<growthcraft_milk:kumisbottle>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_potent>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_b);

var kumis_c = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:2>);
})
.requireItem("input",<growthcraft_milk:kumisbottle>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_fermented>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_extended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_c);

var kumis_d = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:3>);
})
.requireItem("input",<growthcraft_milk:kumisbottle:2>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_d);

var kumis_e = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:3>);
})
.requireItem("input",<growthcraft_milk:kumisbottle:1>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_potent>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_e);

var kumis_f = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:5>);
})
.requireItem("input",<growthcraft_milk:kumisbottle:4>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_potent_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_potent_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_f);

var kumis_g = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:5>);
})
.requireItem("input",<growthcraft_milk:kumisbottle:4>)
.requireItem("added",<ore:dustRedstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_potent_extended>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_potent_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_g);

var kumis_h = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<growthcraft_milk:kumisbottle:5>);
})
.requireItem("input",<growthcraft_milk:kumisbottle:3>)
.requireItem("added",<ore:dustGlowstone>)
.requireItem("barrel",<growthcraft_cellar:ferment_barrel>)
.requireFluid("inputFluid",<liquid:fluid_booze_kumis_kumis_hyperextended>)
.requireFluid("outputFluid",<liquid:fluid_booze_kumis_kumis_potent_hyperextended>)
.requireDuration("duration",24000);
growth_ferment.addJEIRecipe(kumis_h);