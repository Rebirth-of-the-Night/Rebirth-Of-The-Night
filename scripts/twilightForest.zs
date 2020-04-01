import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

mods.jei.JEI.removeAndHide(<twilightforest:uncrafting_table>);

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

val enchantments as IEnchantmentDefinition[] = [<enchantment:minecraft:unbreaking>];
var enchantmentMap as IData = {};

enchantmentMap += enchantments[0].makeEnchantment(1).makeTag();

recipes.remove(<twilightforest:ironwood_hoe>);
recipes.addShaped("ironwood_hoe",<twilightforest:ironwood_hoe>.withTag(enchantmentMap), 
[
   [<twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, null],
   [null, <ore:stickWood>, null],
   [null, <ore:stickWood>, null]
]);

// Lich Scepters

mods.betterwithaddons.Infuser.addShaped(<twilightforest:shield_scepter>, [
[null, <aether_legacy:golden_amber>, <contenttweaker:strength_orb>],
[null, <doggytalents:big_bone>, <aether_legacy:golden_amber>], 
[<doggytalents:big_bone>, null, null]],
16);

mods.betterwithaddons.Infuser.addShaped(<twilightforest:zombie_scepter>, [
[null, null, <contenttweaker:plague_orb>],
[null, <doggytalents:big_bone>, null], 
[<doggytalents:big_bone>, null, null]],
16);

mods.betterwithaddons.Infuser.addShaped(<twilightforest:twilight_scepter>, [
[null, null, <contenttweaker:end_orb>],
[null, <doggytalents:big_bone>, null], 
[<doggytalents:big_bone>, null, null]],
16);

// Charms

recipes.remove(<twilightforest:charm_of_keeping_3>);
recipes.remove(<twilightforest:charm_of_keeping_2>);
recipes.remove(<twilightforest:charm_of_keeping_1>);
recipes.remove(<twilightforest:charm_of_life_2>);
recipes.remove(<twilightforest:charm_of_life_1>);

mods.jei.JEI.removeAndHide(<twilightforest:charm_of_keeping_2>);

mods.jei.JEI.addDescription([<twilightforest:charm_of_keeping_1>],["With this charm in your inventory, your armor will be kept on death."]);
mods.jei.JEI.addDescription([<twilightforest:charm_of_life_1>],["With this charm in your inventory, you will restore 5 hearts and gain Regeneration I for 5 seconds on a fatal blow to you."]);
mods.jei.JEI.addDescription([<twilightforest:charm_of_keeping_3>],["With this charm in your inventory, your entire inventory will be kept on death."]);
mods.jei.JEI.addDescription([<twilightforest:charm_of_life_2>],["With this charm in your inventory, you will restore 10 hearts and gain Regeneration IV, Fire Resistance I, and Resistance I for 30 seconds on a fatal blow to you."]);

recipes.addShaped(<twilightforest:charm_of_keeping_1>, [
   [<dungeontactics:magic_powder>, <contenttweaker:material_part:1>, <dungeontactics:magic_powder>],
   [<contenttweaker:material_part:1>, <minecraft:ghast_tear>, <contenttweaker:material_part:1>], 
   [<bountifulbaubles:spectralsilt>, <contenttweaker:soul_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]]);

recipes.addShaped(<twilightforest:charm_of_life_1>, [
   [<dungeontactics:magic_powder>, <contenttweaker:soul_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>],
   [<bountifulbaubles:spectralsilt>, <scalinghealth:crystalshard>, <bountifulbaubles:spectralsilt>], 
   [<dungeontactics:magic_powder>, <contenttweaker:life_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>]]);

mods.betterwithaddons.Infuser.addShaped(<twilightforest:charm_of_keeping_3>, [
   [<contenttweaker:material_part:8>, <contenttweaker:material_part:16>, <contenttweaker:material_part:8>],
   [<contenttweaker:material_part:16>, <twilightforest:charm_of_keeping_1>, <contenttweaker:material_part:16>], 
   [<bountifulbaubles:spectralsilt>, <contenttweaker:holding_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]],
   32);

mods.betterwithaddons.Infuser.addShaped(<twilightforest:charm_of_life_2>, [
   [<dungeontactics:magic_powder>, <contenttweaker:fire_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>],
   [<contenttweaker:life_rune>.anyDamage().transformDamage(), <twilightforest:charm_of_life_1>, <contenttweaker:strength_rune>.anyDamage().transformDamage()], 
   [<bountifulbaubles:spectralsilt>, <contenttweaker:soul_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>]],
   32);
   
// Maps and Foci

recipes.remove(<twilightforest:ore_map_empty>);
recipes.remove(<twilightforest:maze_map_empty>);
recipes.remove(<twilightforest:magic_map_empty>);
recipes.remove(<twilightforest:magic_map_focus>);

recipes.addShaped(<twilightforest:magic_map_focus>, [
   [null, <minecraft:glowstone_dust>, null],
   [null, <ore:feather>, null], 
   [<dungeontactics:magic_powder>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>]]);

recipes.addShaped(<twilightforest:ore_map_empty>, [
   [<bountifulbaubles:spectralsilt>, <contenttweaker:earth_rune>.anyDamage().transformDamage(), <bountifulbaubles:spectralsilt>],
   [<wards:enchanted_paper>, <twilightforest:maze_map_focus>, null], 
   [<dungeontactics:magic_powder>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage(), <dungeontactics:magic_powder>]]);

recipes.addShaped(<twilightforest:maze_map_empty>, [
   [null, null, null],
   [<wards:enchanted_paper>, <twilightforest:maze_map_focus>, <minecraft:map>], 
   [null, <contenttweaker:knowledge_rune>.anyDamage().transformDamage(), null]]);

recipes.addShaped(<twilightforest:magic_map_empty>, [
   [null, null, null],
   [<wards:enchanted_paper>, <twilightforest:magic_map_focus>, <minecraft:map>], 
   [null, <contenttweaker:knowledge_rune>.anyDamage().transformDamage(), null]]);

mods.betterwithaddons.Infuser.addShaped(<twilightforest:maze_map_focus>, [
   [<dungeontactics:magic_powder>, <contenttweaker:material_part:16>, <dungeontactics:magic_powder>],
   [<contenttweaker:material_part:16>, <contenttweaker:knowledge_rune>.anyDamage().transformDamage(), <contenttweaker:material_part:16>], 
   [<bountifulbaubles:spectralsilt>, <contenttweaker:material_part:16>, <bountifulbaubles:spectralsilt>]],
   16);