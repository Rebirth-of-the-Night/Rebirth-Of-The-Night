//Input (Liquid) Input (Item) Output Amount Byproduct 
//Water iconitemWheat.pngWheat Ale (No-hops) 40 0.30 
//Ale (No-hops) iconitemHops.pngHops Ale 40 0.30 
//Water iconitemRice.pngRice Sake 25 0.20

/*
Tub produces: 8 buckets per 32 apples
Press produces: 1 bucket per 32 apples
*/

recipes.removeByMod("growthcraft");
recipes.removeByMod("growthcraft_apples");
recipes.removeByMod("growthcraft_fishtrap");
recipes.removeByMod("growthcraft_grapes");
recipes.removeByMod("growthcraft_bamboo");
recipes.removeByMod("growthcraft_bees");
recipes.removeByMod("growthcraft_rice");
recipes.removeByMod("growthcraft_hops");
recipes.removeByMod("growthcraft_milk");
recipes.removeByMod("growthcraft_cellar");

//Rigid Rope
//Conceptualized to act similar to iron lattice from Rustic, used in growing grapes and hops
recipes.addShaped("rigid_rope", <growthcraft:rope>*16,
 [[null,<ore:twine>,null],
  [<ore:twine>,<ore:genericMetal>,<ore:twine>],
  [null,<ore:twine>,null]]);

//Fishtrap
recipes.addShaped("fishtrap", <growthcraft_fishtrap:fishtrap>,
 [[<betterwithmods:material:36>,<ore:durableFiber>,<betterwithmods:material:36>],
  [<ore:durableFiber>,null,<ore:durableFiber>],
  [<betterwithmods:material:36>,<ore:durableFiber>,<betterwithmods:material:36>]]);

//Fermenting Barrel 
recipes.addShaped("ferment_barrel", <growthcraft_cellar:ferment_barrel>,
 [[<ore:plankWood>,<ore:genericMetal>,<ore:plankWood>],
  [<ore:slabWood>,null,<ore:slabWood>],
  [<ore:plankWood>,<ore:genericMetal>,<ore:plankWood>]]);

//Culture Jar
recipes.addShaped("culture_jar", <growthcraft_cellar:culture_jar>,
 [[<ore:paneGlass>,<ore:plankWood>,<ore:paneGlass>],
  [<ore:paneGlass>,null,<ore:paneGlass>],
  [<ore:paneGlass>,<ore:paneGlass>,<ore:paneGlass>]]);

//Fruit Presser
recipes.addShaped("fruit_presser", <growthcraft_cellar:fruit_press>,
 [[<betterwithmods:material:36>,<minecraft:piston>,<betterwithmods:material:36>],
  [null,<rustic:crushing_tub>,null]]);