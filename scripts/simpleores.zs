import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<simpleores:copper_bucket>);

//Removed crafting table
recipes.remove(<simpleores:onyx_bow>);
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
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_bow>, [
   [null, null, null, mrod],
   [null, neths, myth, strings],
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



//Onyx
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_sword>, [
   [null, null, null, brod],
   [null, null, orod, null],
   [null, orod, null, null],
   [orod, null, null, null]
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_bow>, [
   [null, null, null, orod],
   [null, diam, onyx, onyx],
   [null, onyx, mbow, null],
   [orod, onyx, null, null]
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
mods.jei.JEI.addDescription(<simpleores:copper_ingot>,"A rudimentary but serviceable metal. At its best when using it to make redstone components and Bronze.");

# Tin
mods.jei.JEI.addDescription(<simpleores:tin_ingot>,"Good for building structures and creting components. At its best when using it to make Bronze");

# Viridium
mods.jei.JEI.addDescription(<simpleores:adamantium_ingot>,"Viridium is found in The Beneath. It's not the most durable, but it's light, fast and stronger than diamond.");
mods.jei.JEI.addDescription(<simpleores:adamantium_helmet>,"Lightweight and highly protective. Let the conquest begin!");
mods.jei.JEI.addDescription(<simpleores:adamantium_chestplate>,"Lightweight and highly protective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_leggings>,"Lightweight and highly protective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_boots>,"For long runs.");
mods.jei.JEI.addDescription(<simpleores:adamantium_sword>,"So light you could probably wear full armor and carry two of these around with ease.");
mods.jei.JEI.addDescription(<simpleores:adamantium_pickaxe>,"Fragile, but very effective.");
mods.jei.JEI.addDescription(<simpleores:adamantium_axe>,"Small tree killer.");
mods.jei.JEI.addDescription(<simpleores:adamantium_shovel>,"No dirt block will resist to you.");
mods.jei.JEI.addDescription(<simpleores:adamantium_hoe>,"Is this thing just for farming?");
mods.jei.JEI.addDescription(<simpleores:adamantium_shears>,"One of a kind, these shears are so sharp and nimble you can actually cut the explosive spores off of a creeper");

# Mythril
mods.jei.JEI.addDescription(<simpleores:mythril_ingot>,"Mythril is found in The Beneath. It's very powerful and has some peculiar magical properties that sets it apart from diamond.");
mods.jei.JEI.addDescription(<simpleores:mythril_helmet>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_chestplate>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_leggings>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_boots>,"Comfortable, practical and will keep you alive.");
mods.jei.JEI.addDescription(<simpleores:mythril_sword>,"An elegant weapon... for a more civilized age. This is the most powerful sword the earth can provide.");
mods.jei.JEI.addDescription(<simpleores:mythril_bow>,"Powerful, nimble and deadly.");
mods.jei.JEI.addDescription(<simpleores:mythril_pickaxe>,"Seems brittle, but turns out it's not at all, only mythril can stand up to certain veins of ore...");
mods.jei.JEI.addDescription(<simpleores:mythril_axe>,"The heads of your enemies will roll! (providing you hate trees of course) ");
mods.jei.JEI.addDescription(<simpleores:mythril_shovel>,"An elegant design for a less than glamorous task.");
mods.jei.JEI.addDescription(<simpleores:mythril_hoe>,"This thing definetely will reap all that pesky crops.");

# Onyx
mods.jei.JEI.addDescription(<simpleores:onyx_gem>,"Onyx is found in The Nether. Contrary to its crystalline appearance, it is extremely tough, and the hardest material in existence. Mythril is known to neutralize it enough to make it harvestable");
mods.jei.JEI.addDescription(<simpleores:onyx_helmet>,"Heavy duty protection, armor can't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_chestplate>,"Heavy duty protection, armor can't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_leggings>,"Heavy duty protection, armor can't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_boots>,"Heavy duty protection, armor can't get much better than this.");
mods.jei.JEI.addDescription(<simpleores:onyx_sword>,"The sheer magnitude of this thing is enough to give any monster a hard time, specially in tandem with the onyx bow.");
mods.jei.JEI.addDescription(<simpleores:onyx_bow>,"The tension built by this bow paired with it's twin sword is enough to make it a true beast slayer");
mods.jei.JEI.addDescription(<simpleores:onyx_pickaxe>,"Ergonomic to a fault, this is a true miner's best friend.");
mods.jei.JEI.addDescription(<simpleores:onyx_axe>,"Chop through wood like butter!");
mods.jei.JEI.addDescription(<simpleores:onyx_shovel>,"Huge blade for Huge pebbles.");
mods.jei.JEI.addDescription(<simpleores:onyx_hoe>,"This will not burn my fields, right?");
