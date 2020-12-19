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
recipes.remove(<arcaneworld:levitator>);

//Mob summoning
//mods.ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)
mods.ArcaneWorld.createRitualSummon("pixie", "Pixie Calling", "iceandfire:if_pixie", [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<ore:Gem_highQuality>]);
//Item summoning
//mods.ArcaneWorld.createRitualCreateItem(String name, String displayName, IItemStack result, IIngredient... inputs)
mods.ArcaneWorld.createRitualCreateItem("undying_heart", "Heart Curse", <mod_lavacow:undyingheart>, [<contenttweaker:plague_rune>.anyDamage().transformDamage(),<defiledlands:black_heart>]);
mods.ArcaneWorld.createRitualCreateItem("black_heart", "Heart Defilement", <defiledlands:black_heart>, [<defiledlands:defilement_powder>,<mod_lavacow:undyingheart>]);

