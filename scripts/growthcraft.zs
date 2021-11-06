import mods.jei.JEI;
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

JEI.removeAndHide(<growthcraft:salt_ore>);
JEI.removeAndHide(<growthcraft:crowbar>);
JEI.removeAndHide(<growthcraft:crowbar:1>);
JEI.removeAndHide(<growthcraft:crowbar:2>);
JEI.removeAndHide(<growthcraft:crowbar:3>);
JEI.removeAndHide(<growthcraft:crowbar:4>);
JEI.removeAndHide(<growthcraft:crowbar:5>);
JEI.removeAndHide(<growthcraft:crowbar:6>);
JEI.removeAndHide(<growthcraft:crowbar:7>);
JEI.removeAndHide(<growthcraft:crowbar:8>);
JEI.removeAndHide(<growthcraft:crowbar:9>);
JEI.removeAndHide(<growthcraft:crowbar:10>);
JEI.removeAndHide(<growthcraft:crowbar:11>);
JEI.removeAndHide(<growthcraft:crowbar:12>);
JEI.removeAndHide(<growthcraft:crowbar:13>);
JEI.removeAndHide(<growthcraft:crowbar:14>);
JEI.removeAndHide(<growthcraft:crowbar:15>);
JEI.removeAndHide(<growthcraft_apples:apple_leaves>);
JEI.removeAndHide(<growthcraft_bamboo:bamboo_leaves>);
JEI.removeAndHide(<growthcraft_bamboo:bamboo_shoot>);
JEI.removeAndHide(<growthcraft_bees:bottlefluid_honey>);
JEI.removeAndHide(<growthcraft_cellar:cork_sapling>);
JEI.removeAndHide(<growthcraft_cellar:cork_leaves>);
JEI.removeAndHide(<growthcraft_cellar:cork_bark>);
JEI.removeAndHide(<growthcraft_cellar:achievement_dummy>);
JEI.removeAndHide(<growthcraft_milk:cheese_cloth>);
JEI.removeAndHide(<growthcraft_milk:butter>);
JEI.removeAndHide(<growthcraft_milk:butter:1>);
JEI.removeAndHide(<growthcraft_milk:ice_cream>);
JEI.removeAndHide(<growthcraft_milk:ice_cream:1>);
JEI.removeAndHide(<growthcraft_milk:ice_cream:2>);
JEI.removeAndHide(<growthcraft_milk:ice_cream:3>);
JEI.removeAndHide(<growthcraft_milk:ice_cream:4>);
JEI.removeAndHide(<growthcraft_milk:ice_cream:5>);
JEI.removeAndHide(<growthcraft_milk:yogurt>);
JEI.removeAndHide(<growthcraft_milk:yogurt:1>);
JEI.removeAndHide(<growthcraft_milk:yogurt:2>);
JEI.removeAndHide(<growthcraft_milk:yogurt:3>);
JEI.removeAndHide(<growthcraft_milk:yogurt:4>);
JEI.removeAndHide(<growthcraft_milk:yogurt:5>);
JEI.removeAndHide(<growthcraft_milk:knife>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice:1>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice:2>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice:3>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice:4>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged_slice:5>);
JEI.removeAndHide(<growthcraft_milk:cheese_waxed_slice>);
JEI.removeAndHide(<growthcraft_milk:cheese_waxed_slice:1>);
JEI.removeAndHide(<growthcraft_milk:cheese_waxed_slice:2>);
JEI.removeAndHide(<growthcraft_milk:cheese_waxed_slice:3>);
JEI.removeAndHide(<growthcraft_milk:cheese_simple_slice>);
JEI.removeAndHide(<growthcraft_milk:cheese_aged:24>.withTag({te_cheese_block: {slices: 4, cheese_name: "gorgonzola", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged:56>.withTag({te_cheese_block: {slices: 4, cheese_name: "emmentaler", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged:88>.withTag({te_cheese_block: {slices: 4, cheese_name: "appenzeller", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged:120>.withTag({te_cheese_block: {slices: 4, cheese_name: "asiago", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged:152>.withTag({te_cheese_block: {slices: 4, cheese_name: "parmesan", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged:184>.withTag({te_cheese_block: {slices: 4, cheese_name: "casu_marzu", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_aged>.withTag({te_cheese_block: {slices: 1, cheese_name: "gorgonzola", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:cheese_waxed:27>.withTag({te_cheese_block: {slices: 4, cheese_name: "cheddar", cheese_modid: "growthcraft_milk", cheese_stage_id: 3}}));
JEI.removeAndHide(<growthcraft_milk:cheese_waxed:59>.withTag({te_cheese_block: {slices: 4, cheese_name: "monterey", cheese_modid: "growthcraft_milk", cheese_stage_id: 3}}));
JEI.removeAndHide(<growthcraft_milk:cheese_waxed:91>.withTag({te_cheese_block: {slices: 4, cheese_name: "gouda", cheese_modid: "growthcraft_milk", cheese_stage_id: 3}}));
JEI.removeAndHide(<growthcraft_milk:cheese_waxed:123>.withTag({te_cheese_block: {slices: 4, cheese_name: "provolone", cheese_modid: "growthcraft_milk", cheese_stage_id: 3}}));
JEI.removeAndHide(<growthcraft_milk:cheese_waxed>.withTag({te_cheese_block: {slices: 1, cheese_name: "cheddar", cheese_modid: "growthcraft_milk", cheese_stage_id: 0}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:24>.withTag({te_curd_block: {cheese_name: "gorgonzola", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:56>.withTag({te_curd_block: {cheese_name: "emmentaler", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:88>.withTag({te_curd_block: {cheese_name: "appenzeller", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:120>.withTag({te_curd_block: {cheese_name: "asiago", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:152>.withTag({te_curd_block: {cheese_name: "parmesan", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged:184>.withTag({te_curd_block: {cheese_name: "casu_marzu", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_aged>.withTag({te_curd_block: {cheese_name: "gorgonzola", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_waxed:24>.withTag({te_curd_block: {cheese_name: "cheddar", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_waxed:88>.withTag({te_curd_block: {cheese_name: "gouda", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_waxed:120>.withTag({te_curd_block: {cheese_name: "provolone", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_waxed>.withTag({te_curd_block: {cheese_name: "cheddar", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_simple:24>.withTag({te_curd_block: {cheese_name: "ricotta", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:curds_simple>.withTag({te_curd_block: {cheese_name: "ricotta", cheese_modid: "growthcraft_milk"}}));
JEI.removeAndHide(<growthcraft_milk:cheese_vat>);
JEI.removeAndHide(<growthcraft_milk:pancheon>);
JEI.removeAndHide(<growthcraft_milk:churn>);
JEI.removeAndHide(<growthcraft_milk:cheese_press>);
JEI.removeAndHide(<growthcraft_rice:cultivator>);
JEI.removeAndHide(<growthcraft_rice:rice_ball>);

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