import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.data.IData;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.betterwithmods.Crucible;

Crucible.removeAll();

Crucible.addStoked([<ore:cobblestone>],[<minecraft:stone>]);
for cobble, stone in mapCobbleToStone {
    Crucible.addUnstoked([cobble], [stone]);
}

Crucible.addUnstoked([<betterwithmods:aesthetic:7>],[<betterwithmods:aesthetic:6>]);
Crucible.addUnstoked([<betterwithmods:material:16>, <ore:stone>],[<aether_legacy:dungeon_block:4>]);

// Automation for stick
Crucible.addUnstoked(
    [
        <contenttweaker:broken_stick>,
        <ore:glue> | <ore:slimeball>,
        <contenttweaker:broken_stick>
    ],
    [
        <minecraft:stick>
    ]
);
Crucible.addStoked(
    [
        <contenttweaker:broken_stick>,
        <contenttweaker:broken_stick>
    ],
    [
        <minecraft:stick>
    ]
);

// nugget > sfs
// block > sfs
// sfs rail > 6iron 2sfs
// urn:8 steel dustCarbon soul flux > sfs urn:0

// Normal Steel
Crucible.addUnstoked(
    [
        <ore:ingotIron>|<ore:dustIron>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>
    ],
    [
        <dungeontactics:steel_ingot>
    ]
);
// Stoked Normal Steel
Crucible.addStoked(
    [
        <ore:rawOreIron>|<ore:ingotIron>|<ore:dustIron>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>
    ],
    [
        <dungeontactics:steel_ingot>
    ]
);

// Overworld gems are alloyed with steel, while Exorite is alloyed with Endorium
// Stoked Gem Ingots
Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemDiamond>
    ],
    [
        <betterwithmods:material:45>
    ]
);
Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemRuby>
    ],
    [
        <contenttweaker:ruby_ingot>
    ]
);
Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemSapphire>
    ],
    [
        <contenttweaker:sapphire_ingot>
    ]
);
Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemPeridot>
    ],
    [
        <contenttweaker:peridot_ingot>
    ]
);
Crucible.addStoked(
    [
        <endreborn:item_ingot_endorium>,
        <rotn_blocks:exorite_crystal>
    ],
    [
        <contenttweaker:exorite_ingot>
    ]
);


// Soul Forged Steel
Crucible.addStoked(
    [
        <ore:ingotSteel>,
        <betterwithmods:material:38>,
        <ore:gemEnderBiotite>,
        <ore:blockSoulUrn>
    ],
    [
        <betterwithmods:material:14>,
        <betterwithmods:urn>
    ]
);

// Anvil > Steel
Crucible.addStoked(
    [
        <betterwithmods:steel_anvil>
    ],
    [
        <dungeontactics:steel_ingot>*18
    ]
);


// Soul Flux
Crucible.addStoked(
    [
        <betterwithmods:material:39>,
    ],
    [
        <betterwithmods:material:25>,
        <betterwithmods:material:38>
    ]
);

// Bronze Production
Crucible.addUnstoked(
    [
        <ore:dustTin>,
        <ore:dustCopper>,
        <ore:dustCopper>,
        <ore:dustCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);
// Stoked Bronze Production
Crucible.addStoked(
    [
        <ore:blockTin>,
        <ore:blockCopper>,
        <ore:blockCopper>,
        <ore:blockCopper>
    ],
    [
        <contenttweaker:block_bronze>*4
    ]
);
Crucible.addStoked(
    [
        <ore:rawOreTin>|<ore:ingotTin>|<ore:dustTin>,
        <ore:rawOreCopper>|<ore:ingotCopper>|<ore:dustCopper>,
        <ore:rawOreCopper>|<ore:ingotCopper>|<ore:dustCopper>,
        <ore:rawOreCopper>|<ore:ingotCopper>|<ore:dustCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);

// Electrum Production
Crucible.addUnstoked(
    [
        <ore:dustGold>,
        <ore:dustGold>,
		<ore:dustGold>,
		<ore:dustGold>,
		<ore:dustSilver>,
		<ore:dustSilver>,
		<ore:dustSilver>,
        <ore:dustAmbrosium>,
		<ore:dustAmbrosium>
    ],
    [
        <ore:ingotElectrum>.firstItem*4
    ]
);
// Stoked Electrum Production
Crucible.addStoked(
    [
        <ore:blockGold>,
        <ore:blockGold>,
		<ore:blockGold>,
        <ore:blockGold>,
		<ore:blockSilver>,
		<ore:blockSilver>,
		<ore:blockSilver>,
        <aether_legacy:ambrosium_block>,
		<aether_legacy:ambrosium_block>
    ],
    [
        <contenttweaker:block_electrum>*4
    ]
);
Crucible.addStoked(
    [
        <ore:rawOreGold>|<ore:ingotGold>|<ore:dustGold>,
        <ore:rawOreGold>|<ore:ingotGold>|<ore:dustGold>,
		<ore:rawOreGold>|<ore:ingotGold>|<ore:dustGold>,
		<ore:rawOreGold>|<ore:ingotGold>|<ore:dustGold>,
		<ore:rawOreSilver>|<ore:ingotSilver>|<ore:dustSilver>,
		<ore:rawOreSilver>|<ore:ingotSilver>|<ore:dustSilver>,
		<ore:rawOreSilver>|<ore:ingotSilver>|<ore:dustSilver>,
        <ore:gemAmbrosium>|<ore:dustAmbrosium>,
		<ore:gemAmbrosium>|<ore:dustAmbrosium>
    ],
    [
        <ore:ingotElectrum>.firstItem*4
    ]
);

// Brass Production
Crucible.addUnstoked(
    [
        <pyrotech:rock:3>|<ore:dustZinc>,
		<pyrotech:rock:3>|<ore:dustZinc>,
        <ore:dustCopper>
    ],
    [
        <ore:ingotBrass>.firstItem*2
    ]
);
// Stoked Brass Production
Crucible.addStoked(
    [
        <pyrotech:rock:3>|<ore:dustZinc>,
		<pyrotech:rock:3>|<ore:dustZinc>,
        <ore:rawOreCopper>|<ore:ingotCopper>|<ore:dustCopper>
    ],
    [
        <ore:ingotBrass>.firstItem*2
    ]
);

// Stoked Volatile Magic
Crucible.addStoked(
    [
        <contenttweaker:volatile_powder>,
        <betterwithmods:material:29>,
        <contenttweaker:vis_shard>,
        <nyx:fallen_star>,
        <netherex:frost_powder>
    ],
    [
        <contenttweaker:volatile_magic>
    ]
);

// Salvaging
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);

// 2/3 * 9 = 6
// Rule of thumb is for every salvageable metal to return 66.6666666% of material in nuggets, truncated
val iron = <minecraft:iron_nugget>;
val gold = <minecraft:gold_nugget>;
val copper = <ore:nuggetCopper>.firstItem;
val silver = <iceandfire:silver_nugget>;
val bronze = <ore:nuggetBronze>.firstItem;
val steel = <dungeontactics:steel_nugget>;
val knightmetal = <twilightforest:armor_shard>; 
val soulforgedSteel = <betterwithmods:material:30>; // Steel Anvil
val mythril = <ore:nuggetMythril>.firstItem; // Steel Anvil
// Irregulars
val chain = <minecraft:iron_nugget>; // 2/3 * 4 = 8/3
val endorium = <endreborn:item_raw_endorium>; // 2/3 * 4 = 8/3
val ironwood = <twilightforest:ironwood_raw>; // 2/3 * 1/2 = 1/3
val viridium = <ore:nuggetViridium>.firstItem; // Steel Anvil

// 1 ingot
val sixMap = {
    <minecraft:iron_shovel:*> : iron,
    <spartanweaponry:dagger_iron:*> : iron,
    <spartanweaponry:spear_iron:*> : iron,
    <spartanweaponry:pike_iron:*> : iron,
    <spartanweaponry:lance_iron:*> : iron,
//  <spartanweaponry:throwing_knife_iron:*> : iron,
    <spartanweaponry:javelin_iron:*> : iron,
    <spartanweaponry:boomerang_iron:*> : iron,
    <spartanweaponry:staff_iron:*> : iron,
    <minecraft:golden_shovel:*> : gold,
    <spartanweaponry:dagger_gold:*> : gold,
    <spartanweaponry:spear_gold:*> : gold,
    <spartanweaponry:pike_gold:*> : gold,
    <spartanweaponry:lance_gold:*> : gold,
//  <spartanweaponry:throwing_knife_gold:*> : gold,
    <spartanweaponry:javelin_gold:*> : gold,
    <spartanweaponry:boomerang_gold:*> : gold,
    <spartanweaponry:staff_gold:*> : gold,
    <spartanweaponry:dagger_copper:*> : copper,
    <spartanweaponry:spear_copper:*> : copper,
    <spartanweaponry:pike_copper:*> : copper,
    <spartanweaponry:javelin_copper:*> : copper,
    <iceandfire:silver_shovel:*> : silver,
    <spartanweaponry:dagger_silver:*> : silver,
    <spartanweaponry:spear_silver:*> : silver,
    <spartanweaponry:pike_silver:*> : silver,
    <spartanweaponry:lance_silver:*> : silver,
//  <spartanweaponry:throwing_knife_silver:*> : silver,
    <spartanweaponry:javelin_silver:*> : silver,
    <spartanweaponry:boomerang_silver:*> : silver,
    <spartanweaponry:staff_silver:*> : silver,
    <atop:mud_shovel:*> : bronze,
    <spartanweaponry:dagger_bronze:*> : bronze,
    <spartanweaponry:spear_bronze:*> : bronze,
    <spartanweaponry:pike_bronze:*> : bronze,
    <spartanweaponry:lance_bronze:*> : bronze,
//  <spartanweaponry:throwing_knife_bronze:*> : bronze,
    <spartanweaponry:javelin_bronze:*> : bronze,
    <spartanweaponry:boomerang_bronze:*> : bronze,
    <spartanweaponry:staff_bronze:*> : bronze,
    <spartanweaponry:crossbow_wood:*> : steel,
	<dungeontactics:steel_shovel:*> : steel,
	<spartanweaponry:dagger_steel:*> : steel,
	<spartanweaponry:spear_steel:*> : steel,
	<spartanweaponry:pike_steel:*> : steel,
	<spartanweaponry:lance_steel:*> : steel,
	<spartanweaponry:javelin_steel:*> : steel,
	<spartanweaponry:boomerang_steel:*> : steel,
    <endreborn:tool_magnifier:*> : endorium,
    <endreborn:tool_sword_endorium:*> : endorium,
    <spartancompat:dagger_adamantium:*> : viridium,
//  <spartancompat:throwing_knife_adamantium:*> : viridium
} as IItemStack[IItemStack];

for input, output in sixMap{
    Crucible.addStoked([input],[output*6]);
}

// 2 ingots
val twelveMap = {
    <minecraft:iron_sword:*> : iron,
    <minecraft:iron_hoe:*> : iron,
    <minecraft:shears:*> : iron,
    <spartanweaponry:katana_iron:*> : iron,
    <spartanweaponry:longbow_iron:*> : iron,
//  <spartanweaponry:throwing_axe_iron:*> : iron,
    <minecraft:golden_sword:*> : gold,
    <minecraft:golden_hoe:*> : gold,
    <spartanweaponry:katana_gold:*> : gold,
//  <spartanweaponry:throwing_axe_gold:*> : gold,
//  <spartanweaponry:throwing_axe_copper:*> : copper,
    <iceandfire:silver_sword:*> : silver,
    <iceandfire:silver_hoe:*> : silver,
    <spartanweaponry:katana_silver:*> : silver,
    <spartanweaponry:longbow_silver:*> : silver,
//  <spartanweaponry:throwing_axe_silver:*> : silver,
    <atop:mud_sword:*> : bronze,
    <atop:mud_hoe:*> : bronze,
    <spartanweaponry:katana_bronze:*> : bronze,
    <spartanweaponry:longbow_bronze:*> : bronze,
//  <spartanweaponry:throwing_axe_bronze:*> : bronze,
	<dungeontactics:steel_cutlass:*> : steel,
	<dungeontactics:steel_hoe:*> : steel,
	<spartanweaponry:katana_steel:*> : steel,
	<spartanweaponry:longbow_steel:*> : steel,
    <twilightforest:knightmetal_sword:*> : knightmetal,
    <simpleores:adamantium_shears:*> : viridium,
    <spartancompat:spear_adamantium:*> : viridium,
    <spartancompat:staff_adamantium:*> : viridium,
	<simpleores:mythril_shears:*> : mythril,
    <spartancompat:javelin_mythril:*> : mythril,
    <betterwithmods:steel_hoe:*> : soulforgedSteel,
    <betterwithaddons:steel_spade:*> : soulforgedSteel
} as IItemStack[IItemStack];

for input, output in twelveMap{
    Crucible.addStoked([input],[output*12]);
}

// 3 ingots
val eighteenMap = {
    <minecraft:iron_pickaxe:*> : iron,
    <minecraft:iron_axe:*> : iron,
    <spartanweaponry:saber_iron:*> : iron,
    <spartanweaponry:warhammer_iron:*> : iron,
    <spartanweaponry:mace_iron:*> : iron,
    <spartanweaponry:glaive_iron:*> : iron,
    <minecraft:golden_pickaxe:*> : gold,
    <minecraft:golden_axe:*> : gold,
    <spartanweaponry:saber_gold:*> : gold,
    <spartanweaponry:warhammer_gold:*> : gold,
    <spartanweaponry:mace_gold:*> : gold,
    <spartanweaponry:glaive_gold:*> : gold,
    <twilightforest:minotaur_axe_gold:*> : gold,
    <simpleores:copper_axe:*> : copper,
    <spartanweaponry:mace_copper:*> : copper,
    <iceandfire:silver_pickaxe:*> : silver,
    <iceandfire:silver_axe:*> : silver,
    <spartanweaponry:saber_silver:*> : silver,
    <spartanweaponry:warhammer_silver:*> : silver,
    <spartanweaponry:mace_silver:*> : silver,
    <spartanweaponry:glaive_silver:*> : silver,
    <atop:mud_pickaxe:*> : bronze,
    <atop:mud_axe:*> : bronze,
    <spartanweaponry:saber_bronze:*> : bronze,
    <spartanweaponry:warhammer_bronze:*> : bronze,
    <spartanweaponry:mace_bronze:*> : bronze,
    <spartanweaponry:glaive_bronze:*> : bronze,
	<dungeontactics:steel_pickaxe:*> : steel,
	<dungeontactics:steel_axe:*> : steel,
	<spartanweaponry:saber_steel:*> : steel,
	<spartanweaponry:warhammer_steel:*> : steel,
	<spartanweaponry:mace_steel:*> : steel,
	<spartanweaponry:glaive_steel:*> : steel,
	<spartanweaponry:staff_steel:*> : steel,
    <twilightforest:knightmetal_pickaxe:*> : knightmetal,
    <twilightforest:knightmetal_axe:*> : knightmetal,
    <simpleores:adamantium_shovel:*> : viridium,
    <spartancompat:katana_adamantium:*> : viridium
} as IItemStack[IItemStack];

for input, output in eighteenMap{
    Crucible.addStoked([input],[output*18]);
}

// 4 ingots
val twentyFourMap = {
    <minecraft:iron_boots:*> : iron,
    <pyrotech:iron_hammer:*> : iron,
    <spartanshields:shield_basic_iron:*> : iron,
    <spartanweaponry:longsword_iron:*> : iron,
    <spartanweaponry:rapier_iron:*> : iron,
    <spartanweaponry:halberd_iron:*> : iron,
    <minecraft:golden_boots:*> : gold,
    <spartanshields:shield_basic_gold:*> : gold,
    <spartanweaponry:longsword_gold:*> : gold,
    <spartanweaponry:rapier_gold:*> : gold,
    <spartanweaponry:halberd_gold:*> : gold,
    <iceandfire:armor_silver_metal_boots:*> : silver,
    <spartanshields:shield_basic_silver:*> : silver,
    <spartanweaponry:longsword_silver:*> : silver,
    <spartanweaponry:rapier_silver:*> : silver,
    <spartanweaponry:halberd_silver:*> : silver,
    <atop:mud_boots:*> : bronze,
    <spartanshields:shield_basic_bronze:*> : bronze,
    <spartanweaponry:longsword_bronze:*> : bronze,
    <spartanweaponry:rapier_bronze:*> : bronze,
    <spartanweaponry:halberd_bronze:*> : bronze,
	<dungeontactics:steel_boots:*> : steel,
	<spartanweaponry:longsword_steel:*> : steel,
	<spartanweaponry:rapier_steel:*> : steel,
	<spartanweaponry:halberd_steel:*> : steel,
    <twilightforest:knightmetal_boots:*> : knightmetal,
    <simpleores:adamantium_sword:*> : viridium,
    <simpleores:adamantium_hoe:*> : viridium,
    <spartancompat:saber_adamantium:*> : viridium,
	<spartancompat:glaive_mythril:*> : mythril,
    <betterwithmods:steel_shovel:*> : soulforgedSteel,
    <simpleores:mythril_hoe:*> : mythril,
    <simpleores:mythril_sword:*> : mythril,
    <pyrotech:diamond_hammer:*> : soulforgedSteel,
    <spartanshields:shield_basic_soulforged_steel:*> : soulforgedSteel,
    <betterwithmods:steel_mattock:*> : soulforgedSteel,
    <betterwithmods:steel_axe:*> : soulforgedSteel,
    <betterwithaddons:steel_masonpick:*> : soulforgedSteel
} as IItemStack[IItemStack];

for input, output in twentyFourMap{
    Crucible.addStoked([input],[output*24]);
}

// 5 ingots
val thirtyMap = {
    <minecraft:iron_helmet:*> : iron,
    <spartanweaponry:battleaxe_iron:*> : iron,
    <minecraft:golden_helmet:*> : gold,
    <spartanweaponry:battleaxe_gold:*> : gold,
    <iceandfire:armor_silver_metal_helmet:*> : silver,
    <spartanweaponry:battleaxe_silver:*> : silver,
    <atop:mud_helmet:*> : bronze,
    <spartanweaponry:battleaxe_bronze:*> : bronze,
	<dungeontactics:steel_helmet:*> : steel,
	<pyrotech:flint_hammer:*> : steel,
	<spartanweaponry:battleaxe_steel:*> : steel,
    <twilightforest:knightmetal_helmet:*> : knightmetal,
    <simpleores:adamantium_pickaxe:*> : viridium,
    <simpleores:adamantium_axe:*> : viridium
} as IItemStack[IItemStack];

for input, output in thirtyMap{
    Crucible.addStoked([input],[output*30]);
}

// 6 ingots
val thirtySixMap = {
    <spartanweaponry:greatsword_iron:*> : iron,
    <spartanweaponry:hammer_iron:*> : iron,
    <spartanweaponry:greatsword_gold:*> : gold,
    <spartanweaponry:hammer_gold:*> : gold,
    <spartanweaponry:hammer_copper:*> : copper,
    <spartanweaponry:greatsword_silver:*> : silver,
    <spartanweaponry:hammer_silver:*> : silver,
    <spartanweaponry:greatsword_bronze:*> : bronze,
    <spartanweaponry:hammer_bronze:*> : bronze,
	<spartanweaponry:greatsword_steel:*> : steel,
	<spartanweaponry:hammer_steel:*> : steel,
    <simpleores:adamantium_leggings:*> : viridium,
    <simpleores:adamantium_boots:*> : viridium
} as IItemStack[IItemStack];

for input, output in thirtySixMap{
    Crucible.addStoked([input],[output*30]);
}

// 7 ingots
val fortyTwoMap = {
    <minecraft:iron_leggings:*> : iron,
    <minecraft:iron_horse_armor:*> : iron,
    <iceandfire:iron_hippogryph_armor:*> : iron,
    <minecraft:golden_leggings:*> : gold,
    <minecraft:golden_horse_armor:*> : gold,
    <iceandfire:gold_hippogryph_armor:*> : gold,
    <iceandfire:armor_silver_metal_leggings:*> : silver,
    <atop:mud_leggings:*> : bronze,
	<dungeontactics:steel_leggings:*> : steel,
    <twilightforest:knightmetal_leggings:*> : knightmetal
} as IItemStack[IItemStack];

for input, output in fortyTwoMap{
    Crucible.addStoked([input],[output*42]);
}

// 8 ingots
val fortyEightMap = {
    <minecraft:iron_chestplate:*> : iron,
    <minecraft:golden_chestplate:*> : gold,
    <iceandfire:armor_silver_metal_chestplate:*> : silver,
    <atop:mud_chestplate:*> : bronze,
	<dungeontactics:steel_chestplate:*> : steel,
    <twilightforest:knightmetal_chestplate:*> : knightmetal,
    <simpleores:adamantium_helmet:*> : viridium
} as IItemStack[IItemStack];

for input, output in fortyEightMap{
    Crucible.addStoked([input],[output*48]);
}

// other
Crucible.addStoked([<iceandfire:dragonarmor_iron:3>],[iron*162]);
Crucible.addStoked([<iceandfire:dragonarmor_gold:3>],[gold*162]);
Crucible.addStoked([<iceandfire:dragonarmor_silver:3>],[silver*162]);

Crucible.addStoked([<iceandfire:dragonarmor_iron:0>],[iron*270]);
Crucible.addStoked([<iceandfire:dragonarmor_iron:1>],[iron*270]);
Crucible.addStoked([<iceandfire:dragonarmor_gold:0>],[gold*270]);
Crucible.addStoked([<iceandfire:dragonarmor_gold:1>],[gold*270]);
Crucible.addStoked([<iceandfire:dragonarmor_silver:0>],[silver*270]);
Crucible.addStoked([<iceandfire:dragonarmor_silver:1>],[silver*270]);

Crucible.addStoked([<iceandfire:dragonarmor_iron:2>],[iron*432]);
Crucible.addStoked([<iceandfire:dragonarmor_gold:2>],[gold*432]);
Crucible.addStoked([<iceandfire:dragonarmor_silver:2>],[silver*432]);

Crucible.addStoked([<twilightforest:knightmetal_shield:*>],[knightmetal*45]);
Crucible.addStoked([<twilightforest:block_and_chain:*>],[knightmetal*99]);
Crucible.addStoked([<minecraft:chainmail_helmet:*>],[chain*14]);
Crucible.addStoked([<minecraft:chainmail_chestplate:*>],[chain*22]);
Crucible.addStoked([<minecraft:chainmail_leggings:*>],[chain*19]);
Crucible.addStoked([<minecraft:chainmail_boots:*>],[chain*11]);
Crucible.addStoked([<endreborn:ender_bow:*>],[endorium*3]);
Crucible.addStoked([<twilightforest:ironwood_chestplate:*>],[ironwood*3]);
Crucible.addStoked([<twilightforest:ironwood_helmet:*>],[ironwood*2]);
Crucible.addStoked([<twilightforest:ironwood_leggings:*>],[ironwood*2]);
Crucible.addStoked([<twilightforest:ironwood_boots:*>],[ironwood*1]);
Crucible.addStoked([<twilightforest:ironwood_axe:*>],[ironwood*1]);
Crucible.addStoked([<twilightforest:ironwood_pickaxe:*>],[ironwood*1]);
Crucible.addStoked([<simpleores:adamantium_chestplate:*>],[viridium*72]);
Crucible.addStoked([<betterwithmods:steel_helmet:*>],[soulforgedSteel*48]);
Crucible.addStoked([<betterwithmods:steel_chest:*>],[soulforgedSteel*72]);
Crucible.addStoked([<betterwithmods:steel_pants:*>],[soulforgedSteel*36]);
Crucible.addStoked([<betterwithmods:steel_boots:*>],[soulforgedSteel*36]);
Crucible.addStoked([<betterwithmods:steel_pickaxe:*>],[soulforgedSteel*30]);
Crucible.addStoked([<betterwithmods:steel_hacksaw:*>],[soulforgedSteel*3]);
Crucible.addStoked([<betterwithaddons:steel_matchpick:*>],[soulforgedSteel*18]);
Crucible.addStoked([<betterwithaddons:steel_machete:*>],[soulforgedSteel*18]);
Crucible.addStoked([<betterwithaddons:steel_kukri:*>],[soulforgedSteel*39]);
Crucible.addStoked([<betterwithaddons:steel_carpentersaw:*>],[soulforgedSteel*39]);
Crucible.addStoked([<simpleores:mythril_helmet:*>],[mythril*48]);
Crucible.addStoked([<simpleores:mythril_chestplate:*>],[mythril*72]);
Crucible.addStoked([<simpleores:mythril_leggings:*>],[mythril*36]);
Crucible.addStoked([<simpleores:mythril_boots:*>],[mythril*36]);
Crucible.addStoked([<simpleores:mythril_bow:*>],[mythril*36]);
Crucible.addStoked([<simpleores:mythril_pickaxe:*>],[mythril*30]);
Crucible.addStoked([<simpleores:mythril_axe:*>],[mythril*30]);
Crucible.addStoked([<simpleores:mythril_shovel:*>],[mythril*18]);
Crucible.addStoked([<spartancompat:lance_mythril:*>],[mythril*18]);
Crucible.addStoked([<spartancompat:longsword_mythril:*>],[mythril*30]);
Crucible.addStoked([<spartancompat:rapier_mythril:*>],[mythril*30]);
Crucible.addStoked([<spartancompat:boomerang_mythril:*>],[mythril*6]);
Crucible.addStoked([<spartancompat:mace_mythril:*>],[mythril*42]);
Crucible.addStoked([<spartanshields:shield_basic_lead:*>],[mythril*66]); //mythril shield
