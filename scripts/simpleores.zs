import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

mods.jei.JEI.removeAndHide(<simpleores:copper_bucket>);

//Extra Parts
recipes.addShaped(<simpleores:adamantium_ingot>, [[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>],[<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>], [<contenttweaker:material_part:10>, <contenttweaker:material_part:10>, <contenttweaker:material_part:10>]]);
recipes.addShapeless(<contenttweaker:material_part:10>*9, [<ore:ingotViridium>]);
recipes.addShaped(<simpleores:mythril_ingot>, [[<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>],[<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>], [<contenttweaker:material_part:8>, <contenttweaker:material_part:8>, <contenttweaker:material_part:8>]]);
recipes.addShapeless(<contenttweaker:material_part:8>*9, [<ore:ingotMythril>]);
recipes.addShaped(<simpleores:copper_ingot>, [[<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>],[<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>], [<contenttweaker:material_part:4>, <contenttweaker:material_part:4>, <contenttweaker:material_part:4>]]);
recipes.addShapeless(<contenttweaker:material_part:4>*9, [<ore:ingotCopper>]);
recipes.addShaped(<simpleores:tin_ingot>, [[<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>],[<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>], [<contenttweaker:material_part:6>, <contenttweaker:material_part:6>, <contenttweaker:material_part:6>]]);
recipes.addShapeless(<contenttweaker:material_part:6>*9, [<ore:ingotTin>]);

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
