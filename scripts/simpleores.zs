import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

mods.jei.JEI.removeAndHide(<simpleores:copper_bucket>);

//Removed crafting table
mods.jei.JEI.removeAndHide(<simpleores:onyx_bow>);
recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:mythril_bow>);
recipes.remove(<simpleores:mythril_sword>);

recipes.remove(<simpleores:mythril_sword>);
recipes.remove(<simpleores:mythril_pickaxe>);
recipes.remove(<simpleores:mythril_axe>);
recipes.remove(<simpleores:mythril_shovel>);
recipes.remove(<simpleores:mythril_hoe>);

recipes.remove(<simpleores:adamantium_sword>);
recipes.remove(<simpleores:adamantium_pickaxe>);
recipes.remove(<simpleores:adamantium_axe>);
recipes.remove(<simpleores:adamantium_shovel>);
recipes.remove(<simpleores:adamantium_hoe>);

recipes.remove(<simpleores:onyx_sword>);
recipes.remove(<simpleores:onyx_pickaxe>);
recipes.remove(<simpleores:onyx_axe>);
recipes.remove(<simpleores:onyx_shovel>);
recipes.remove(<simpleores:onyx_hoe>);

//Extra Parts
recipes.addShaped(<simpleores:adamantium_ingot>, [[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>],[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>], [<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>]]);
recipes.addShapeless(<contenttweaker:material_part:10>*9, [<simpleores:adamantium_ingot>]);
recipes.addShaped(<simpleores:mythril_ingot>, [[<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>],[<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>], [<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>]]);
recipes.addShapeless(<contenttweaker:material_part:8>*9, [<simpleores:mythril_ingot>]);
recipes.addShaped(<simpleores:copper_ingot>, [[<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>],[<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>], [<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>]]);
recipes.addShapeless(<contenttweaker:material_part:4>*9, [<simpleores:copper_ingot>]);
recipes.addShaped(<simpleores:tin_ingot>, [[<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>],[<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>], [<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>]]);
recipes.addShapeless(<contenttweaker:material_part:6>*9, [<simpleores:tin_ingot>]);

//Better With Mods SFS Anvil
//Values
val viri = <simpleores:adamantium_ingot>;
val myth = <simpleores:mythril_ingot>;
val onyx = <simpleores:onyx_gem>;
val brod = <minecraft:blaze_rod>;
val orod = <simpleores:onyx_rod>;
val mrod = <simpleores:mythril_rod>;
val strings = <minecraft:string>;
var neths = <minecraft:nether_star>;
var mbow = <simpleores:mythril_bow>;
var diam = <minecraft:diamond>;

//Viridium
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_sword>, [
   [null, null, viri, brod],
   [null, null, viri, null],
   [null, viri, null, null],
   [viri, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_pickaxe>, [
   [null,null, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [null, viri, viri, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_axe>, [
   [null, viri, null, viri],
   [viri, viri, brod, null],
   [viri, brod, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [viri, brod, null, null],
   [viri, viri, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_hoe>, [
   [null, viri, null, viri],
   [viri, null, brod, null],
   [viri, brod, null, null],
   [brod, null, null, null]
]);



//Mythril
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_sword>, [
   [null, null, null, brod],
   [null, null, myth, null],
   [null, mrod, null, null],
   [myth, null, null, null]
]);

val enchantmentsMythrilBow as IEnchantmentDefinition[] = [<enchantment:randomenchantments:phasing>];
var enchantmentMapMythrilBow as IData = {};

enchantmentMapMythrilBow += enchantmentsMythrilBow[0].makeEnchantment(1).makeTag();

mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_bow>.withTag(enchantmentMapMythrilBow), [
   [null, null, null, mrod],
   [null, brod, myth, strings],
   [null, myth, strings, null],
   [mrod, strings, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_pickaxe>, [
   [null,null, null, brod],
   [myth, null, brod, null],
   [myth, myth, null, null],
   [null, myth, myth, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_axe>, [
   [null, null, null, brod],
   [myth, myth, brod, null],
   [myth, brod, null,null],
   [mrod, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [myth, brod, null, null],
   [myth, myth, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_hoe>, [
   [null, null, null, brod],
   [mrod, null, brod, null],
   [mrod, brod, null, null],
   [brod, null, null, null]
]);



//Onyx and Onyxbow tweaks
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_sword>, [
   [null, null, null, brod],
   [null, null, orod, null],
   [null, orod, null, null],
   [orod, null, null, null]
]);
mods.betterwithmods.Anvil.removeShaped(<betterwithaddons:greatbow>);
<betterwithaddons:greatbow>.maxDamage = 1000;

val enchantments1 as IEnchantmentDefinition[] = [<enchantment:minecraft:fire_aspect>];
var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(2).makeTag();

mods.betterwithmods.Anvil.addShaped(<betterwithaddons:greatbow>.withTag(enchantmentMap1), [
   [null, null, null, orod],
   [null, <minecraft:nether_star>, orod, <quark:biotite>],
   [null, orod, mbow, null],
   [orod, <quark:biotite>, null, null]
]);

mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_pickaxe>, [
   [null,null, null, brod],
   [onyx, null, brod, null],
   [onyx, onyx, null, null],
   [null, onyx, onyx, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_axe>, [
   [null, null, null, brod],
   [null, orod, brod, null],
   [orod, brod, null,null],
   [onyx, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_shovel>, [
   [null, null, null, brod],
   [null, null, brod, null],
   [onyx, brod, null, null],
   [onyx, onyx, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_hoe>, [
   [null, null, null, brod],
   [orod, null, brod, null],
   [orod, brod, null, null],
   [brod, null, null, null]
]);

//info

# Copper
mods.jei.JEI.addDescription(<simpleores:copper_ingot>,"A rudimentary but serviceable metal. Best used to make redstone components and bronze.");

# Tin
mods.jei.JEI.addDescription(<simpleores:tin_ingot>,"Good for building structures and creating components. Best used to make bronze and a few simple utility items.");

# Viridium
mods.jei.JEI.addDescription(<simpleores:adamantium_ingot>,"Viridium is found deep underground in the Beneath. It's not the most durable, but it's light, fast, and stronger than diamond.");
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
mods.jei.JEI.addDescription(<simpleores:mythril_ingot>,"Mythril is found deep underground in the Beneath. It's a very powerful metal and has peculiar magical properties that set it apart from diamond.");
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
mods.jei.JEI.addDescription(<simpleores:onyx_gem>,"Onyx is found in the Nether. Despite its crystalline appearance, it is extremely tough, and is one of the hardest known materials. Both Mythril and Soulforged Steel are strong enough to break it into chunks like these.");
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
