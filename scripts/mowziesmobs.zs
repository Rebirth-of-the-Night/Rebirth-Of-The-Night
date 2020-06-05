//Mob Loot Tweaks
<entity:mowziesmobs:ferrous_wroughtnaut>.addDrop(<minecraft:iron_ingot>,3,9);
<entity:mowziesmobs:ferrous_wroughtnaut>.addDrop(<minecraft:iron_block>,1,2);
//
//<entity:mowziesmobs:foliaath>.addPlayerOnlyDrop(<mowziesmobs:foliaath_seed> %80, 1, 2);
//
<entity:mowziesmobs:frostmaw>.addDrop(<mod_lavacow:sharptooth>,1,4);
<entity:mowziesmobs:frostmaw>.addDrop(<betterwithmods:material:6>,5,9);
//
<entity:mowziesmobs:naga>.addDrop(<mod_lavacow:sharptooth>,2,6);

mods.ltt.LootTable.removeGlobalItem("mowziesmobs:glowing_jelly");

<entity:mowziesmobs:lantern>.removeDrop(<mowziesmobs:glowing_jelly>);
//<entity:mowziesmobs:lantern>.addDrop(<betterwithaddons:congealed:4>,1,2);
<entity:mowziesmobs:lantern>.addPlayerOnlyDrop(<betterwithaddons:congealed:4> % 30, 1, 2);
//val lantern = <mowziesmobs:lantern>;
//lantern.clearDrops();


<mowziesmobs:spear>.displayName = "Barakoa Hunting Spear";
mods.jei.JEI.addDescription(<mowziesmobs:spear>,"Carefully carved along the handle is an inscription: 'Hunt with the glory of the Sun, for under Its great radiance we remain pure and strong.'");

//craftable Mask of Fear - for pacifism purposes and a more reliable way to summon followers while wearing the Sol Visage

recipes.addShaped("Mask of Fear", <mowziesmobs:barakoa_mask_fear>,[
	[<ore:feather>, <ore:feather>, <ore:feather>],
	[<quark:soul_bead>, <betterwithmods:bark:4>, <quark:soul_bead>],
	[<betterwithmods:bark:4>, <arcanearchives:devouring_charm>, <betterwithmods:bark:4>]
]);

// Lantern / Puffbulb Night Vision Rework
<twilightforest:firefly>.displayName = "Giant Firefly";
<betterwithaddons:congealed:4>.displayName = "Inert Puffbulb Jelly";
<betterwithaddons:congealed:4>.addTooltip("The light that once pulsed from this sticky jelly has faded.");
<betterwithaddons:wheatmat>.displayName = "Luminous Residue";
<betterwithaddons:wheatmat>.addTooltip("Glowing powder from an organic substance.");

//oredict for organic glow sources
val commonGlowOredict = <ore:commonGlowSource>;
commonGlowOredict.add(<biomesoplenty:flower_0:3>);
commonGlowOredict.add(<biomesoplenty:mushroom:3>);
commonGlowOredict.add(<biomesoplenty:coral:3>);
commonGlowOredict.add(<betterwithaddons:congealed:4>);

val uncommonGlowOredict = <ore:uncommonGlowSource>;
uncommonGlowOredict.add(<mod_lavacow:glowshroom>);
uncommonGlowOredict.add(<quark:glowshroom>);
uncommonGlowOredict.add(<twilightforest:torchberries>);

val rareGlowOredict = <ore:rareGlowSource>;
rareGlowOredict.add(<quark:glowshroom_block>);
rareGlowOredict.add(<twilightforest:firefly>);
rareGlowOredict.add(<stygian:endglow>);

recipes.addShapeless("commonglowpowder", <betterwithaddons:wheatmat>, [<ore:commonGlowSource>, <ore:commonGlowSource>]);

recipes.addShapeless("uncommonglowpowder", <betterwithaddons:wheatmat>*2, [<ore:uncommonGlowSource>]);

recipes.addShapeless("rareglowpowder", <betterwithaddons:wheatmat>*5, [<ore:rareGlowSource>]);

recipes.addShapeless(<harvestcraft:royaljellyitem>*3, [<harvestcraft:queenbeeitem>.transformReplace(<harvestcraft:queenbeeitem>), <betterwithaddons:wheatmat>]);
recipes.addShapeless(<twilightforest:moonworm>, [<twilightforest:moonworm_queen>.anyDamage().transformDamage(1), <betterwithaddons:wheatmat>]);

// new glaretorches - larger upgrades require coal
var torch = <minecraft:torch>;
var small = <glaretorch:itemglaretorchsmall>;
var residue = <betterwithaddons:wheatmat>;

recipes.addShaped("SmallResidueGlareTorch", <glaretorch:itemglaretorchsmall>,[
	[residue, residue, residue],
    [residue, torch, residue]
]);

recipes.addShaped("MediumResidueGlareTorch", <glaretorch:itemglaretorch>,[
	[residue, residue, residue],
    [residue, small, residue]
]);


// WAITING FOR MOWZIE'S MOBS AUTHOR TO ADD LOOT TABLES SO I CAN ENTIRELY REPLACE GLOWING JELLY DROP WITH THIS
mods.aether_legacy.Enchanter.registerEnchantment(<betterwithaddons:congealed:4>, <mowziesmobs:glowing_jelly>, 5000);

/// Removed Vanilla Night Vision Potions
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:golden_carrot>);
brewing.removeRecipe(<minecraft:potion>.withTag({Potion: "minecraft:night_vision"}), <minecraft:redstone>);

brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:golden_carrot>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <minecraft:redstone>);

brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:awkward"}), <minecraft:golden_carrot>);
brewing.removeRecipe(<minecraft:splash_potion>.withTag({Potion: "minecraft:night_vision"}), <minecraft:dragon_breath>);

brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:night_vision"}), <minecraft:redstone>);
brewing.removeRecipe(<minecraft:lingering_potion>.withTag({Potion: "minecraft:long_night_vision"}), <minecraft:dragon_breath>);

// Removed Default Rustic Nightvision Elixirs
//val slownessElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 1800, Amplifier: 0}]});
//val slownessExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:slowness", Duration: 4800, Amplifier: 0}]});

mods.rustic.Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]}));
mods.rustic.Condenser.removeRecipe(<rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]}));



// New Rustic Elixirs
val nightvisionElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 3600, Amplifier: 0}]});
val nightvisionExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 9600, Amplifier: 0}]});
val nightvisionObsceneExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 14400, Amplifier: 0}]});

mods.rustic.Condenser.addRecipe(nightvisionElixir, null, [<betterwithaddons:wheatmat>, <mowziesmobs:glowing_jelly>, <arcanearchives:radiant_dust>]);
mods.rustic.Condenser.addRecipe(nightvisionExtendedElixir, <minecraft:golden_carrot>, [<betterwithaddons:wheatmat>, <mowziesmobs:glowing_jelly>, <arcanearchives:radiant_dust>]);
mods.rustic.Condenser.addRecipe(nightvisionObsceneExtendedElixir, <twilightforest:moonworm>, [<betterwithaddons:wheatmat>, <mowziesmobs:glowing_jelly>, <arcanearchives:radiant_dust>]);




//RIP - oredict does not work with rustic condenser. keeping these oredicts here in case we want to use contenttweaker for more complex/differentiated alchemy recipes that reward multidimensional exploration
//////
//val rareGlowOW = <ore:rareGlowOverworld>;
//rareGlowOW.add(<mod_lavacow:glowshroom>);
//rareGlowOW.add(<quark:glowshroom>);
//rareGlowOW.add(<biomesoplenty:coral:3>);
//////
//val rareGlowTF = <ore:rareGlowTwilightForest>;
//rareGlowTF.add(<twilightforest:moonworm>);
//rareGlowTF.add(<twilightforest:firefly>);
//rareGlowTF.add(<twilightforest:torchberries>);
//////
//val nightvisionObsceneExtendedElixir = <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:night_vision", Duration: 19200, Amplifier: 0}]});
//mods.rustic.Condenser.addRecipe(nightvisionObsceneExtendedElixir, <twilightforest:moonworm_queen>, [<ore:rareGlowOverworld>, <mowziesmobs:glowing_jelly>, <ore:rareGlowTwilightForest>]);