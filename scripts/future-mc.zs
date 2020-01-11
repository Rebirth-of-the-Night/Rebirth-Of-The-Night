import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

mods.jei.JEI.removeAndHide(<minecraftfuture:lantern>);
recipes.remove(<minecraftfuture:stonecutter>);

var a = <minecraft:stone>;
var b = <dungeontactics:silver_ingot>;

//igneous stone blocks
val igStone = <undergroundbiomes:igneous_stone>;
val igStoneSlab = <undergroundbiomes:igneous_stone_halfslab>;
val igBrick = <undergroundbiomes:igneous_brick>;
val igBrickSlab = <undergroundbiomes:igneous_brick_halfslab>;
val igStairs = <undergroundbiomes:igneous_stone_stairs>;
val igBrickStairs = <undergroundbiomes:igneous_brick_stairs>;
val igWall = <undergroundbiomes:igneous_stone_wall>;
val igBrickWall = <undergroundbiomes:igneous_brick_wall>;
val igCobble = <undergroundbiomes:igneous_cobble>;
val igCobbleStairs = <undergroundbiomes:igneous_cobble_stairs>;
val igCobbleSlab = <undergroundbiomes:igneous_cobble_halfslab>;
val igCobbleWall = <undergroundbiomes:igneous_cobble_wall>;

//metamorphic stone blocks

val metaStone = <undergroundbiomes:metamorphic_stone>;
val metaStoneSlab = <undergroundbiomes:metamorphic_stone_halfslab>;
val metaBrick = <undergroundbiomes:metamorphic_brick>;
val metaBrickSlab = <undergroundbiomes:metamorphic_brick_halfslab>;
val metaStairs = <undergroundbiomes:metamorphic_stone_stairs>;
val metaBrickStairs = <undergroundbiomes:metamorphic_brick_stairs>;
val metaWall = <undergroundbiomes:metamorphic_stone_wall>;
val metaBrickWall = <undergroundbiomes:metamorphic_brick_wall>;
val metaCobble = <undergroundbiomes:metamorphic_cobble>;
val metaCobbleStairs = <undergroundbiomes:metamorphic_cobble_stairs>;
val metaCobbleSlab = <undergroundbiomes:metamorphic_cobble_halfslab>;
val metaCobbleWall = <undergroundbiomes:metamorphic_cobble_wall>;

//sedimentary stone blocks

val sediStone = <undergroundbiomes:sedimentary_stone>;
val sediStoneSlab = <undergroundbiomes:sedimentary_stone_halfslab>;
val sediStairs = <undergroundbiomes:sedimentary_stone_stairs>;
val sediWall = <undergroundbiomes:sedimentary_stone_wall>;

//igneous sandstone blocks
val igSand = <undergroundbiomes:igneous_sandstone>;
val igSandSmooth = <undergroundbiomes:igneous_sandstone_smooth>;
val igSandChisel = <undergroundbiomes:igneous_sandstone_chiseled>;


//metamorphic sandstone blocks
val metaSand = <undergroundbiomes:metamorphic_sandstone>;
val metaSandSmooth = <undergroundbiomes:metamorphic_sandstone_smooth>;
val metaSandChisel = <undergroundbiomes:metamorphic_sandstone_chiseled>;

//sedimentary sandstone blocks
val sediSand = <undergroundbiomes:sedimentary_sandstone>;
val sediSandSmooth = <undergroundbiomes:sedimentary_sandstone_smooth>;
val sediSandChisel = <undergroundbiomes:sedimentary_sandstone_chiseled>;

recipes.addShaped("Stone Cutter", <minecraftfuture:stonecutter>,[
	[null, null, null],
    [null, b, null],
    [a, a, a]
]);


//igneous stone recipes

for i in 0 .. 8 {
mods.minecraftfuture.Stonecutter.addOutputs(igBrick.definition.makeStack(i),
											igBrickStairs.definition.makeStack(i),
											igBrickWall.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(igCobble.definition.makeStack(i),
											igCobbleSlab.definition.makeStack(i),
											igCobbleStairs.definition.makeStack(i),
											igCobbleWall.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(igStone.definition.makeStack(i),
											igStoneSlab.definition.makeStack(i),
											igBrick.definition.makeStack(i),
											igBrickSlab.definition.makeStack(i),
											igStairs.definition.makeStack(i),
											igBrickStairs.definition.makeStack(i),											
											igWall.definition.makeStack(i),
											igBrickWall.definition.makeStack(i));



}

//metamorphic stone recipes

for i in 0 .. 8 {
mods.minecraftfuture.Stonecutter.addOutputs(metaBrick.definition.makeStack(i),
											metaBrickStairs.definition.makeStack(i),
											metaBrickWall.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(metaCobble.definition.makeStack(i),
											metaCobbleSlab.definition.makeStack(i),
											metaCobbleStairs.definition.makeStack(i),
											metaCobbleWall.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(metaStone.definition.makeStack(i),
											metaStoneSlab.definition.makeStack(i),
											metaBrick.definition.makeStack(i),
											metaBrickSlab.definition.makeStack(i),
											metaStairs.definition.makeStack(i),
											metaBrickStairs.definition.makeStack(i),											
											metaWall.definition.makeStack(i),
											metaBrickWall.definition.makeStack(i));
}

//sedimentary stone recipes

for i in 0 .. 8 {


mods.minecraftfuture.Stonecutter.addOutputs(sediStone.definition.makeStack(i),
											sediStoneSlab.definition.makeStack(i),
											sediStairs.definition.makeStack(i),
											sediWall.definition.makeStack(i));
}

//igneous sandstone recipes

for i in 0 .. 8 {

mods.minecraftfuture.Stonecutter.addOutputs(igSand.definition.makeStack(i), 
											igSandSmooth.definition.makeStack(i),
											igSandChisel.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(igSandSmooth.definition.makeStack(i),
											igSandChisel.definition.makeStack(i));

}

//metamorphic sandstone recipes

for i in 0 .. 8 {
mods.minecraftfuture.Stonecutter.addOutputs(metaSand.definition.makeStack(i), 
											metaSandSmooth.definition.makeStack(i),
											metaSandChisel.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(metaSandSmooth.definition.makeStack(i),
											metaSandChisel.definition.makeStack(i));

}

//sedimentary sandstone recipes

for i in 0 .. 8 {
mods.minecraftfuture.Stonecutter.addOutputs(sediSand.definition.makeStack(i), 
											sediSandSmooth.definition.makeStack(i),
											sediSandChisel.definition.makeStack(i));

mods.minecraftfuture.Stonecutter.addOutputs(sediSandSmooth.definition.makeStack(i),
											sediSandChisel.definition.makeStack(i));

}

//biomes o plenty sandstone recipes

mods.minecraftfuture.Stonecutter.addOutputs(<biomesoplenty:white_sandstone>, 
											<biomesoplenty:white_sandstone:2>, //Smooth White Sandstone
											<biomesoplenty:white_sandstone:1>, //Chiseled White Sandstone
											<biomesoplenty:white_sandstone_stairs>, //White Sandstone Stairs
											<biomesoplenty:other_slab:1>); //White Sandstone Slab

mods.minecraftfuture.Stonecutter.addOutputs(<biomesoplenty:white_sandstone:2>, //Smooth White Sandstone
											<biomesoplenty:white_sandstone:1>); //Chiseled White Sandstone
											
											
											