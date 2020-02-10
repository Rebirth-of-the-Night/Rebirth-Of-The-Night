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
recipes.addShaped("pyro wooden bucket", <pyrotech:bucket_wood>,
 [[<ore:plankWood>,null,<ore:plankWood>],
  [null,<ore:logWood>,null]]);
recipes.addShaped("pyro stone door", <pyrotech:stone_door>,
 [[<pyrotech:material:16>,<pyrotech:material:16>],
  [<pyrotech:material:16>,<pyrotech:material:16>],
  [<pyrotech:material:16>,<pyrotech:material:16>]]);
recipes.addShaped("pyro shelf", <pyrotech:shelf>,
 [[<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>],
  [<ore:plankWood>,<ore:slabWood>,<ore:plankWood>]]);
recipes.addShaped("pyro stash", <pyrotech:stash>,
 [[<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,null,<ore:plankWood>],
  [<ore:plankWood>,<ore:chestWood>,<ore:plankWood>]]);
recipes.addShaped("pyro stone tank", <pyrotech:tank>,
 [[<pyrotech:material:16>,<ore:blockGlassColorless>,<pyrotech:material:16>],
  [<ore:blockGlassColorless>,<ore:slimeball>,<ore:blockGlassColorless>],
  [<pyrotech:material:16>,<pyrotech:material:16>,<pyrotech:material:16>]]);
recipes.addShaped("pyro stone hammer tool", <pyrotech:stone_hammer>,
 [[<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [<ore:cobblestone>,<ore:stickWood>,<ore:cobblestone>],
  [null,<ore:stickWood>,null]]);
recipes.addShapeless("pyro bow_drill", <pyrotech:bow_drill>,[<minecraft:bow>,<ore:stickWood>]);
recipes.addShapeless("pyro flint_and_tinder", <pyrotech:flint_and_tinder>,[<ore:cobblestone>,<minecraft:flint>]);

//descriptions
mods.jei.JEI.addDescription(<pyrotech:bow_drill>,"Much more effective than a fire starter. Can lit a kiln.");
mods.jei.JEI.addDescription(<pyrotech:flint_and_tinder>,"made with materials lying around on the floor. Can lit a kiln.");
mods.jei.JEI.addDescription(<pyrotech:stone_kiln>,"A kind of furnace that can smelt certain items like clay, bronze alloy and charcoal in batches of 8. Needs to be ignited with a flint and tinder or a better igniter.");
mods.jei.JEI.addDescription(<pyrotech:brick_kiln>,"Upgraded version of the stone kiln that can smelt certain items like clay, bronze alloy and charcoal in batches of 24! Needs to be ignited with a flint and tinder or a better igniter.");
mods.jei.JEI.addDescription(<pyrotech:anvil_granite>,"Pretty useful to bash or break items into smaller pieces. Can turn tin and copper into pebbles suited for making bronze!");
mods.jei.JEI.addDescription(<pyrotech:bucket_wood>,"This won't last long. Don't even think of putting hot fluids in it");
mods.jei.JEI.addDescription(<pyrotech:shelf>,"Display items much clearer than a chest would ever do.");
mods.jei.JEI.addDescription(<pyrotech:stash>,"When all is needed is somewhere to stash an overflowing item");
mods.jei.JEI.addDescription(<dungeontactics:fire_starter>,"Crude way of starting a fire, may not ignite a kiln, although certain obsidian formations seems to be susceptibe to even the slightest fire");
