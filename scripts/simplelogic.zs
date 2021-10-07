import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.betterwithmods.Anvil;
import mods.betterwithmods.Crucible;

for j in 0 to 2 {
    for i in 0 to 16 {
        JEI.removeAndHide(itemUtils.getItem("charset:logic_wire_i"~i, j));
        JEI.removeAndHide(itemUtils.getItem("charset:logic_wire_bc"~i, j));
    }
    JEI.removeAndHide(itemUtils.getItem("charset:logic_wire_b", j));
    recipes.remove(itemUtils.getItem("charset:logic_wire_n", j));
}

JEI.removeAndHide(<charset:logic_gate>.withTag({logic: "simplelogic:bundled_transceiver", li: 0 as byte}));
JEI.removeAndHide(<charset:logic_gate>.withTag({logic: "simplelogic:bundled_transposer", li: 0 as byte}));
JEI.removeAndHide(<charset:logic_gate>.withTag({logic: "simplelogic:bundled_inverter", li: 0 as byte}));

var recipesToRemove as string[] = [
    "bundled_transceiver",
    "bundled_transposer",
    "bundled_inverter",
    "nor",
    "randomizer",
    "buffer_inv",
    "comparator",
    "repeater",
    "xor",
    "nand"
] as string[];

for s in recipesToRemove {
    recipes.removeByRecipeName("charset:simplelogic/gates/gate_"~s);
}

val holystoneBrick = <aether_legacy:holystone_brick>;
// val redstonePaste = <redstonepaste:redstonepaste>;
val redstonePaste = <ore:dustRedstone>; // Temporary
val redstoneDust = <ore:dustRedstone>;
val redstoneBlock = <ore:blockRedstone>;
val hellfireDust = <ore:dustHellfire>;
val hellfireIngot = <ore:ingotHellfire>;
val hellfireBlock = <ore:blockHellfire>;
val ironDust = <ore:dustIron>;
val ironBlock = <ore:blockIron>;
val copperDust = <ore:dustCopper>;
val padding = <betterwithmods:material:41>;
val pipe = <quark:pipe>;
val lattice = <rustic:iron_lattice>;
val crucibleSteelIngot = <dungeontactics:steel_ingot>;
val hardenedLeather = <harvestcraft:hardenedleatheritem>;
val blueCarpet = <minecraft:carpet:11>;
val screw = <betterwithmods:material:24>;
val stickyPiston = <minecraft:sticky_piston>;
val hopper = <minecraft:hopper>;
val dropper = <minecraft:dropper>;
val observer = <minecraft:observer>;
val concrete = <ore:concrete>;
val torch = <minecraft:redstone_torch>;
val dice = <cyclicmagic:dice>;
val clock = <minecraft:clock>;
val wool = <ore:wool>;

val mrepeater = <minecraft:repeater>;
val mcomparator = <minecraft:comparator>;
val prepeater = <charset:logic_gate>.withTag({logic: "simplelogic:repeater"});
val pcomparator = <charset:logic_gate>.withTag({logic: "simplelogic:comparator"});
// val srepeater = <redstonepaste:stickyrepeater>;
val srepeater = mrepeater; // Temporary
// val scomparator = <redstonepaste:stickycomparator>;
val scomparator = mcomparator; // Temporary
val prandomizer = <charset:logic_gate>.withTag({logic: "simplelogic:randomizer"});
// val drandomizer = <projectred-integration:gate:33>;
val qrandomizer = <quark:redstone_randomizer>;

val circuitPlate = <ceramics:unfired_clay:9>;
// val platformedPlate = <projectred-core:resource_item:4>;
val redStuff = <contenttweaker:redstuff>;

val alloyWire = <charset:logic_wire_n:0>;
// val insulatedWire = <ore:projredInsulatedWire>;
val framedAlloyWire = <charset:logic_wire_n:1>;
// val framedInsulatedWire = <ore:projredInsFramedWire>;

val gateOR = <charset:logic_gate>.withTag({logic: "simplelogic:nor", li: 1 as byte});
val gateNOR = <charset:logic_gate>.withTag({logic: "simplelogic:nor", li: 0 as byte});
val gateNOT = <charset:logic_gate>.withTag({logic: "simplelogic:buffer", li: 0 as byte});
val gateAND = <charset:logic_gate>.withTag({logic: "simplelogic:nand", li: 1 as byte});
val gateNAND = <charset:logic_gate>.withTag({logic: "simplelogic:nand", li: 0 as byte});
val gateXOR = <charset:logic_gate>.withTag({logic: "simplelogic:xor", li: 0 as byte});
val gateXNOR = <charset:logic_gate>.withTag({logic: "simplelogic:xor", li: 1 as byte});
val gateBuffer = <charset:logic_gate>.withTag({logic: "simplelogic:buffer", li: 1 as byte});
val gateMultiplexer = <charset:logic_gate>.withTag({logic: "simplelogic:multiplexer"});

val pulseFormer = <charset:logic_gate>.withTag({logic: "simplelogic:pulse_former"});
val synchronizer = <charset:logic_gate>.withTag({logic: "simplelogic:synchronizer"});

val timer = <charset:logic_gate>.withTag({logic: "simplelogic:timer"});
// val counter = <projectred-integration:gate:19>;
// val runningTimer = <projectred-integration:gate:20>;

val latchRS = <charset:logic_gate>.withTag({logic: "simplelogic:rs_latch"});
// val latchTransparent = <projectred-integration:gate:14>;

// val cellNull = <projectred-integration:gate:23>;
// val cellInvert = <projectred-integration:gate:24>;
// val latchStacking = <projectred-integration:gate:31>;

val gates as IItemStack[] = [
    gateOR,
    gateNOR,
    gateNOT,
    gateAND,
    gateNAND,
    gateXOR,
    gateXNOR,
    gateBuffer,
    gateMultiplexer,
    pulseFormer,
    synchronizer,
    timer,
    latchRS,
    prepeater,
    pcomparator,
    prandomizer
] as IItemStack[];

for gate in gates {
    recipes.remove(gate);
}

// Core
Anvil.addShaped(circuitPlate * 4, [
    [holystoneBrick, holystoneBrick, holystoneBrick, holystoneBrick],
    [redstonePaste, hellfireDust, hellfireDust, redstonePaste],
    [holystoneBrick, holystoneBrick, holystoneBrick, holystoneBrick]
]);

recipes.addShapeless(redStuff * 4, [
    ironDust,
    ironDust,
    ironDust,
    ironDust,
    copperDust,
    redstoneDust,
    redstoneDust,
    redstoneDust,
    redstoneDust
]);

// Efficient and automatable
Crucible.addUnstoked(
    [
        ironBlock,
        copperDust * 2,
        redstoneBlock
    ],
    [redStuff * 10]
);

recipes.removeByRecipeName("charset:wire_conversion_from");
recipes.removeByRecipeName("charset:wire_conversion_to");

Anvil.addShaped(alloyWire * 12, [
    [null, null, mrepeater, redStuff],
    [null, redstonePaste, redStuff, redstonePaste],
    [redstonePaste, redStuff, redstonePaste, null],
    [redStuff, mrepeater, null, null]
]);
recipes.addShapeless("framed_wire_to_wire", alloyWire * 2, [framedAlloyWire]);

/* val colors = [
    "White",
    "Orange",
    "Magenta",
    "LightBlue",
    "Yellow",
    "Lime",
    "Pink",
    "Gray",
    "LightGray",
    "Cyan",
    "Purple",
    "Blue",
    "Brown",
    "Green",
    "Red",
    "Black"
] as string[];

for i in 0 to 16 {
    var woolColored = <minecraft:wool>.definition.makeStack(i);
    var wireColored = <projectred-transmission:wire>.definition.makeStack(i+1);
    var framedWireColored = <projectred-transmission:framed_wire>.definition.makeStack(i+1);

    Anvil.addShaped(wireColored * 4, [
        [null, null, woolColored, alloyWire],
        [null, padding, alloyWire, woolColored],
        [woolColored, alloyWire, padding, null],
        [alloyWire, woolColored, null, null]
    ]);

    Anvil.addShaped(framedWireColored * 4, [
        [null, null, woolColored, framedAlloyWire],
        [null, padding, framedAlloyWire, woolColored],
        [woolColored, framedAlloyWire, padding, null],
        [framedAlloyWire, woolColored, null, null]
    ]);

    Anvil.addShaped(framedWireColored * 4, [
        [null, wireColored, wireColored, null],
        [wireColored, pipe, pipe, wireColored],
        [wireColored, pipe, pipe, wireColored],
        [null, wireColored, wireColored, null]
    ]);

    recipes.addShapeless("pr_colored_insulated_wire_"~i, wireColored, [
        oreDict["dye"~colors[i]],
        insulatedWire
    ]);

    JEI.addDescription(wireColored, "An insulated wire made out of red alloy. This wire can hold up to 256 power and provide resources for many other recipes. It will not connect to insulated wires of other colors, and it will not power blocks it is attached to.");
    JEI.addDescription(framedWireColored, "A framed wire that does not require a wall to adhere to. Similar to its unframed counterpart, it will not connect to wires of other colors and holds up to 256 power. It can be connected to insulated wires by placing an insulated wire of the same color in the same block as the framed wire.");
}

recipes.addShapeless("insulated_wire_stripping", alloyWire, [
    <ore:shears>.transformDamage(),
    insulatedWire
]);

recipes.addShapeless("insulated_framed_wire_stripping", framedAlloyWire, [
    <ore:shears>.transformDamage(),
    framedInsulatedWire
]); */

Anvil.addShaped(framedAlloyWire * 4, [
    [null, alloyWire, alloyWire, null],
    [alloyWire, pipe, pipe, alloyWire],
    [alloyWire, pipe, pipe, alloyWire],
    [null, alloyWire, alloyWire, null]
]);

/*
Anvil.addShaped(platformedPlate * 2, [
    [null, alloyWire, alloyWire, null],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate],
    [lattice, null, null, lattice],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate]
]);

Anvil.addShaped(<projectred-core:screwdriver>, [
    [screw, null, null, null],
    [null, crucibleSteelIngot, null, null],
    [null, null, hardenedLeather, blueCarpet],
    [null, null, blueCarpet, hardenedLeather]
]);

Anvil.addShaped(<projectred-core:multimeter>, [
    [alloyWire, null, null, alloyWire],
    [<projectred-transmission:wire:16>, clock, scomparator, <projectred-transmission:wire:15>],
    [<projectred-transmission:wire:16>, wool, wool, <projectred-transmission:wire:15>],
    [<projectred-transmission:wire:16>, wool, wool, <projectred-transmission:wire:15>]
]);
*/

// Combinatorial
Anvil.addShaped(gateOR, [
    [circuitPlate, torch, circuitPlate],
    [circuitPlate, srepeater, circuitPlate],
    [srepeater, torch, srepeater],
    [redstonePaste, srepeater, redstonePaste]
]);

Anvil.addShaped(gateNOR, [
    [circuitPlate, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, circuitPlate],
    [srepeater, torch, srepeater],
    [redstonePaste, srepeater, redstonePaste]
]);

Anvil.addShaped(gateXOR, [
    [circuitPlate, redstonePaste, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, redstonePaste, circuitPlate],
    [redstonePaste, scomparator, scomparator, redstonePaste],
    [srepeater, redstonePaste, redstonePaste, srepeater]
]);

Anvil.addShaped(gateXNOR, [
    [circuitPlate, torch, torch, circuitPlate],
    [circuitPlate, srepeater, srepeater, circuitPlate],
    [redstonePaste, scomparator, scomparator, redstonePaste],
    [srepeater, redstonePaste, redstonePaste, srepeater]
]);

Anvil.addShaped(gateAND, [
    [circuitPlate, torch, circuitPlate],
    [torch, redstonePaste, torch],
    [srepeater, torch, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

Anvil.addShaped(gateNAND, [
    [circuitPlate, redstonePaste, circuitPlate],
    [torch, redstonePaste, torch],
    [srepeater, torch, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

Anvil.addShaped(gateNOT * 2, [
    [circuitPlate, redstonePaste, circuitPlate],
    [redstonePaste, torch, redstonePaste],
    [circuitPlate, srepeater, circuitPlate],
    [redstonePaste, redstonePaste, redstonePaste]
]);

recipes.addShapeless(gateNOR, [
    gateOR,
    torch
]);

recipes.addShapeless(gateOR, [
    gateNOR,
    torch
]);

recipes.addShapeless(gateNAND, [
    gateAND,
    torch
]);

recipes.addShapeless(gateAND, [
    gateNAND,
    torch
]);

recipes.addShapeless(gateXNOR, [
    gateXOR,
    torch
]);

recipes.addShapeless(gateXOR, [
    gateXNOR,
    torch
]);

Anvil.addShaped(gateBuffer, [
    [circuitPlate, torch, circuitPlate],
    [srepeater, srepeater, srepeater],
    [wool, torch, wool],
    [circuitPlate, srepeater, circuitPlate]
]);

Anvil.addShaped(gateMultiplexer, [
    [circuitPlate, torch, circuitPlate, circuitPlate],
    [torch, redstonePaste, torch, srepeater],
    [srepeater, torch, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, redstonePaste, srepeater]
]);

// Basic seq
Anvil.addShaped(prepeater, [
    [observer, srepeater, circuitPlate],
    [hopper, dropper, circuitPlate],
    [dropper, hopper, circuitPlate],
    [circuitPlate, srepeater, scomparator]
]);

Anvil.addShaped(pcomparator, [
    [circuitPlate, srepeater, circuitPlate],
    [redstonePaste, redstonePaste, redstonePaste],
    [srepeater, mcomparator, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

Anvil.addShaped(prandomizer, [
    [circuitPlate, srepeater, wool, circuitPlate],
    [wool, qrandomizer, qrandomizer, srepeater],
    [srepeater, qrandomizer, dice, wool],
    [circuitPlate, srepeater, scomparator, circuitPlate]
]);

/*
Anvil.addShaped(drandomizer, [
    [circuitPlate, srepeater, wool, circuitPlate],
    [wool, redstonePaste, redstonePaste, srepeater],
    [srepeater, mrepeater, prandomizer, wool],
    [circuitPlate, srepeater, dice, circuitPlate]
]);
*/

// Sequential
Anvil.addShaped(pulseFormer, [
    [circuitPlate, redstonePaste, circuitPlate],
    [circuitPlate, concrete, circuitPlate],
    [redstonePaste, stickyPiston, redstonePaste],
    [redstonePaste, srepeater, redstonePaste]
]);

Anvil.addShaped(synchronizer, [
    [circuitPlate, pulseFormer, circuitPlate],
    [latchRS, torch, latchRS],
    [srepeater, srepeater, srepeater],
    [circuitPlate, hellfireBlock, circuitPlate]
]);

// Latches
Anvil.addShaped(latchRS, [
    [redstonePaste, torch, concrete],
    [srepeater, circuitPlate, srepeater],
    [concrete, torch, redstonePaste],
    [circuitPlate, circuitPlate, circuitPlate]
]);

/*
Anvil.addShaped(latchTransparent, [
    [circuitPlate, torch, circuitPlate, circuitPlate],
    [torch, redstonePaste, redstonePaste, redstonePaste],
    [srepeater, torch, mrepeater, torch],
    [torch, srepeater, redstonePaste, circuitPlate]
]);
*/

// Pointer-based
Anvil.addShaped(timer, [
    [stickyPiston, redstoneBlock, null, stickyPiston],
    [mcomparator, hopper, hopper, mcomparator],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate]
]);

/*
Anvil.addShaped(counter, [
    [circuitPlate, hopper, hopper, circuitPlate],
    [concrete, torch, torch, concrete],
    [pulseFormer, circuitPlate, scomparator, pulseFormer],
    [srepeater, circuitPlate, torch, srepeater]
]);

Anvil.addShaped(runningTimer, [
    [circuitPlate, hellfireBlock, circuitPlate],
    [srepeater, srepeater, circuitPlate],
    [scomparator, timer, srepeater],
    [circuitPlate, srepeater, redstonePaste]
]);
*/

/*
// Cells
Anvil.addShaped(cellNull, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, redstonePaste, circuitPlate, scomparator]
]);

Anvil.addShaped(cellInvert, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, torch, circuitPlate, scomparator]
]);

Anvil.addShaped(latchStacking, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, latchTransparent, circuitPlate, scomparator]
]);
*/
