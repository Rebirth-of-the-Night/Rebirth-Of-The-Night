import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;

mods.jei.JEI.removeAndHide(<minetraps:mud>);
mods.jei.JEI.removeAndHide(<minetraps:quicksand>);
mods.jei.JEI.removeAndHide(<minetraps:obstacle>);
mods.jei.JEI.removeAndHide(<minetraps:fall_trap>);

recipes.remove(<minetraps:nails>);

var tinnugget = <contenttweaker:material_part:6>;

recipes.addShaped("Nails", <minetraps:nails>,[
  [null, null, null],
    [tinnugget, tinnugget, tinnugget],
    [tinnugget, tinnugget, tinnugget]
]);

var silvernugget = <iceandfire:silver_nugget>;

recipes.addShaped("Nails 2", <minetraps:nails>,[
  [null, null, null],
    [silvernugget, silvernugget, silvernugget],
    [silvernugget, silvernugget, silvernugget]
]);

var ironnugget = <minecraft:iron_nugget>;

recipes.addShaped("Nails 3", <minetraps:nails>,[
  [null, null, null],
    [ironnugget, ironnugget, ironnugget],
    [ironnugget, ironnugget, ironnugget]
]);



recipes.remove(<minetraps:nail_trap>);
recipes.addShaped("Nail Trap", <minetraps:nail_trap>,[
  [<minetraps:nails>, <minetraps:nails>, null],
    [<minetraps:nails>, <minetraps:nails>, null],
    [null, null, null]
]);






// trap hardness/resistance tweaks
// yes this is sloppy using 2 methods idgaf

//cobweb nerf
<item:minecraft:web>.asBlock().definition.resistance = 3;

// barbed wire
val barbwire as IItemStack = <minetraps:barbed_wire>;
barbwire.hardness = 1.4;
<item:minetraps:barbed_wire>.asBlock().definition.resistance = 3.4;

// razor wire
val razorwire as IItemStack = <minetraps:razor_wire>;
razorwire.hardness = 3;
<item:minetraps:razor_wire>.asBlock().definition.resistance = 7;

// barbed wire fence
val barbfence as IItemStack = <minetraps:barbed_wire_fence>;
barbfence.hardness = 5;
<item:minetraps:barbed_wire_fence>.asBlock().definition.resistance = 20;

// bear trap
val beartrap as IItemStack = <minetraps:bear_trap>;
beartrap.hardness = 3;
<item:minetraps:bear_trap>.asBlock().definition.resistance = 2;

// caltrops buff
val caltrop as IItemStack = <dungeontactics:caltrops>;
caltrop.hardness = 5;

val poisoncaltrop as IItemStack = <dungeontactics:caltrops_poison>;
poisoncaltrop.hardness = 5;
