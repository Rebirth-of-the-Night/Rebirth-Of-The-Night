import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;

mods.jei.JEI.removeAndHide(<defiledlands:hephaestite_ore>);
mods.jei.JEI.removeAndHide(<defiledlands:hephaestite_block>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_ore>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_block>);
mods.jei.JEI.removeAndHide(<defiledlands:scarlite_ore>);
mods.jei.JEI.removeAndHide(<defiledlands:scarlite_block>);
mods.jei.JEI.removeAndHide(<defiledlands:hephaestite>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_ingot>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_nugget>);
mods.jei.JEI.removeAndHide(<defiledlands:scarlite>);
mods.jei.JEI.removeAndHide(<defiledlands:ravaging_ingot>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_axe>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_hoe>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_pickaxe>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_shovel>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_sword>);
mods.jei.JEI.removeAndHide(<defiledlands:scarlite_reaver>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_helmet>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_chestplate>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_leggings>);
mods.jei.JEI.removeAndHide(<defiledlands:umbrium_boots>);
mods.jei.JEI.removeAndHide(<defiledlands:remorseful_gem>);
mods.jei.JEI.hideCategory("dldefilement");

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
mods.betterwithaddons.Infuser.addShaped(<defiledlands:scarlite_razor>,[
[null,null,<aether_legacy:zanite_gemstone>],
[null,<aether_legacy:skyroot_stick>,null],
[<biomesoplenty:gem:1>,null,null]], 31);

val woodMoulding = mods.betterwithmods.MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
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
mods.foundry.Casting.addRecipe(<defiledlands:pellet_umbrium>*4, <liquid:soulforged_steel>*((144*8)-(16*2*8)), <foundry:mold:21>, <aether_legacy:enchanted_gravitite>);

recipes.removeByRecipeName("defiledlands:misc/pellet_ravaging");

recipes.remove(<defiledlands:idol_sorrow>);
recipes.addShapeless("idol_sorrow",<defiledlands:idol_sorrow>,
    [<totemexpansion:totem_base>,<defiledlands:essence_destroyer>,<defiledlands:black_heart>]);
	
recipes.remove(<defiledlands:tears_flame>);
recipes.remove(<defiledlands:tears_shulker>);