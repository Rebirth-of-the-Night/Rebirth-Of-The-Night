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

var removeArray = [<minecraft:pumpkin>, <minecraft:vine>, <minecraft:yellow_flower:0>, <minecraft:brown_mushroom>, <minecraft:red_mushroom>, <betterwithmods:rope>, <minecraft:red_flower:0>, <minecraft:red_flower:1>, <minecraft:red_flower:2>, <minecraft:red_flower:3>, <minecraft:red_flower:4>, <minecraft:red_flower:5>, <minecraft:red_flower:6>, <minecraft:red_flower:7>, <minecraft:red_flower:8>, <minecraft:noteblock>, <minecraft:jukebox>] as IItemStack[];
for i in removeArray{
    Saw.remove(i);
}

Saw.add(<minecraft:log:0>,[<minecraft:planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:1>,[<minecraft:planks:1>*5,<hitwithaxe:bark:20>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:2>,[<minecraft:planks:2>*5,<hitwithaxe:bark:2>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log:3>,[<minecraft:planks:3>*5,<hitwithaxe:bark:12>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log2:0>,[<minecraft:planks:4>*5,<hitwithaxe:bark:0>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:log2:1>,[<minecraft:planks:5>*5,<hitwithaxe:bark:8>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:4>,[<biomesoplenty:planks_0>*5,<hitwithaxe:bark:47>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:5>,[<biomesoplenty:planks_0:1>*5,<hitwithaxe:bark:33>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:6>,[<biomesoplenty:planks_0:2>*5,<hitwithaxe:bark:48>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_0:7>,[<biomesoplenty:planks_0:3>*5,<hitwithaxe:bark:38>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:4>,[<biomesoplenty:planks_0:4>*5,<hitwithaxe:bark:36>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:5>,[<biomesoplenty:planks_0:5>*5,<hitwithaxe:bark:41>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:6>,[<biomesoplenty:planks_0:6>*5,<hitwithaxe:bark:43>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_1:7>,[<biomesoplenty:planks_0:7>*5,<hitwithaxe:bark:44>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:4>,[<biomesoplenty:planks_0:8>*5,<hitwithaxe:bark:46>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:5>,[<biomesoplenty:planks_0:9>*5,<hitwithaxe:bark:49>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:6>,[<biomesoplenty:planks_0:10>*5,<hitwithaxe:bark:45>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_2:7>,[<biomesoplenty:planks_0:11>*5,<hitwithaxe:bark:39>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:4>,[<biomesoplenty:planks_0:12>*5,<hitwithaxe:bark:40>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:5>,[<biomesoplenty:planks_0:13>*5,<hitwithaxe:bark:42>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:6>,[<biomesoplenty:planks_0:14>*5,<hitwithaxe:bark:35>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_3:7>,[<biomesoplenty:planks_0:15>*5,<hitwithaxe:bark:37>*4,<pyrotech:rock:7>*2]);
Saw.add(<biomesoplenty:log_4:5>,[<hitwithaxe:bark:34>*4,<pyrotech:rock:7>*12]);
Saw.add(<rustic:log:0>,[<rustic:planks:0>*5,<hitwithaxe:bark:27>*4,<pyrotech:rock:7>*2]);
Saw.add(<rustic:log:1>,[<rustic:planks:1>*5,<hitwithaxe:bark:25>*4,<pyrotech:rock:7>*2]);
Saw.add(<stygian:endlog>,[<stygian:endplanks>*5,<hitwithaxe:bark:15>*6,<pyrotech:rock:7>*2]);
Saw.add(<harvestcraft:pammaple>,[<minecraft:planks:1>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<harvestcraft:pampaperbark>,[<minecraft:planks:3>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<harvestcraft:pamcinnamon>,[<minecraft:planks:3>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:0>,[<twilightforest:twilight_oak_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:1>,[<twilightforest:canopy_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:2>,[<twilightforest:mangrove_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:twilight_log:3>,[<twilightforest:dark_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:0>,[<twilightforest:time_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:1>,[<twilightforest:trans_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:2>,[<twilightforest:mine_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:magic_log:3>,[<twilightforest:sort_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<twilightforest:giant_log>, [<minecraft:planks>*320,<hitwithaxe:bark:15>*256,<pyrotech:rock:7>*128]);
Saw.add(<betterwithmods:blood_log>,[<biomesoplenty:fleshchunk>*8,<betterwithmods:bark:6>*4,<netherex:bone_sliver>]);
Saw.add(<aether_legacy:aether_log:*>,[<aether_legacy:skyroot_plank>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<defiledlands:tenebra_log>,[<defiledlands:tenebra_planks>*5,<hitwithaxe:bark:15>*4,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:noteblock>,[<cyclicmagic:doorbell_simple>*4,<minecraft:redstone>,<pyrotech:rock:7>*2]);
Saw.add(<minecraft:jukebox>,[<cyclicmagic:doorbell_simple>*4,<contenttweaker:material_part:45>,<pyrotech:rock:7>*2]);

Saw.add(<betterwithmods:nether_clay>,[<betterwithmods:unfired_pottery:5>*4]);
Saw.add(<contenttweaker:fiery_nether_sludge>,[<contenttweaker:unfired_fiery_brick>*4]);
Saw.add(<minecraft:clay>,[<betterwithmods:unfired_pottery:4>*4]);
//Saw.add(<contenttweaker:loose_adobe_bricks>,[<contenttweaker:unfired_adobe_brick>*4]); there's no raw adobe yet
Saw.add(<biomesoplenty:mud>,[<contenttweaker:unfired_mud_brick>*4]);
Saw.add(<contenttweaker:unfiredrefractory>,[<contenttweaker:unfired_refractory_brick>*4]);
Saw.add(<ceramics:porcelain>,[<contenttweaker:unfired_porcelain_brick>*4]);

for corner in MiniBlocks.getMiniBlock("corner", <ore:plankWood>).items {
    Saw.remove(corner);
}
Saw.add(MiniBlocks.getMiniBlock("corner", <ore:plankWood>),[<pyrotech:rock:7>*2,<contenttweaker:broken_stick>]);

// Debarked Logs to Planks in Saw

val PlanksList = [<minecraft:planks:4>, <minecraft:planks:2>, <minecraft:planks:5>, <minecraft:planks:3>, <minecraft:planks>, <minecraft:planks:1>, <rustic:planks:1>, <rustic:planks>, <biomesoplenty:planks_0:13>, <biomesoplenty:planks_0:5>, <biomesoplenty:planks_0:12>, <biomesoplenty:planks_0:11>, <biomesoplenty:planks_0:3>, <biomesoplenty:planks_0:15>, <biomesoplenty:planks_0:4>, <biomesoplenty:planks_0:14>, <biomesoplenty:planks_0:1>, <biomesoplenty:planks_0:9>, <biomesoplenty:planks_0:2>, <biomesoplenty:planks_0>, <biomesoplenty:planks_0:8>, <biomesoplenty:planks_0:10>, <biomesoplenty:planks_0:7>, <biomesoplenty:planks_0:6>] as IItemStack[];
val DebarkedLogsList = [<hitwithaxe:debarked_acacia>, <hitwithaxe:debarked_birch>, <hitwithaxe:debarked_dark_oak>, <hitwithaxe:debarked_jungle>, <hitwithaxe:debarked_oak>, <hitwithaxe:debarked_spruce>, <hitwithaxe:debarked_ironwood>, <hitwithaxe:debarked_olive>, <hitwithaxe:debarked_mahogany>, <hitwithaxe:debarked_magic>, <hitwithaxe:debarked_jacaranda>, <hitwithaxe:debarked_hellbark>, <hitwithaxe:debarked_fir_bop>, <hitwithaxe:debarked_eucalyptus_bop>, <hitwithaxe:debarked_ethereal>, <hitwithaxe:debarked_ebony>, <hitwithaxe:debarked_cherry>, <hitwithaxe:debarked_willow_bop>, <hitwithaxe:debarked_umbran>, <hitwithaxe:debarked_sacred_oak>, <hitwithaxe:debarked_redwood>,<hitwithaxe:debarked_pine>, <hitwithaxe:debarked_palm>, <hitwithaxe:debarked_mangrove>] as IItemStack[];

Saw.add(<hitwithaxe:debarked_acacia>, [<minecraft:planks:4>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_birch>, [<minecraft:planks:2>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_dark_oak>, [<minecraft:planks:5>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_jungle>, [<minecraft:planks:3>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_oak>, [<minecraft:planks>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_spruce>, [<minecraft:planks:1>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_ironwood>, [<rustic:planks:1>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_olive>, [<rustic:planks>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_mahogany>, [<biomesoplenty:planks_0:13>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_magic>, [<biomesoplenty:planks_0:5>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_jacaranda>, [<biomesoplenty:planks_0:12>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_hellbark>, [<biomesoplenty:planks_0:11>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_fir_bop>, [<biomesoplenty:planks_0:3>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_eucalyptus_bop>, [<biomesoplenty:planks_0:15>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_ethereal>, [<biomesoplenty:planks_0:4>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_ebony>, [<biomesoplenty:planks_0:14>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_cherry>, [<biomesoplenty:planks_0:1>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_willow_bop>, [<biomesoplenty:planks_0:9>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_umbran>, [<biomesoplenty:planks_0:2>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_sacred_oak>, [<biomesoplenty:planks_0>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_redwood>, [<biomesoplenty:planks_0:8>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_pine>, [<biomesoplenty:planks_0:10>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_palm>, [<biomesoplenty:planks_0:7>*5, <pyrotech:rock:7>*2]);
Saw.add(<hitwithaxe:debarked_mangrove>, [<biomesoplenty:planks_0:6>*5, <pyrotech:rock:7>*2]);

// Cutting Blue Slate
Saw.add(<earthworks:block_slate>, [<contenttweaker:raw_dread_slate>]);