import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var growth_ferment = <assembly:growth_ferment>;

// sets the growth_fermentPointerVisual static as the pointing finger icon at coordinates 2,7 in the specified file
static growth_fermentPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",2,7);
 
// jei structure single catalyst
growth_ferment.setJEIFluidSlot(3,2,"input");
growth_ferment.setJEIFluidSlot(5,2,"output");
growth_ferment.setJEIItemSlot(4,2,"cellar");
growth_ferment.setJEIDecoration(4,3,"growth_fermentPointer", growth_fermentPointerVisual);
growth_ferment.setJEIItemSlot(3,3,"added");


var cider_a = AssemblyRecipe.create(function(container) {
    container.addFluidOutput("output",<liquid:fluid_booze_apple_cider_fermented>);
}).requireFluid("input",<liquid:fluid_booze_apple_juice>).requireItem("added",<ore:yeastBrewers>).requireItem("cellar",<growthcraft_cellar:ferment_barrel>);
growth_ferment.addJEIRecipe(cider_a);