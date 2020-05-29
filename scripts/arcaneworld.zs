import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<arcaneworld:sapphire>);
mods.jei.JEI.removeAndHide(<arcaneworld:block_sapphire>);
mods.jei.JEI.removeAndHide(<arcaneworld:amethyst>);
mods.jei.JEI.removeAndHide(<arcaneworld:block_amethyst>);
mods.jei.JEI.removeAndHide(<arcaneworld:ore_sapphire>);
mods.jei.JEI.removeAndHide(<arcaneworld:ore_amethyst>);
mods.jei.JEI.removeAndHide(<arcaneworld:ore_amethyst_nether>);

mods.ltt.LootTable.removeGlobalItem("arcaneworld:sapphire");
mods.ltt.LootTable.removeGlobalItem("arcaneworld:amethyst");
mods.ltt.LootTable.removeGlobalItem("arcaneworld:block_sapphire");
mods.ltt.LootTable.removeGlobalItem("arcaneworld:block_amethyst");

mods.ArcaneWorld.removeAll();

//Mob summoning
//mods.ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)
mods.ArcaneWorld.createRitualSummon("pixie", "Pixie Calling", "iceandfire:if_pixie", [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<ore:Gem_highQuality>]);