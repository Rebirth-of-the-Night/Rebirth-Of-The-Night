import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlockDefinition;
import mods.jei.JEI;

JEI.removeAndHide(<minetraps:mud>);
JEI.removeAndHide(<minetraps:quicksand>);
JEI.removeAndHide(<minetraps:obstacle>);
JEI.removeAndHide(<minetraps:fall_trap>);
JEI.removeAndHide(<minetraps:wall_spikes>);

recipes.remove(<minetraps:nails>);

var nugs = <ore:nuggetTin> | <ore:nuggetIron>;
recipes.addShapeless("nails", <minetraps:nails>,[nugs, nugs, nugs, nugs]);
<minetraps:nails>.maxDamage = 7;

recipes.remove(<minetraps:nail_trap>);
recipes.addShapeless("nail_trap", <minetraps:nail_trap>*2,[<minetraps:nails>,<minetraps:nails>,<minetraps:nails>]);

// trap hardness/resistance tweaks
// yes this is sloppy using 2 methods idgaf

// cobweb nerf
<minecraft:web>.asBlock().definition.resistance = 3;

// barbed wire
val barbwire as IItemStack = <minetraps:barbed_wire>;
barbwire.hardness = 6;
barbwire.asBlock().definition.resistance = 9;

// spikes
val spikes as IItemStack = <minetraps:spikes>;
spikes.hardness = 10;
spikes.asBlock().definition.resistance = 5;

val toxicspikes as IItemStack = <minetraps:spikes_toxic>;
toxicspikes.hardness = 10;
toxicspikes.asBlock().definition.resistance = 5;

// razor wire
val razorwire as IItemStack = <minetraps:razor_wire>;
razorwire.hardness = 10;
razorwire.asBlock().definition.resistance = 9;

// barbed wire fence
val barbfence as IItemStack = <minetraps:barbed_wire_fence>;
barbfence.hardness = 10;
barbfence.asBlock().definition.resistance = 20;

// bear trap
val beartrap as IItemStack = <minetraps:bear_trap>;
beartrap.hardness = 8;
beartrap.asBlock().definition.resistance = 8;

// caltrops buff
val caltrop as IItemStack = <dungeontactics:caltrops>;
caltrop.hardness = 5;

val poisoncaltrop as IItemStack = <dungeontactics:caltrops_poison>;
poisoncaltrop.hardness = 5;
