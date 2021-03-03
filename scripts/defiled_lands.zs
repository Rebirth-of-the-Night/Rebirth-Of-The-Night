import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.foundry.Casting;
import mods.betterwithaddons.Infuser;
import mods.betterwithmods.MiniBlocks;
import crafttweaker.item.IItemCondition;

JEI.removeAndHide(<defiledlands:hephaestite_ore>);
JEI.removeAndHide(<defiledlands:hephaestite_block>);
JEI.removeAndHide(<defiledlands:umbrium_ore>);
JEI.removeAndHide(<defiledlands:umbrium_block>);
JEI.removeAndHide(<defiledlands:scarlite_ore>);
JEI.removeAndHide(<defiledlands:scarlite_block>);
JEI.removeAndHide(<defiledlands:hephaestite>);
JEI.removeAndHide(<defiledlands:umbrium_ingot>);
JEI.removeAndHide(<defiledlands:umbrium_nugget>);
JEI.removeAndHide(<defiledlands:scarlite>);
JEI.removeAndHide(<defiledlands:scarlite_ring>);
JEI.removeAndHide(<defiledlands:ravaging_ingot>);
JEI.removeAndHide(<defiledlands:umbrium_axe>);
JEI.removeAndHide(<defiledlands:umbrium_hoe>);
JEI.removeAndHide(<defiledlands:umbrium_pickaxe>);
JEI.removeAndHide(<defiledlands:umbrium_shovel>);
JEI.removeAndHide(<defiledlands:umbrium_sword>);
JEI.removeAndHide(<defiledlands:scarlite_reaver>);
JEI.removeAndHide(<defiledlands:umbrium_helmet>);
JEI.removeAndHide(<defiledlands:umbrium_chestplate>);
JEI.removeAndHide(<defiledlands:umbrium_leggings>);
JEI.removeAndHide(<defiledlands:umbrium_boots>);
JEI.removeAndHide(<defiledlands:essence_mourner>);
JEI.removeAndHide(<defiledlands:remorseful_gem>);
JEI.hideCategory("dldefilement");

recipes.remove(<defiledlands:healing_pad>);
recipes.addShaped("healing_pad",<defiledlands:healing_pad>,[
    [<dungeontactics:flower_sanguine>,<biomesoplenty:gem:1>,<dungeontactics:flower_sanguine>],
    [null,<contenttweaker:healing>,null]
]);
recipes.remove(<defiledlands:blastem_fruit_blazing>);
recipes.addShapeless("blastem_fruit_blazing",<defiledlands:blastem_fruit_blazing>*4,
    [<defiledlands:blastem_fruit>,<defiledlands:blastem_fruit>,<defiledlands:blastem_fruit>,<defiledlands:blastem_fruit>,<minecraft:fire_charge>]);
//Scarlite Razor
recipes.remove(<defiledlands:scarlite_razor>);
Infuser.addShaped(<defiledlands:scarlite_razor>,[
[null,null,<aether_legacy:zanite_gemstone>],
[null,<aether_legacy:skyroot_stick>,null],
[<biomesoplenty:gem:1>,null,null]], 31);

val woodMoulding = MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
recipes.remove(<defiledlands:umbra_blaster>);
recipes.addShaped("umbra_blaster",<defiledlands:umbra_blaster>,[
    [<dungpipe:sewer_pipe>,<ore:genericMetal>,<defiledlands:scuttler_eye>],
    [<ore:genericMetal>,<minecraft:repeater>,woodMoulding],
	[null,null,<ore:genericMetal>]
]);

recipes.remove(<defiledlands:concussion_smasher>);
RecipeBuilder.get("mage")
.setShaped([
  [<pyrotech:material:36>, <minecraft:sticky_piston>, <minecraft:sticky_piston>],
  [<pyrotech:material:36>, <contenttweaker:volatile_magic>, <dungeontactics:steel_ingot>],
  [<dungeontactics:steel_ingot>, <dungpipe:sewer_pipe>, <dungeontactics:steel_ingot>]])
.addTool(<contenttweaker:disint_rune>, 1)
.addTool(<contenttweaker:energy_rune>, 1)
.addOutput(<defiledlands:concussion_smasher>)
.setMinimumTier(1)
.setMaximumTier(1)
.create();

recipes.remove(<defiledlands:book_wyrm_analyzer>);
recipes.addShaped("wyrm_analyzer",<defiledlands:book_wyrm_analyzer>,[
[<villagenames:codex>],
[<ore:blockGlassColorless>],
[<defiledlands:scuttler_eye>]]);

recipes.remove(<defiledlands:scarlite_ring>); //Recipe in baubles.zs

recipes.remove(<defiledlands:calling_stone>);
RecipeBuilder.get("mage")
  .setShaped([
    [<ore:stoneDefiled>, <ore:stoneDefiled>, <ore:stoneDefiled>],
    [<ore:stoneDefiled>, <contenttweaker:disint_quintessence>, <ore:stoneDefiled>],
    [<ore:stoneDefiled>, <ore:stoneDefiled>, <ore:stoneDefiled>]])
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addOutput(<defiledlands:calling_stone>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
  
recipes.remove(<defiledlands:ravaging_pickaxe>);
recipes.addShaped("ravaging_pickaxe",<defiledlands:ravaging_pickaxe>,[
[<ore:essenceDestroyer>],
[<dungeontactics:steel_pickaxe>]]);

recipes.remove(<defiledlands:ravaging_axe>);
recipes.addShaped("ravaging_axe",<defiledlands:ravaging_axe>,[
[<ore:essenceDestroyer>],
[<dungeontactics:steel_axe>]]);

recipes.remove(<defiledlands:ravaging_shovel>);
recipes.addShaped("ravaging_shovel",<defiledlands:ravaging_shovel>,[
[<ore:essenceDestroyer>],
[<dungeontactics:steel_shovel>]]);

recipes.remove(<defiledlands:the_ravager>);
recipes.addShaped("the_ravager",<defiledlands:the_ravager>,[
[<quark:pipe>, <defiledlands:black_heart>, <betterwithmods:material:27>],
[<ore:genericMetal>, <ore:genericMetal>, <minecraft:repeater>],
[null, null, <ore:genericMetal>]
]);

recipes.remove(<defiledlands:pellet_umbrium>);
Casting.addRecipe(<defiledlands:pellet_umbrium>*4, <liquid:soulforged_steel>*((144*8)-(16*2*8)), <foundry:mold:21>, <ore:ingotGravitite>);

recipes.removeByRecipeName("defiledlands:misc/pellet_ravaging");

recipes.remove(<defiledlands:idol_sorrow>);
recipes.addShapeless("idol_sorrow",<defiledlands:idol_sorrow>,
    [<totemexpansion:totem_base>,<defiledlands:essence_destroyer>,<defiledlands:black_heart>]);

recipes.addShapeless("seed_to_sapling_dlands", <defiledlands:tenebra_sapling>, [<dynamictreesdefiledlands:tenebraseed>, <dynamictrees:dirtbucket>.reuse()]);
recipes.addShapeless("sapling_to_seed_dlands", <dynamictreesdefiledlands:tenebraseed>, [<defiledlands:tenebra_sapling>, <dynamictrees:dirtbucket>.reuse()]);

// Tears of Penance

# Change durability
<defiledlands:tears_flame>.maxDamage = 32;

# Recipe
recipes.remove(<defiledlands:tears_flame>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:fire_charge>, <contenttweaker:volatile_core>],
    [<contenttweaker:vis_speck>, <contenttweaker:scepter_base_mundane>, <minecraft:fire_charge>],
    [<contenttweaker:flashfired_cincinnasite>, <contenttweaker:vis_speck>, null]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addOutput(<defiledlands:tears_flame:32>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<defiledlands:tears_flame>,
[<defiledlands:tears_flame>.anyDamage(),<contenttweaker:vis_speck>], 32);

JEI.removeAndHide(<defiledlands:tears_shulker>);