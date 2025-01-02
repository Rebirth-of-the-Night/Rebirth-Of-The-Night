import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.pyrotech.CompactingBin;
import mods.pyrotech.MechanicalCompactor;
import mods.pyrotech.CrudeDryingRack;
import mods.pyrotech.DryingRack;
import mods.pyrotech.Campfire;
import mods.pyrotech.SoakingPot;
import mods.pyrotech.Burn;
import mods.pyrotech.CompostBin;

JEI.removeAndHide(<pyrotech:crate>);
JEI.removeAndHide(<pyrotech:material:16>);
JEI.removeAndHide(<pyrotech:quartz_axe>);
JEI.removeAndHide(<pyrotech:quartz_hoe>);
JEI.removeAndHide(<pyrotech:quartz_pickaxe>);
JEI.removeAndHide(<pyrotech:quartz_shovel>);
JEI.removeAndHide(<pyrotech:quartz_sword>);

CompactingBin.removeAllRecipes();
MechanicalCompactor.removeAllRecipes();

// Pyrotech Compat Hiding
// if you plan to use one of these, please replace the removeandhide line with what it will be used for
// all of them can be found in the pyrotech creative tab

// Igneous sand piles
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand>); #red granite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:1>); #black granite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:2>); #rhyolite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:3>); #andesite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:4>); #gabbro sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:5>); #basalt sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:6>); #komatiite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:7>); #dacite sand pile

//Metamorphic sand piles
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand>); #gneiss sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:1>); #eclogite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:2>); #marble sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:3>); #quartzite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:4>); #blue schist sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:5>); #green schist sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:6>); #soapstone sand pile
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:7>); #migmatite sand pile

//Sedimentary sand piles
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand>); #limestone sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:1>); #chalk sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:2>); #shale sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:3>); #siltstone sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:4>); #lignite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:5>); #dolomite sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:6>); #greywacke sand pile
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:7>); #chert sand pile

// Igneous sandstone rocks
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:8>); #red granite sandstone rock
#black granite sandstone: currently lignite rock (it really should use the lignite sandstone rock instead)
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:10>); #rhyolite sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:11>); #andesite sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:12>); #gabbro sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:13>); #basalt sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:14>); #komatiite sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_igneous_sand:15>); #dacite sandstone rock

// Metamorphic sandstone rocks
#gneiss sandstone rock: currently used as itself
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:9>); #eclogite sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:10>); #marble sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:11>); #quartzite sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:12>); #blue schist sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:13>); #green schist sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:14>); #soapstone sandstone rock
JEI.removeAndHide(<pyrotech_compat:rock_metamorphic_sand:15>); #migmatite sandstone rock

// Sedimentary sandstone rocks
#limestone sandstone rock: currently used as itself
#chalk sandstone rock: currently used as defiled sandstone rock
#shale sandstone rock: currently used as itself
#siltstone sandstone rock: currently used as serpentinite rock
JEI.removeAndHide(<pyrotech_compat:rock_sedimentary_sand:12>); #lignite sandstone rock
#dolomite sandstone rock: currently used as defiled rock
#greywacke sandstone rock: currently used as itself
#chert sandstone rock: currently used as holystone rock

CompactingBin.addRecipe("dirt_from_clump", <minecraft:dirt>, <betterwithmods:dirt_pile>, 4, true);
CompactingBin.addRecipe("sandy_dirt_from_clump", <biomesoplenty:dirt:1>, <contenttweaker:sandy_dirt_pile>, 4, true);
CompactingBin.addRecipe("silty_dirt_from_clump", <biomesoplenty:dirt:2>, <contenttweaker:silty_dirt_pile>, 4, true);
CompactingBin.addRecipe("loamy_dirt_from_clump", <biomesoplenty:dirt>, <contenttweaker:loamy_dirt_pile>, 4, true);
CompactingBin.addRecipe("defiled_dirt_from_clump", <defiledlands:dirt_defiled>, <contenttweaker:defiled_dirt_pile>, 4, true);
CompactingBin.addRecipe("aether_dirt_from_clump", <aether_legacy:aether_dirt>, <contenttweaker:aether_dirt_pile>, 4, true);
CompactingBin.addRecipe("rammed_from_dirt", <contenttweaker:rammed_earth_vanilla_dirt>, <minecraft:dirt>, 3, true);
CompactingBin.addRecipe("rammed_from_loamy", <contenttweaker:rammed_earth_loamy_dirt>, <biomesoplenty:dirt:0>, 3, true);
CompactingBin.addRecipe("rammed_from_sandy", <contenttweaker:rammed_earth_sandy_dirt>, <biomesoplenty:dirt:1>, 3, true);
CompactingBin.addRecipe("rammed_from_silty", <contenttweaker:rammed_earth_silty_dirt>, <biomesoplenty:dirt:2>, 3, true);
CompactingBin.addRecipe("chips_pile_from_chips", <pyrotech:pile_wood_chips>, <pyrotech:rock:7>, 8, true);
CompactingBin.addRecipe("ash_pile_from_ash", <biomesoplenty:ash_block>, <biomesoplenty:ash>, 9, true);
CompactingBin.addRecipe("ash_pile_from_big_ash", <biomesoplenty:ash_block>, <pyrotech:material>, 3, true);
CompactingBin.addRecipe("magma_verus_block", <betterwithaddons:elytra_magma>, <betterwithaddons:material:6>, 4, true);
CompactingBin.addRecipe("rat_cheese_block", <rats:block_of_cheese>, <ore:foodCheese>, 4, true);
CompactingBin.addRecipe("congealed_bone_block", <betternether:bone_block>, <betterwithaddons:congealed>, 3, true);
CompactingBin.addRecipe("modeling_refractory", <contenttweaker:modelingrefractory>, <contenttweaker:unfiredrefractory>, 4, true);
CompactingBin.addRecipe("modeling_refractory1", <contenttweaker:modelingrefractory>, <pyrotech:material:4>, 16, true);
CompactingBin.addRecipe("slag_heap", <pyrotech:pile_slag>, <pyrotech:slag>, 8, true);
CompactingBin.addRecipe("wax_block", <harvestcraft:pressedwax>, <rustic:beeswax>, 4, true);
CompactingBin.addRecipe("bonemeal_antidupe", <minecraft:bone_block>, <minecraft:dye:15>, 9, true);
CompactingBin.addRecipe("clay_compacting", <minecraft:clay>, <minecraft:clay_ball>, 4, true);
CompactingBin.addRecipe("mud_compacting", <biomesoplenty:mud>, <biomesoplenty:mudball>, 4, true);
CompactingBin.addRecipe("compactrottenflesh", <charm:rotten_flesh_block>, <minecraft:rotten_flesh>, 9, true);
CompactingBin.addRecipe("compactflesh", <biomesoplenty:flesh>, <biomesoplenty:fleshchunk>, 4, true);

//Composting Recipes
CompostBin.addRecipe(<pyrotech:mulch>, <betterwithmods:material:2>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <betterwithmods:hemp>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:blackberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:blueberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:candleberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:raspberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:strawberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cactusfruitseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:asparagusseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:barleyseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:oatsseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:ryeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cornseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:bambooshootseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cantaloupeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cucumberseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:wintersquashseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:zucchiniseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:beetseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:onionseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:parsnipseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:peanutseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:radishseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:rutabagaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:sweetpotatoseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:turnipseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:rhubarbseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:celeryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:garlicseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:gingerseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:spiceleafseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:teaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:coffeeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:mustardseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:broccoliseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cauliflowerseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:leekseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:lettuceseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:scallionseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:artichokeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:brusselsproutseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cabbageseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:spinachseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:whitemushroomseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:beanseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:soybeanseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:bellpepperseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:chilipepperseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:eggplantseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:okraseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:peasseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:tomatoseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cottonseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:pineappleseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:grapeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:kiwiseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cranberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:riceseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:seaweedseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:curryleafseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:sesameseedsitem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:sesameseedsseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:waterchestnutseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:gigapickleseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:kaleseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:agaveseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:amaranthseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:arrowrootseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:cassavaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:chickpeaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:elderberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:flaxseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:greengrapeseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:huckleberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:jicamaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:juteseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:kenafseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:kohlrabiseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:lentilseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:milletseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:mulberryseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:quinoaseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:sisalseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:taroseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:tomatilloseeditem>, 12);
CompostBin.addRecipe(<pyrotech:mulch>, <harvestcraft:juniperberryseeditem>, 12);

CrudeDryingRack.removeRecipes(<pyrotech:material:2>);
CrudeDryingRack.removeRecipes(<pyrotech:material:13>);
DryingRack.removeRecipes(<pyrotech:material:2>);
DryingRack.removeRecipes(<pyrotech:material:13>);

//DryingRack.addRecipe("clay_bricks", <minecraft:brick>, <betterwithmods:unfired_pottery:4>, 43 * 60 * 20);  // these are all illegal
//DryingRack.addRecipe("mud_bricks", <biomesoplenty:mud_brick>, <contenttweaker:unfired_mud_brick>, 43 * 60 * 20);
//DryingRack.addRecipe("adobe_bricks", <earthworks:item_adobe>, <contenttweaker:unfired_adobe_brick>, 43 * 60 * 20);
//DryingRack.addRecipe("refractory_bricks", <pyrotech:material:5>, <contenttweaker:unfired_refractory_brick>, 43 * 60 * 20);
//DryingRack.addRecipe("nether_bricks", <minecraft:netherbrick>, <betterwithmods:unfired_pottery:5>, 43 * 60 * 20);
//DryingRack.addRecipe("fiery_nether_bricks", <netherex:fiery_netherbrick>, <contenttweaker:unfired_fiery_brick>, 43 * 60 * 20);
//DryingRack.addRecipe("porcelain_bricks", <ceramics:unfired_clay:5>, <contenttweaker:unfired_porcelain_brick>, 43 * 60 * 20);
CrudeDryingRack.addRecipe("dried_jute", <pyrotech:material:2>, <harvestcraft:juteitem>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_fiber_fresh", <pyrotech:tinder>, <pyrotech:material:12>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_fiber_sapling", <pyrotech:tinder>, <ore:treeSapling>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("dried_soap", <betterwithmods:aesthetic:10>, <betterwithaddons:wet_soap>, 5 * 60 * 20, true);
CrudeDryingRack.addRecipe("mud_dirt", <betterwithmods:dirt_pile>, <biomesoplenty:mudball>, 8 * 60 * 20, true);

SoakingPot.removeRecipes(<pyrotech:material:8>);
SoakingPot.removeRecipes(<pyrotech:material:31>);
SoakingPot.removeRecipes(<pyrotech:material:30>);
SoakingPot.removeRecipes(<pyrotech:material:23>);
SoakingPot.removeRecipes(<minecraft:coal_block>);
SoakingPot.removeRecipes(<pyrotech:living_tar>);
SoakingPot.removeRecipes(<pyrotech:material:3>);
SoakingPot.removeRecipes(<pyrotech:wood_tar_block>);
SoakingPot.removeRecipes(<minecraft:stonebrick:1>);
SoakingPot.removeRecipes(<pyrotech:material:26>);
SoakingPot.addRecipe("easy_durable_twine", <pyrotech:material:26>*3, <liquid:wood_tar>*125, <pyrotech:material:14>, false, 1);
SoakingPot.addRecipe("rotten_flesh_dissolve", <quark:tallow>, <liquid:methanol>*1, <ore:meatRotten>, true, 5 * 60 * 20);
SoakingPot.addRecipe("mossy_stone_bricks", <minecraft:stonebrick:1>, <liquid:water>*500, <contenttweaker:brick_minecraft_stone>, 7 * 60 * 20);
SoakingPot.addRecipe("yute_fiber", <betterwithmods:material:3>*5, <liquid:water>*500, <pyrotech:material:2>, 5 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <mod_lavacow:intestine>, true, 2 * 60 * 20);
SoakingPot.addRecipe("carmin_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:wildberryjuice>*100, <ore:agedMold>, true, 30 * 20);
SoakingPot.addRecipe("grape_vinegar", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <mod_lavacow:intestine>, true, 2 * 60 * 20);
SoakingPot.addRecipe("grape_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:grapejuice>*100, <ore:agedMold>, true, 30 * 20);
SoakingPot.addRecipe("apple_vinegar", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <mod_lavacow:intestine>, true, 2 * 60 * 20);
SoakingPot.addRecipe("apple_vinegar_fast", <harvestcraft:vinegaritem>, <liquid:applejuice>*100, <ore:agedMold>, true, 30 * 20);
SoakingPot.addRecipe("tarred_tar_hay", <pyrotech:wood_tar_block>, <liquid:wood_tar>*250, <minecraft:hay_block>, 5 * 60 * 20);
SoakingPot.addRecipe("refractory_limerock", <pyrotech:material:8>, <liquid:water>*200, <pyrotech:rock:8>, 8 * 60 * 20);
SoakingPot.addRecipe("refractory_coke", <pyrotech:material:8>*4, <liquid:wood_tar>*50, <pyrotech:material:32>, 6 * 60 * 20);
SoakingPot.addRecipe("vis_sliver", <contenttweaker:vis_sliver>, <liquid:lunar_water>*1000, <contenttweaker:vis_speck>, 5 * 60 * 20);
SoakingPot.addRecipe("vis_shard", <contenttweaker:vis_shard>, <liquid:lunar_water>*2000, <contenttweaker:vis_sliver>, 10 * 60 * 20);
SoakingPot.addRecipe("blood_moon_spirits", <betterwithaddons:ancestry_bottle>, <liquid:lifeblood>*500, <nyx:lunar_water_bottle>, 8 * 60 * 20);
SoakingPot.addRecipe("mythril_stone_ingots", <simpleores:mythril_ingot>, <liquid:lifeblood>*950, <contenttweaker:masonry_brick>, true, 10 * 75 * 30);
SoakingPot.addRecipe("unliving_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*2000, <charm:rotten_flesh_block>, 12 * 60 * 20);
SoakingPot.addRecipe("sloth_tar", <pyrotech:living_tar>*1, <liquid:coal_tar>*500, <biomesoplenty:flesh>, 28 * 60 * 20);
SoakingPot.addRecipe("mossy_white_stone_bricks", <betterwithaddons:whitebrick:1>, <liquid:water>*250, <contenttweaker:brick_betterwithaddons_whitebrick>, 7 * 60 * 20);
SoakingPot.addRecipe("wet_soap", <betterwithaddons:wet_soap>, <liquid:water>*250, <betterwithmods:aesthetic:10>, 20 * 20);

// Campfire recipes
// remove non roasted recipes
Campfire.blacklistSmeltingRecipes([<animania:plain_omelette>]);
Campfire.blacklistSmeltingRecipes([<minecraft:cookie>]);
Campfire.blacklistSmeltingRecipes([<minecraft:rotten_flesh>]);
Campfire.blacklistSmeltingRecipes([<netherex:ghast_meat_cooked>]);
Campfire.blacklistSmeltingRecipes([<pyrotech:book>]);

Campfire.addRecipe("traditional_marshmallow", <pyrotech:marshmallow_roasted>.withTag({}), <pyrotech:marshmallow>);
Campfire.addRecipe("burned_marshmallow", <pyrotech:marshmallow_burned>, <pyrotech:marshmallow_roasted>.withTag({}));
Campfire.addRecipe("roasted_egg_a", <pyrotech:egg_roasted>, <minecraft:egg>);
Campfire.addRecipe("roasted_egg_b", <pyrotech:egg_roasted>, <animania:brown_egg>);
Campfire.addRecipe("roasted_egg_c", <pyrotech:egg_roasted>, <animania:peacock_egg_blue>);
Campfire.addRecipe("roasted_egg_d", <pyrotech:egg_roasted>, <animania:peacock_egg_white>);
Campfire.addRecipe("roasted_egg_e", <pyrotech:egg_roasted>, <betteranimalsplus:pheasant_egg>);
Campfire.addRecipe("roasted_egg_f", <pyrotech:egg_roasted>, <betteranimalsplus:turkey_egg>);
Campfire.addRecipe("roasted_egg_g", <pyrotech:egg_roasted>, <betteranimalsplus:goose_egg>);
Campfire.addRecipe("roasted_egg_h", <pyrotech:egg_roasted>, <iceandfire:rotten_egg>);
Campfire.addRecipe("roasted_egg_i", <pyrotech:egg_roasted>, <primitivemobs:dodo_egg>);
Campfire.addRecipe("roasted_egg_j", <pyrotech:egg_roasted>, <quark:parrot_egg>);
Campfire.addRecipe("roasted_egg_k", <pyrotech:egg_roasted>, <quark:parrot_egg:1>);
Campfire.addRecipe("roasted_egg_l", <pyrotech:egg_roasted>, <quark:parrot_egg:2>);
Campfire.addRecipe("roasted_egg_m", <pyrotech:egg_roasted>, <quark:parrot_egg:3>);
Campfire.addRecipe("roasted_egg_n", <pyrotech:egg_roasted>, <quark:parrot_egg:4>);
Campfire.addRecipe("roasted_egg_o", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 0}));
Campfire.addRecipe("roasted_egg_p", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 1}));
Campfire.addRecipe("roasted_egg_q", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 2}));
Campfire.addRecipe("roasted_egg_r", <pyrotech:egg_roasted>, <aether_legacy:moa_egg>.withTag({typeId: 3}));

// concrete
for i in 0 to 16 {
    SoakingPot.addRecipe("concrete_"~i, itemUtils.getItem("minecraft:concrete", i), <liquid:water>*50, itemUtils.getItem("minecraft:concrete_powder", i), 1 * 60 * 20);
}

// Mossy stone recipes
val ignMossyDef = <undergroundbiomes:igneous_cobble_mossy>.definition;
val ignCobbleDef = <undergroundbiomes:igneous_cobble>.definition;
val metaMossyDef = <undergroundbiomes:metamorphic_cobble_mossy>.definition;
val metaCobbleDef = <undergroundbiomes:metamorphic_cobble>.definition;

for i in 0 to 8 {
    SoakingPot.addRecipe("igneous_cobble_to_mossy_"~i, ignMossyDef.makeStack(i), <liquid:water>*250, ignCobbleDef.makeStack(i), 7 * 60 * 20);
    SoakingPot.addRecipe("metamorphic_cobble_to_mossy_"~i, metaMossyDef.makeStack(i), <liquid:water>*250, metaCobbleDef.makeStack(i), 7 * 60 * 20);
}

furnace.remove(<pyrotech:material:22>);

Burn.removeRecipes(<pyrotech:material:23>);

Burn.createBuilder("lignite_coke", <pyrotech:material:1>, "contenttweaker:lignite_cobble")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(3 * 60 * 20)
    .setFluidProduced(<liquid:coal_tar> * 500)
	.setFailureChance(0.33)
    .addFailureItem(<pyrotech:material>) // big pile of ash
    .addFailureItem(<pyrotech:material>*2) // big pile of ash
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(true)
    .register();
Burn.createBuilder("molten_spirit_vanilla", <contenttweaker:masonry_brick>, "simpleores:mythril_ore")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(6 * 60 * 20)
    .setFluidProduced(<liquid:lifeblood> * 1000)
    .setRequiresRefractoryBlocks(true)
    .setFluidLevelAffectsFailureChance(false)
    .register();
Burn.createBuilder("distilled_enderslag", <betterwithmods:material:39>, "endreborn:block_entropy_end_stone")
    .setBurnStages(1)
    .setTotalBurnTimeTicks(4 * 60 * 20)
    .setFluidProduced(<liquid:ender_slag> * 250)
	.setFailureChance(0.33)
    .addFailureItem(<betterwithmods:material:39>) // enderslag
    .addFailureItem(<betterwithmods:material:39>*2) // enderslag
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(false)
    .register();
