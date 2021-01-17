import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.item.IItemTransformer;
import mods.betterwithmods.Saw;
import mods.pyrotech.Chopping;
import mods.pyrotech.StoneSawmill;
import mods.betterwithmods.MiniBlocks;

//Bark replacement
//Also add axes to oredict in minecraft.zs
//Birch and Alicio give 8 (immeeeersion)

Chopping.removeAllRecipes();
StoneSawmill.removeAllRecipes();

var removeArray = [<minecraft:pumpkin>, <minecraft:vine>, <minecraft:yellow_flower:0>, <minecraft:brown_mushroom>, <minecraft:red_mushroom>, <betterwithmods:rope>, <minecraft:red_flower:0>, <minecraft:red_flower:1>, <minecraft:red_flower:2>, <minecraft:red_flower:3>, <minecraft:red_flower:4>, <minecraft:red_flower:5>, <minecraft:red_flower:6>, <minecraft:red_flower:7>, <minecraft:red_flower:8>] as IItemStack[];
for i in removeArray{
    Saw.remove(i);
}

// Saw.add(<betterwithmods:blood_log>,[<betterwithmods:bark:6>*5,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:0>,[<minecraft:planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:1>,[<minecraft:planks:1>*5,<hitwithaxe:bark:20>*3,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:2>,[<minecraft:planks:2>*5,<hitwithaxe:bark:2>*8,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:3>,[<minecraft:planks:3>*5,<hitwithaxe:bark:12>*3,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log2:0>,[<minecraft:planks:4>*5,<hitwithaxe:bark:0>*3,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log2:1>,[<minecraft:planks:5>*5,<hitwithaxe:bark:8>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:4>,[<biomesoplenty:planks_0>*5,<hitwithaxe:bark:47>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:5>,[<biomesoplenty:planks_0:1>*5,<hitwithaxe:bark:33>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:6>,[<biomesoplenty:planks_0:2>*5,<hitwithaxe:bark:48>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:7>,[<biomesoplenty:planks_0:3>*5,<hitwithaxe:bark:38>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:4>,[<biomesoplenty:planks_0:4>*5,<hitwithaxe:bark:36>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:5>,[<biomesoplenty:planks_0:5>*5,<hitwithaxe:bark:41>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:6>,[<biomesoplenty:planks_0:6>*5,<hitwithaxe:bark:43>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:7>,[<biomesoplenty:planks_0:7>*5,<hitwithaxe:bark:44>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:4>,[<biomesoplenty:planks_0:8>*5,<hitwithaxe:bark:46>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:5>,[<biomesoplenty:planks_0:9>*5,<hitwithaxe:bark:49>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:6>,[<biomesoplenty:planks_0:10>*5,<hitwithaxe:bark:45>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:7>,[<biomesoplenty:planks_0:11>*5,<hitwithaxe:bark:39>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:4>,[<biomesoplenty:planks_0:12>*5,<hitwithaxe:bark:40>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:5>,[<biomesoplenty:planks_0:13>*5,<hitwithaxe:bark:42>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:6>,[<biomesoplenty:planks_0:14>*5,<hitwithaxe:bark:35>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:7>,[<biomesoplenty:planks_0:15>*5,<hitwithaxe:bark:37>*3,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_4:5>,[<hitwithaxe:bark:34>*3,<pyrotech:rock:7>*12]);
Saw.add(<rustic:log:0>,[<rustic:planks:0>*5,<hitwithaxe:bark:27>*3,<pyrotech:rock:7>*2]);
Saw.add(<rustic:log:1>,[<rustic:planks:1>*5,<hitwithaxe:bark:25>*3,<pyrotech:rock:7>*2]);
Saw.add(<stygian:endlog>,[<stygian:endplanks>*5]);
Saw.add(<harvestcraft:pammaple>,[<minecraft:planks:1>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<harvestcraft:pampaperbark>,[<minecraft:planks:3>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<harvestcraft:pamcinnamon>,[<minecraft:planks:3>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:0>,[<twilightforest:twilight_oak_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:1>,[<twilightforest:canopy_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:2>,[<twilightforest:mangrove_planks>*5,<hitwithaxe:bark:15>*8,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:3>,[<twilightforest:dark_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:0>,[<twilightforest:time_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:1>,[<twilightforest:trans_planks>*5,<hitwithaxe:bark:15>*5,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:2>,[<twilightforest:mine_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:3>,[<twilightforest:sort_planks>*5,<hitwithaxe:bark:15>*3,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:noteblock>,[<cyclicmagic:doorbell_simple>*4,<minecraft:redstone>,<pyrotech:rock:7>*2]);

for corner in MiniBlocks.getMiniBlock("corner", <ore:plankWood>).items {
    if (!corner.matches(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}))) {
        Saw.remove(corner);
    }
}
Saw.add(MiniBlocks.getMiniBlock("corner", <ore:plankWood>),[<pyrotech:rock:7>*2,<contenttweaker:broken_stick>]);
