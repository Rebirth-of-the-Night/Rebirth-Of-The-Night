import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;
import mods.ltt.LootTable;
import loottweaker.LootTweaker;
import crafttweaker.item.WeightedItemStack;
import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityDefinition;

// Heaven's Halberd

<spartanweaponry:halberd_invar>.displayName = "§eHeaven's Halberd";
<spartanweaponry:halberd_invar>.addTooltip(format.lightPurple("This halberd moves with the speed of a smaller weapon, allowing the bearer to win duels that a heavy edge would not."));
<spartanweaponry:halberd_invar>.addTooltip(format.gold("Patreon relic 3 of 3."));

JEI.addDescription(<spartanweaponry:halberd_invar>,"Relic idea by Heaveness. Thank you for being a Dragonsteel Supporter on Patreon!");

// Belt of Strength
<behgameon:accessory_1>.displayName = "§bBelt of Strength";

LootTable.removeGlobalItem("behgameon:accessory_1");

<behgameon:accessory_1>.addTooltip(format.lightPurple("A valued accessory for improving vitality."));

// Ogre Axe
<dungeontactics:silver_axe>.addTooltip(format.darkGreen("Rare Weapon"));

recipes.remove(<dungeontactics:silver_axe>);
LootTable.removeGlobalItem("dungeontactics:silver_axe");

<dungeontactics:silver_axe>.addTooltip(format.lightPurple("You grow stronger just by holding it."));

// Sange
<dungeontactics:mithril_sword>.addTooltip(format.darkGreen("Rare Weapon"));

furnace.remove(<dungeontactics:mithril_sword>);
furnace.remove(<dungeontactics:mithril_ingot>);
recipes.remove(<dungeontactics:mithril_sword>);
mods.betterwithmods.Anvil.addShaped(<dungeontactics:mithril_sword>, 
[
   [<dungeontactics:silver_axe>, <behgameon:accessory_1>, null, null],
   [null, null, null, null],
   [null, null, null, null],
   [null, null, null, null]
]);

<dungeontactics:mithril_sword>.addTooltip(format.lightPurple("An unusually accurate weapon, seeking weak points automatically."));


// Talisman of Evasion
<behgameon:accessory_4>.displayName = "§bTalisman of Evasion";

LootTable.removeGlobalItem("behgameon:accessory_4");

<behgameon:accessory_4>.addTooltip(format.lightPurple("A necklace that allows you to anticipate enemy attacks."));
