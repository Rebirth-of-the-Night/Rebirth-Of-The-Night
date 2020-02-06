import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.removeByMod("pyrotech");
mods.jei.JEI.removeAndHide(<pyrotech:crude_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:bone_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:flint_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:gold_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:obsidian_hammer>);
mods.jei.JEI.removeAndHide(<pyrotech:bag_durable>);
mods.jei.JEI.removeAndHide(<pyrotech:drying_rack>);
mods.jei.JEI.removeAndHide(<pyrotech:mechanical_hopper>);
mods.jei.JEI.removeAndHide(<pyrotech:mechanical_bellows>);
mods.jei.JEI.removeAndHide(<pyrotech:mechanical_compacting_bin>);
mods.jei.JEI.removeAndHide(<pyrotech:mechanical_mulch_spreader>);
mods.jei.JEI.removeAndHide(<pyrotech:bellows>);
mods.jei.JEI.removeAndHide(<pyrotech:material:*>);
mods.jei.JEI.removeAndHide(<pyrotech:rock:*>);
mods.jei.JEI.hideCategory("pyrotech.pit.kiln");
mods.jei.JEI.hideCategory("pyrotech.crude.drying");
mods.jei.JEI.hideCategory("pyrotech.drying");
mods.jei.JEI.hideCategory("pyrotech.chopping");
mods.jei.JEI.hideCategory("pyrotech.compacting.bin");
mods.jei.JEI.hideCategory("pyrotech.campfire");
mods.jei.JEI.hideCategory("pyrotech.worktable");
mods.jei.JEI.hideCategory("pyrotech.soaking.pot");
mods.jei.JEI.hideCategory("pyrotech.stone.mill");
mods.jei.JEI.hideCategory("pyrotech.stone.oven");
mods.jei.JEI.hideCategory("pyrotech.stone.crucible");
mods.jei.JEI.hideCategory("pyrotech.brick.mill");
mods.jei.JEI.hideCategory("pyrotech.brick.oven");
mods.jei.JEI.hideCategory("pyrotech.brick.crucible");
mods.jei.JEI.hideCategory("pyrotech.mechanical.compacting.bin");

//Simplified recipes
val stone = <ore:stone>;
val stoneBrick = <pyrotech:material:16>;
val clayBrick = <ore:ingotBrick>;

recipes.addShaped("pyro stone brick", stoneBrick*2,
[[<ore:stone>],
[<ore:stone>]]);
recipes.addShaped("pyro stone kiln", <pyrotech:stone_kiln>,
 [[stoneBrick,stoneBrick,stoneBrick],
  [stoneBrick,<minecraft:furnace>,stoneBrick],
  [stoneBrick,<minecraft:stonebrick>,stoneBrick]]);
recipes.addShaped("pyro stone anvil", <pyrotech:anvil_granite>,
 [[null,<ore:stoneSlab>,null],
  [null,<ore:stone>,null]]);
<pyrotech:anvil_granite>.displayName = "Multipurpose Stone Anvil";
recipes.addShaped("pyro brick kiln", <pyrotech:brick_kiln>,
 [[clayBrick,clayBrick,clayBrick],
  [clayBrick,<minecraft:furnace>,clayBrick],
  [clayBrick,<minecraft:brick_block>,clayBrick]]);
recipes.addShaped("pyro log pile", <pyrotech:log_pile>,
 [[<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>],
  [<ore:logWood>,<ore:logWood>,<ore:logWood>]]);