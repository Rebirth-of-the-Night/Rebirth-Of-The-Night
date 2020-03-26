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