import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//#########randomthings:endermailbox -> need new recipe
//#########randomthings:quartzlamp   -> need new recipe
//#########randomthings:blockofsticks
//#########randomthings:diaphanousblock   -> FOR RECURRENT COMPLEX USE ONLY
//#########randomthings:spectresapling   -> need to remove vanilla saplings from loot
//#########randomthings:itemcollector -> new recipe
//#########randomthings:dungeonchestgenerator
//#########randomthings:weatheregg
//#########randomthings:spectreanchor-> for expert
//#########randomthings:spectresword -> new recipe


//Removed items
mods.jei.JEI.removeAndHide(<randomthings:diaphanousblock>);
mods.jei.JEI.removeAndHide(<randomthings:enderanchor>);
//EVENTUAL UPGRADE TO EVER-FERTILE SOIL FOR DRUIDS N SHIT (some serious magic goin in here) - IT IS IDENTICAL TO EVER FERTILE SOIL BUT ALSO INCREASES CROP GROWTH 3X
mods.jei.JEI.removeAndHide(<randomthings:fertilizeddirt>);  
mods.jei.JEI.removeAndHide(<randomthings:dungeonchestgenerator>);  
mods.jei.JEI.removeAndHide(<randomthings:fertilizeddirttilled>); 
mods.jei.JEI.removeAndHide(<randomthings:playerinterface>); 
mods.jei.JEI.removeAndHide(<randomthings:creativeplayerinterface>);
mods.jei.JEI.removeAndHide(<randomthings:lapisglass>);
mods.jei.JEI.removeAndHide(<randomthings:lapislamp>);
mods.jei.JEI.removeAndHide(<randomthings:onlinedetector>);
mods.jei.JEI.removeAndHide(<randomthings:chatdetector>);
mods.jei.JEI.removeAndHide(<randomthings:enderbridge>);
mods.jei.JEI.removeAndHide(<randomthings:prismarineenderbridge>);
mods.jei.JEI.removeAndHide(<randomthings:beanstalk>);
mods.jei.JEI.removeAndHide(<randomthings:lesserbeanstalk>);
mods.jei.JEI.removeAndHide(<randomthings:beanpod>);
mods.jei.JEI.removeAndHide(<randomthings:lightredirector>);
mods.jei.JEI.removeAndHide(<randomthings:imbuingstation>);
mods.jei.JEI.removeAndHide(<randomthings:specialchest>);
mods.jei.JEI.removeAndHide(<randomthings:analogemitter>);
mods.jei.JEI.removeAndHide(<randomthings:fluiddisplay>);
mods.jei.JEI.removeAndHide(<randomthings:pitcherplant>);
mods.jei.JEI.removeAndHide(<randomthings:quartzglass>);
mods.jei.JEI.removeAndHide(<randomthings:entitydetector>);
mods.jei.JEI.removeAndHide(<randomthings:voxelprojector>);
mods.jei.JEI.removeAndHide(<randomthings:sakanade>);
mods.jei.JEI.removeAndHide(<randomthings:rainshield>);
mods.jei.JEI.removeAndHide(<randomthings:blockbreaker>);
mods.jei.JEI.removeAndHide(<randomthings:superlubricentice>);
mods.jei.JEI.removeAndHide(<randomthings:superlubricentplatform>);
mods.jei.JEI.removeAndHide(<randomthings:filteredsuperlubricentplatform>);
mods.jei.JEI.removeAndHide(<randomthings:redstoneobserver>);
mods.jei.JEI.removeAndHide(<randomthings:biomeradar>);
mods.jei.JEI.removeAndHide(<randomthings:irondropper>);
mods.jei.JEI.removeAndHide(<randomthings:igniter>);
mods.jei.JEI.removeAndHide(<randomthings:blazingfire>);
mods.jei.JEI.removeAndHide(<randomthings:inventoryrerouter>);
mods.jei.JEI.removeAndHide(<randomthings:slimecube>);
mods.jei.JEI.removeAndHide(<randomthings:peacecandle>);
mods.jei.JEI.removeAndHide(<randomthings:notificationinterface>);
mods.jei.JEI.removeAndHide(<randomthings:glowingmushroom>);
mods.jei.JEI.removeAndHide(<randomthings:inventorytester>);
mods.jei.JEI.removeAndHide(<randomthings:superlubricentstone>);
mods.jei.JEI.removeAndHide(<randomthings:globalchatdetector>);
mods.jei.JEI.removeAndHide(<randomthings:triggerglass>);
mods.jei.JEI.removeAndHide(<randomthings:blockdestabilizer>);
mods.jei.JEI.removeAndHide(<randomthings:lotus>);
mods.jei.JEI.removeAndHide(<randomthings:soundbox>);
mods.jei.JEI.removeAndHide(<randomthings:sounddampener>);
mods.jei.JEI.removeAndHide(<randomthings:spectreenergyinjector>);
mods.jei.JEI.removeAndHide(<randomthings:plate_processing>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_normal>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_redstone>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_ender>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_number>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecoil_genesis>);
mods.jei.JEI.removeAndHide(<randomthings:advancedredstonerepeater>);
mods.jei.JEI.removeAndHide(<randomthings:advancedredstonetorch_on>);
mods.jei.JEI.removeAndHide(<randomthings:floobrick>);
mods.jei.JEI.removeAndHide(<randomthings:spectreplank>);
mods.jei.JEI.removeAndHide(<randomthings:spectresapling>);
mods.jei.JEI.removeAndHide(<randomthings:spectrelog>);
mods.jei.JEI.removeAndHide(<randomthings:spectreleaf>);
mods.jei.JEI.removeAndHide(<randomthings:advanceditemcollector>);
mods.jei.JEI.removeAndHide(<randomthings:naturecore>);
mods.jei.JEI.removeAndHide(<randomthings:biomeglass>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecore>);
mods.jei.JEI.removeAndHide(<randomthings:rainbowlamp>);
mods.jei.JEI.removeAndHide(<randomthings:basicredstoneinterface>);
mods.jei.JEI.removeAndHide(<randomthings:advancedredstoneinterface>);
mods.jei.JEI.removeAndHide(<randomthings:stainedbrick>);
mods.jei.JEI.removeAndHide(<randomthings:luminousstainedbrick:*>);
mods.jei.JEI.removeAndHide(<randomthings:plate_redirector>);
mods.jei.JEI.removeAndHide(<randomthings:plate_filteredredirector>);
mods.jei.JEI.removeAndHide(<randomthings:plate_redstone>);
mods.jei.JEI.removeAndHide(<randomthings:plate_corrector>);
mods.jei.JEI.removeAndHide(<randomthings:plate_itemsealer>);
mods.jei.JEI.removeAndHide(<randomthings:plate_itemrejuvenator>);
mods.jei.JEI.removeAndHide(<randomthings:plate_accelerator>);
mods.jei.JEI.removeAndHide(<randomthings:plate_accelerator_directional>);
mods.jei.JEI.removeAndHide(<randomthings:plate_bouncy>);
mods.jei.JEI.removeAndHide(<randomthings:plate_collection>);
mods.jei.JEI.removeAndHide(<randomthings:plate_extraction>);
mods.jei.JEI.removeAndHide(<randomthings:stableenderpearl>);
mods.jei.JEI.removeAndHide(<randomthings:biomecrystal>);
mods.jei.JEI.removeAndHide(<randomthings:positionfilter>);
mods.jei.JEI.removeAndHide(<randomthings:summoningpendulum>);
mods.jei.JEI.removeAndHide(<randomthings:beanstew>);
mods.jei.JEI.removeAndHide(<randomthings:imbue>);
mods.jei.JEI.removeAndHide(<randomthings:rezstone>);
mods.jei.JEI.removeAndHide(<randomthings:entityfilter>);
//mods.jei.JEI.removeAndHide(<randomthings:ingredient>);
mods.jei.JEI.removeAndHide(<randomthings:itemfilter>);
mods.jei.JEI.removeAndHide(<randomthings:redstoneremote>);
mods.jei.JEI.removeAndHide(<randomthings:goldencompass>);
mods.jei.JEI.removeAndHide(<randomthings:blazeandsteel>);
mods.jei.JEI.removeAndHide(<randomthings:superlubricentboots>);
mods.jei.JEI.removeAndHide(<randomthings:floosign>);
mods.jei.JEI.removeAndHide(<randomthings:idcard>);
mods.jei.JEI.removeAndHide(<randomthings:emeraldcompass>);
mods.jei.JEI.removeAndHide(<randomthings:flootoken>);
mods.jei.JEI.removeAndHide(<randomthings:portkey>);
mods.jei.JEI.removeAndHide(<randomthings:lotusseeds>);
mods.jei.JEI.removeAndHide(<randomthings:soundpattern>);
mods.jei.JEI.removeAndHide(<randomthings:soundrecorder>);
mods.jei.JEI.removeAndHide(<randomthings:portablesounddampener>);
mods.jei.JEI.removeAndHide(<randomthings:escaperope>);
mods.jei.JEI.removeAndHide(<randomthings:enderbucket>);
mods.jei.JEI.removeAndHide(<randomthings:reinforcedenderbucket>);
mods.jei.JEI.removeAndHide(<randomthings:chunkanalyzer>);
mods.jei.JEI.removeAndHide(<randomthings:floopouch>);
mods.jei.JEI.removeAndHide(<randomthings:timeinabottle>);
//// literally end game crafting item, Core of Brilliance or something. in the future after final TF boss
mods.jei.JEI.removeAndHide(<randomthings:spectreilluminator>);
mods.jei.JEI.removeAndHide(<randomthings:eclipsedclock>);
mods.jei.JEI.removeAndHide(<randomthings:spectrekey>);
mods.jei.JEI.removeAndHide(<randomthings:spectrepickaxe>);
mods.jei.JEI.removeAndHide(<randomthings:spectreaxe>);
mods.jei.JEI.removeAndHide(<randomthings:spectreshovel>);
mods.jei.JEI.removeAndHide(<randomthings:spectreanchor>);
mods.jei.JEI.removeAndHide(<randomthings:obsidianskull>);
mods.jei.JEI.removeAndHide(<randomthings:redstonetool>);
///cool bedrock equivalent
mods.jei.JEI.removeAndHide(<randomthings:spectreblock>);

/// these will require some hefty magical item investment and crafting in the future
mods.jei.JEI.removeAndHide(<randomthings:lavawader>);
mods.jei.JEI.removeAndHide(<randomthings:waterwalkingboots>);
mods.jei.JEI.removeAndHide(<randomthings:obsidianwaterwalkingboots>);
mods.ltt.LootTable.removeGlobalItem("randomthings:lavacharm");
mods.ltt.LootTable.removeGlobalItem("randomthings:waterwalkingboots");



mods.jei.JEI.removeAndHide(<randomthings:customworkbench:*>);
mods.jei.JEI.removeAndHide(<randomthings:beans:*>);
mods.jei.JEI.removeAndHide(<randomthings:grassseeds:*>);
mods.jei.JEI.removeAndHide(<randomthings:spectrecharger:*>);
mods.jei.JEI.removeAndHide(<randomthings:platform:*>);
mods.jei.JEI.removeAndHide(<randomthings:coloredgrass:*>);
mods.jei.JEI.removeAndHide(<randomthings:biomestone:*>);
mods.jei.JEI.removeAndHide(<randomthings:diviningrod:*>);
mods.jei.JEI.removeAndHide(<randomthings:luminousstainedbrick:*>);
mods.jei.JEI.removeAndHide(<randomthings:luminousblock:*>);
mods.jei.JEI.removeAndHide(<randomthings:translucentluminousblock:*>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:0>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:1>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:4>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:6>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:7>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:8>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:9>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:10>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:11>);
mods.jei.JEI.removeAndHide(<randomthings:ingredient:12>);
/// for use with spectre illuminator
mods.jei.JEI.removeAndHide(<randomthings:ingredient:13>);


//// new recipes

//vaporizer
recipes.remove(<randomthings:potionvaporizer>);
recipes.addShaped(<randomthings:potionvaporizer>, [[<ore:Stone>, <cyclicmagic:fluid_pump>, <ore:Stone>],[<rustic:retort_advanced>, <pyrotech:igniter:1>, <rustic:retort_advanced>], [<dungeontactics:fan_block>, <minecraft:dispenser>, <dungeontactics:fan_block>]]);

//contact blocks
recipes.remove(<randomthings:contactlever>);
recipes.remove(<randomthings:contactbutton>);
recipes.addShaped(<randomthings:contactlever>, [[<ore:Stone>, <minecraft:iron_bars>, <ore:Stone>],[<ore:Stone>, <minecraft:lever>, <ore:Stone>], [<ore:Stone>, <betterwithmods:detector>, <ore:Stone>]]);
recipes.addShaped(<randomthings:contactbutton>, [[<ore:Stone>, <minecraft:iron_bars>, <ore:Stone>],[<ore:Stone>, <minecraft:stone_button>, <ore:Stone>], [<ore:Stone>, <betterwithmods:detector>, <ore:Stone>]]);

//quartz / dusk lamp
recipes.remove(<randomthings:quartzlamp>);
recipes.addShaped(<randomthings:quartzlamp>, [[<arcanearchives:raw_quartz>, <contenttweaker:illusion_orb>, <arcanearchives:raw_quartz>],[<betternether:quartz_glass_framed:15>, <minecraft:redstone_lamp>, <betternether:quartz_glass_framed:15>], [<arcanearchives:raw_quartz>, <betternether:quartz_glass_framed:15>, <arcanearchives:raw_quartz>]]);

//obsidian ring
recipes.remove(<randomthings:obsidianskullring>);
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_sliver>, <contenttweaker:fireetched_onyx>, <contenttweaker:vis_sliver>],
    [<endreborn:item_shard_obsidian>, <ore:inertRing>, <endreborn:item_shard_obsidian>],
    [<contenttweaker:vis_sliver>, <endreborn:item_shard_obsidian>, <contenttweaker:vis_sliver>]])
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(<randomthings:obsidianskullring>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//lava charm 
recipes.remove(<randomthings:lavacharm>);
RecipeBuilder.get("mage")
  .setShaped([
    [<contenttweaker:vis_shard>, <contenttweaker:draconium>, <contenttweaker:vis_shard>],
    [<endreborn:block_end_magma>, <ore:inertRing>, <endreborn:block_end_magma>],
    [<contenttweaker:vis_shard>, <endreborn:block_end_magma>, <contenttweaker:vis_shard>]])
  .addTool(<contenttweaker:nether_rune>, 1)
  .addOutput(<randomthings:lavacharm>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();


recipes.removeShapeless(<randomthings:ingredient:5>, []);
recipes.remove(<randomthings:ingredient:5>);
recipes.addShapeless(<randomthings:ingredient:5> * 4, [<minecraft:glowstone_dust>,<betterwithaddons:wheatmat>]);

//dyeing machine / Prismatic Infuser
recipes.remove(<randomthings:dyeingmachine>);
recipes.addShaped(<randomthings:dyeingmachine>, [[<arcanearchives:shaped_quartz>, <quark:rune:16>, <arcanearchives:shaped_quartz>],[<quark:rune:16>, <arcanearchives:storage_shaped_quartz>, <quark:rune:16>], [<arcanearchives:shaped_quartz>, <quark:rune:16>, <arcanearchives:shaped_quartz>]]);

//redstone activator
recipes.remove(<randomthings:redstoneactivator>);
recipes.addShaped(<randomthings:redstoneactivator>, [[<dungeontactics:steel_ingot>, <minecraft:redstone_torch>, <dungeontactics:steel_ingot>],[<dungeontactics:steel_ingot>, <quark:redstone_inductor>, <dungeontactics:steel_ingot>], [<dungeontactics:steel_ingot>, <dungeontactics:steel_ingot>, <dungeontactics:steel_ingot>]]);

//spectre lens
recipes.remove(<randomthings:spectrelens>);
recipes.addShaped("spectre_lens",<randomthings:spectrelens>,[
  [<randomthings:ingredient:3>,<minecraft:emerald>,<randomthings:ingredient:3>],
  [<ore:ingotableGem>,<ore:blockGlass>,<ore:ingotableGem>],
  [<randomthings:ingredient:3>,<minecraft:emerald>,<randomthings:ingredient:3>]
]);