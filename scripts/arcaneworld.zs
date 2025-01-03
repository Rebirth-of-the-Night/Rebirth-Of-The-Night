import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import mods.jei.JEI;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.ArcaneWorld;
import mods.ltt.LootTable;
import mods.betterwithaddons.Infuser;

JEI.removeAndHide(<arcaneworld:sapphire>);
JEI.removeAndHide(<arcaneworld:block_sapphire>);
JEI.removeAndHide(<arcaneworld:amethyst>);
JEI.removeAndHide(<arcaneworld:block_amethyst>);
JEI.removeAndHide(<arcaneworld:ore_sapphire>);
JEI.removeAndHide(<arcaneworld:ore_amethyst>);
JEI.removeAndHide(<arcaneworld:ore_amethyst_nether>);
JEI.removeAndHide(<arcaneworld:biome_crystal>);
JEI.removeAndHide(<arcaneworld:potion_orb>);
JEI.removeAndHide(<arcaneworld:ritual_scroll>);
JEI.removeAndHide(<arcaneworld:levitator>);
JEI.removeAndHide(<arcaneworld:arcane_hoe>);
JEI.removeAndHide(<arcaneworld:recaller>);
JEI.removeAndHide(<arcaneworld:ethereal_sword>);
JEI.removeAndHide(<arcaneworld:growth_powder>);
JEI.removeAndHide(<arcaneworld:glowing_chorus>);

JEI.removeAndHide(<arcaneworld:molten_pickaxe>);
JEI.removeAndHide(<arcaneworld:molten_shovel>);
JEI.removeAndHide(<arcaneworld:molten_axe>);
recipes.remove(<arcaneworld:molten_pickaxe>);
recipes.remove(<arcaneworld:molten_shovel>);
recipes.remove(<arcaneworld:molten_axe>);

furnace.setFuel(<arcaneworld:levitator>, 0);

LootTable.removeGlobalItem("arcaneworld:sapphire");
LootTable.removeGlobalItem("arcaneworld:amethyst");
LootTable.removeGlobalItem("arcaneworld:block_sapphire");
LootTable.removeGlobalItem("arcaneworld:block_amethyst");
LootTable.removeGlobalItem("arcaneworld:biome_crystal");
LootTable.removeGlobalItem("arcaneworld:ritual_scroll");
LootTable.removeGlobalItem("arcaneworld:levitator");

ArcaneWorld.removeAll();
recipes.remove(<arcaneworld:levitator>);
recipes.remove(<arcaneworld:ritual_table>);

// Ritual Table
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:ingotElectrum>.firstItem, <contenttweaker:vis_shard>, <ore:ingotElectrum>.firstItem],
    [<contenttweaker:vis_shard>, <minecraft:carpet:10>, <contenttweaker:vis_shard>],
    [<betterwithmods:material:20>, <hitwithaxe:debarked_magic>, <betterwithmods:material:20>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:trans_rune>, 1)
  .addOutput(<arcaneworld:ritual_table>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
// Bloodied Demon Eye
RecipeBuilder.get("mage")
  .setShaped([
    [<netherex:wither_dust>],
    [<aether_legacy:vampire_blade>]])
  .setMinimumTier(1)
  .setMaximumTier(1)
  .addOutput(<netherex:wither_bone>)
  .create();

// Mob summoning
// ArcaneWorld.createRitualSummon(String name, String displayName, String entity, IIngredient... inputs)
ArcaneWorld.createRitualSummon("pixie", "Pixie Calling", "iceandfire:if_pixie", [<contenttweaker:fae_rune>.anyDamage().transformDamage(),<ore:Gem_highQuality>]).build();
ArcaneWorld.createRitualSummon("mogus", "Mogus Calling", "netherex:mogus", [<contenttweaker:nature_quintessence>,<ore:mushroomAny>]).build();
ArcaneWorld.createRitualSummon("grovesprite", "Grove Sprite Calling", "primitivemobs:grovesprite", [<contenttweaker:life_quintessence>,<ore:mundaneSapling>]).build();

// Item summoning
// ArcaneWorld.createRitualCreateItem(String name, String displayName, IItemStack result, IIngredient... inputs)
ArcaneWorld.createRitualCreateItem("undying_heart", "Heart Curse", <mod_lavacow:undyingheart>, [<contenttweaker:plague_rune>.anyDamage().transformDamage(),<defiledlands:black_heart>]).build();
ArcaneWorld.createRitualCreateItem("black_heart", "Heart Defilement", <defiledlands:black_heart>, [<defiledlands:defilement_powder>,<mod_lavacow:undyingheart>]).build();
ArcaneWorld.createRitualCreateItem("demon_eye", "Eye Possesion", <netherex:wither_dust>, [<minecraft:ender_pearl>,<contenttweaker:shard_of_night>]).build();
ArcaneWorld.createRitualCreateItem("arcane_focus", "Arcanic Intent", <contenttweaker:arcane_focus>.withDamage(16), [<contenttweaker:unattuned_focus>,<contenttweaker:arcane_rune>,<contenttweaker:vis_shard>]).build();
ArcaneWorld.createRitualCreateItem("demonic_scythe_awakened", "Awakened Demonic Scythe", <demonic_scythe:awakened_demonic_scythe>, [<demonic_scythe:demonic_scythe>, <contenttweaker:nether_rune>, <contenttweaker:strength_rune>, <contenttweaker:death_rune>, <contenttweaker:disint_rune>]).build();

// Command execution
// ArcaneWorld.createRitualCommand(String name, String displayName, String[] commands, IIngredient... inputs);
ArcaneWorld.createRitualCommand("meteor", "Meteoric Magnet", ["/summon nyx:falling_meteor ~ ~20 ~"], [<rustic:elixir>.withTag({display: {LocName: "Simple Magnetism Elixir"}, ElixirEffects: [{Effect: "extraalchemy:effect.magnetism", Duration: 7200, Amplifier: 1}]}),<contenttweaker:fire_rune>, <contenttweaker:earth_rune>, <biomesoplenty:terrestrial_artifact>, <minecraft:magma_cream>]).build();