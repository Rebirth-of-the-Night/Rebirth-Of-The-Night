import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import loottweaker.LootTweaker;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;
import loottweaker.vanilla.loot.Conditions;
import loottweaker.vanilla.loot.Functions;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;


// Belt of Strength
<behgameon:accessory_1>.displayName = "§2Belt of Strength";
<behgameon:accessory_1>.addTooltip(format.darkGreen("Mundane"));

mods.ltt.LootTable.removeGlobalItem("behgameon:accessory_1");

mods.jei.JEI.addDescription(<behgameon:accessory_1>, "A valued accessory for improving vitality. It rarely drops from Bandits and Cave Trolls.");



// Ogre Axe
<dungeontactics:silver_axe>.displayName = "§2Ogre Axe";
<dungeontactics:silver_axe>.addTooltip(format.darkGreen("Rare Weapon"));

recipes.remove(<dungeontactics:silver_axe>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_axe");

mods.jei.JEI.addDescription(<dungeontactics:silver_axe>, "You grow stronger just by holding it. Found rarely in chests underground.");




// Sange
<dungeontactics:mithril_sword>.displayName = "§5Sange";
<dungeontactics:mithril_sword>.addTooltip(format.darkPurple("Epic Weapon"));

furnace.remove(<dungeontactics:mithril_sword>);
recipes.remove(<dungeontactics:mithril_sword>);
mods.betterwithmods.Anvil.addShaped(<dungeontactics:mithril_sword>, 
[
   [<dungeontactics:silver_axe>, <behgameon:accessory_1>, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

mods.jei.JEI.addDescription(<dungeontactics:mithril_sword>, "Sange is an unusually accurate weapon, seeking weak points automatically.");




// Talisman of Evasion

<behgameon:accessory_4>.displayName = "§bTalisman of Evasion";
<behgameon:accessory_4>.addTooltip(format.aqua("Arcane"));

mods.ltt.LootTable.removeGlobalItem("behgameon:accessory_4");

mods.jei.JEI.addDescription(<behgameon:accessory_4>, "A necklace that allows you to anticipate enemy attacks. It can be found by trading from a shady villager...");
