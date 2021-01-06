import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;

mods.jei.JEI.removeAndHide(<minetraps:mud>);
mods.jei.JEI.removeAndHide(<minetraps:quicksand>);
mods.jei.JEI.removeAndHide(<minetraps:obstacle>);
mods.jei.JEI.removeAndHide(<minetraps:fall_trap>);

recipes.remove(<minetraps:nails>);

var tinnugget = <contenttweaker:material_part:6>;

recipes.addShapeless("Nails", <minetraps:nails>,[tinnugget, tinnugget, tinnugget, tinnugget]);


var silvernugget = <iceandfire:silver_nugget>;

recipes.addShapeless("Nails 2", <minetraps:nails>,[silvernugget, silvernugget, silvernugget, silvernugget]);

var ironnugget = <ore:nuggetIron>;

recipes.addShapeless("Nails 3", <minetraps:nails>,[ironnugget, ironnugget, ironnugget, ironnugget]);



recipes.remove(<minetraps:nail_trap>);
recipes.addShapeless("Nail Trap", <minetraps:nail_trap>,[<minetraps:nails>,<minetraps:nails>]);






// trap hardness/resistance tweaks
// yes this is sloppy using 2 methods idgaf

//cobweb nerf
<minecraft:web>.asBlock().definition.resistance = 3;

// barbed wire
val barbwire as IItemStack = <minetraps:barbed_wire>;
barbwire.hardness = 6;
<minetraps:barbed_wire>.asBlock().definition.resistance = 9;

// spikes
val spikes as IItemStack = <minetraps:spikes>;
spikes.hardness = 10;
<minetraps:spikes>.asBlock().definition.resistance = 5;
val toxicspikes as IItemStack = <minetraps:spikes_toxic>;
toxicspikes.hardness = 10;
<minetraps:spikes_toxic>.asBlock().definition.resistance = 5;

// razor wire
val razorwire as IItemStack = <minetraps:razor_wire>;
razorwire.hardness = 10;
<minetraps:razor_wire>.asBlock().definition.resistance = 9;

// barbed wire fence
val barbfence as IItemStack = <minetraps:barbed_wire_fence>;
barbfence.hardness = 10;
<minetraps:barbed_wire_fence>.asBlock().definition.resistance = 20;

// bear trap
val beartrap as IItemStack = <minetraps:bear_trap>;
beartrap.hardness = 8;
<minetraps:bear_trap>.asBlock().definition.resistance = 8;

// caltrops buff
val caltrop as IItemStack = <dungeontactics:caltrops>;
caltrop.hardness = 5;

val poisoncaltrop as IItemStack = <dungeontactics:caltrops_poison>;
poisoncaltrop.hardness = 5;
