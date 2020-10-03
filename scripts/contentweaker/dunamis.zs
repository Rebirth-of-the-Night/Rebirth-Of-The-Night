#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

// Add new tab for all-things-magic
val dunamisTab = VanillaFactory.createCreativeTab("Dunamis", <item:contenttweaker:blank_rune>);
dunamisTab.register();

// Magic Blend
val magicBlend = mods.contenttweaker.VanillaFactory.createItem("magic_blend");
magicBlend.setCreativeTab(<creativeTab:Dunamis>);
magicBlend.register();

// Charm
val blankCharm = mods.contenttweaker.VanillaFactory.createItem("blank_charm");
blankCharm.setCreativeTab(<creativetab:Dunamis>);
blankCharm.register();

// Vis items
val visSpeck = mods.contenttweaker.VanillaFactory.createItem("vis_speck");
visSpeck.setCreativeTab(<creativetab:Dunamis>);
visSpeck.register();

val visSliver = mods.contenttweaker.VanillaFactory.createItem("vis_sliver");
visSliver.setCreativeTab(<creativetab:Dunamis>);
visSliver.register();

val visShard = mods.contenttweaker.VanillaFactory.createItem("vis_shard");
visShard.setCreativeTab(<creativetab:Dunamis>);
visShard.register();

var lifeblood = VanillaFactory.createFluid("lifeblood", Color.fromHex("1b1e23"));
lifeblood.density = 1500;
lifeblood.gaseous = true;
lifeblood.luminosity = 15;
lifeblood.temperature = 400;
lifeblood.viscosity = 800;
lifeblood.stillLocation = "contenttweaker:fluids/dunamis_still";
lifeblood.flowingLocation = "contenttweaker:fluids/dunamis_flow";
lifeblood.colorize= false;
lifeblood.register();

// Wand bases

val wandMundane = mods.contenttweaker.VanillaFactory.createItem("wand_base_mundane");
wandMundane.setCreativeTab(<creativetab:Dunamis>);
wandMundane.register();

val wandArcane = mods.contenttweaker.VanillaFactory.createItem("wand_base_arcane");
wandArcane.setCreativeTab(<creativetab:Dunamis>);
wandArcane.register();

val wandMystical = mods.contenttweaker.VanillaFactory.createItem("wand_base_mystical");
wandMystical.setCreativeTab(<creativetab:Dunamis>);
wandMystical.register();

//inert
val blankRune = mods.contenttweaker.VanillaFactory.createItem("blank_rune");
blankRune.setCreativeTab(<creativetab:Dunamis>);
blankRune.register();

val magicOrb = mods.contenttweaker.VanillaFactory.createItem("magic_orb");
magicOrb.setCreativeTab(<creativetab:Dunamis>);
magicOrb.register();

//mundane

#runes
val solRune = mods.contenttweaker.VanillaFactory.createItem("sol_rune");
solRune.setCreativeTab(<creativetab:Dunamis>);
solRune.maxDamage = 4;
solRune.maxStackSize = 1;
solRune.register();

val lunaRune = mods.contenttweaker.VanillaFactory.createItem("luna_rune");
lunaRune.setCreativeTab(<creativetab:Dunamis>);
lunaRune.maxDamage = 4;
lunaRune.maxStackSize = 1;
lunaRune.register();

val airRune = mods.contenttweaker.VanillaFactory.createItem("air_rune");
airRune.setCreativeTab(<creativetab:Dunamis>);
airRune.maxDamage = 4;
airRune.maxStackSize = 1;
airRune.register();

val fireRune = mods.contenttweaker.VanillaFactory.createItem("fire_rune");
fireRune.setCreativeTab(<creativetab:Dunamis>);
fireRune.maxDamage = 4;
fireRune.maxStackSize = 1;
fireRune.register();

val earthRune = mods.contenttweaker.VanillaFactory.createItem("earth_rune");
earthRune.setCreativeTab(<creativetab:Dunamis>);
earthRune.maxDamage = 4;
earthRune.maxStackSize = 1;
earthRune.register();

val waterRune = mods.contenttweaker.VanillaFactory.createItem("water_rune");
waterRune.setCreativeTab(<creativetab:Dunamis>);
waterRune.maxDamage = 4;
waterRune.maxStackSize = 1;
waterRune.register();

#orbs
val solOrb = mods.contenttweaker.VanillaFactory.createItem("sol_orb");
solOrb.setCreativeTab(<creativetab:Dunamis>);
solOrb.register();

val lunaOrb = mods.contenttweaker.VanillaFactory.createItem("luna_orb");
lunaOrb.setCreativeTab(<creativetab:Dunamis>);
lunaOrb.register();

val airOrb = mods.contenttweaker.VanillaFactory.createItem("air_orb");
airOrb.setCreativeTab(<creativetab:Dunamis>);
airOrb.register();

val fireOrb = mods.contenttweaker.VanillaFactory.createItem("fire_orb");
fireOrb.setCreativeTab(<creativetab:Dunamis>);
fireOrb.register();

val earthOrb = mods.contenttweaker.VanillaFactory.createItem("earth_orb");
earthOrb.setCreativeTab(<creativetab:Dunamis>);
earthOrb.register();

val waterOrb = mods.contenttweaker.VanillaFactory.createItem("water_orb");
waterOrb.setCreativeTab(<creativetab:Dunamis>);
waterOrb.register();

#quintessence
val solQ = mods.contenttweaker.VanillaFactory.createItem("sol_quintessence");
solQ.setCreativeTab(<creativetab:Dunamis>);
solQ.register();

val lunaQ = mods.contenttweaker.VanillaFactory.createItem("luna_quintessence");
lunaQ.setCreativeTab(<creativetab:Dunamis>);
lunaQ.register();

val airQ = mods.contenttweaker.VanillaFactory.createItem("air_quintessence");
airQ.setCreativeTab(<creativetab:Dunamis>);
airQ.register();

val fireQ = mods.contenttweaker.VanillaFactory.createItem("fire_quintessence");
fireQ.setCreativeTab(<creativetab:Dunamis>);
fireQ.register();

val earthQ = mods.contenttweaker.VanillaFactory.createItem("earth_quintessence");
earthQ.setCreativeTab(<creativetab:Dunamis>);
earthQ.register();

val waterQ = mods.contenttweaker.VanillaFactory.createItem("water_quintessence");
waterQ.setCreativeTab(<creativetab:Dunamis>);
waterQ.register();

//arcane
val spectralShard = mods.contenttweaker.VanillaFactory.createItem("spectral_shard");
spectralShard.setCreativeTab(<creativetab:Dunamis>);
spectralShard.register();

#runes
val balanceRune = mods.contenttweaker.VanillaFactory.createItem("balance_rune");
balanceRune.setCreativeTab(<creativetab:Dunamis>);
balanceRune.maxDamage = 6;
balanceRune.maxStackSize = 1;
balanceRune.register();

val chaosRune = mods.contenttweaker.VanillaFactory.createItem("chaos_rune");
chaosRune.setCreativeTab(<creativetab:Dunamis>);
chaosRune.maxDamage = 6;
chaosRune.maxStackSize = 1;
chaosRune.register();

val creationRune = mods.contenttweaker.VanillaFactory.createItem("creation_rune");
creationRune.setCreativeTab(<creativetab:Dunamis>);
creationRune.maxDamage = 6;
creationRune.maxStackSize = 1;
creationRune.register();

val deathRune = mods.contenttweaker.VanillaFactory.createItem("death_rune");
deathRune.setCreativeTab(<creativetab:Dunamis>);
deathRune.maxDamage = 6;
deathRune.maxStackSize = 1;
deathRune.register();

val energyRune = mods.contenttweaker.VanillaFactory.createItem("energy_rune");
energyRune.setCreativeTab(<creativetab:Dunamis>);
energyRune.maxDamage = 6;
energyRune.maxStackSize = 1;
energyRune.register();

val illusionRune = mods.contenttweaker.VanillaFactory.createItem("illusion_rune");
illusionRune.setCreativeTab(<creativetab:Dunamis>);
illusionRune.maxDamage = 6;
illusionRune.maxStackSize = 1;
illusionRune.register();

val knowledgeRune = mods.contenttweaker.VanillaFactory.createItem("knowledge_rune");
knowledgeRune.setCreativeTab(<creativetab:Dunamis>);
knowledgeRune.maxDamage = 6;
knowledgeRune.maxStackSize = 1;
knowledgeRune.register();

val lifeRune = mods.contenttweaker.VanillaFactory.createItem("life_rune");
lifeRune.setCreativeTab(<creativetab:Dunamis>);
lifeRune.maxDamage = 6;
lifeRune.maxStackSize = 1;
lifeRune.register();

val mindRune = mods.contenttweaker.VanillaFactory.createItem("mind_rune");
mindRune.setCreativeTab(<creativetab:Dunamis>);
mindRune.maxDamage = 6;
mindRune.maxStackSize = 1;
mindRune.register();

val natureRune = mods.contenttweaker.VanillaFactory.createItem("nature_rune");
natureRune.setCreativeTab(<creativetab:Dunamis>);
natureRune.maxDamage = 6;
natureRune.maxStackSize = 1;
natureRune.register();

val orderRune = mods.contenttweaker.VanillaFactory.createItem("order_rune");
orderRune.setCreativeTab(<creativetab:Dunamis>);
orderRune.maxDamage = 6;
orderRune.maxStackSize = 1;
orderRune.register();

val poisonRune = mods.contenttweaker.VanillaFactory.createItem("poison_rune");
poisonRune.setCreativeTab(<creativetab:Dunamis>);
poisonRune.maxDamage = 6;
poisonRune.maxStackSize = 1;
poisonRune.register();

val soulRune = mods.contenttweaker.VanillaFactory.createItem("soul_rune");
soulRune.setCreativeTab(<creativetab:Dunamis>);
soulRune.maxDamage = 6;
soulRune.maxStackSize = 1;
soulRune.register();

val strengthRune = mods.contenttweaker.VanillaFactory.createItem("strength_rune");
strengthRune.setCreativeTab(<creativetab:Dunamis>);
strengthRune.maxDamage = 6;
strengthRune.maxStackSize = 1;
strengthRune.register();

val transRune = mods.contenttweaker.VanillaFactory.createItem("trans_rune");
transRune.setCreativeTab(<creativetab:Dunamis>);
transRune.maxDamage = 6;
transRune.maxStackSize = 1;
transRune.register();

val disintRune = mods.contenttweaker.VanillaFactory.createItem("disint_rune");
disintRune.setCreativeTab(<creativetab:Dunamis>);
disintRune.maxDamage = 6;
disintRune.maxStackSize = 1;
disintRune.register();

#orbs
val balanceOrb = mods.contenttweaker.VanillaFactory.createItem("balance_orb");
balanceOrb.setCreativeTab(<creativetab:Dunamis>);
balanceOrb.register();

val chaosOrb = mods.contenttweaker.VanillaFactory.createItem("chaos_orb");
chaosOrb.setCreativeTab(<creativetab:Dunamis>);
chaosOrb.register();

val creationOrb = mods.contenttweaker.VanillaFactory.createItem("creation_orb");
creationOrb.setCreativeTab(<creativetab:Dunamis>);
creationOrb.register();

val deathOrb = mods.contenttweaker.VanillaFactory.createItem("death_orb");
deathOrb.setCreativeTab(<creativetab:Dunamis>);
deathOrb.register();

val energyOrb = mods.contenttweaker.VanillaFactory.createItem("energy_orb");
energyOrb.setCreativeTab(<creativetab:Dunamis>);
energyOrb.register();

val illusionOrb = mods.contenttweaker.VanillaFactory.createItem("illusion_orb");
illusionOrb.setCreativeTab(<creativetab:Dunamis>);
illusionOrb.register();

val knowledgeOrb = mods.contenttweaker.VanillaFactory.createItem("knowledge_orb");
knowledgeOrb.setCreativeTab(<creativetab:Dunamis>);
knowledgeOrb.register();

val lifeOrb = mods.contenttweaker.VanillaFactory.createItem("life_orb");
lifeOrb.setCreativeTab(<creativetab:Dunamis>);
lifeOrb.register();

val mindOrb = mods.contenttweaker.VanillaFactory.createItem("mind_orb");
mindOrb.setCreativeTab(<creativetab:Dunamis>);
mindOrb.register();

val natureOrb = mods.contenttweaker.VanillaFactory.createItem("nature_orb");
natureOrb.setCreativeTab(<creativetab:Dunamis>);
natureOrb.register();

val orderOrb = mods.contenttweaker.VanillaFactory.createItem("order_orb");
orderOrb.setCreativeTab(<creativetab:Dunamis>);
orderOrb.register();

val poisonOrb = mods.contenttweaker.VanillaFactory.createItem("poison_orb");
poisonOrb.setCreativeTab(<creativetab:Dunamis>);
poisonOrb.register();

val soulOrb = mods.contenttweaker.VanillaFactory.createItem("soul_orb");
soulOrb.setCreativeTab(<creativetab:Dunamis>);
soulOrb.register();

val strengthOrb = mods.contenttweaker.VanillaFactory.createItem("strength_orb");
strengthOrb.setCreativeTab(<creativetab:Dunamis>);
strengthOrb.register();

val transOrb = mods.contenttweaker.VanillaFactory.createItem("trans_orb");
transOrb.setCreativeTab(<creativetab:Dunamis>);
transOrb.register();

val disintOrb = mods.contenttweaker.VanillaFactory.createItem("disint_orb");
disintOrb.setCreativeTab(<creativetab:Dunamis>);
disintOrb.register();

#quintessence
val balanceQ = mods.contenttweaker.VanillaFactory.createItem("balance_quintessence");
balanceQ.setCreativeTab(<creativetab:Dunamis>);
balanceQ.register();

val chaosQ = mods.contenttweaker.VanillaFactory.createItem("chaos_quintessence");
chaosQ.setCreativeTab(<creativetab:Dunamis>);
chaosQ.register();

val creationQ = mods.contenttweaker.VanillaFactory.createItem("creation_quintessence");
creationQ.setCreativeTab(<creativetab:Dunamis>);
creationQ.register();

val deathQ = mods.contenttweaker.VanillaFactory.createItem("death_quintessence");
deathQ.setCreativeTab(<creativetab:Dunamis>);
deathQ.register();

val energyQ = mods.contenttweaker.VanillaFactory.createItem("energy_quintessence");
energyQ.setCreativeTab(<creativetab:Dunamis>);
energyQ.register();

val illusionQ = mods.contenttweaker.VanillaFactory.createItem("illusion_quintessence");
illusionQ.setCreativeTab(<creativetab:Dunamis>);
illusionQ.register();

val knowledgeQ = mods.contenttweaker.VanillaFactory.createItem("knowledge_quintessence");
knowledgeQ.setCreativeTab(<creativetab:Dunamis>);
knowledgeQ.register();

val lifeQ = mods.contenttweaker.VanillaFactory.createItem("life_quintessence");
lifeQ.setCreativeTab(<creativetab:Dunamis>);
lifeQ.register();

val mindQ = mods.contenttweaker.VanillaFactory.createItem("mind_quintessence");
mindQ.setCreativeTab(<creativetab:Dunamis>);
mindQ.register();

val natureQ = mods.contenttweaker.VanillaFactory.createItem("nature_quintessence");
natureQ.setCreativeTab(<creativetab:Dunamis>);
natureQ.register();

val orderQ = mods.contenttweaker.VanillaFactory.createItem("order_quintessence");
orderQ.setCreativeTab(<creativetab:Dunamis>);
orderQ.register();

val poisonQ = mods.contenttweaker.VanillaFactory.createItem("poison_quintessence");
poisonQ.setCreativeTab(<creativetab:Dunamis>);
poisonQ.register();

val soulQ = mods.contenttweaker.VanillaFactory.createItem("soul_quintessence");
soulQ.setCreativeTab(<creativetab:Dunamis>);
soulQ.register();

val strengthQ = mods.contenttweaker.VanillaFactory.createItem("strength_quintessence");
strengthQ.setCreativeTab(<creativetab:Dunamis>);
strengthQ.register();

val transQ = mods.contenttweaker.VanillaFactory.createItem("trans_quintessence");
transQ.setCreativeTab(<creativetab:Dunamis>);
transQ.register();

val disintQ = mods.contenttweaker.VanillaFactory.createItem("disint_quintessence");
disintQ.setCreativeTab(<creativetab:Dunamis>);
disintQ.register();

//mystical

#runes
val holdingRune = mods.contenttweaker.VanillaFactory.createItem("holding_rune");
holdingRune.setCreativeTab(<creativetab:Dunamis>);
holdingRune.maxDamage = 8;
holdingRune.maxStackSize = 1;
holdingRune.register();

val netherRune = mods.contenttweaker.VanillaFactory.createItem("nether_rune");
netherRune.setCreativeTab(<creativetab:Dunamis>);
netherRune.maxDamage = 8;
netherRune.maxStackSize = 1;
netherRune.register();

val plagueRune = mods.contenttweaker.VanillaFactory.createItem("plague_rune");
plagueRune.setCreativeTab(<creativetab:Dunamis>);
plagueRune.maxDamage = 8;
plagueRune.maxStackSize = 1;
plagueRune.register();

val timeRune = mods.contenttweaker.VanillaFactory.createItem("time_rune");
timeRune.setCreativeTab(<creativetab:Dunamis>);
timeRune.maxDamage = 8;
timeRune.maxStackSize = 1;
timeRune.register();

val aetherRune = mods.contenttweaker.VanillaFactory.createItem("aether_rune");
aetherRune.setCreativeTab(<creativetab:Dunamis>);
aetherRune.maxDamage = 8;
aetherRune.maxStackSize = 1;
aetherRune.register();

val arcaneRune = mods.contenttweaker.VanillaFactory.createItem("arcane_rune");
arcaneRune.setCreativeTab(<creativetab:Dunamis>);
arcaneRune.maxDamage = 8;
arcaneRune.maxStackSize = 1;
arcaneRune.register();

val draconicRune = mods.contenttweaker.VanillaFactory.createItem("draconic_rune");
draconicRune.setCreativeTab(<creativetab:Dunamis>);
draconicRune.maxDamage = 8;
draconicRune.maxStackSize = 1;
draconicRune.register();

val faeRune = mods.contenttweaker.VanillaFactory.createItem("fae_rune");
faeRune.setCreativeTab(<creativetab:Dunamis>);
faeRune.maxDamage = 8;
faeRune.maxStackSize = 1;
faeRune.register();

#orbs
val holdingOrb = mods.contenttweaker.VanillaFactory.createItem("holding_orb");
holdingOrb.setCreativeTab(<creativetab:Dunamis>);
holdingOrb.register();

val netherOrb = mods.contenttweaker.VanillaFactory.createItem("nether_orb");
netherOrb.setCreativeTab(<creativetab:Dunamis>);
netherOrb.register();

val plagueOrb = mods.contenttweaker.VanillaFactory.createItem("plague_orb");
plagueOrb.setCreativeTab(<creativetab:Dunamis>);
plagueOrb.register();

val timeOrb = mods.contenttweaker.VanillaFactory.createItem("time_orb");
timeOrb.setCreativeTab(<creativetab:Dunamis>);
timeOrb.register();

val aetherOrb = mods.contenttweaker.VanillaFactory.createItem("aether_orb");
aetherOrb.setCreativeTab(<creativetab:Dunamis>);
aetherOrb.register();

val arcaneOrb = mods.contenttweaker.VanillaFactory.createItem("arcane_orb");
arcaneOrb.setCreativeTab(<creativetab:Dunamis>);
arcaneOrb.register();

val draconicOrb = mods.contenttweaker.VanillaFactory.createItem("draconic_orb");
draconicOrb.setCreativeTab(<creativetab:Dunamis>);
draconicOrb.register();

val faeOrb = mods.contenttweaker.VanillaFactory.createItem("fae_orb");
faeOrb.setCreativeTab(<creativetab:Dunamis>);
faeOrb.register();

val endOrb = mods.contenttweaker.VanillaFactory.createItem("end_orb");
endOrb.setCreativeTab(<creativetab:Dunamis>);
endOrb.register();

#quintessence
val holdingQ = mods.contenttweaker.VanillaFactory.createItem("holding_quintessence");
holdingQ.setCreativeTab(<creativetab:Dunamis>);
holdingQ.register();

val netherQ = mods.contenttweaker.VanillaFactory.createItem("nether_quintessence");
netherQ.setCreativeTab(<creativetab:Dunamis>);
netherQ.register();

val plagueQ = mods.contenttweaker.VanillaFactory.createItem("plague_quintessence");
plagueQ.setCreativeTab(<creativetab:Dunamis>);
plagueQ.register();

val timeQ = mods.contenttweaker.VanillaFactory.createItem("time_quintessence");
timeQ.setCreativeTab(<creativetab:Dunamis>);
timeQ.register();

val aetherQ = mods.contenttweaker.VanillaFactory.createItem("aether_quintessence");
aetherQ.setCreativeTab(<creativetab:Dunamis>);
aetherQ.register();

val arcaneQ = mods.contenttweaker.VanillaFactory.createItem("arcane_quintessence");
arcaneQ.setCreativeTab(<creativetab:Dunamis>);
arcaneQ.register();

val draconicQ = mods.contenttweaker.VanillaFactory.createItem("draconic_quintessence");
draconicQ.setCreativeTab(<creativetab:Dunamis>);
draconicQ.register();

val faeQ = mods.contenttweaker.VanillaFactory.createItem("fae_quintessence");
faeQ.setCreativeTab(<creativetab:Dunamis>);
faeQ.register();

val endQ = mods.contenttweaker.VanillaFactory.createItem("end_quintessence");
endQ.setCreativeTab(<creativetab:Dunamis>);
endQ.register();

