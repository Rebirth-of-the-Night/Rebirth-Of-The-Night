import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<microblockcbe:saw_stone>);
JEI.removeAndHide(<microblockcbe:saw_iron>);
JEI.removeAndHide(<microblockcbe:saw_diamond>);
JEI.removeAndHide(<microblockcbe:stone_rod>);
JEI.removeAndHide(<microblockcbe:microblock:2>);
recipes.removeByRecipeName("projectred-core:misc/panel_2_diamonds");

JEI.removeAndHide(<projectred-core:drawplate>);

recipes.remove(<projectred-core:screwdriver>);
recipes.remove(<projectred-core:multimeter>);

recipes.addShapeless(<minecraft:diamond> * 2, [
    <microblockcbe:microblock:1>.withTag({mat: "minecraft:diamond_block"})
]);

recipes.addShapeless(<minecraft:iron_ingot> * 2, [
    <microblockcbe:microblock:1>.withTag({mat: "minecraft:iron_block"})
]);

<ore:ingotCopper>.remove(<projectred-core:resource_item:100>);
<ore:ingotTin>.remove(<projectred-core:resource_item:101>);
<ore:ingotSilver>.remove(<projectred-core:resource_item:102>);

val keepResource = [0, 4, 103, 251] as int[];

for i in 0 to 516 {
    if (!(keepResource has i)) {
        JEI.removeAndHide(<projectred-core:resource_item>.definition.makeStack(i));
    } else {
        furnace.remove(<projectred-core:resource_item>.definition.makeStack(i));
        recipes.remove(<projectred-core:resource_item>.definition.makeStack(i));
    }
}

for i in 0 to 1 {
    recipes.remove(<projectred-transmission:wire>.definition.makeStack(i));
}

for i in 1 to 35 {
    JEI.removeAndHide(<projectred-transmission:wire>.definition.makeStack(i));
}

recipes.remove(<projectred-transmission:framed_wire:0>);

for i in 1 to 35 {
    // if (i == 17 | i == 34) {
        JEI.removeAndHide(<projectred-transmission:framed_wire>.definition.makeStack(i));
    // } else {
    //     recipes.remove(<projectred-transmission:framed_wire>.definition.makeStack(i));
    // }
}

val gateRemove = [13, 15, 16, 18, 22, 25, 26, 27, 28, 29, 30, 32, 34] as int[];

for i in 0 to 35 {
    if (gateRemove has i) {
        JEI.removeAndHide(<projectred-integration:gate>.definition.makeStack(i));
    } else {
        recipes.remove(<projectred-integration:gate>.definition.makeStack(i));
    }
}

val holystoneBrick = <aether_legacy:holystone_brick>;
// val redstonePaste = <redstonepaste:redstonepaste>;
val redstonePaste = <ore:dustRedstone>; // Temporary
val redstoneDust = <ore:dustRedstone>;
val redstoneBlock = <ore:blockRedstone>;
val hellfireDust = <ore:dustHellfire>;
val hellfireIngot = <ore:ingotHellfire>;
val hellfireBlock = <ore:blockHellfire>;
val ironIngot = <ore:ingotIron>;
val copperIngot = <ore:ingotCopper>;
val ironBlock = <ore:blockIron>;
val diamondBlock = <ore:blockDiamond>;
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

val ironCover = <microblockcbe:microblock:1>.withTag({mat: "minecraft:iron_block"});
val diamondCover = <microblockcbe:microblock:1>.withTag({mat: "minecraft:diamond_block"});

val mrepeater = <minecraft:repeater>;
val mcomparator = <minecraft:comparator>;
val prepeater = <projectred-integration:gate:10>;
val pcomparator = <projectred-integration:gate:26>;
// val srepeater = <redstonepaste:stickyrepeater>;
val srepeater = mrepeater; // Temporary
// val scomparator = <redstonepaste:stickycomparator>;
val scomparator = mcomparator; // Temporary
val prandomizer = <projectred-integration:gate:11>;
val drandomizer = <projectred-integration:gate:33>;
val qrandomizer = <quark:redstone_randomizer>;

val circuitPlate = <projectred-core:resource_item:0>;
val platformedPlate = <projectred-core:resource_item:4>;
val redIronCompound = <projectred-core:resource_item:251>;
val redAlloyIngot = <projectred-core:resource_item:103>;

val alloyWire = <projectred-transmission:wire:0>;
// val insulatedWire = <ore:projredInsulatedWire>;
val framedAlloyWire = <projectred-transmission:framed_wire:0>;
// val framedInsulatedWire = <ore:projredInsFramedWire>;

val gateOR = <projectred-integration:gate:0>;
val gateNOR = <projectred-integration:gate:1>;
val gateNOT = <projectred-integration:gate:2>;
val gateAND = <projectred-integration:gate:3>;
val gateNAND = <projectred-integration:gate:4>;
val gateXOR = <projectred-integration:gate:5>;
val gateXNOR = <projectred-integration:gate:6>;
val gateBuffer = <projectred-integration:gate:7>;
val gateMultiplexer = <projectred-integration:gate:8>;

val pulseFormer = <projectred-integration:gate:9>;
val synchronizer = <projectred-integration:gate:21>;

val timer = <projectred-integration:gate:17>;
val counter = <projectred-integration:gate:19>;
val runningTimer = <projectred-integration:gate:20>;

val latchRS = <projectred-integration:gate:12>;
val latchTransparent = <projectred-integration:gate:14>;

val cellNull = <projectred-integration:gate:23>;
val cellInvert = <projectred-integration:gate:24>;
val latchStacking = <projectred-integration:gate:31>;

mods.betterwithmods.Saw.add(
    ironBlock,
    [ironCover * 4]
);

mods.betterwithmods.Saw.add(
    diamondBlock,
    [diamondCover * 4]
);

// Core
mods.betterwithmods.Anvil.addShaped(circuitPlate * 4, [
    [holystoneBrick, holystoneBrick, holystoneBrick, holystoneBrick],
    [redstonePaste, hellfireDust, hellfireDust, redstonePaste],
    [holystoneBrick, holystoneBrick, holystoneBrick, holystoneBrick]
]);

mods.betterwithmods.Anvil.addShaped(redIronCompound * 4, [
    [ironIngot, redstoneBlock, null, null],
    [redstoneBlock, ironIngot, copperIngot, null],
    [null, copperIngot, ironIngot, redstoneBlock],
    [null, null, redstoneBlock, ironIngot]
]);

mods.betterwithmods.Crucible.addStoked(
    [redIronCompound],
    [redAlloyIngot]
);

mods.betterwithmods.Crucible.addStoked(
    [
        ironIngot * 4,
        redstoneBlock * 4,
        copperIngot * 2
    ],
    [redAlloyIngot]
);

mods.betterwithmods.Anvil.addShaped(alloyWire * 12, [
    [null, null, mrepeater, redAlloyIngot],
    [null, redstonePaste, redAlloyIngot, redstonePaste],
    [redstonePaste, redAlloyIngot, redstonePaste, null],
    [redAlloyIngot, mrepeater, null, null]
]);

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

    mods.betterwithmods.Anvil.addShaped(wireColored * 4, [
        [null, null, woolColored, alloyWire],
        [null, padding, alloyWire, woolColored],
        [woolColored, alloyWire, padding, null],
        [alloyWire, woolColored, null, null]
    ]);

    mods.betterwithmods.Anvil.addShaped(framedWireColored * 4, [
        [null, null, woolColored, framedAlloyWire],
        [null, padding, framedAlloyWire, woolColored],
        [woolColored, framedAlloyWire, padding, null],
        [framedAlloyWire, woolColored, null, null]
    ]);

    mods.betterwithmods.Anvil.addShaped(framedWireColored * 4, [
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

mods.betterwithmods.Anvil.addShaped(framedAlloyWire * 4, [
    [null, alloyWire, alloyWire, null],
    [alloyWire, pipe, pipe, alloyWire],
    [alloyWire, pipe, pipe, alloyWire],
    [null, alloyWire, alloyWire, null]
]);

mods.betterwithmods.Anvil.addShaped(platformedPlate * 2, [
    [null, alloyWire, alloyWire, null],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate],
    [lattice, null, null, lattice],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(<projectred-core:screwdriver>, [
    [screw, null, null, null],
    [null, crucibleSteelIngot, null, null],
    [null, null, hardenedLeather, blueCarpet],
    [null, null, blueCarpet, hardenedLeather]
]);

mods.betterwithmods.Anvil.addShaped(<projectred-core:multimeter>, [
    [alloyWire, null, null, alloyWire],
    [<projectred-transmission:wire:16>, clock, scomparator, <projectred-transmission:wire:15>],
    [<projectred-transmission:wire:16>, ironCover, ironCover, <projectred-transmission:wire:15>],
    [<projectred-transmission:wire:16>, ironCover, ironCover, <projectred-transmission:wire:15>]
]);

// Combinatorial
mods.betterwithmods.Anvil.addShaped(gateOR, [
    [circuitPlate, torch, circuitPlate],
    [circuitPlate, srepeater, circuitPlate],
    [srepeater, torch, srepeater],
    [redstonePaste, srepeater, redstonePaste]
]);

mods.betterwithmods.Anvil.addShaped(gateNOR, [
    [circuitPlate, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, circuitPlate],
    [srepeater, torch, srepeater],
    [redstonePaste, srepeater, redstonePaste]
]);

mods.betterwithmods.Anvil.addShaped(gateXOR, [
    [circuitPlate, redstonePaste, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, redstonePaste, circuitPlate],
    [redstonePaste, scomparator, scomparator, redstonePaste],
    [srepeater, redstonePaste, redstonePaste, srepeater]
]);

mods.betterwithmods.Anvil.addShaped(gateXNOR, [
    [circuitPlate, torch, torch, circuitPlate],
    [circuitPlate, srepeater, srepeater, circuitPlate],
    [redstonePaste, scomparator, scomparator, redstonePaste],
    [srepeater, redstonePaste, redstonePaste, srepeater]
]);

mods.betterwithmods.Anvil.addShaped(gateAND, [
    [circuitPlate, torch, circuitPlate],
    [torch, redstonePaste, torch],
    [srepeater, torch, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(gateNAND, [
    [circuitPlate, redstonePaste, circuitPlate],
    [torch, redstonePaste, torch],
    [srepeater, torch, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(gateNOT * 2, [
    [circuitPlate, redstonePaste, circuitPlate],
    [redstonePaste, torch, redstonePaste],
    [circuitPlate, srepeater, circuitPlate],
    [redstonePaste, redstonePaste, redstonePaste]
]);

mods.betterwithmods.Anvil.addShapeless(gateNOR, [
    gateOR,
    gateNOT
]);

mods.betterwithmods.Anvil.addShapeless(gateOR, [
    gateNOR,
    gateNOT
]);

mods.betterwithmods.Anvil.addShapeless(gateNAND, [
    gateAND,
    gateNOT
]);

mods.betterwithmods.Anvil.addShapeless(gateAND, [
    gateNAND,
    gateNOT
]);

mods.betterwithmods.Anvil.addShapeless(gateXNOR, [
    gateXOR,
    gateNOT
]);

mods.betterwithmods.Anvil.addShapeless(gateXOR, [
    gateXNOR,
    gateNOT
]);

mods.betterwithmods.Anvil.addShaped(gateBuffer, [
    [circuitPlate, torch, circuitPlate],
    [srepeater, srepeater, srepeater],
    [ironCover, torch, ironCover],
    [circuitPlate, srepeater, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(gateMultiplexer, [
    [circuitPlate, torch, circuitPlate, circuitPlate],
    [torch, redstonePaste, torch, srepeater],
    [srepeater, torch, redstonePaste, circuitPlate],
    [circuitPlate, redstonePaste, redstonePaste, srepeater]
]);

// Basic seq
mods.betterwithmods.Anvil.addShaped(prepeater, [
    [observer, srepeater * 2, circuitPlate],
    [hopper, dropper, circuitPlate],
    [dropper, hopper, circuitPlate],
    [circuitPlate, srepeater * 2, scomparator]
]);

mods.betterwithmods.Anvil.addShaped(pcomparator, [
    [circuitPlate, srepeater, circuitPlate],
    [redstonePaste, redstonePaste, redstonePaste],
    [srepeater, mcomparator, srepeater],
    [circuitPlate, srepeater, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(prandomizer, [
    [circuitPlate, srepeater, ironCover, circuitPlate],
    [ironCover, qrandomizer, qrandomizer, srepeater],
    [srepeater, qrandomizer, dice, ironCover],
    [circuitPlate, srepeater, scomparator, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(drandomizer, [
    [circuitPlate, srepeater, ironCover, circuitPlate],
    [ironCover, redstonePaste, redstonePaste, srepeater],
    [srepeater, mrepeater, prandomizer, ironCover],
    [circuitPlate, srepeater, dice, circuitPlate]
]);

// Sequential
mods.betterwithmods.Anvil.addShaped(pulseFormer, [
    [circuitPlate, redstonePaste, circuitPlate],
    [circuitPlate, concrete, circuitPlate],
    [redstonePaste, stickyPiston, redstonePaste],
    [redstonePaste, srepeater, redstonePaste]
]);

mods.betterwithmods.Anvil.addShaped(synchronizer, [
    [circuitPlate, pulseFormer, circuitPlate],
    [latchRS, torch, latchRS],
    [srepeater, srepeater, srepeater],
    [circuitPlate, hellfireBlock, circuitPlate]
]);

// Latches
mods.betterwithmods.Anvil.addShaped(latchRS, [
    [redstonePaste, torch, concrete],
    [srepeater, circuitPlate, srepeater],
    [concrete, torch, redstonePaste],
    [circuitPlate, circuitPlate, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(latchTransparent, [
    [circuitPlate, torch, circuitPlate, circuitPlate],
    [torch, redstonePaste, redstonePaste, redstonePaste],
    [srepeater, torch, mrepeater, torch],
    [torch, srepeater, redstonePaste, circuitPlate]
]);

// Pointer-based
mods.betterwithmods.Anvil.addShaped(timer, [
    [stickyPiston, redstoneBlock, null, stickyPiston],
    [mcomparator, hopper, hopper, mcomparator],
    [circuitPlate, circuitPlate, circuitPlate, circuitPlate]
]);

mods.betterwithmods.Anvil.addShaped(counter, [
    [circuitPlate, hopper, hopper, circuitPlate],
    [concrete, torch, torch, concrete],
    [pulseFormer, circuitPlate, scomparator, pulseFormer],
    [srepeater, circuitPlate, torch, srepeater]
]);

mods.betterwithmods.Anvil.addShaped(runningTimer, [
    [circuitPlate, hellfireBlock, circuitPlate],
    [srepeater, srepeater, circuitPlate],
    [scomparator, timer, srepeater],
    [circuitPlate, srepeater, redstonePaste]
]);

// Cells
mods.betterwithmods.Anvil.addShaped(cellNull, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, redstonePaste, circuitPlate, scomparator]
]);

mods.betterwithmods.Anvil.addShaped(cellInvert, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, torch, circuitPlate, scomparator]
]);

mods.betterwithmods.Anvil.addShaped(latchStacking, [
    [circuitPlate, circuitPlate, platformedPlate, circuitPlate],
    [scomparator, latchTransparent, circuitPlate, scomparator]
]);
