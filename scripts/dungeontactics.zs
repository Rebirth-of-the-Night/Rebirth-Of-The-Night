import crafttweaker.item.IIngredient;

mods.jei.JEI.addDescription(<dungeontactics:steel_ingot>,"Used to create many traps, an anvil used for late game crafting, and more.");

mods.jei.JEI.addDescription(<dungeontactics:ducttape>,"Put a tool in your off-hand and the duct tape in your main hand. Right click to repair. Items can only be repaired with duct tape until they reach Duct Taped V");


mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_helmet>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_helmet>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_chestplate>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_chestplate>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_leggings>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_leggings>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_boots>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_boots>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});

mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_pickaxe>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_pickaxe>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_axe>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_axe>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_shovel>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_shovel>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});
mods.rockytweaks.Anvil.addRecipe(<dungeontactics:silver_hoe>.anyDamage(), <ore:ingotSilver>, <dungeontactics:silver_hoe>, 1,
function(out, ins, cInfo){
    return ins.left.withDamage(max(0,ins.left.damage - 50));
});



mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_dungeontactics_stonequartz_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_dungeontactics_stonequartz_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_dungeontactics_stonequartz_ore:*>);

mods.jei.JEI.removeAndHide(<undergroundbiomes:sedimentary_stone_dungeontactics_mithril_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:igneous_stone_dungeontactics_mithril_ore:*>);
mods.jei.JEI.removeAndHide(<undergroundbiomes:metamorphic_stone_dungeontactics_mithril_ore:*>);

mods.jei.JEI.removeAndHide(<dungeontactics:trap_boom>);

furnace.remove(<dungeontactics:steel_ingot>);


mods.jei.JEI.removeAndHide(<dungeontactics:iron_ring>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_ring");


mods.jei.JEI.removeAndHide(<dungeontactics:iron_cluster>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_cluster>);
mods.jei.JEI.removeAndHide(<dungeontactics:gold_cluster>);
mods.jei.JEI.removeAndHide(<dungeontactics:tin_cluster>);
mods.jei.JEI.removeAndHide(<dungeontactics:copper_cluster>);

mods.jei.JEI.removeAndHide(<dungeontactics:bottled_milk>);
mods.jei.JEI.removeAndHide(<dungeontactics:toast>);
mods.jei.JEI.removeAndHide(<dungeontactics:bread_slice>);
mods.jei.JEI.removeAndHide(<dungeontactics:toast_slice>);
mods.jei.JEI.removeAndHide(<dungeontactics:jam_on_toast>);
mods.jei.JEI.removeAndHide(<dungeontactics:jam>);
mods.jei.JEI.removeAndHide(<dungeontactics:ration_standard>);
mods.jei.JEI.removeAndHide(<dungeontactics:ration_iron>);
mods.jei.JEI.removeAndHide(<dungeontactics:ration_gold>);
mods.jei.JEI.removeAndHide(<dungeontactics:spidereye_soup>);
mods.jei.JEI.removeAndHide(<dungeontactics:mince_pie>);
mods.jei.JEI.removeAndHide(<dungeontactics:stonequartz_ore>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_chair>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_table>);
mods.jei.JEI.removeAndHide(<dungeontactics:radio>);
mods.jei.JEI.removeAndHide(<dungeontactics:peg_hammer>);





mods.jei.JEI.removeAndHide(<dungeontactics:climbing_rope>);

mods.jei.JEI.removeAndHide(<dungeontactics:studded_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:studded_leggings>);
mods.jei.JEI.removeAndHide(<dungeontactics:studded_chestplate>);
mods.jei.JEI.removeAndHide(<dungeontactics:studded_helmet>);

mods.jei.JEI.removeAndHide(<dungeontactics:stone_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:iron_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:silver_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:golden_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:steel_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:diamond_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_plate_faceplate>);

mods.jei.JEI.removeAndHide(<dungeontactics:mithril_plate_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_plate_greaves>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_plate_chestpiece>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_plate_faceplate>);



mods.jei.JEI.removeAndHide(<dungeontactics:ironlinks>);
mods.ltt.LootTable.removeGlobalItem("ironlinks");


mods.jei.JEI.removeAndHide(<dungeontactics:steel_hoe>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_axe>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_shovel>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:engineers_wrench_steel>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_leggings>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_chestplate>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_helmet>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_sword>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:steel_hammer>);

recipes.removeByRecipeName("dungeontactics:misc/convenience/sticks_from_logs");
recipes.removeByRecipeName("dungeontactics:misc/convenience/sticks_from_cactus");
recipes.removeByRecipeName("betternether:stalagnate_stick");
recipes.removeByRecipeName("dungeontactics:misc/mithril_nugget");
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_cluster>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_block>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_ore>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_ingot>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_hoe>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_axe>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_shovel>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_leggings>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_chestplate>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_helmet>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_sword>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:mithril_hammer>);

mods.jei.JEI.removeAndHide(<dungeontactics:diamond_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:diamond_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:diamond_hammer");


mods.jei.JEI.removeAndHide(<dungeontactics:iron_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:iron_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_hammer");



mods.jei.JEI.removeAndHide(<dungeontactics:stone_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:stone_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:stone_hammer");




mods.jei.JEI.removeAndHide(<dungeontactics:wooden_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:wooden_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:wooden_hammer");




mods.jei.JEI.removeAndHide(<dungeontactics:golden_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:golden_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:golden_hammer");




mods.jei.JEI.removeAndHide(<dungeontactics:bone_hoe>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_axe>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_shovel>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_pickaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_boots>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_leggings>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_chestplate>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_helmet>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_sword>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:bone_hammer>);


mods.jei.JEI.removeAndHide(<dungeontactics:silver_sword>);

mods.jei.JEI.removeAndHide(<dungeontactics:silver_shield>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_cestus>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_cutlass>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_glaive>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_battleaxe>);
mods.jei.JEI.removeAndHide(<dungeontactics:silver_hammer>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_sword");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_shield");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_cestus");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_cutlass");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_glaive");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_battleaxe");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:silver_hammer");


mods.jei.JEI.removeAndHide(<dungeontactics:throwing_knife>);
mods.jei.JEI.removeAndHide(<dungeontactics:throwing_knife_slowness>);
mods.jei.JEI.removeAndHide(<dungeontactics:throwing_knife_weakness>);
mods.jei.JEI.removeAndHide(<dungeontactics:throwing_knife_poison>);
mods.jei.JEI.removeAndHide(<dungeontactics:throwing_knife_caustic>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:throwing_knife");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:throwing_knife_slowness");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:throwing_knife_weakness");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:throwing_knife_poison");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:throwing_knife_caustic");


mods.jei.JEI.removeAndHide(<dungeontactics:master_cestus_pummel>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_cestus_roar>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_knife_multistrike>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_hammer_smash>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_hammer_leap>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_cutlass_riposte>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_cutlass_pierce>);
mods.jei.JEI.removeAndHide(<dungeontactics:master_knife_smokebomb>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_cestus_pummel");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_cestus_roar");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_knife_multistrike");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_hammer_smash");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_hammer_leap");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_cutlass_riposte");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_cutlass_pierce");
mods.ltt.LootTable.removeGlobalItem("dungeontactics:master_knife_smokebomb");


mods.jei.JEI.removeAndHide(<dungeontactics:flour>);
mods.jei.JEI.removeAndHide(<dungeontactics:lantern_iron>);


recipes.remove(<dungeontactics:fan_block>);

recipes.addShaped("Fan", <dungeontactics:fan_block>,[
	[<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>],
    [<ore:ingotSteel>, <minecraft:redstone_block>, <ore:ingotSteel>],
    [<ore:cobblestone>, <ore:ingotSteel>, <ore:cobblestone>]
]);

recipes.remove(<dungeontactics:lantern_magic>);
recipes.remove(<dungeontactics:iron_ring>);
mods.ltt.LootTable.removeGlobalItem("dungeontactics:iron_ring");

# Replaces Magic Lantern recipe with Rustic's lantern

var powder = <dungeontactics:magic_powder>;
var nugget = <minecraft:gold_nugget>;
var pumpkin = <minecraft:pumpkin>;
var lantern = <rustic:iron_lantern>;

recipes.addShaped("Magic Lantern", <dungeontactics:lantern_magic>,[
	[nugget, powder, nugget],
    [powder, lantern, powder],
    [nugget, pumpkin, nugget]
]);


var ironnugget = <minecraft:iron_nugget>;

recipes.addShapedMirrored("Iron Ring", <dungeontactics:iron_ring>,[
	[null, null, null],
    [null, ironnugget, ironnugget],
    [null, ironnugget, ironnugget]
]);


var tiningot = <simpleores:tin_ingot>;
var tinnugget = <dungeontactics:mithril_nugget>;

recipes.addShapedMirrored("Tin Nugget", <dungeontactics:mithril_nugget>*9,[
	[null, null, null],
    [null, tiningot, null],
    [null, null, null]
]);

recipes.addShapedMirrored("Tin Ingot", <simpleores:tin_ingot>,[
	[tinnugget, tinnugget, tinnugget],
    [tinnugget, tinnugget, tinnugget],
    [tinnugget, tinnugget, tinnugget]
]);


recipes.remove(<dungeontactics:tunnelling_device>);
recipes.addShaped("Portable Tunneling Device", <dungeontactics:tunnelling_device>,[
	[<betterwithmods:dynamite>, <dungeontactics:steel_ingot>, null],
    [<dungeontactics:steel_ingot>, <betterwithmods:material:17>, <betterwithmods:material:31>],
    [null, <betterwithmods:material:31>, <minecraft:heavy_weighted_pressure_plate>]
]);

recipes.remove(<dungeontactics:piston_glove>);
recipes.addShaped("Portable Piston Device", <dungeontactics:piston_glove>,[
	[null, <dungeontactics:steel_ingot>, null],
    [<dungeontactics:steel_ingot>, <minecraft:piston>, <betterwithmods:material:31>],
    [null, <betterwithmods:material:31>, <minecraft:heavy_weighted_pressure_plate>]
]);

recipes.remove(<dungeontactics:piston_glove_sticky>);
recipes.addShaped("Portable Piston Device (Sticky)", <dungeontactics:piston_glove_sticky>,[
	[null, <dungeontactics:steel_ingot>, null],
    [<dungeontactics:steel_ingot>, <minecraft:sticky_piston>, <betterwithmods:material:31>],
    [null, <betterwithmods:material:31>, <minecraft:heavy_weighted_pressure_plate>]
]);


recipes.remove(<dungeontactics:powered_bars>);
recipes.addShaped("Powered Bars", <dungeontactics:powered_bars>,[
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
    [<minecraft:redstone>, <minetraps:barbed_wire_fence>, <minecraft:redstone>],
    [<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]
]);