import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<twilightforest:uncrafting_table>);
/* recipes.removeByRecipeName("twilightforest:uncrafting_table");

recipes.addShaped("TF uncrafting table", <twilightforest:uncrafting_table>,
 [[<ore:workbench>,<twilightforest:maze_map_focus>,<ore:workbench>],
  [<minecraft:clock>,<aether_legacy:notch_hammer>,<minecraft:clock>],
  [<endreborn:death_essence>,<minecraft:stonebrick>,<endreborn:death_essence>]]); */

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