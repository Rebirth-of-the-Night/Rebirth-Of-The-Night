#modloaded dungeontactics
#priority 1

import crafttweaker.item.IIngredient;
import mods.artisanworktables.builder.RecipeBuilder;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.jei.JEI;
import mods.ltt.LootTable;

JEI.removeAndHide(<dungeontactics:cherry_bomb>);
JEI.removeAndHide(<dungeontactics:brazier>);
JEI.removeAndHide(<dungeontactics:iron_dust>);

JEI.removeAndHide(<dungeontactics:mushroom_iron>);
JEI.removeAndHide(<dungeontactics:mushroom_coal>);
JEI.removeAndHide(<dungeontactics:mushroom_blast>);
JEI.removeAndHide(<dungeontactics:mushroom_silver>);
JEI.removeAndHide(<dungeontactics:mushroom_gold>);
JEI.removeAndHide(<dungeontactics:mushroom_steel>);
JEI.removeAndHide(<dungeontactics:mushroom_mithril>);

JEI.removeAndHide(<dungeontactics:wooden_club>);
JEI.removeAndHide(<dungeontactics:bone_club>);
JEI.removeAndHide(<dungeontactics:stone_club>);
JEI.removeAndHide(<dungeontactics:iron_club>);
JEI.removeAndHide(<dungeontactics:silver_club>);
JEI.removeAndHide(<dungeontactics:golden_club>);
JEI.removeAndHide(<dungeontactics:steel_club>);
JEI.removeAndHide(<dungeontactics:diamond_club>);
JEI.removeAndHide(<dungeontactics:mithril_club>);



JEI.removeAndHide(<dungeontactics:mortar&pestle>);
JEI.removeAndHide(<dungeontactics:soulgem>);


JEI.removeAndHide(<dungeontactics:gunpowder_tinydust>);
JEI.removeAndHide(<dungeontactics:coal_tinydust>);
JEI.removeAndHide(<dungeontactics:iron_tinydust>);
JEI.removeAndHide(<dungeontactics:silver_tinydust>);
JEI.removeAndHide(<dungeontactics:steel_tinydust>);
JEI.removeAndHide(<dungeontactics:gold_tinydust>);
JEI.removeAndHide(<dungeontactics:mithril_tinydust>);
JEI.removeAndHide(<dungeontactics:tin_tinydust>);
JEI.removeAndHide(<dungeontactics:copper_tinydust>);
JEI.removeAndHide(<dungeontactics:aluminium_tinydust>);
JEI.removeAndHide(<dungeontactics:nickel_tinydust>);
JEI.removeAndHide(<dungeontactics:lead_tinydust>);
JEI.removeAndHide(<dungeontactics:platinum_tinydust>);
JEI.removeAndHide(<dungeontactics:tungsten_tinydust>);
JEI.removeAndHide(<dungeontactics:titanium_tinydust>);
JEI.removeAndHide(<dungeontactics:osmium_tinydust>);

JEI.removeAndHide(<dungeontactics:coal_dust>);
JEI.removeAndHide(<dungeontactics:copper_dust>);
JEI.removeAndHide(<dungeontactics:steel_dust>);
JEI.removeAndHide(<dungeontactics:aluminium_dust>);
JEI.removeAndHide(<dungeontactics:nickel_dust>);
JEI.removeAndHide(<dungeontactics:lead_dust>);
JEI.removeAndHide(<dungeontactics:platinum_dust>);
JEI.removeAndHide(<dungeontactics:tungsten_dust>);
JEI.removeAndHide(<dungeontactics:titanium_dust>);
JEI.removeAndHide(<dungeontactics:osmium_dust>);

JEI.removeAndHide(<dungeontactics:alchemical_cauldron>);


recipes.removeByRecipeName("dungeontactics:misc/materials/gunpowder");
recipes.removeByRecipeName("dungeontactics:weapons/potshot_right");
recipes.removeByRecipeName("dungeontactics:weapons/potshot_left");
JEI.removeAndHide(<dungeontactics:fire_starter>);
///////////////////// SILVER ///////////////////

//JEI.removeAndHide(<dungeontactics:silver_sword>);
// using the silver sword as the true darks edge
JEI.removeAndHide(<dungeontactics:silver_pickaxe>);
//JEI.removeAndHide(<dungeontactics:silver_axe>);
// using silver axe for Ogre Axe
JEI.removeAndHide(<dungeontactics:silver_shovel>);
JEI.removeAndHide(<dungeontactics:silver_hoe>);

JEI.removeAndHide(<dungeontactics:silver_shield>);
JEI.removeAndHide(<dungeontactics:silver_cestus>);
JEI.removeAndHide(<dungeontactics:silver_knife>);
JEI.removeAndHide(<dungeontactics:silver_cutlass>);
JEI.removeAndHide(<dungeontactics:silver_glaive>);
JEI.removeAndHide(<dungeontactics:silver_battleaxe>);
JEI.removeAndHide(<dungeontactics:silver_hammer>);

JEI.removeAndHide(<dungeontactics:silver_cluster>);
JEI.removeAndHide(<dungeontactics:silver_plate_boots>);
JEI.removeAndHide(<dungeontactics:silver_plate_greaves>);
JEI.removeAndHide(<dungeontactics:silver_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:silver_plate_faceplate>);

JEI.removeAndHide(<dungeontactics:silver_boots>);
JEI.removeAndHide(<dungeontactics:silver_leggings>);
JEI.removeAndHide(<dungeontactics:silver_chestplate>);
JEI.removeAndHide(<dungeontactics:silver_helmet>);

JEI.removeAndHide(<dungeontactics:silver_ingot>);
JEI.removeAndHide(<dungeontactics:silver_nugget>);
JEI.removeAndHide(<dungeontactics:silver_ore>);
JEI.removeAndHide(<dungeontactics:silver_block>);

JEI.removeAndHide(<dungeontactics:wither_web>);
JEI.removeAndHide(<dungeontactics:backfire_cannon>);
JEI.removeAndHide(<dungeontactics:pirate_hook>);
JEI.removeAndHide(<dungeontactics:boots_of_blinding_speed>);

LootTable.removeGlobalItem("dungeontactics:silver_pickaxe");
LootTable.removeGlobalItem("dungeontactics:silver_axe");
LootTable.removeGlobalItem("dungeontactics:silver_shovel");
LootTable.removeGlobalItem("dungeontactics:silver_hoe");
LootTable.removeGlobalItem("dungeontactics:silver_sword");
LootTable.removeGlobalItem("dungeontactics:silver_shield");
LootTable.removeGlobalItem("dungeontactics:silver_cestus");
LootTable.removeGlobalItem("dungeontactics:silver_knife");
LootTable.removeGlobalItem("dungeontactics:silver_cutlass");
LootTable.removeGlobalItem("dungeontactics:silver_glaive");
LootTable.removeGlobalItem("dungeontactics:silver_battleaxe");
LootTable.removeGlobalItem("dungeontactics:silver_hammer");
LootTable.removeGlobalItem("dungeontactics:phylactery");
LootTable.removeGlobalItem("dungeontactics:mortar&pestle");
LootTable.removeGlobalItem("dungeontactics:pirate_hook");
LootTable.removeGlobalItem("dungeontactics:boots_of_blinding_speed");
LootTable.removeGlobalItem("dungeontactics:backfire_cannon");
LootTable.removeGlobalItem("dungeontactics:wither_web");


// this removes the regular magic scroll recipe, and hides it from JEI. Added back as wands further down
//recipes.remove(<dungeontactics:magic_scroll>);
JEI.removeAndHide(<dungeontactics:magic_scroll>);

val woodMoulding = mods.betterwithmods.MiniBlocks.getMiniBlock("moulding", <ore:plankWood>);
recipes.addShaped("potshot",<dungeontactics:potshot>,[
    [<dungpipe:sewer_pipe>,null,null],
    [null,<minecraft:piston>,<pyrotech:material:36>],
    [null,<minecraft:tripwire_hook>,woodMoulding]
]);
val rock = <pyrotech:rock>|<pyrotech_compat:rock_igneous:5>;
recipes.remove(<dungeontactics:potshot_ammo>);
recipes.addShapeless("potshot_ammo",<dungeontactics:potshot_ammo>*4,[rock,<minecraft:paper>]);


<ore:buttonStone>.addItems([<minecraft:stone_button>,<undergroundbiomes:igneous_stone_button:*>,<undergroundbiomes:metamorphic_stone_button:*>,<undergroundbiomes:sedimentary_stone_button:*>]);
recipes.remove(<dungeontactics:rocket_pants>);
recipes.addShaped("rocket_pants",<dungeontactics:rocket_pants>,[
    [<minecraft:redstone>,<ore:buttonStone>,<minecraft:redstone>],
    [<minecraft:fireworks>,<minecraft:leather_leggings>,<minecraft:fireworks>],
    [<minecraft:fireworks>,<ore:ingotIron>,<minecraft:fireworks>]
]);

recipes.remove(<dungeontactics:bounce_boots>);
recipes.addShaped("bounce_boots",<dungeontactics:bounce_boots>,[
    [<ore:blockSlime>,<minecraft:leather_boots>,<ore:blockSlime>]
]);

recipes.remove(<dungeontactics:flight_goggles>);
recipes.addShaped("flight_googles",<dungeontactics:flight_goggles>,[
    [<ore:genericMetal>,null,<ore:genericMetal>],
    [<minecraft:stained_glass_pane:3>,<ore:durableFiber>,<minecraft:stained_glass_pane:3>],
    [<ore:genericMetal>,null,<ore:genericMetal>]
]);


// broken item
// https://www.curseforge.com/minecraft/mc-mods/dungeon-tactics/issues/156
LootTable.removeGlobalItem("dungeontactics:alchemist_brew");




JEI.removeAndHide(<dungeontactics:trap_boom>);

furnace.remove(<dungeontactics:steel_ingot>);

JEI.removeAndHide(<dungeontactics:ducttape>);
LootTable.removeGlobalItem("dungeontactics:ducttape");

JEI.removeAndHide(<dungeontactics:iron_ring>);
LootTable.removeGlobalItem("dungeontactics:iron_ring");

JEI.removeAndHide(<dungeontactics:golden_ring>);
LootTable.removeGlobalItem("dungeontactics:golden_ring");

JEI.removeAndHide(<dungeontactics:diamond_ring>);
LootTable.removeGlobalItem("dungeontactics:diamond_ring");

JEI.removeAndHide(<dungeontactics:icarus_ring>);
LootTable.removeGlobalItem("dungeontactics:icarus_ring");

JEI.removeAndHide(<dungeontactics:magic_tether>);
LootTable.removeGlobalItem("dungeontactics:magic_tether");

JEI.removeAndHide(<dungeontactics:heart_drop>);
LootTable.removeGlobalItem("dungeontactics:heart_drop");

JEI.removeAndHide(<dungeontactics:heart_jar>);
LootTable.removeGlobalItem("dungeontactics:heart_jar");

JEI.removeAndHide(<dungeontactics:heart_golden>);
LootTable.removeGlobalItem("dungeontactics:heart_golden");

JEI.removeAndHide(<dungeontactics:fire_water>);
LootTable.removeGlobalItem("dungeontactics:fire_water");



JEI.removeAndHide(<dungeontactics:iron_cluster>);
JEI.removeAndHide(<dungeontactics:gold_cluster>);
JEI.removeAndHide(<dungeontactics:tin_cluster>);
JEI.removeAndHide(<dungeontactics:copper_cluster>);

furnace.remove(<simpleores:copper_ore>, <dungeontactics:iron_cluster>);

JEI.removeAndHide(<dungeontactics:bottled_milk>);
JEI.removeAndHide(<dungeontactics:toast>);
JEI.removeAndHide(<dungeontactics:bread_slice>);
JEI.removeAndHide(<dungeontactics:toast_slice>);
JEI.removeAndHide(<dungeontactics:jam_on_toast>);
JEI.removeAndHide(<dungeontactics:jam>);
JEI.removeAndHide(<dungeontactics:ration_standard>);
JEI.removeAndHide(<dungeontactics:ration_iron>);
JEI.removeAndHide(<dungeontactics:ration_gold>);
JEI.removeAndHide(<dungeontactics:spidereye_soup>);
JEI.removeAndHide(<dungeontactics:mince_pie>);
JEI.removeAndHide(<dungeontactics:stonequartz_ore>);
JEI.removeAndHide(<dungeontactics:wooden_chair>);
JEI.removeAndHide(<dungeontactics:wooden_table>);
JEI.removeAndHide(<dungeontactics:radio>);
JEI.removeAndHide(<dungeontactics:peg_hammer>);

JEI.removeAndHide(<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 53 as short}]}));

JEI.removeAndHide(<dungeontactics:climbing_rope>);

JEI.removeAndHide(<dungeontactics:studded_boots>);
JEI.removeAndHide(<dungeontactics:studded_leggings>);
JEI.removeAndHide(<dungeontactics:studded_chestplate>);
JEI.removeAndHide(<dungeontactics:studded_helmet>);

JEI.removeAndHide(<dungeontactics:stone_plate_boots>);
JEI.removeAndHide(<dungeontactics:stone_plate_greaves>);
JEI.removeAndHide(<dungeontactics:stone_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:stone_plate_faceplate>);

JEI.removeAndHide(<dungeontactics:iron_plate_boots>);
JEI.removeAndHide(<dungeontactics:iron_plate_greaves>);
JEI.removeAndHide(<dungeontactics:iron_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:iron_plate_faceplate>);



JEI.removeAndHide(<dungeontactics:golden_plate_boots>);
JEI.removeAndHide(<dungeontactics:golden_plate_greaves>);
JEI.removeAndHide(<dungeontactics:golden_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:golden_plate_faceplate>);

JEI.removeAndHide(<dungeontactics:steel_plate_boots>);
JEI.removeAndHide(<dungeontactics:steel_plate_greaves>);
JEI.removeAndHide(<dungeontactics:steel_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:steel_plate_faceplate>);

JEI.removeAndHide(<dungeontactics:diamond_plate_boots>);
JEI.removeAndHide(<dungeontactics:diamond_plate_greaves>);
JEI.removeAndHide(<dungeontactics:diamond_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:diamond_plate_faceplate>);

JEI.removeAndHide(<dungeontactics:mithril_plate_boots>);
JEI.removeAndHide(<dungeontactics:mithril_plate_greaves>);
JEI.removeAndHide(<dungeontactics:mithril_plate_chestpiece>);
JEI.removeAndHide(<dungeontactics:mithril_plate_faceplate>);



JEI.removeAndHide(<dungeontactics:ironlinks>);
LootTable.removeGlobalItem("ironlinks");


JEI.removeAndHide(<dungeontactics:engineers_wrench_steel>);
JEI.removeAndHide(<dungeontactics:steel_shield>);
JEI.removeAndHide(<dungeontactics:steel_cestus>);
JEI.removeAndHide(<dungeontactics:steel_knife>);
recipes.remove(<dungeontactics:steel_cutlass>);
recipes.remove(<dungeontactics:steel_sword>); //Trans Sword
JEI.removeAndHide(<dungeontactics:steel_glaive>);
JEI.removeAndHide(<dungeontactics:steel_battleaxe>);
JEI.removeAndHide(<dungeontactics:steel_hammer>);

recipes.removeByRecipeName("dungeontactics:misc/convenience/sticks_from_logs");
recipes.removeByRecipeName("dungeontactics:misc/convenience/sticks_from_cactus");
recipes.removeByRecipeName("dungeontactics:misc/mithril_nugget");
recipes.removeByRecipeName("dungeontactics:misc/convenience/clayball_from_clay");
recipes.removeByRecipeName("dungeontactics:misc/convenience/flint_from_gravel");
JEI.removeAndHide(<dungeontactics:mithril_cluster>);
JEI.removeAndHide(<dungeontactics:mithril_block>);
JEI.removeAndHide(<dungeontactics:mithril_ore>);
JEI.removeAndHide(<dungeontactics:mithril_ingot>);
JEI.removeAndHide(<dungeontactics:mithril_nugget>);
JEI.removeAndHide(<dungeontactics:mithril_hoe>);
JEI.removeAndHide(<dungeontactics:mithril_axe>);
JEI.removeAndHide(<dungeontactics:mithril_pickaxe>);
JEI.removeAndHide(<dungeontactics:mithril_shovel>);
JEI.removeAndHide(<dungeontactics:mithril_pickaxe>);
JEI.removeAndHide(<dungeontactics:mithril_boots>);
JEI.removeAndHide(<dungeontactics:mithril_leggings>);
JEI.removeAndHide(<dungeontactics:mithril_chestplate>);
JEI.removeAndHide(<dungeontactics:mithril_helmet>);
JEI.removeAndHide(<dungeontactics:mithril_shield>);
JEI.removeAndHide(<dungeontactics:mithril_cestus>);
JEI.removeAndHide(<dungeontactics:mithril_knife>);
JEI.removeAndHide(<dungeontactics:mithril_cutlass>);
//JEI.removeAndHide(<dungeontactics:mithril_sword>);
// used for sange
JEI.removeAndHide(<dungeontactics:mithril_glaive>);
JEI.removeAndHide(<dungeontactics:mithril_battleaxe>);
JEI.removeAndHide(<dungeontactics:mithril_hammer>);

JEI.removeAndHide(<dungeontactics:diamond_shield>);
JEI.removeAndHide(<dungeontactics:diamond_cestus>);
JEI.removeAndHide(<dungeontactics:diamond_knife>);
JEI.removeAndHide(<dungeontactics:diamond_cutlass>);
JEI.removeAndHide(<dungeontactics:diamond_glaive>);
JEI.removeAndHide(<dungeontactics:diamond_battleaxe>);
JEI.removeAndHide(<dungeontactics:diamond_hammer>);
LootTable.removeGlobalItem("dungeontactics:diamond_shield");
LootTable.removeGlobalItem("dungeontactics:diamond_cestus");
LootTable.removeGlobalItem("dungeontactics:diamond_knife");
LootTable.removeGlobalItem("dungeontactics:diamond_cutlass");
LootTable.removeGlobalItem("dungeontactics:diamond_glaive");
LootTable.removeGlobalItem("dungeontactics:diamond_battleaxe");
LootTable.removeGlobalItem("dungeontactics:diamond_hammer");


JEI.removeAndHide(<dungeontactics:iron_shield>);
JEI.removeAndHide(<dungeontactics:iron_cestus>);
JEI.removeAndHide(<dungeontactics:iron_knife>);
JEI.removeAndHide(<dungeontactics:iron_cutlass>);
JEI.removeAndHide(<dungeontactics:iron_glaive>);
JEI.removeAndHide(<dungeontactics:iron_battleaxe>);
JEI.removeAndHide(<dungeontactics:iron_hammer>);
LootTable.removeGlobalItem("dungeontactics:iron_shield");
LootTable.removeGlobalItem("dungeontactics:iron_cestus");
LootTable.removeGlobalItem("dungeontactics:iron_knife");
LootTable.removeGlobalItem("dungeontactics:iron_cutlass");
LootTable.removeGlobalItem("dungeontactics:iron_glaive");
LootTable.removeGlobalItem("dungeontactics:iron_battleaxe");
LootTable.removeGlobalItem("dungeontactics:iron_hammer");



JEI.removeAndHide(<dungeontactics:stone_shield>);
JEI.removeAndHide(<dungeontactics:stone_cestus>);
JEI.removeAndHide(<dungeontactics:stone_knife>);
JEI.removeAndHide(<dungeontactics:stone_cutlass>);
JEI.removeAndHide(<dungeontactics:stone_glaive>);
JEI.removeAndHide(<dungeontactics:stone_battleaxe>);
JEI.removeAndHide(<dungeontactics:stone_hammer>);
LootTable.removeGlobalItem("dungeontactics:stone_shield");
LootTable.removeGlobalItem("dungeontactics:stone_cestus");
LootTable.removeGlobalItem("dungeontactics:stone_knife");
LootTable.removeGlobalItem("dungeontactics:stone_cutlass");
LootTable.removeGlobalItem("dungeontactics:stone_glaive");
LootTable.removeGlobalItem("dungeontactics:stone_battleaxe");
LootTable.removeGlobalItem("dungeontactics:stone_hammer");




JEI.removeAndHide(<dungeontactics:wooden_shield>);
JEI.removeAndHide(<dungeontactics:wooden_cestus>);
JEI.removeAndHide(<dungeontactics:wooden_knife>);
JEI.removeAndHide(<dungeontactics:wooden_cutlass>);
JEI.removeAndHide(<dungeontactics:wooden_glaive>);
JEI.removeAndHide(<dungeontactics:wooden_battleaxe>);
JEI.removeAndHide(<dungeontactics:wooden_hammer>);
LootTable.removeGlobalItem("dungeontactics:wooden_shield");
LootTable.removeGlobalItem("dungeontactics:wooden_cestus");
LootTable.removeGlobalItem("dungeontactics:wooden_knife");
LootTable.removeGlobalItem("dungeontactics:wooden_cutlass");
LootTable.removeGlobalItem("dungeontactics:wooden_glaive");
LootTable.removeGlobalItem("dungeontactics:wooden_battleaxe");
LootTable.removeGlobalItem("dungeontactics:wooden_hammer");




JEI.removeAndHide(<dungeontactics:golden_shield>);
JEI.removeAndHide(<dungeontactics:golden_cestus>);
JEI.removeAndHide(<dungeontactics:golden_knife>);
JEI.removeAndHide(<dungeontactics:golden_cutlass>);
JEI.removeAndHide(<dungeontactics:golden_glaive>);
JEI.removeAndHide(<dungeontactics:golden_battleaxe>);
JEI.removeAndHide(<dungeontactics:golden_hammer>);
LootTable.removeGlobalItem("dungeontactics:golden_shield");
LootTable.removeGlobalItem("dungeontactics:golden_cestus");
LootTable.removeGlobalItem("dungeontactics:golden_knife");
LootTable.removeGlobalItem("dungeontactics:golden_cutlass");
LootTable.removeGlobalItem("dungeontactics:golden_glaive");
LootTable.removeGlobalItem("dungeontactics:golden_battleaxe");
LootTable.removeGlobalItem("dungeontactics:golden_hammer");




JEI.removeAndHide(<dungeontactics:bone_hoe>);
JEI.removeAndHide(<dungeontactics:bone_axe>);
JEI.removeAndHide(<dungeontactics:bone_pickaxe>);
JEI.removeAndHide(<dungeontactics:bone_shovel>);
JEI.removeAndHide(<dungeontactics:bone_pickaxe>);
JEI.removeAndHide(<dungeontactics:bone_boots>);
JEI.removeAndHide(<dungeontactics:bone_leggings>);
JEI.removeAndHide(<dungeontactics:bone_chestplate>);
JEI.removeAndHide(<dungeontactics:bone_helmet>);
JEI.removeAndHide(<dungeontactics:bone_shield>);
//JEI.removeAndHide(<dungeontactics:bone_cestus>);
recipes.remove(<dungeontactics:bone_cestus>);
JEI.removeAndHide(<dungeontactics:bone_knife>);
JEI.removeAndHide(<dungeontactics:bone_cutlass>);
JEI.removeAndHide(<dungeontactics:bone_sword>);
JEI.removeAndHide(<dungeontactics:bone_glaive>);
JEI.removeAndHide(<dungeontactics:bone_battleaxe>);
JEI.removeAndHide(<dungeontactics:bone_hammer>);



JEI.removeAndHide(<dungeontactics:throwing_knife>);
JEI.removeAndHide(<dungeontactics:throwing_knife_slowness>);
JEI.removeAndHide(<dungeontactics:throwing_knife_weakness>);
JEI.removeAndHide(<dungeontactics:throwing_knife_poison>);
JEI.removeAndHide(<dungeontactics:throwing_knife_caustic>);
LootTable.removeGlobalItem("dungeontactics:throwing_knife");
LootTable.removeGlobalItem("dungeontactics:throwing_knife_slowness");
LootTable.removeGlobalItem("dungeontactics:throwing_knife_weakness");
LootTable.removeGlobalItem("dungeontactics:throwing_knife_poison");
LootTable.removeGlobalItem("dungeontactics:throwing_knife_caustic");


JEI.removeAndHide(<dungeontactics:master_cestus_pummel>);
JEI.removeAndHide(<dungeontactics:master_cestus_roar>);
JEI.removeAndHide(<dungeontactics:master_knife_multistrike>);
JEI.removeAndHide(<dungeontactics:master_hammer_smash>);
JEI.removeAndHide(<dungeontactics:master_hammer_leap>);
JEI.removeAndHide(<dungeontactics:master_cutlass_riposte>);
JEI.removeAndHide(<dungeontactics:master_cutlass_pierce>);
JEI.removeAndHide(<dungeontactics:master_knife_smokebomb>);
LootTable.removeGlobalItem("dungeontactics:master_cestus_pummel");
LootTable.removeGlobalItem("dungeontactics:master_cestus_roar");
LootTable.removeGlobalItem("dungeontactics:master_knife_multistrike");
LootTable.removeGlobalItem("dungeontactics:master_hammer_smash");
LootTable.removeGlobalItem("dungeontactics:master_hammer_leap");
LootTable.removeGlobalItem("dungeontactics:master_cutlass_riposte");
LootTable.removeGlobalItem("dungeontactics:master_cutlass_pierce");
LootTable.removeGlobalItem("dungeontactics:master_knife_smokebomb");


JEI.removeAndHide(<dungeontactics:flour>);
JEI.removeAndHide(<dungeontactics:lantern_iron>);


recipes.remove(<dungeontactics:fan_block>);

recipes.addShaped("Fan", <dungeontactics:fan_block>,[
	[<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>],
    [<ore:ingotSteel>, <advancedliftingmethods:rotor>, <ore:ingotSteel>],
    [<ore:cobblestone>, <ore:pressurePlateWood>, <ore:cobblestone>]
]);

recipes.remove(<dungeontactics:lantern_magic>);

//  Magic Lantern

var powder = <dungeontactics:magic_powder>;
var nugget = <minecraft:gold_nugget>;
var pumpkin = <minecraft:pumpkin>;
var lantern = <rustic:golden_lantern>;

RecipeBuilder.get("mage")
  .setShaped([
    [<nyx:fallen_star>, <netherex:ghast_queen_tear>, <nyx:fallen_star>],
    [<contenttweaker:vis_shard>, <randomthings:quartzlamp>, <contenttweaker:vis_shard>], 
    [<nyx:fallen_star>, <endreborn:tool_magnifier>.withTag({mekData: {mode: 1}}), <nyx:fallen_star>]])
  .addTool(<contenttweaker:luna_rune>, 1)
  .addOutput(<dungeontactics:lantern_magic>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();


var ironnugget = <ore:nuggetIron>;

recipes.addShaped("steel_sword", <dungeontactics:steel_cutlass>,[
	[<ore:ingotSteel>],
    [<ore:ingotSteel>],
    [<spartanweaponry:material>]
]);

LootTable.removeGlobalItem("dungeontactics:tunnelling_device");
JEI.removeAndHide(<dungeontactics:tunnelling_device>);
JEI.removeAndHide(<dungeontactics:piston_glove>);
JEI.removeAndHide(<dungeontactics:piston_glove_sticky>);
LootTable.removeGlobalItem("dungeontactics:piston_glove");
LootTable.removeGlobalItem("dungeontactics:piston_glove_sticky");

recipes.remove(<dungeontactics:powered_bars>);
recipes.addShaped("Powered Bars", <dungeontactics:powered_bars>,[
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:redstone>, <minetraps:barbed_wire_fence>, <minecraft:redstone>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);

// Mirroring Steel Tools

recipes.remove(<dungeontactics:steel_axe>);
recipes.addShapedMirrored("steel_axe",<dungeontactics:steel_axe>,[
  [<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>],
  [<dungeontactics:steel_ingot>,<ore:stickWood>],
  [null,<ore:stickWood>]
]);

recipes.remove(<dungeontactics:steel_hoe>);
recipes.addShapedMirrored("steel_hoe",<dungeontactics:steel_hoe>,[
  [<dungeontactics:steel_ingot>,<dungeontactics:steel_ingot>],
  [null,<ore:stickWood>],
  [null,<ore:stickWood>]
]);

// Bag of Hoarding crafted using Tanned Leather

var backpack = <quark:backpack>;

recipes.remove(<dungeontactics:bagofhoarding>);
recipes.addShapeless("bag_of_hoarding",<dungeontactics:bagofhoarding>,[backpack,<minecraft:ender_chest>]);

// Charm recipes

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:water_rune>, 1)
  .addOutput(<dungeontactics:charm_unintelligible>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<dungeontactics:charm_emaciated>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:poison_rune>, 1)
  .addOutput(<dungeontactics:charm_toxic>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<dungeontactics:charm_sapping>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addOutput(<dungeontactics:charm_heavy>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addOutput(<dungeontactics:charm_searing>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:death_rune>, 1)
  .addOutput(<dungeontactics:charm_barren>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:nature_rune>, 1)
  .addOutput(<dungeontactics:charm_famine>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>],
    [null, <contenttweaker:blank_charm>, null],
    [<contenttweaker:vis_speck>, null, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:sol_rune>, 1)
  .addOutput(<dungeontactics:charm_darkened>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShapeless([<dungeontactics:charm_emaciated>, <dungeontactics:charm_unintelligible>, <dungeontactics:charm_sapping>, <dungeontactics:charm_heavy>, <dungeontactics:charm_searing>, <dungeontactics:charm_barren>, <dungeontactics:charm_toxic>, <dungeontactics:charm_famine>, <dungeontactics:charm_darkened>])
  .addOutput(<dungeontactics:charm_bleak>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
  
// Spell rework (wands!)

//  Base wands oredicts for woods
val mundaneWood = <ore:mundaneWood>;
mundaneWood.add(
    <minecraft:log>,
    <minecraft:log:1>,
    <minecraft:log:2>,
    <minecraft:log:3>,
    <minecraft:log2>,
    <minecraft:log2:1>,
    <biomesoplenty:log_1:6>,
    <biomesoplenty:log_1:7>,
    <biomesoplenty:log_2:4>,
    <biomesoplenty:log_2:6>,
    <biomesoplenty:log_0:5>,
    <biomesoplenty:log_3:4>,
    <biomesoplenty:log_3:5>,
    <biomesoplenty:log_3:6>,
    <biomesoplenty:log_2:5>,
    <biomesoplenty:log_0:7>,
    <rustic:log:0>,
    <biomesoplenty:log_4:5>,
    <biomesoplenty:log_3:7>,
    <defiledlands:tenebra_log>
    );

val arcaneWood = <ore:arcaneWood>;
arcaneWood.add(
    <biomesoplenty:log_1:5>,
    <biomesoplenty:log_1:4>,
    <biomesoplenty:log_0:4>,
    <aether_legacy:aether_log>,
    <aether_legacy:aether_log:1>,
    <twilightforest:giant_log>,
    <betternether:stalagnate_bark>,
    <betternether:reeds_block>,
    <netherex:elder_mushroom_stem>,
    <biomesoplenty:log_1:4>,
    <biomesoplenty:log_0:6>,
    <biomesoplenty:log_2:7>,
    <rustic:log:1>,
    <betterwithmods:blood_log>,
    <stygian:endlog>,
    <twilightforest:root>,
    <twilightforest:root:1>
    );

val mysticalWood = <ore:mysticalWood>;
mysticalWood.add(
    <twilightforest:magic_log>,
    <twilightforest:magic_log:1>,
    <twilightforest:magic_log:2>,
    <twilightforest:magic_log:3>,
    <twilightforest:huge_stalk>
    );

//  Base wand recipes

RecipeBuilder.get("mage")
  .setName("wandMundane")
  .setShaped([
    [null, null, <contenttweaker:vis_speck>],
    [null, <ore:mundaneWood>, null],
    [<ore:mundaneWood>, null, null]])
  .addOutput(<contenttweaker:wand_base_mundane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandArcane")
  .setShaped([
    [null, null, <contenttweaker:vis_sliver>],
    [null, <ore:arcaneWood>, null],
    [<ore:arcaneWood>, null, null]])
  .addOutput(<contenttweaker:wand_base_arcane>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandMystical")
  .setShaped([
    [null, null, <contenttweaker:vis_shard>],
    [null, <ore:mysticalWood>, null],
    [<ore:mysticalWood>, null, null]])
  .addOutput(<contenttweaker:wand_base_mystical>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//  enchant definitions
val enchantmentsDT1 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:restoration>];
var enchantmentsDTMap1 as IData = {};
enchantmentsDTMap1 += enchantmentsDT1[0].makeEnchantment(0).makeTag();

val enchantmentsDT2 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:satiate>];
var enchantmentsDTMap2 as IData = {};
enchantmentsDTMap2 += enchantmentsDT2[0].makeEnchantment(0).makeTag();

val enchantmentsDT3 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:forging>];
var enchantmentsDTMap3 as IData = {};
enchantmentsDTMap3 += enchantmentsDT3[0].makeEnchantment(0).makeTag();

val enchantmentsDT4 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:cooking>];
var enchantmentsDTMap4 as IData = {};
enchantmentsDTMap4 += enchantmentsDT4[0].makeEnchantment(0).makeTag();

val enchantmentsDT5 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:freezing>];
var enchantmentsDTMap5 as IData = {};
enchantmentsDTMap5 += enchantmentsDT5[0].makeEnchantment(0).makeTag();

val enchantmentsDT6 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:uncover>];
var enchantmentsDTMap6 as IData = {};
enchantmentsDTMap6 += enchantmentsDT6[0].makeEnchantment(0).makeTag();

val enchantmentsDT7 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:disarm>];
var enchantmentsDTMap7 as IData = {};
enchantmentsDTMap7 += enchantmentsDT7[0].makeEnchantment(0).makeTag();

val enchantmentsDT8 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:disorient>];
var enchantmentsDTMap8 as IData = {};
enchantmentsDTMap8 += enchantmentsDT8[0].makeEnchantment(0).makeTag();

val enchantmentsDT9 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:punish>];
var enchantmentsDTMap9 as IData = {};
enchantmentsDTMap9 += enchantmentsDT9[0].makeEnchantment(0).makeTag();

val enchantmentsDT10 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:wither>];
var enchantmentsDTMap10 as IData = {};
enchantmentsDTMap10 += enchantmentsDT10[0].makeEnchantment(0).makeTag();

val enchantmentsDT11 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:smite>];
var enchantmentsDTMap11 as IData = {};
enchantmentsDTMap11 += enchantmentsDT11[0].makeEnchantment(0).makeTag();

val enchantmentsDT12 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:magicmissile>];
var enchantmentsDTMap12 as IData = {};
enchantmentsDTMap12 += enchantmentsDT12[0].makeEnchantment(0).makeTag();

val enchantmentsDT13 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:pinmissile>];
var enchantmentsDTMap13 as IData = {};
enchantmentsDTMap13 += enchantmentsDT13[0].makeEnchantment(0).makeTag();

val enchantmentsDT14 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:transport>];
var enchantmentsDTMap14 as IData = {};
enchantmentsDTMap14 += enchantmentsDT14[0].makeEnchantment(0).makeTag();

val enchantmentsDT15 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:companion>];
var enchantmentsDTMap15 as IData = {};
enchantmentsDTMap15 += enchantmentsDT15[0].makeEnchantment(0).makeTag();

val enchantmentsDT16 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:sunder>];
var enchantmentsDTMap16 as IData = {};
enchantmentsDTMap16 += enchantmentsDT16[0].makeEnchantment(0).makeTag();

val enchantmentsDT17 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:rage>];
var enchantmentsDTMap17 as IData = {};
enchantmentsDTMap17 += enchantmentsDT17[0].makeEnchantment(0).makeTag();

val enchantmentsDT18 as IEnchantmentDefinition[] = [<enchantment:dungeontactics:soulsteal>];
var enchantmentsDTMap18 as IData = {};
enchantmentsDTMap18 += enchantmentsDT18[0].makeEnchantment(0).makeTag();

//  wand definitions

val wandRestoration = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap1);

val wandSatiate = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap2);

val wandForging = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap3);

val wandCooking = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap4);

val wandFreezing = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap5);

val wandUncover = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap6);

val wandDisarm = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap7);

val wandDisorient = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap8);

val wandPunish = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap9);

val wandWither = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap10);

val wandSmite = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap11);

val wandMagicMissile = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap12);

val wandPinMissile = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap13);

val wandTransport = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap14);

val wandCompanion = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap15);

val wandSunder = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap16);

val wandRage = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap17);

val wandSoulSteel = <dungeontactics:magic_scroll>.withTag(enchantmentsDTMap18);

//  Force wands to show in JEI

//JEI.addItem(wandRestoration);

//JEI.addItem(wandSatiate);

// JEI.addItem(wandForging);

//JEI.addItem(wandCooking);

//JEI.addItem(wandFreezing);

// JEI.addItem(wandUncover);

// JEI.addItem(wandDisarm);

//JEI.addItem(wandDisorient);

//JEI.addItem(wandPunish);

//JEI.addItem(wandWither);

//JEI.addItem(wandSmite);

//JEI.addItem(wandMagicMissile);

//JEI.addItem(wandPinMissile);

//JEI.addItem(wandTransport);

//JEI.addItem(wandCompanion);

// JEI.addItem(wandSunder);

//JEI.addItem(wandRage);

//  make wands unstackable

val wand = <dungeontactics:magic_scroll>;
wand.maxStackSize = 1;

// // //  MUNDANE // // // 

//  cook

RecipeBuilder.get("mage")
  .setName("wandCookJEI")
  .setShaped([
    [null, <minecraft:iron_ingot>, <minecraft:fire_charge>],
    [null, <minecraft:flint_and_steel>, <minecraft:iron_ingot>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_cook>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandCook")
  .setShaped([
    [null, <minecraft:iron_ingot>, <minecraft:fire_charge>],
    [null, <minecraft:flint_and_steel>, <minecraft:iron_ingot>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addOutput(wandCooking)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  freeze
RecipeBuilder.get("mage")
  .setName("wandFreezeJEI")
  .setShaped([
    [null, <minecraft:ice>, <mowziesmobs:ice_crystal>.transformDamage(600)],
    [null, <contenttweaker:waterlogged_sapphire>, <minecraft:ice>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:water_rune>, 1)
  .addTool(<contenttweaker:order_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_freeze>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandFreeze")
  .setShaped([
    [null, <minecraft:ice>, <mowziesmobs:ice_crystal>.transformDamage(600)],
    [null, <contenttweaker:waterlogged_sapphire>, <minecraft:ice>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:water_rune>, 1)
  .addTool(<contenttweaker:order_rune>, 1)
  .addOutput(wandFreezing)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  punish
RecipeBuilder.get("mage")
  .setName("wandPunishJEI")
  .setShaped([
    [null, <minecraft:bone>, <minecraft:skull>],
    [null, <minecraft:bone_block>, <minecraft:bone>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_punish>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandPunish")
  .setShaped([
    [null, <minecraft:bone>, <minecraft:skull>],
    [null, <minecraft:bone_block>, <minecraft:bone>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(wandPunish)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  satiate
RecipeBuilder.get("mage")
  .setName("wandSatiateJEI")
  .setShaped([
    [null, <solcarrot:food_book>, <minecraft:apple>],
    [null, <dungeontactics:charm_famine>, <ore:treeLeaves>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_satiate>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandSatiate")
  .setShaped([
    [null, <solcarrot:food_book>, <minecraft:apple>],
    [null, <dungeontactics:charm_famine>, <ore:treeLeaves>],
    [<contenttweaker:wand_base_mundane>, null, null]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(wandSatiate)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

// // //  ARCANE // // // 

//  disorient
RecipeBuilder.get("mage")
  .setName("wandDisorientJEI")
  .setShaped([
    [null, <nyx:fallen_star>, <glaretorch:itemglaretorchsmall>],
    [null, <minecraft:obsidian>, <nyx:fallen_star>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:sol_rune>, 1)
  .addTool(<contenttweaker:luna_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_disorient>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandDisorient")
  .setShaped([
    [null, <nyx:fallen_star>, <glaretorch:itemglaretorchsmall>],
    [null, <minecraft:obsidian>, <nyx:fallen_star>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:sol_rune>, 1)
  .addTool(<contenttweaker:luna_rune>, 1)
  .addOutput(wandDisorient)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  restoration
RecipeBuilder.get("mage")
  .setName("wandRestorationJEI")
  .setShaped([
    [null, <ore:feather>, <aether_legacy:golden_amber>],
    [null, <contenttweaker:holy_zanite>, <ore:feather>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_resto>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandRestoration")
  .setShaped([
    [null, <ore:feather>, <aether_legacy:golden_amber>],
    [null, <contenttweaker:holy_zanite>, <ore:feather>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(wandRestoration)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  wither
RecipeBuilder.get("mage")
  .setName("wandWitherJEI")
  .setShaped([
    [null, <quark:black_ash>, <iceandfire:witherbone>],
    [null, <iceandfire:witherbone>, <quark:black_ash>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_wither>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandWither")
  .setShaped([
    [null, <quark:black_ash>, <iceandfire:witherbone>],
    [null, <iceandfire:witherbone>, <quark:black_ash>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(wandWither)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  companion
RecipeBuilder.get("mage")
  .setName("wandCompanionJEI")
  .setShaped([
    [null, <minecraft:bone>, <ore:fierceBeastHead>],
    [null, <betterwithaddons:ancestry_bottle>, <minecraft:bone>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:creation_rune>, 1)
  .addTool(<contenttweaker:death_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_companion>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandCompanion")
  .setShaped([
    [null, <minecraft:bone>, <ore:fierceBeastHead>],
    [null, <betterwithaddons:ancestry_bottle>, <minecraft:bone>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:creation_rune>, 1)
  .addTool(<contenttweaker:death_rune>, 1)
  .addOutput(wandCompanion)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  pin missile
RecipeBuilder.get("mage")
  .setName("wandPMJEI")
  .setShaped([
    [null, <ore:ingotElectrum>.firstItem, <betterwithaddons:greatarrow>],
    [null, <ore:feather>, <ore:ingotElectrum>.firstItem],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_pm>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandPM")
  .setShaped([
    [null, <ore:ingotElectrum>.firstItem, <betterwithaddons:greatarrow>],
    [null, <ore:feather>, <ore:ingotElectrum>.firstItem],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(wandPinMissile)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

/*
//  disarm
RecipeBuilder.get("mage")
  .setShaped([
    [null, <grapplemod:magnetupgradeitem>, <minecraft:iron_block>],
    [null, <minecraft:iron_sword>, <grapplemod:magnetupgradeitem>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(wandDisarm)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
*/

/*
//  uncover
RecipeBuilder.get("mage")
  .setShaped([
    [null, <grapplemod:magnetupgradeitem>, <minecraft:iron_block>],
    [null, <minecraft:iron_chestplate>, <grapplemod:magnetupgradeitem>],
    [<contenttweaker:wand_base_arcane>, null, null]])
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addTool(<contenttweaker:energy_rune>, 1)
  .addOutput(wandUncover)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
*/

//  mystical

//  forge
/*
RecipeBuilder.get("mage")
  .setShaped([
    [null, <minecraft:fire_charge>, <minecraft:anvil>],
    [null, <pyrotech:anvil_granite>, <minecraft:fire_charge>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(wandForging)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
*/

//  smite
RecipeBuilder.get("mage")
  .setName("wandSmiteJEI")
  .setShaped([
    [null, <minecraft:iron_ingot>, <ore:ingotElectrum>.firstItem],
    [null, <contenttweaker:electrified_zanite>, <minecraft:iron_ingot>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_smite>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandSmite")
  .setShaped([
    [null, <minecraft:iron_ingot>, <ore:ingotElectrum>.firstItem],
    [null, <contenttweaker:electrified_zanite>, <minecraft:iron_ingot>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:energy_rune>, 1)
  .addTool(<contenttweaker:aether_rune>, 1)
  .addOutput(wandSmite)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  magic missile
RecipeBuilder.get("mage")
  .setName("wandMMJEI")
  .setShaped([
    [null, <ore:ingotGravitite>, <minecraft:shulker_shell>],
    [null, <contenttweaker:voidseen_exorite>, <ore:ingotGravitite>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addTool(<endreborn:item_end_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_mm>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandMM")
  .setShaped([
    [null, <ore:ingotGravitite>, <minecraft:shulker_shell>],
    [null, <contenttweaker:voidseen_exorite>, <ore:ingotGravitite>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:air_rune>, 1)
  .addTool(<endreborn:item_end_rune>, 1)
  .addOutput(wandMagicMissile)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

//  rage
RecipeBuilder.get("mage")
  .setName("wandRageJEI")
  .setShaped([
    [null, <minecraft:gold_ingot>, <mowziesmobs:barakoa_mask_rage>],
    [null, <contenttweaker:fortified_ruby>, <minecraft:gold_ingot>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addTool(<contenttweaker:draconic_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_rage>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandRage")
  .setShaped([
    [null, <minecraft:gold_ingot>, <mowziesmobs:barakoa_mask_rage>],
    [null, <contenttweaker:fortified_ruby>, <minecraft:gold_ingot>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addTool(<contenttweaker:draconic_rune>, 1)
  .addOutput(wandRage)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();


//  transport
RecipeBuilder.get("mage")
  .setName("wandTransportJEI")
  .setShaped([
    [null, <netherex:frosted_wither_bone>, <cyclicmagic:water_candle>],
    [null, <animania:raw_horse>, <netherex:frosted_wither_bone>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(<contenttweaker:dummy_wand_transport>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setName("wandTransport")
  .setShaped([
    [null, <netherex:frosted_wither_bone>, <cyclicmagic:water_candle>],
    [null, <animania:raw_horse>, <netherex:frosted_wither_bone>],
    [<contenttweaker:wand_base_mystical>, null, null]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(wandTransport)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .setHidden()
  .create();

// wand removals
JEI.removeAndHide(<contenttweaker:dummy_wand_forge>);
JEI.removeAndHide(<contenttweaker:dummy_wand_uncover>);
JEI.removeAndHide(<contenttweaker:dummy_wand_disarm>);

## Wand Tooltips ##

// Actual wands.
//Make names aqua
/*
enchantmentsDTMap4.displayName = "§bWand of Cooking";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap5).displayName = "§bWand of Freezing";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap9).displayName = "§bWand of Punishment";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap2).displayName = "§bWand of Satiating";

<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap8).displayName = "§bWand of Disorienting";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap1).displayName = "§bWand of Restoration";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap10).displayName = "§bWand of Withering";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap15).displayName = "§bWand of Companion";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap13).displayName = "§bWand of Pin Missile";

<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap11).displayName = "§bWand of Smiting";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap12).displayName = "§bWand of Magic Missile";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap17).displayName = "§bWand of Enrage";
<dungeontactics:magic_scroll>.withTag(enchantmentsDTMap14).displayName = "§bWand of Transportation";
*/

//tier
wandCooking.addTooltip(format.green("Mundane"));
wandFreezing.addTooltip(format.green("Mundane"));
wandPunish.addTooltip(format.green("Mundane"));
wandSatiate.addTooltip(format.green("Mundane"));

wandDisorient.addTooltip(format.aqua("Arcane"));
wandRestoration.addTooltip(format.aqua("Arcane"));
wandWither.addTooltip(format.aqua("Arcane"));
wandCompanion.addTooltip(format.aqua("Arcane"));
wandPinMissile.addTooltip(format.aqua("Arcane"));

wandSmite.addTooltip(format.darkPurple("Mystical"));
wandMagicMissile.addTooltip(format.darkPurple("Mystical"));
wandRage.addTooltip(format.darkPurple("Mystical"));
wandTransport.addTooltip(format.darkPurple("Mystical"));

// Dummy wands. Adds tooltips to match real wand tooltips for JEI purposes
// costs
<contenttweaker:dummy_wand_cook>.addTooltip(format.gray("Cast Cost = 144"));
<contenttweaker:dummy_wand_freeze>.addTooltip(format.gray("Cast Cost = 12"));
<contenttweaker:dummy_wand_punish>.addTooltip(format.gray("Cast Cost = 6"));
<contenttweaker:dummy_wand_satiate>.addTooltip(format.gray("Cast Cost = 8"));

<contenttweaker:dummy_wand_disorient>.addTooltip(format.gray("Cast Cost = 16"));
<contenttweaker:dummy_wand_resto>.addTooltip(format.gray("Cast Cost = 32"));
<contenttweaker:dummy_wand_wither>.addTooltip(format.gray("Cast Cost = 14"));
<contenttweaker:dummy_wand_companion>.addTooltip(format.gray("Cast Cost = 60"));
<contenttweaker:dummy_wand_pm>.addTooltip(format.gray("Cast Cost = 40"));

<contenttweaker:dummy_wand_smite>.addTooltip(format.gray("Cast Cost = 72"));
<contenttweaker:dummy_wand_mm>.addTooltip(format.gray("Cast Cost = 42"));
<contenttweaker:dummy_wand_rage>.addTooltip(format.gray("Cast Cost = 48"));
<contenttweaker:dummy_wand_transport>.addTooltip(format.gray("Cast Cost = 90"));

// tier
<contenttweaker:dummy_wand_cook>.addTooltip(format.green("Mundane"));
<contenttweaker:dummy_wand_freeze>.addTooltip(format.green("Mundane"));
<contenttweaker:dummy_wand_punish>.addTooltip(format.green("Mundane"));
<contenttweaker:dummy_wand_satiate>.addTooltip(format.green("Mundane"));

<contenttweaker:dummy_wand_disorient>.addTooltip(format.aqua("Arcane"));
<contenttweaker:dummy_wand_resto>.addTooltip(format.aqua("Arcane"));
<contenttweaker:dummy_wand_wither>.addTooltip(format.aqua("Arcane"));
<contenttweaker:dummy_wand_companion>.addTooltip(format.aqua("Arcane"));
<contenttweaker:dummy_wand_pm>.addTooltip(format.aqua("Arcane"));

<contenttweaker:dummy_wand_smite>.addTooltip(format.darkPurple("Mystical"));
<contenttweaker:dummy_wand_mm>.addTooltip(format.darkPurple("Mystical"));
<contenttweaker:dummy_wand_rage>.addTooltip(format.darkPurple("Mystical"));
<contenttweaker:dummy_wand_transport>.addTooltip(format.darkPurple("Mystical"));

// wandCooking.addTooltip(format.gold("Ascended"));
