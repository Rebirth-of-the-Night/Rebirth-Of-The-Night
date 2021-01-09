import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ArcaneWorld;
import mods.ltt.LootTable;

JEI.removeAndHide(<arcaneworld:sapphire>);
JEI.removeAndHide(<arcaneworld:block_sapphire>);
JEI.removeAndHide(<arcaneworld:amethyst>);
JEI.removeAndHide(<arcaneworld:block_amethyst>);
JEI.removeAndHide(<arcaneworld:ore_sapphire>);
JEI.removeAndHide(<arcaneworld:ore_amethyst>);
JEI.removeAndHide(<arcaneworld:ore_amethyst_nether>);
JEI.removeAndHide(<arcaneworld:biome_crystal>);
JEI.removeAndHide(<arcaneworld:potion_orb>);

LootTable.removeGlobalItem("arcaneworld:sapphire");
LootTable.removeGlobalItem("arcaneworld:amethyst");
LootTable.removeGlobalItem("arcaneworld:block_sapphire");
LootTable.removeGlobalItem("arcaneworld:block_amethyst");
LootTable.removeGlobalItem("arcaneworld:biome_crystal");

ArcaneWorld.removeAll();
recipes.remove(<arcaneworld:levitator>);
recipes.remove(<arcaneworld:ritual_table>);

//Ritual Table
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:material_part:12>, <contenttweaker:vis_shard>, <contenttweaker:material_part:12>],
    [<contenttweaker:vis_shard>, <minecraft:carpet:10>, <contenttweaker:vis_shard>],
    [<betterwithmods:material:20>, <hitwithaxe:debarked_magic>, <betterwithmods:material:20>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<arcaneworld:ritual_table>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//Mob summoning
//ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)
ArcaneWorld.createRitualSummon("pixie", "Pixie Calling", "iceandfire:if_pixie", [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<ore:Gem_highQuality>]);
//Item summoning
//ArcaneWorld.createRitualCreateItem(String name, String displayName, IItemStack result, IIngredient... inputs)
ArcaneWorld.createRitualCreateItem("undying_heart", "Heart Curse", <mod_lavacow:undyingheart>, [<contenttweaker:plague_rune>.anyDamage().transformDamage(),<defiledlands:black_heart>]);
ArcaneWorld.createRitualCreateItem("black_heart", "Heart Defilement", <defiledlands:black_heart>, [<defiledlands:defilement_powder>,<mod_lavacow:undyingheart>]);
ArcaneWorld.createRitualCreateItem("arcane_focus", "Arcanic Intent", <contenttweaker:arcane_focus>.withDamage(16), [<contenttweaker:unattuned_focus>,<contenttweaker:arcane_rune>,<contenttweaker:vis_shard>]);
