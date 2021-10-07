import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

recipes.removeByMod("aesthetics");
recipes.removeByRecipeName("simpleores:copper_ingot");
JEI.removeAndHide(<simpleores:copper_bucket>);
JEI.removeAndHide(<simpleores:copper_block>);

val ingotViri = <simpleores:adamantium_ingot>;
val nuggetViri = <ore:nuggetViridium>.firstItem;
val ingotMyth = <simpleores:mythril_ingot>;
val nuggetMyth = <ore:nuggetMythril>.firstItem;
val ingotCopp = <simpleores:copper_ingot>;
val nuggetCopp = <ore:nuggetCopper>.firstItem;
val barCopp = <aesthetics:copper_bars>;
val doorCopp = <aesthetics:copper_door>;
val anyBlockCopp = <ore:blockCopper>;
val blockCopp = <rotn_blocks:copper_block>;
val waxBlockCopp = <simpleores:copper_block>;
val ingotTin = <simpleores:tin_ingot>;
val nuggetTin = <ore:nuggetTin>.firstItem;
val barTin = <aesthetics:tin_bars>;
val doorTin = <aesthetics:tin_door>;

//Extra Parts
recipes.addShaped("viridium_nugget_to_ingot",ingotViri, [
[nuggetViri, nuggetViri, nuggetViri],
[nuggetViri, nuggetViri, nuggetViri],
[nuggetViri, nuggetViri, nuggetViri]]);
recipes.addShapeless("viridium_ingot_to_nugget",nuggetViri*9, [ingotViri]);
recipes.addShaped("mythril_nugget_to_ingot",ingotMyth, [
[nuggetMyth,nuggetMyth,nuggetMyth],
[nuggetMyth,nuggetMyth,nuggetMyth],
[nuggetMyth,nuggetMyth,nuggetMyth]]);
recipes.addShapeless("mythril_ingot_to_nugget",nuggetMyth*9, [ingotMyth]);
recipes.addShaped("copper_nugget_to_ingot",ingotCopp, [
[nuggetCopp,nuggetCopp,nuggetCopp],
[nuggetCopp,nuggetCopp,nuggetCopp],
[nuggetCopp,nuggetCopp,nuggetCopp]]);
recipes.addShapeless("copper_ingot_to_nugget",nuggetCopp*9, [ingotCopp]);
recipes.addShaped("copper_ingot_to_block",blockCopp, [
[ingotCopp,ingotCopp,ingotCopp],
[ingotCopp,ingotCopp,ingotCopp],
[ingotCopp,ingotCopp,ingotCopp]]);
recipes.addShaped("waxed_copper_block",waxBlockCopp*8, [
[blockCopp,blockCopp,blockCopp],
[blockCopp,<ore:wax>,blockCopp],
[blockCopp,blockCopp,blockCopp]]);
recipes.addShapeless("copper_block_to_ingot",ingotCopp*9, [anyBlockCopp]);
recipes.addShaped("copper_bars",barCopp*16, [
[ingotCopp, ingotCopp, ingotCopp],
[ingotCopp, ingotCopp, ingotCopp]]);
recipes.addShaped("copper_door",doorCopp*3, [
[ingotCopp,ingotCopp],
[ingotCopp,ingotCopp],
[ingotCopp,ingotCopp]]);
recipes.addShaped("tin_ingot_to_nugget",ingotTin, [
[nuggetTin,nuggetTin,nuggetTin],
[nuggetTin,nuggetTin,nuggetTin],
[nuggetTin,nuggetTin,nuggetTin]]);
recipes.addShapeless("tin_nugget_to_ingot",nuggetTin*9, [ingotTin]);
recipes.addShaped("tin_bars",barTin*16, [
[ingotTin, ingotTin, ingotTin],
[ingotTin, ingotTin, ingotTin]]);
recipes.addShaped("tin_door",doorTin*3, [
[ingotTin,ingotTin],
[ingotTin,ingotTin],
[ingotTin,ingotTin]]);
// Copper Blocks
var blockCoppA = <rotn_blocks:copper_block>;
var blockCoppB = <rotn_blocks:slightly_weathered_copper_block>;
var blockCoppC = <rotn_blocks:semi_wheatered_copper_block>;
var blockCoppD = <rotn_blocks:weathered_copper_block>;
/*var stairsCoppA = <caves_and_cliffs:copper_stairs>;
var stairsCoppB = <caves_and_cliffs:copper_stairs_stage_1>;
var stairsCoppC = <caves_and_cliffs:copper_stairs_stage_2>;
var stairsCoppD = <caves_and_cliffs:copper_stairs_stage_3>;
var slabCoppA = <caves_and_cliffs:copper_slab>;
var slabCoppB = <caves_and_cliffs:copper_slab_stage_1>;
var slabCoppC = <caves_and_cliffs:copper_slab_stage_2>;
var slabCoppD = <caves_and_cliffs:copper_slab_stage_3>;

recipes.addShapedMirrored("stairsCoppA",stairsCoppA*8, [
[null,null,blockCoppA],
[null,blockCoppA,blockCoppA],
[blockCoppA,blockCoppA,blockCoppA]]);
recipes.addShapeless("stairsCoppA_to_block",blockCoppA*3, [
stairsCoppA,stairsCoppA,stairsCoppA,stairsCoppA]);
recipes.addShaped("slabCoppA",slabCoppA*6, [
[blockCoppA,blockCoppA,blockCoppA]]);
recipes.addShapeless("slabCoppA_to_block",blockCoppA, [
slabCoppA,slabCoppA]);
recipes.addShapedMirrored("stairsCoppB",stairsCoppB*8, [
[null,null,blockCoppB],
[null,blockCoppB,blockCoppB],
[blockCoppB,blockCoppB,blockCoppB]]);
recipes.addShapeless("stairsCoppB_to_block",blockCoppB*3, [
stairsCoppB,stairsCoppB,stairsCoppB,stairsCoppB]);
recipes.addShaped("slabCoppB",slabCoppB*6, [
[blockCoppB,blockCoppB,blockCoppB]]);
recipes.addShapeless("slabCoppB_to_block",blockCoppB, [
slabCoppB,slabCoppB]);
recipes.addShapedMirrored("stairsCoppC",stairsCoppC*8, [
[null,null,blockCoppC],
[null,blockCoppC,blockCoppC],
[blockCoppC,blockCoppC,blockCoppC]]);
recipes.addShapeless("stairsCoppC_to_block",blockCoppC*3, [
stairsCoppC,stairsCoppC,stairsCoppC,stairsCoppC]);
recipes.addShaped("slabCoppC",slabCoppC*6, [
[blockCoppC,blockCoppC,blockCoppC]]);
recipes.addShapeless("slabCoppC_to_block",blockCoppC, [
slabCoppC,slabCoppC]);
recipes.addShapedMirrored("stairsCoppD",stairsCoppD*8, [
[null,null,blockCoppD],
[null,blockCoppD,blockCoppD],
[blockCoppD,blockCoppD,blockCoppD]]);
recipes.addShapeless("stairsCoppD_to_block",blockCoppD*3, [
stairsCoppD,stairsCoppD,stairsCoppD,stairsCoppD]);
recipes.addShaped("slabCoppD",slabCoppD*6, [
[blockCoppD,blockCoppD,blockCoppD]]);
recipes.addShapeless("slabCoppD_to_block",blockCoppD, [
slabCoppD,slabCoppD]);
*/

//info

# Copper
mods.jei.JEI.addDescription(<ore:ingotCopper>,"A rudimentary but serviceable metal. Best used to make redstone components and bronze.");

# Tin
mods.jei.JEI.addDescription(<ore:ingotTin>,"Good for building structures and creating components. Best used to make bronze and a few simple utility items.");

# Viridium
mods.jei.JEI.addDescription(<ore:ingotViridium>,"Viridium is found deep underground in the Beneath. It's not the most durable, but it's light, fast, and stronger than diamond.");
mods.jei.JEI.addDescription(<simpleores:adamantium_helmet>,"Lightweight and highly protective. Let the conquest begin!");
mods.jei.JEI.addDescription(<simpleores:adamantium_chestplate>,"Lightweight and highly protective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_leggings>,"Lightweight and highly protective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_boots>,"For long runs.");
mods.jei.JEI.addDescription(<simpleores:adamantium_sword>,"So light, you could probably wear full armor and carry two of these around with ease.");
mods.jei.JEI.addDescription(<simpleores:adamantium_pickaxe>,"Fragile, yet very effective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_axe>,"Small tree killer.");
mods.jei.JEI.addDescription(<simpleores:adamantium_shovel>,"No dirt block will resist you now.");
mods.jei.JEI.addDescription(<simpleores:adamantium_hoe>,"Is this thing just for farming?");
mods.jei.JEI.addDescription(<simpleores:adamantium_shears>,"One of a kind. These shears are so sharp and nimble, you could actually cut the explosive glands off of a common creeper.");

# Mythril
mods.jei.JEI.addDescription(<ore:ingotMythril>,"Mythril is found deep underground in the Beneath. It's a very powerful metal and has peculiar magical properties that set it apart from diamond.");
mods.jei.JEI.addDescription(<simpleores:mythril_helmet>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_chestplate>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_leggings>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_boots>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_sword>,"An elegant weapon... for a more civilized age. This is the most powerful sword the earth can provide.");
mods.jei.JEI.addDescription(<simpleores:mythril_bow>,"Powerful, nimble, and deadly.");
mods.jei.JEI.addDescription(<simpleores:mythril_pickaxe>,"Only mythril is powerful enough to shatter certain types of ore...");
mods.jei.JEI.addDescription(<simpleores:mythril_axe>,"The heads of your enemies will fall before you... or maybe just a lot of tree trunks.");
mods.jei.JEI.addDescription(<simpleores:mythril_shovel>,"An elegant design for a less-than-glamorous task.");
mods.jei.JEI.addDescription(<simpleores:mythril_hoe>,"Capable of reaping all those pesky crops.");

# Onyx
mods.jei.JEI.addDescription(<simpleores:onyx_ore>,"Onyx is found in the Nether. Despite its crystalline appearance, it is extremely tough, and is one of the hardest known materials. Both Mythril and Soulforged Steel are strong enough to break it into chunks.");
mods.jei.JEI.addDescription(<ore:gemOnyx>,"Onyx is found in the Nether. Despite its crystalline appearance, it is extremely tough, and is one of the hardest known materials. Both Mythril and Soulforged Steel are strong enough to break it into chunks like these.");
mods.jei.JEI.addDescription(<simpleores:onyx_block>,"Perhaps the hardest material to have ever existed. Somehow, in the hands of an expert craftsperson, it becomes quite malleable, but few have seen this mineral and lived to tell the tale.");
mods.jei.JEI.addDescription(<simpleores:onyx_helmet>,"Heavy-duty protection. Armor doesn't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_chestplate>,"Heavy-duty protection. Armor doesn't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_leggings>,"Heavy-duty protection. Armor doesn't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_boots>,"Heavy-duty protection. Armor doesn't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_sword>,"The sheer magnitude of this thing is enough to give any monster a hard time, especially in tandem with the onyx bow.");
mods.jei.JEI.addDescription(<betterwithaddons:greatbow>,"The tension built by this bow paired with its twin sword will eradicate any living being that stands in its way. Only a greatarrow can withstand such pressure.");
mods.jei.JEI.addDescription(<simpleores:onyx_pickaxe>,"Ergonomic to a fault. This is a true miner's best friend... although not quite as adaptable as a tool made of Soulforged Steel.");
mods.jei.JEI.addDescription(<simpleores:onyx_bow>,"OwO? What's this, how did you get it?");
mods.jei.JEI.addDescription(<simpleores:onyx_axe>,"Chop through wood like butter!");
mods.jei.JEI.addDescription(<simpleores:onyx_shovel>,"Huge blade for huge pebbles.");
mods.jei.JEI.addDescription(<simpleores:onyx_hoe>,"This won't burn the fields, right?");
