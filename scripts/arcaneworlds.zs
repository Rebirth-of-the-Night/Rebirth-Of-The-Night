import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<arcaneworlds:sapphire>);
mods.jei.JEI.removeAndHide(<arcaneworlds:block_sapphire>);
mods.jei.JEI.removeAndHide(<arcaneworlds:amethyst>);
mods.jei.JEI.removeAndHide(<arcaneworlds:block_amethyst>);

mods.ArcaneWorld.removeAll();

//Mob summoning
//mods.ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)
mods.ArcaneWorld.createRitualSummon("pixie", "Pixie Calling", "iceandfire:if_pixie", [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<ore:Gem_highQuality>]);