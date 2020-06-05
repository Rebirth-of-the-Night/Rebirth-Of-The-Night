import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

furnace.addRecipe(<betterwithmods:cooking_pot>, <betterwithmods:unfired_pottery>);


mods.betterwithmods.Crucible.removeAll();


// nugget > sfs
// block > sfs
// sfs rail > 6iron 2sfs
// urn:8 steel dustCarbon soul flux > sfs urn:0

mods.betterwithmods.Crucible.addUnstoked([<ore:cobblestone>],[<minecraft:stone>]);
mods.betterwithmods.Crucible.addUnstoked([<betterwithmods:aesthetic:7>],[<betterwithmods:aesthetic:6>]);

//Normal Steel
mods.betterwithmods.Crucible.addUnstoked(
    [
        <minecraft:iron_ingot>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>
    ],
    [
        <dungeontactics:steel_ingot>
    ]
);
//Stoked Normal Steel
mods.betterwithmods.Crucible.addStoked(
    [
        <minecraft:iron_ingot>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>,
        <ore:dustCoal>|<ore:dustCharcoal>
    ],
    [
        <dungeontactics:steel_ingot>
    ]
);

//Gem Ingots
mods.betterwithmods.Crucible.addUnstoked(
    [
        <dungeontactics:steel_ingot>,
        <minecraft:diamond>
    ],
    [
        <betterwithmods:material:45>
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:1>
    ],
    [
        <contenttweaker:ruby_ingot>
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:6>
    ],
    [
        <contenttweaker:sapphire_ingot>
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:2>
    ],
    [
        <contenttweaker:peridot_ingot>
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemAmethyst>
    ],
    [
        <contenttweaker:amethyst_ingot>
    ]
);


//Stoked Gem Ingots
mods.betterwithmods.Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <minecraft:diamond>
    ],
    [
        <betterwithmods:material:45>
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:1>
    ],
    [
        <contenttweaker:ruby_ingot>
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:6>
    ],
    [
        <contenttweaker:sapphire_ingot>
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <biomesoplenty:gem:2>
    ],
    [
        <contenttweaker:peridot_ingot>
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <dungeontactics:steel_ingot>,
        <ore:gemAmethyst>
    ],
    [
        <contenttweaker:amethyst_ingot>
    ]
);


//Soul Forged Steel
mods.betterwithmods.Crucible.addStoked(
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
//Charbiotite sfs
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotSteel>,
        <betterwithmods:material:38>,
        <undergroundbiomes:lignite_coal>,
        <ore:blockSoulUrn>
    ],
    [
        <betterwithmods:material:14>,
        <betterwithmods:urn>
    ]
);

// Anvil > Steel
mods.betterwithmods.Crucible.addStoked(
    [
        <betterwithmods:steel_anvil>
    ],
    [
        <dungeontactics:steel_ingot>*18
    ]
);


//Soul Flux
mods.betterwithmods.Crucible.addStoked(
    [
        <betterwithmods:material:39>,
    ],
    [
        <betterwithmods:material:25>,
        <betterwithmods:material:38>
    ]
);

//Bronze Production
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:blockTin>,
        <ore:blockCopper>,
        <ore:blockCopper>,
        <ore:blockCopper>
    ],
    [
        <ore:blockBronze>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:ingotTin>,
        <ore:ingotCopper>,
        <ore:ingotCopper>,
        <ore:ingotCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);
//Stoked Bronze Production
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:blockTin>,
        <ore:blockCopper>,
        <ore:blockCopper>,
        <ore:blockCopper>
    ],
    [
        <ore:blockBronze>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotTin>,
        <ore:ingotCopper>,
        <ore:ingotCopper>,
        <ore:ingotCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);

//Electrum Production
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:blockSilver>,
        <ore:blockGold>,
        <ore:blockGold>,
        <aether_legacy:ambrosium_block>
    ],
    [
        <ore:blockElectrum>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:ingotSilver>,
        <ore:ingotGold>,
        <ore:ingotGold>,
        <ore:gemAmbrosium>
    ],
    [
        <ore:ingotElectrum>.firstItem*4
    ]
);
//Stoked Electrum Production
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:blockSilver>,
        <ore:blockGold>,
        <ore:blockGold>,
        <aether_legacy:ambrosium_block>
    ],
    [
        <ore:blockElectrum>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotSilver>,
        <ore:ingotGold>,
        <ore:ingotGold>,
        <ore:gemAmbrosium>
    ],
    [
        <ore:ingotElectrum>.firstItem*4
    ]
);
//Unstoked Magic Wood & Star Piece
mods.betterwithmods.Crucible.addUnstoked(
    [
        <biomesoplenty:log_1:5>*4,
		<nyx:fallen_star>
    ],
    [
        <dungeontactics:magic_powder>*8
    ]
);
//Unstoked Magic Wood & Comet Shard
mods.betterwithmods.Crucible.addUnstoked(
    [
        <biomesoplenty:log_1:5>*4,
		<nyx:comet_shard>
    ],
    [
        <dungeontactics:magic_powder>*16
    ]
);
//Stoked Magic Wood & Star Piece
mods.betterwithmods.Crucible.addStoked(
    [
        <biomesoplenty:log_1:5>*4,
		<nyx:fallen_star>
    ],
    [
        <dungeontactics:magic_powder>*12
    ]
);
//Stoked Magic Wood & Comet Shard
mods.betterwithmods.Crucible.addStoked(
    [
        <biomesoplenty:log_1:5>*4,
		<nyx:comet_shard>
    ],
    [
        <dungeontactics:magic_powder>*24
    ]
);

// Salvaging
furnace.remove(<minecraft:iron_nugget>);
furnace.remove(<minecraft:gold_nugget>);

// 2/3 * 9 = 6
val iron = <minecraft:iron_nugget>;
val gold = <minecraft:gold_nugget>;
val copper = <contenttweaker:material_part:4>;
val silver = <iceandfire:silver_nugget>;
val bronze = <contenttweaker:material_part:1>;
val steel = <dungeontactics:steel_nugget>;
val knightmetal = <twilightforest:armor_shard>; 
// Irregulars
val chain = <minecraft:iron_nugget>; // 2/3 * 4 = 8/3
val endorium = <endreborn:item_raw_endorium>; // 2/3 * 4 = 8/3
val ironwood = <twilightforest:ironwood_raw>; // 2/3 * 1/2 = 1/3
val viridium = <contenttweaker:material_part:10>; // Steel Anvil
// 100%
val soulforgedSteel = <betterwithmods:material:30>; // Steel Anvil
val mythril = <contenttweaker:material_part:8>; // Steel Anvil


val sixMap = {
    <minecraft:iron_shovel:*> : iron,
    <spartanweaponry:dagger_iron:*> : iron,
    <spartanweaponry:spear_iron:*> : iron,
    <spartanweaponry:pike_iron:*> : iron,
    <spartanweaponry:lance_iron:*> : iron,
    <spartanweaponry:throwing_knife_iron:*> : iron,
    <spartanweaponry:javelin_iron:*> : iron,
    <spartanweaponry:boomerang_iron:*> : iron,
    <spartanweaponry:staff_iron:*> : iron,
    <minecraft:golden_shovel:*> : gold,
    <spartanweaponry:dagger_gold:*> : gold,
    <spartanweaponry:spear_gold:*> : gold,
    <spartanweaponry:pike_gold:*> : gold,
    <spartanweaponry:lance_gold:*> : gold,
    <spartanweaponry:throwing_knife_gold:*> : gold,
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
    <spartanweaponry:throwing_knife_silver:*> : silver,
    <spartanweaponry:javelin_silver:*> : silver,
    <spartanweaponry:boomerang_silver:*> : silver,
    <spartanweaponry:staff_silver:*> : silver,
    <atop:mud_shovel:*> : bronze,
    <spartanweaponry:dagger_bronze:*> : bronze,
    <spartanweaponry:spear_bronze:*> : bronze,
    <spartanweaponry:pike_bronze:*> : bronze,
    <spartanweaponry:lance_bronze:*> : bronze,
    <spartanweaponry:throwing_knife_bronze:*> : bronze,
    <spartanweaponry:javelin_bronze:*> : bronze,
    <spartanweaponry:boomerang_bronze:*> : bronze,
    <spartanweaponry:staff_bronze:*> : bronze,
    <spartanweaponry:crossbow_wood:*> : steel,
    <endreborn:tool_magnifier:*> : endorium,
    <endreborn:tool_sword_endorium:*> : endorium,
    <spartancompat:dagger_adamantium:*> : viridium,
    <spartancompat:throwing_knife_adamantium:*> : viridium
} as IItemStack[IItemStack];

for input, output in sixMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*6]);
}


val twelveMap = {
    <minecraft:iron_sword:*> : iron,
    <minecraft:iron_hoe:*> : iron,
    <minecraft:shears:*> : iron,
    <spartanweaponry:katana_iron:*> : iron,
    <spartanweaponry:longbow_iron:*> : iron,
    <spartanweaponry:throwing_axe_iron:*> : iron,
    <minecraft:golden_sword:*> : gold,
    <minecraft:golden_hoe:*> : gold,
    <spartanweaponry:katana_gold:*> : gold,
    <spartanweaponry:throwing_axe_gold:*> : gold,
    <spartanweaponry:throwing_axe_copper:*> : copper,
    <iceandfire:silver_sword:*> : silver,
    <iceandfire:silver_hoe:*> : silver,
    <spartanweaponry:katana_silver:*> : silver,
    <spartanweaponry:longbow_silver:*> : silver,
    <spartanweaponry:throwing_axe_silver:*> : silver,
    <atop:mud_sword:*> : bronze,
    <atop:mud_hoe:*> : bronze,
    <spartanweaponry:katana_bronze:*> : bronze,
    <spartanweaponry:longbow_bronze:*> : bronze,
    <spartanweaponry:throwing_axe_bronze:*> : bronze,
    <twilightforest:knightmetal_sword:*> : knightmetal,
    <simpleores:adamantium_shears:*> : viridium,
    <spartancompat:spear_adamantium:*> : viridium,
    <spartancompat:staff_adamantium:*> : viridium
} as IItemStack[IItemStack];

for input, output in twelveMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*12]);
}


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
    <twilightforest:knightmetal_pickaxe:*> : knightmetal,
    <twilightforest:knightmetal_axe:*> : knightmetal,
    <simpleores:adamantium_shovel:*> : viridium,
    <spartancompat:katana_adamantium:*> : viridium,
    <betterwithmods:steel_hoe:*> : soulforgedSteel,
    <betterwithaddons:steel_spade:*> : soulforgedSteel,
    <simpleores:mythril_shears:*> : mythril,
    <spartancompat:javelin_mythril:*> : mythril
} as IItemStack[IItemStack];

for input, output in eighteenMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*18]);
}


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
    <twilightforest:knightmetal_boots:*> : knightmetal,
    <simpleores:adamantium_sword:*> : viridium,
    <simpleores:adamantium_hoe:*> : viridium,
    <spartancompat:saber_adamantium:*> : viridium
} as IItemStack[IItemStack];

for input, output in twentyFourMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*24]);
}


val thirtyMap = {
    <minecraft:iron_helmet:*> : iron,
    <spartanweaponry:battleaxe_iron:*> : iron,
    <minecraft:golden_helmet:*> : gold,
    <spartanweaponry:battleaxe_gold:*> : gold,
    <iceandfire:armor_silver_metal_helmet:*> : silver,
    <spartanweaponry:battleaxe_silver:*> : silver,
    <atop:mud_helmet:*> : bronze,
    <spartanweaponry:battleaxe_bronze:*> : bronze,
    <twilightforest:knightmetal_helmet:*> : knightmetal,
    <simpleores:adamantium_pickaxe:*> : viridium,
    <simpleores:adamantium_axe:*> : viridium
} as IItemStack[IItemStack];

for input, output in thirtyMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*30]);
}


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
    <simpleores:adamantium_leggings:*> : viridium,
    <simpleores:adamantium_boots:*> : viridium,
    <pyrotech:diamond_hammer:*> : soulforgedSteel,
    <spartanshields:shield_basic_soulforged_steel:*> : soulforgedSteel,
    <betterwithmods:steel_mattock:*> : soulforgedSteel,
    <betterwithaddons:steel_masonpick:*> : soulforgedSteel,
    <simpleores:mythril_sword:*> : mythril,
    <simpleores:mythril_hoe:*> : mythril,
    <spartancompat:glaive_mythril:*> : mythril
} as IItemStack[IItemStack];

for input, output in thirtySixMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*30]);
}


val fortyTwoMap = {
    <minecraft:iron_leggings:*> : iron,
    <minecraft:iron_horse_armor:*> : iron,
    <iceandfire:iron_hippogryph_armor:*> : iron,
    <minecraft:golden_leggings:*> : gold,
    <minecraft:golden_horse_armor:*> : gold,
    <iceandfire:gold_hippogryph_armor:*> : gold,
    <iceandfire:armor_silver_metal_leggings:*> : silver,
    <atop:mud_leggings:*> : bronze,
    <twilightforest:knightmetal_leggings:*> : knightmetal
} as IItemStack[IItemStack];

for input, output in fortyTwoMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*42]);
}


val fortyEightMap = {
    <minecraft:iron_chestplate:*> : iron,
    <minecraft:golden_chestplate:*> : gold,
    <iceandfire:armor_silver_metal_chestplate:*> : silver,
    <atop:mud_chestplate:*> : bronze,
    <twilightforest:knightmetal_chestplate:*> : knightmetal,
    <simpleores:adamantium_helmet:*> : viridium
} as IItemStack[IItemStack];

for input, output in fortyEightMap{
    mods.betterwithmods.Crucible.addStoked([input],[output*48]);
}

mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_iron:3>],[iron*162]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_gold:3>],[gold*162]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_silver:3>],[silver*162]);

mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_iron:0>],[iron*270]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_iron:1>],[iron*270]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_gold:0>],[gold*270]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_gold:1>],[gold*270]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_silver:0>],[silver*270]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_silver:1>],[silver*270]);

mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_iron:2>],[iron*432]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_gold:2>],[gold*432]);
mods.betterwithmods.Crucible.addStoked([<iceandfire:dragonarmor_silver:2>],[silver*432]);

mods.betterwithmods.Crucible.addStoked([<twilightforest:knightmetal_shield:*>],[knightmetal*45]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:block_and_chain:*>],[knightmetal*99]);
mods.betterwithmods.Crucible.addStoked([<minecraft:chainmail_helmet:*>],[chain*14]);
mods.betterwithmods.Crucible.addStoked([<minecraft:chainmail_chestplate:*>],[chain*22]);
mods.betterwithmods.Crucible.addStoked([<minecraft:chainmail_leggings:*>],[chain*19]);
mods.betterwithmods.Crucible.addStoked([<minecraft:chainmail_boots:*>],[chain*11]);
mods.betterwithmods.Crucible.addStoked([<endreborn:ender_bow:*>],[endorium*3]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_chestplate:*>],[ironwood*3]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_helmet:*>],[ironwood*2]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_leggings:*>],[ironwood*2]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_boots:*>],[ironwood*1]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_axe:*>],[ironwood*1]);
mods.betterwithmods.Crucible.addStoked([<twilightforest:ironwood_pickaxe:*>],[ironwood*1]);
mods.betterwithmods.Crucible.addStoked([<simpleores:adamantium_chestplate:*>],[viridium*72]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_helmet:*>],[soulforgedSteel*72]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_chest:*>],[soulforgedSteel*108]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_pants:*>],[soulforgedSteel*54]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_boots:*>],[soulforgedSteel*54]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_axe:*>],[soulforgedSteel*27]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_pickaxe:*>],[soulforgedSteel*27]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_shovel:*>],[soulforgedSteel*9]);
mods.betterwithmods.Crucible.addStoked([<betterwithmods:steel_hacksaw:*>],[soulforgedSteel*4]);
mods.betterwithmods.Crucible.addStoked([<betterwithaddons:steel_matchpick:*>],[soulforgedSteel*27]);
mods.betterwithmods.Crucible.addStoked([<betterwithaddons:steel_machete:*>],[soulforgedSteel*27]);
mods.betterwithmods.Crucible.addStoked([<betterwithaddons:steel_kukri:*>],[soulforgedSteel*45]);
mods.betterwithmods.Crucible.addStoked([<betterwithaddons:steel_carpentersaw:*>],[soulforgedSteel*45]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_helmet:*>],[mythril*72]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_chestplate:*>],[mythril*108]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_leggings:*>],[mythril*54]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_boots:*>],[mythril*54]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_bow:*>],[mythril*54]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_pickaxe:*>],[mythril*45]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_axe:*>],[mythril*45]);
mods.betterwithmods.Crucible.addStoked([<simpleores:mythril_shovel:*>],[mythril*27]);
mods.betterwithmods.Crucible.addStoked([<spartancompat:lance_mythril:*>],[mythril*27]);
mods.betterwithmods.Crucible.addStoked([<spartancompat:longsword_mythril:*>],[mythril*45]);
mods.betterwithmods.Crucible.addStoked([<spartancompat:rapier_mythril:*>],[mythril*45]);
mods.betterwithmods.Crucible.addStoked([<spartancompat:boomerang_mythril:*>],[mythril*9]);
mods.betterwithmods.Crucible.addStoked([<spartancompat:mace_mythril:*>],[mythril*63]);
mods.betterwithmods.Crucible.addStoked([<spartanshields:shield_basic_lead:*>],[mythril*90]);