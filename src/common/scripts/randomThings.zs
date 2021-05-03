import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


//#########randomthings:endermailbox -> need new recipe
//#########randomthings:blockofsticks
//#########randomthings:diaphanousblock   -> FOR RECURRENT COMPLEX USE ONLY
//#########randomthings:spectresapling   -> need to remove vanilla saplings from loot
//#########randomthings:dungeonchestgenerator
//#########randomthings:weatheregg
//#########randomthings:spectreanchor-> for expert
//#########randomthings:spectresword -> new recipe


//Removed items
JEI.removeAndHide(<randomthings:diaphanousblock>);
JEI.removeAndHide(<randomthings:enderanchor>);
//EVENTUAL UPGRADE TO EVER-FERTILE SOIL FOR DRUIDS N SHIT (some serious magic goin in here) - IT IS IDENTICAL TO EVER FERTILE SOIL BUT ALSO INCREASES CROP GROWTH 3X
JEI.removeAndHide(<randomthings:fertilizeddirt>);  
JEI.removeAndHide(<randomthings:dungeonchestgenerator>);  
JEI.removeAndHide(<randomthings:fertilizeddirttilled>); 
JEI.removeAndHide(<randomthings:playerinterface>); 
JEI.removeAndHide(<randomthings:creativeplayerinterface>);
JEI.removeAndHide(<randomthings:lapisglass>);
JEI.removeAndHide(<randomthings:lapislamp>);
JEI.removeAndHide(<randomthings:onlinedetector>);
JEI.removeAndHide(<randomthings:chatdetector>);
JEI.removeAndHide(<randomthings:enderbridge>);
JEI.removeAndHide(<randomthings:prismarineenderbridge>);
JEI.removeAndHide(<randomthings:beanstalk>);
JEI.removeAndHide(<randomthings:lesserbeanstalk>);
JEI.removeAndHide(<randomthings:beanpod>);
JEI.removeAndHide(<randomthings:lightredirector>);
JEI.removeAndHide(<randomthings:imbuingstation>);
JEI.removeAndHide(<randomthings:specialchest>);
JEI.removeAndHide(<randomthings:analogemitter>);
JEI.removeAndHide(<randomthings:fluiddisplay>);
JEI.removeAndHide(<randomthings:pitcherplant>);
JEI.removeAndHide(<randomthings:quartzglass>);
JEI.removeAndHide(<randomthings:entitydetector>);
JEI.removeAndHide(<randomthings:voxelprojector>);
JEI.removeAndHide(<randomthings:sakanade>);
JEI.removeAndHide(<randomthings:rainshield>);
JEI.removeAndHide(<randomthings:blockbreaker>);
JEI.removeAndHide(<randomthings:superlubricentice>);
JEI.removeAndHide(<randomthings:superlubricentplatform>);
JEI.removeAndHide(<randomthings:filteredsuperlubricentplatform>);
JEI.removeAndHide(<randomthings:redstoneobserver>);
JEI.removeAndHide(<randomthings:biomeradar>);
JEI.removeAndHide(<randomthings:irondropper>);
JEI.removeAndHide(<randomthings:igniter>);
JEI.removeAndHide(<randomthings:blazingfire>);
JEI.removeAndHide(<randomthings:inventoryrerouter>);
JEI.removeAndHide(<randomthings:slimecube>);
JEI.removeAndHide(<randomthings:peacecandle>);
JEI.removeAndHide(<randomthings:notificationinterface>);
JEI.removeAndHide(<randomthings:glowingmushroom>);
JEI.removeAndHide(<randomthings:inventorytester>);
JEI.removeAndHide(<randomthings:superlubricentstone>);
JEI.removeAndHide(<randomthings:globalchatdetector>);
JEI.removeAndHide(<randomthings:triggerglass>);
JEI.removeAndHide(<randomthings:blockdestabilizer>);
JEI.removeAndHide(<randomthings:lotus>);
JEI.removeAndHide(<randomthings:soundbox>);
JEI.removeAndHide(<randomthings:sounddampener>);
JEI.removeAndHide(<randomthings:spectreenergyinjector>);
JEI.removeAndHide(<randomthings:plate_processing>);
JEI.removeAndHide(<randomthings:spectrecoil_normal>);
JEI.removeAndHide(<randomthings:spectrecoil_redstone>);
JEI.removeAndHide(<randomthings:spectrecoil_ender>);
JEI.removeAndHide(<randomthings:spectrecoil_number>);
JEI.removeAndHide(<randomthings:spectrecoil_genesis>);
JEI.removeAndHide(<randomthings:advancedredstonerepeater>);
JEI.removeAndHide(<randomthings:advancedredstonetorch_on>);
JEI.removeAndHide(<randomthings:floobrick>);
JEI.removeAndHide(<randomthings:spectreplank>);
JEI.removeAndHide(<randomthings:spectresapling>);
JEI.removeAndHide(<randomthings:spectrelog>);
JEI.removeAndHide(<randomthings:spectreleaf>);
JEI.removeAndHide(<randomthings:advanceditemcollector>);
JEI.removeAndHide(<randomthings:itemcollector>);
JEI.removeAndHide(<randomthings:naturecore>);
JEI.removeAndHide(<randomthings:biomeglass>);
JEI.removeAndHide(<randomthings:spectrecore>);
JEI.removeAndHide(<randomthings:rainbowlamp>);
JEI.removeAndHide(<randomthings:basicredstoneinterface>);
JEI.removeAndHide(<randomthings:advancedredstoneinterface>);
JEI.removeAndHide(<randomthings:stainedbrick>);
JEI.removeAndHide(<randomthings:luminousstainedbrick:*>);
JEI.removeAndHide(<randomthings:plate_redirector>);
JEI.removeAndHide(<randomthings:plate_filteredredirector>);
JEI.removeAndHide(<randomthings:plate_redstone>);
JEI.removeAndHide(<randomthings:plate_corrector>);
JEI.removeAndHide(<randomthings:plate_itemsealer>);
JEI.removeAndHide(<randomthings:plate_itemrejuvenator>);
JEI.removeAndHide(<randomthings:plate_accelerator>);
JEI.removeAndHide(<randomthings:plate_accelerator_directional>);
JEI.removeAndHide(<randomthings:plate_bouncy>);
JEI.removeAndHide(<randomthings:plate_collection>);
JEI.removeAndHide(<randomthings:plate_extraction>);
JEI.removeAndHide(<randomthings:stableenderpearl>);
JEI.removeAndHide(<randomthings:biomecrystal>);
JEI.removeAndHide(<randomthings:positionfilter>);
JEI.removeAndHide(<randomthings:summoningpendulum>);
JEI.removeAndHide(<randomthings:beanstew>);
JEI.removeAndHide(<randomthings:imbue>);
JEI.removeAndHide(<randomthings:rezstone>);
JEI.removeAndHide(<randomthings:entityfilter>);
//JEI.removeAndHide(<randomthings:ingredient>);
JEI.removeAndHide(<randomthings:itemfilter>);
JEI.removeAndHide(<randomthings:redstoneremote>);
JEI.removeAndHide(<randomthings:goldencompass>);
JEI.removeAndHide(<randomthings:blazeandsteel>);
JEI.removeAndHide(<randomthings:superlubricentboots>);
JEI.removeAndHide(<randomthings:floosign>);
JEI.removeAndHide(<randomthings:idcard>);
JEI.removeAndHide(<randomthings:emeraldcompass>);
JEI.removeAndHide(<randomthings:flootoken>);
JEI.removeAndHide(<randomthings:portkey>);
JEI.removeAndHide(<randomthings:lotusseeds>);
JEI.removeAndHide(<randomthings:soundpattern>);
JEI.removeAndHide(<randomthings:soundrecorder>);
JEI.removeAndHide(<randomthings:portablesounddampener>);
JEI.removeAndHide(<randomthings:escaperope>);
JEI.removeAndHide(<randomthings:enderbucket>);
JEI.removeAndHide(<randomthings:reinforcedenderbucket>);
JEI.removeAndHide(<randomthings:chunkanalyzer>);
JEI.removeAndHide(<randomthings:floopouch>);
JEI.removeAndHide(<randomthings:timeinabottle>);
//// literally end game crafting item, Core of Brilliance or something. in the future after final TF boss
JEI.removeAndHide(<randomthings:spectreilluminator>);
JEI.removeAndHide(<randomthings:eclipsedclock>);
JEI.removeAndHide(<randomthings:spectrekey>);
JEI.removeAndHide(<randomthings:spectrepickaxe>);
JEI.removeAndHide(<randomthings:spectreaxe>);
JEI.removeAndHide(<randomthings:spectreshovel>);
JEI.removeAndHide(<randomthings:spectreanchor>);
JEI.removeAndHide(<randomthings:obsidianskull>);
JEI.removeAndHide(<randomthings:redstonetool>);
///cool bedrock equivalent
JEI.removeAndHide(<randomthings:spectreblock>);

/// these will require some hefty magical item investment and crafting in the future
JEI.removeAndHide(<randomthings:lavawader>);
JEI.removeAndHide(<randomthings:waterwalkingboots>);
JEI.removeAndHide(<randomthings:obsidianwaterwalkingboots>);
LootTable.removeGlobalItem("randomthings:lavacharm");
LootTable.removeGlobalItem("randomthings:waterwalkingboots");



JEI.removeAndHide(<randomthings:customworkbench:*>);
JEI.removeAndHide(<randomthings:beans:*>);
JEI.removeAndHide(<randomthings:grassseeds:*>);
JEI.removeAndHide(<randomthings:spectrecharger:*>);
JEI.removeAndHide(<randomthings:platform:*>);
JEI.removeAndHide(<randomthings:coloredgrass:*>);
JEI.removeAndHide(<randomthings:biomestone:*>);
JEI.removeAndHide(<randomthings:diviningrod:*>);
JEI.removeAndHide(<randomthings:luminousstainedbrick:*>);
JEI.removeAndHide(<randomthings:luminousblock:*>);
JEI.removeAndHide(<randomthings:translucentluminousblock:*>);
JEI.removeAndHide(<randomthings:ingredient:0>);
JEI.removeAndHide(<randomthings:ingredient:1>);
JEI.removeAndHide(<randomthings:ingredient:4>);
JEI.removeAndHide(<randomthings:ingredient:6>);
JEI.removeAndHide(<randomthings:ingredient:7>);
JEI.removeAndHide(<randomthings:ingredient:8>);
JEI.removeAndHide(<randomthings:ingredient:9>);
JEI.removeAndHide(<randomthings:ingredient:10>);
JEI.removeAndHide(<randomthings:ingredient:11>);
JEI.removeAndHide(<randomthings:ingredient:12>);
/// for use with spectre illuminator
JEI.removeAndHide(<randomthings:ingredient:13>);


//// new recipes

//vaporizer
recipes.remove(<randomthings:potionvaporizer>);
recipes.addShaped("potion_vaporizer", <randomthings:potionvaporizer>, [
    [<ore:Stone>, <cyclicmagic:fluid_pump>, <ore:Stone>],
    [<rustic:retort_advanced>, <pyrotech:igniter:1>, <rustic:retort_advanced>], 
    [<dungeontactics:fan_block>, <minecraft:dispenser>, <dungeontactics:fan_block>]
]);

// contact blocks
recipes.remove(<randomthings:contactlever>);
recipes.remove(<randomthings:contactbutton>);
recipes.addShaped(<randomthings:contactlever>, [[<ore:Stone>, <minecraft:iron_bars>, <ore:Stone>],[<ore:Stone>, <minecraft:lever>, <ore:Stone>], [<ore:Stone>, <betterwithmods:detector>, <ore:Stone>]]);
recipes.addShaped(<randomthings:contactbutton>, [[<ore:Stone>, <minecraft:iron_bars>, <ore:Stone>],[<ore:Stone>, <minecraft:stone_button>, <ore:Stone>], [<ore:Stone>, <betterwithmods:detector>, <ore:Stone>]]);

//quartz / dusk lamp
recipes.remove(<randomthings:quartzlamp>);
RecipeBuilder.get("mage")
  .setShaped([
    [<arcanearchives:raw_quartz>, <simpleores:onyx_gem>, <arcanearchives:raw_quartz>],
    [<betternether:quartz_stained_glass_framed:15>, <minecraft:redstone_lamp>, <betternether:quartz_stained_glass_framed:15>], 
    [<arcanearchives:raw_quartz>, <betternether:quartz_stained_glass_framed:15>, <arcanearchives:raw_quartz>]])
  .addTool(<contenttweaker:illusion_rune>, 1)
  .addOutput(<randomthings:quartzlamp>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

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
recipes.addShaped("spectre_lens",<randomthings:spectrelens>, [
  [<randomthings:ingredient:3>,<minecraft:emerald>,<randomthings:ingredient:3>],
  [<ore:ingotableGem>,<ore:blockGlass>,<ore:ingotableGem>],
  [<randomthings:ingredient:3>,<minecraft:emerald>,<randomthings:ingredient:3>]
]);

// magic hood/flower crown
recipes.addShaped("flower_crown", <randomthings:magichood>, [
  [<ore:flower>, <ore:flower>, <ore:flower>],
  [<pyrotech:material:12>, <ore:stickWood>, <pyrotech:material:12>]
]);
