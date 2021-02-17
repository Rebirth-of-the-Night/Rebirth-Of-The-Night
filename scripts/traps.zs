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

var nugs = <ore:nuggetTin> | <ore:nuggetSilver> | <ore:nuggetIron>;
recipes.addShapeless("nails", <minetraps:nails:*>,[nugs, nugs, nugs, nugs]);
<minetraps:nails>.maxDamage = 7;

recipes.remove(<minetraps:nail_trap>);
recipes.addShapeless("nail_trap", <minetraps:nail_trap>,[<minetraps:nails:*>,<minetraps:nails:*>]);

// trap hardness/resistance tweaks
// yes this is sloppy using 2 methods idgaf

// cobweb nerf
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
