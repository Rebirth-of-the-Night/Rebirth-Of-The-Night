import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;
import mods.artisanworktables.builder.RecipeBuilder;
import mods.betterwithaddons.Infuser;

JEI.removeAndHide(<twilightforest:miniature_structure:*>);
JEI.removeAndHide(<twilightforest:ore_meter>);
JEI.removeAndHide(<twilightforest:twilight_plant>);

JEI.removeAndHide(<twilightforest:cinder_furnace>);
furnace.remove(<twilightforest:cinder_furnace>);

JEI.removeAndHide(<twilightforest:ore_magnet>);
LootTable.removeGlobalItem("twilightforest:ore_magnet");

LootTable.removeGlobalItem("twilightforest:transformation_powder");
LootTable.removeGlobalItem("twilightforest:uncrafting_table");
JEI.removeAndHide(<twilightforest:uncrafting_table>);
JEI.removeAndHide(<patchouli:guide_book>.withTag({"patchouli:book": "twilightforest:guide"}));

recipes.remove(<twilightforest:castle_pillar:1>);
recipes.addShaped("encased_castle_brick_tile",<twilightforest:castle_pillar:1>,[
    [<twilightforest:castle_pillar:0>,<twilightforest:castle_pillar:0>,null],
    [<twilightforest:castle_pillar:0>,<twilightforest:castle_pillar:0>,null],
    [null,null,null]
]);

recipes.remove(<twilightforest:castle_pillar:3>);
recipes.addShaped("bold_castle_brick_tiles",<twilightforest:castle_pillar:3>,[
    [<twilightforest:castle_pillar:2>,<twilightforest:castle_pillar:2>,null],
    [<twilightforest:castle_pillar:2>,<twilightforest:castle_pillar:2>,null],
    [null,null,null]
]);

recipes.remove(<twilightforest:spiral_bricks>);
recipes.addShaped("spiral_stone_bricks",<twilightforest:spiral_bricks>,[
    [<ore:stone>|<ore:StoneHugeBrick>,<ore:stoneSlab>,<ore:stoneSlab>],
    [<ore:stone>|<ore:StoneHugeBrick>,<ore:stoneSlab>,<ore:stoneSlab>],
    [<ore:stone>|<ore:StoneHugeBrick>,<ore:stone>|<ore:StoneHugeBrick>,<ore:stone>|<ore:StoneHugeBrick>],
]);

var slabArray = [<twilightforest:twilight_oak_slab:0>,<twilightforest:canopy_slab:0>,<twilightforest:mangrove_slab:0>,<twilightforest:dark_slab:0>,<twilightforest:time_slab:0>,<twilightforest:trans_slab:0>,<twilightforest:mine_slab:0>,<twilightforest:sort_slab:0>] as IItemStack[];
var stairArray = [<twilightforest:twilight_oak_stairs>,<twilightforest:canopy_stairs>,<twilightforest:mangrove_stairs>,<twilightforest:dark_stairs>,<twilightforest:time_stairs>,<twilightforest:trans_stairs>,<twilightforest:mine_stairs>,<twilightforest:sort_stairs>] as IItemStack[];
var blockArray = [<twilightforest:twilight_oak_planks>,<twilightforest:canopy_planks>,<twilightforest:mangrove_planks>,<twilightforest:dark_planks>,<twilightforest:time_planks>,<twilightforest:trans_planks>,<twilightforest:mine_planks>,<twilightforest:sort_planks>] as IItemStack[];

for i,stair in stairArray{
    recipes.addShapedMirrored(stair*4,[
        [slabArray[i],null,null],
        [slabArray[i],slabArray[i],null],
        [slabArray[i],slabArray[i],slabArray[i]]
    ]);
    recipes.addShapeless(blockArray[i]*3,[stair,stair,stair,stair]);
}

// Adding enchantments to hoes from enchanted materials

var enchantments as IEnchantmentDefinition[] = [<enchantment:minecraft:unbreaking>];
var enchantmentMap as IData = {};

enchantmentMap += enchantments[0].makeEnchantment(1).makeTag();

recipes.remove(<twilightforest:ironwood_hoe>);
recipes.addShapedMirrored("ironwood_hoe",<twilightforest:ironwood_hoe>.withTag(enchantmentMap), 
[
   [<twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, null],
   [null, <ore:stickWood>, null],
   [null, <ore:stickWood>, null]
]);

var enchantmentMap2 as IData = {};
enchantmentMap2 += enchantments[0].makeEnchantment(2).makeTag();

recipes.remove(<twilightforest:steeleaf_hoe>);
recipes.addShapedMirrored("steeleaf_hoe",<twilightforest:steeleaf_hoe>.withTag(enchantmentMap2),[
  [<twilightforest:steeleaf_ingot>,<twilightforest:steeleaf_ingot>],
  [null,<ore:stickWood>],
  [null,<ore:stickWood>]
]);

// Scepters

// Zombie Scepter
# Change durability
<twilightforest:zombie_scepter>.maxDamage = 64;

# Recipe
recipes.remove(<twilightforest:zombie_scepter>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <mod_lavacow:undyingheart>, <contenttweaker:necromantic_brain>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <minecraft:rotten_flesh>],
    [<contenttweaker:soulinfused_onyx>, <contenttweaker:vis_sliver>, null]])
  .addTool(<contenttweaker:death_rune>, 1)
  .addTool(<contenttweaker:creation_rune>, 1)
  .addOutput(<twilightforest:zombie_scepter:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<twilightforest:zombie_scepter>,
[<twilightforest:zombie_scepter>.anyDamage(),<contenttweaker:vis_sliver>], 64);

// Fortification Scepter
# Change durability
<twilightforest:shield_scepter>.maxDamage = 64;

# Recipe
recipes.remove(<twilightforest:shield_scepter>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <contenttweaker:material_part:22>, <contenttweaker:wrought_animation_core>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <contenttweaker:material_part:22>],
    [<contenttweaker:fortified_ruby>, <contenttweaker:vis_sliver>, null]])
  .addTool(<contenttweaker:strength_rune>, 1)
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<twilightforest:shield_scepter:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<twilightforest:shield_scepter>,
[<twilightforest:shield_scepter>.anyDamage(),<contenttweaker:vis_sliver>], 64);

// Twilight Scepter
# Change durability
<twilightforest:twilight_scepter>.maxDamage = 64;

# Recipe
recipes.remove(<twilightforest:twilight_scepter>);
RecipeBuilder.get("mage")
  .setShaped([
    [null, <nyx:fallen_star>, <contenttweaker:adhesive_shadow>],
    [<contenttweaker:vis_sliver>, <contenttweaker:scepter_base_arcane>, <nyx:fallen_star>],
    [<contenttweaker:abyssal_sapphire>, <contenttweaker:vis_sliver>, null]])
  .addTool(<contenttweaker:luna_rune>, 1)
  .addTool(<contenttweaker:chaos_rune>, 1)
  .addOutput(<twilightforest:twilight_scepter:64>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

# Spirit charging
Infuser.addShapeless(<twilightforest:twilight_scepter>,
[<twilightforest:twilight_scepter>.anyDamage(),<contenttweaker:vis_sliver>], 64);

// Charms

recipes.remove(<twilightforest:charm_of_keeping_3>);
recipes.remove(<twilightforest:charm_of_keeping_2>);
recipes.remove(<twilightforest:charm_of_keeping_1>);
recipes.remove(<twilightforest:charm_of_life_2>);
recipes.remove(<twilightforest:charm_of_life_1>);

JEI.removeAndHide(<twilightforest:charm_of_keeping_2>);

JEI.addDescription([<twilightforest:charm_of_keeping_1>],["With this charm in your inventory, your armor will be kept on death."]);
JEI.addDescription([<twilightforest:charm_of_life_1>],["With this charm in your inventory, you will restore 5 hearts and gain Regeneration I for 5 seconds on a fatal blow to you."]);
JEI.addDescription([<twilightforest:charm_of_keeping_3>],["With this charm in your inventory, your entire inventory will be kept on death."]);
JEI.addDescription([<twilightforest:charm_of_life_2>],["With this charm in your inventory, you will restore 10 hearts and gain Regeneration IV, Fire Resistance I, and Resistance I for 30 seconds on a fatal blow to you."]);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <ore:nuggetBronze>.firstItem, <contenttweaker:vis_speck>],
    [<ore:nuggetBronze>.firstItem, <contenttweaker:blank_charm>, <ore:nuggetBronze>.firstItem],
    [<contenttweaker:vis_speck>, <minecraft:ghast_tear>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:soul_rune>, 1)
  .addOutput(<twilightforest:charm_of_keeping_1>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <scalinghealth:heartdust>, <contenttweaker:vis_speck>],
    [<scalinghealth:heartdust>, <contenttweaker:blank_charm>, <scalinghealth:heartdust>],
    [<contenttweaker:vis_speck>, <scalinghealth:heartdust>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:life_rune>, 1)
  .addTool(<contenttweaker:soul_rune>, 1)
  .addOutput(<twilightforest:charm_of_life_1>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <ore:nuggetElectrum>.firstItem, <contenttweaker:vis_shard>],
    [<ore:nuggetElectrum>.firstItem, <twilightforest:charm_of_keeping_1>, <ore:nuggetElectrum>.firstItem],
    [<contenttweaker:vis_shard>, <ore:nuggetElectrum>.firstItem, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:holding_rune>, 1)
  .addOutput(<twilightforest:charm_of_keeping_3>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <scalinghealth:crystalshard>, <contenttweaker:vis_shard>],
    [<scalinghealth:crystalshard>, <twilightforest:charm_of_life_1>, <scalinghealth:crystalshard>],
    [<contenttweaker:vis_shard>, <scalinghealth:crystalshard>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:fire_rune>, 1)
  .addTool(<contenttweaker:strength_rune>, 1)
  .addOutput(<twilightforest:charm_of_life_2>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
   
// Maps and Foci

recipes.remove(<twilightforest:ore_map_empty>);
recipes.remove(<twilightforest:maze_map_empty>);
recipes.remove(<twilightforest:magic_map_empty>);
recipes.remove(<twilightforest:magic_map_focus>);

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_speck>, <minecraft:glowstone_dust>, <contenttweaker:vis_speck>],
    [<minecraft:glowstone_dust>, <ore:feather>, <minecraft:glowstone_dust>],
    [<contenttweaker:vis_speck>, <minecraft:glowstone_dust>, <contenttweaker:vis_speck>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addOutput(<twilightforest:magic_map_focus>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <ore:nuggetElectrum>.firstItem, <contenttweaker:vis_sliver>],
    [<ore:nuggetElectrum>.firstItem, <minecraft:compass>, <ore:nuggetElectrum>.firstItem], 
    [<contenttweaker:vis_sliver>, <ore:nuggetElectrum>.firstItem, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addOutput(<twilightforest:maze_map_focus>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
   [null, <ore:blockDiamond>, null],
   [<wards:enchanted_paper>, <twilightforest:maze_map_empty>, <minecraft:map>], 
   [null, <ore:oreDiamond>, null]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:earth_rune>, 1)
  .addOutput(<twilightforest:ore_map_empty>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
   [null, <contenttweaker:brain>, null],
   [<wards:enchanted_paper>, <twilightforest:maze_map_focus>, <minecraft:map>], 
   [null, <endreborn:block_phantom>, null]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:mind_rune>, 1)
  .addOutput(<twilightforest:maze_map_empty>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

RecipeBuilder.get("mage")
  .setShaped([
   [null, <ore:arcaneWood>, null],
   [<wards:enchanted_paper>, <twilightforest:magic_map_focus>, <minecraft:map>], 
   [null, <contenttweaker:magicked_lens>, null]])
  .addTool(<contenttweaker:knowledge_rune>, 1)
  .addTool(<contenttweaker:arcane_rune>, 1)
  .addOutput(<twilightforest:magic_map_empty>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();
