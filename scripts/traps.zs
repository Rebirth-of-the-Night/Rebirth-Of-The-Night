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
recipes.addShapeless("nails", <minetraps:nails>*2,[nugs, nugs, nugs, nugs]);
<minetraps:nails>.maxDamage = 7;
recipes.addShapeless("nails_steel", <minetraps:nails>*6,[<ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>, <ore:nuggetSteel>]);

recipes.remove(<minetraps:barbed_wire>);
recipes.addShaped("barbed_wire",<minetraps:barbed_wire>*2,[
    [<minetraps:nails>,<ore:genericMetal>,<minetraps:nails>],
    [<ore:genericMetal>,<minetraps:nails>,<ore:genericMetal>],
    [<minetraps:nails>,<ore:genericMetal>,<minetraps:nails>]
]);
recipes.addShaped("barbed_wire_steel",<minetraps:barbed_wire>*4,[
    [<minetraps:nails>,<ore:ingotSteel>,<minetraps:nails>],
    [<ore:ingotSteel>,<minetraps:nails>,<ore:ingotSteel>],
    [<minetraps:nails>,<ore:ingotSteel>,<minetraps:nails>]
]);

recipes.remove(<minetraps:razor_wire>);
recipes.addShaped("razor_wire",<minetraps:razor_wire>*2,[
    [<minetraps:nails>,<minetraps:barbed_wire>,<minetraps:nails>],
    [<minetraps:barbed_wire>,<minetraps:nails>,<minetraps:barbed_wire>],
    [<minetraps:nails>,<minetraps:barbed_wire>,<minetraps:nails>]
]);

recipes.remove(<minetraps:barbed_wire_fence>);
recipes.addShaped("barbed_wire_fence",<minetraps:barbed_wire_fence>*4,[
    [<ore:genericMetal>,<minetraps:barbed_wire>,<ore:genericMetal>],
    [<ore:genericMetal>,<minetraps:barbed_wire>,<ore:genericMetal>]
]);
recipes.addShaped("barbed_wire_fence_steel",<minetraps:barbed_wire_fence>*8,[
    [<ore:ingotSteel>,<minetraps:barbed_wire>,<ore:ingotSteel>],
    [<ore:ingotSteel>,<minetraps:barbed_wire>,<ore:ingotSteel>]
]);

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
