import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import mods.betterwithaddons.Infuser;
import mods.betterwithmods.Mill;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Saw;
import mods.artisanworktables.builder.RecipeBuilder;

recipes.removeByMod("betterwithaddons");
Infuser.removeAll();

val bwaArray = [
    <betterwithaddons:pcb_block>,
    <betterwithaddons:planks_mulberry>,
    <betterwithaddons:planks_sakura>,
    <betterwithaddons:chandelier>,
    <betterwithaddons:iron_spade>,
    <betterwithaddons:iron_matchpick>,
    <betterwithaddons:diamond_spade>,
    <betterwithaddons:diamond_matchpick>,
    <betterwithaddons:diamond_machete>,
    <betterwithaddons:diamond_carpentersaw>,
    <betterwithaddons:diamond_masonpick>,
    <betterwithaddons:material:4>,
    <betterwithaddons:material:5>,
    <betterwithaddons:food_mushroom_baked>,
    <betterwithaddons:iron_kukri>,
    <betterwithaddons:iron_carpentersaw>,
    <betterwithaddons:iron_masonpick>,
    <betterwithaddons:gold_spade>,
    <betterwithaddons:gold_matchpick>,
    <betterwithaddons:gold_machete>,
    <betterwithaddons:gold_kukri>,
    <betterwithaddons:food_amanita_baked>,
    <betterwithaddons:food_potato_cooked>,
    <betterwithaddons:food_egg_cooked>,
    <betterwithaddons:food_meatballs>,
    <betterwithaddons:food_ground_meat>,
    <betterwithaddons:food_pie_mushroom>,
    <betterwithaddons:food_pie_amanita>,
    <betterwithaddons:food_pie_meat>,
    <betterwithaddons:food_pie_melon>,
    <betterwithaddons:food_cooked_rice>,
    <betterwithaddons:laxative>,
    <betterwithaddons:brick_stained>,
    <betterwithaddons:shinai>,
    <betterwithaddons:japanmat:4>,
    <betterwithaddons:japanmat:1>,
    <betterwithaddons:japanmat>,
    <betterwithaddons:japanmat:35>,
    <betterwithaddons:japanmat:36>,
    <betterwithaddons:helmet_samurai>,
    <betterwithaddons:chest_samurai>,
    <betterwithaddons:legs_samurai>,
    <betterwithaddons:boots_samurai>,
    <betterwithaddons:helmet_paper>,
    <betterwithaddons:chest_paper>,
    <betterwithaddons:legs_paper>,
    <betterwithaddons:boots_paper>,
    <betterwithaddons:decomat:*>,
    <betterwithaddons:tweakmat>,
    <betterwithaddons:unbaked>,
    <betterwithaddons:unbaked:1>,
    <betterwithaddons:unbaked:2>,
    <betterwithaddons:unbaked:3>,
    <betterwithaddons:soulsand_pile>,
    <betterwithaddons:rotten_food>,
    <betterwithaddons:food_sashimi>,
    <betterwithaddons:food_mulberry>,
    <betterwithaddons:food_bowl_rice>,
    <betterwithaddons:food_fugu_sac>,
    <betterwithaddons:iron_machete>,
    <betterwithaddons:gold_carpentersaw>,
    <betterwithaddons:gold_masonpick>,
    <betterwithaddons:diamond_kukri>,
    <betterwithaddons:katana>,
    <betterwithaddons:tanto>,
    <betterwithaddons:yumi>,
    <betterwithaddons:japanmat:2>,
    <betterwithaddons:box>,
    <betterwithaddons:writing_table:*>,
    <betterwithaddons:adobe>,
    <betterwithaddons:ecksie_sapling:*>,
    <betterwithaddons:chute>,
    <betterwithaddons:redstone_emitter>,
    <betterwithaddons:weight_wood>,
    <betterwithaddons:weight_stone>,
    <betterwithaddons:spindle>,
    <betterwithaddons:loom>,
    <betterwithaddons:sapling_mulberry>,
    <betterwithaddons:log_mulberry>,
    <betterwithaddons:sapling_sakura>,
    <betterwithaddons:log_sakura>,
    <betterwithaddons:crop_rush>,
    <betterwithaddons:crop_rice>,
    <betterwithaddons:crop_tea>,
    <betterwithaddons:bamboo>,
    <betterwithaddons:slat>,
    <betterwithaddons:netted_screen>,
    <betterwithaddons:iron_sand>,
    <betterwithaddons:kera>,
    <betterwithaddons:tatara>,
    <betterwithaddons:cherrybox>,
    <betterwithaddons:cherrybox:1>,
    <betterwithaddons:nabe>,
    <betterwithaddons:shoji>,
    <betterwithaddons:fusuma>,
    <betterwithaddons:paper_wall>,
    <betterwithaddons:wood_lamp>,
    <betterwithaddons:pavement>,
    <betterwithaddons:wool:*>,
    <betterwithaddons:salt>,
    <betterwithaddons:brick_stained:*>,
    <betterwithaddons:wakizashi>,
    <betterwithaddons:japanmat:*>,
    <betterwithaddons:teacup>,
    <betterwithaddons:ya>,
    <betterwithaddons:food_carrot_cooked>,
    <betterwithaddons:food_beetroot_cooked>,
    <betterwithaddons:food_pufferfish_prepared>,
    <betterwithaddons:food_pufferfish_cooked>,
    <betterwithaddons:world_scale_ore:*>,
    <betterwithaddons:leaves_mulberry>,
    <betterwithaddons:leaves_sakura>,
    <betterwithaddons:worldshard>,
    <betterwithaddons:world_scale:*>,
    <betterwithaddons:world_scale_active:*>,
    <betterwithaddons:leafpile_sakura>,
    <betterwithaddons:bag:*>,
    <betterwithaddons:legendarium>,
    <betterwithaddons:ancestry_sand>,
    <betterwithaddons:adobe:*>,
    <betterwithaddons:bricks_stained:*>,
    <betterwithaddons:rail_rusted>,
    <betterwithaddons:log_termite:*>,
    <betterwithaddons:inverted_gearbox>,
    <betterwithaddons:monument>,
    <betterwithaddons:artifact_frame>,
    <betterwithaddons:poisoned_ya>,
    <betterwithaddons:crate:*>,
    <betterwithaddons:congealed:2>,
    <betterwithaddons:congealed:3>,
    <betterwithaddons:congealed:5>,
    <betterwithaddons:bolt:*>,
    <betterwithaddons:bundle:*>,
    <betterwithaddons:ink_and_quill>,
    <betterwithaddons:aqueduct:2>,
    <betterwithaddons:aqueduct:3>,
    <betterwithaddons:aqueduct:5>,
    <betterwithaddons:aqueduct:6>,
    <betterwithaddons:aqueduct:7>,
    <betterwithaddons:aqueduct:8>,
    <betterwithaddons:aqueduct:9>,
    <betterwithaddons:aqueduct:10>
] as IItemStack[];

for item in bwaArray {
    JEI.removeAndHide(item);
}

JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "sencha"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "assam"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "nether"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "ceylon"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "white"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "bancha"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "end"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "tencha"}));
JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "gyokuro"}));
JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "sencha"}));
JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "bancha"}));
JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "tencha"}));
JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "gyokuro"}));
JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "assam"}));
JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "nether"}));
JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "ceylon"}));
JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "white"}));
JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "end"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "sencha"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "assam"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "nether"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "ceylon"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "white"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "bancha"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "end"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "tencha"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "gyokuro"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "matcha"}));
JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "houjicha"}));
LootTable.removeGlobalItem("betterwithaddons:food_mulberry");

recipes.remove(<betterwithaddons:material:3>);
recipes.remove(<betterwithaddons:thorn_rose:0>);

JEI.hideCategory("bwa.tatara");
JEI.hideCategory("bwa.firenet");
JEI.hideCategory("bwa.waternet");
JEI.hideCategory("bwa.sandnet");
JEI.hideCategory("bwa.soakingbox");
JEI.hideCategory("bwa.dryingbox");

Mill.remove([<betterwithaddons:food_ground_meat>]);
Cauldron.remove([<betterwithaddons:food_meatballs>]);
Cauldron.remove([<betterwithaddons:pcb_block>]);
Cauldron.remove([<betterwithaddons:wool:0>]);
Cauldron.remove([<betterwithaddons:wool:1>]);
Cauldron.remove([<betterwithaddons:wool:2>]);
Cauldron.remove([<betterwithaddons:wool:3>]);
Cauldron.remove([<betterwithaddons:wool:4>]);
Cauldron.remove([<betterwithaddons:wool:5>]);
Cauldron.remove([<betterwithaddons:wool:6>]);
Cauldron.remove([<betterwithaddons:wool:7>]);
Cauldron.remove([<betterwithaddons:wool:8>]);
Cauldron.remove([<betterwithaddons:wool:9>]);
Cauldron.remove([<betterwithaddons:wool:10>]);
Cauldron.remove([<betterwithaddons:wool:11>]);
Cauldron.remove([<betterwithaddons:wool:12>]);
Cauldron.remove([<betterwithaddons:wool:13>]);
Cauldron.remove([<betterwithaddons:wool:14>]);
Cauldron.remove([<betterwithaddons:wool:15>]);
Cauldron.remove([<betterwithaddons:decomat:1>]);
Cauldron.remove([<betterwithaddons:decomat:2>]);
Cauldron.remove([<betterwithaddons:pavement:0>]);
Saw.remove(<betterwithaddons:planks_sakura>);
Saw.remove(<betterwithmods:moulding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
Saw.remove(<betterwithmods:siding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
Saw.remove(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));

furnace.addRecipe(<betterwithaddons:food_clownfish_cooked>,<minecraft:fish:2>,0.1);
furnace.addRecipe(<betterwithaddons:food_pufferfish_baked>,<minecraft:fish:3>,0.1);
JEI.addItem(<betterwithaddons:greatarrow>);

val wicker = <betterwithmods:wicker>;
val cloth = <harvestcraft:wovencottonitem>;

//Tatami
recipes.addShaped(<betterwithaddons:tatami> * 4, [
    [cloth, cloth, cloth],
    [wicker, wicker, wicker]
]);

var hollowReed = <ore:hollowReed>;

recipes.addShaped("bwa_scaffold", <betterwithaddons:scaffold> * 6, [
    [hollowReed, wicker, hollowReed],
    [hollowReed, null, hollowReed],
    [hollowReed, <randomthings:blockofsticks:0>, hollowReed]
]);

recipes.addShaped("bwa_banner_detector", <betterwithaddons:banner_detector>, [
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<minecraft:item_frame>, <betterwithaddons:block_matcher>, <minecraft:ender_eye>],
    [<ore:stone>, <minecraft:banner:*>, <ore:stone>]
]);

RecipeBuilder.get("mage")
  .setShaped([
    [<ore:stone>, <ore:stone>, <ore:stone>],
    [<minecraft:comparator>, <minecraft:redstone>, <minecraft:comparator>],
    [<ore:stone>, <ore:stone>, <ore:stone>]])
  .addTool(<contenttweaker:balance_rune>, 1)
  .addOutput(<betterwithaddons:block_matcher>)
  .setMinimumTier(1)
  .setMaximumTier(1)
  .create();

//Reed slat
recipes.addShaped(<betterwithaddons:slat> * 8, [
    [<ore:hardReed>, <ore:hardReed>, <ore:hardReed>],
    [null, null, null],
    [<ore:hardReed>, <ore:hardReed>, <ore:hardReed>]
]);


//Aqueducts
recipes.addShaped(<betterwithaddons:aqueduct:4> * 6, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<ore:sandstone>, <ore:sandstone>, <ore:sandstone>]
]);
recipes.addShaped(<betterwithaddons:aqueduct> * 6, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], 
    [<ore:StoneHugeBrick>, <ore:StoneHugeBrick>, <ore:StoneHugeBrick>]
]);
recipes.addShaped(<betterwithaddons:aqueduct:1> * 6, [
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
    [<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], 
    [<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]
]);

//Misc.
recipes.addShapeless(<betterwithaddons:lattice> * 4, [<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>]);
recipes.addShaped(<betterwithaddons:wrought_bars> * 6, [
    [null, null, null],
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], 
    [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]
]);

// Spirit potion. This is TEMPORARY until we can find a way to spawn spirits at night.

recipes.addShaped(<betterwithaddons:ancestry_bottle>, [
    [null, null, null],
    [null, <minecraft:glass_bottle>, null], 
    [<nyx:fallen_star>, <quark:soul_powder>, <contenttweaker:vis_sliver>]
]);

//INFUSER
recipes.addShaped(<betterwithaddons:ancestry_infuser>, [
    [<contenttweaker:vis_speck>, <betterwithaddons:ancestry_bottle>, <contenttweaker:vis_speck>],
    [<minecraft:gold_ingot>, <minecraft:carpet:10>, <minecraft:gold_ingot>], 
    [<minecraft:obsidian>, <minecraft:obsidian>, <minecraft:obsidian>]
]);

Infuser.addShaped(<betterwithaddons:greatarrow_lightning>*8,[
    [<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>],
    [<betterwithaddons:greatarrow>,<rats:charged_creeper_chunk>,<betterwithaddons:greatarrow>],
    [<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>]
], 0);

Infuser.addShapeless(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}),[<spartanweaponry:katana_wood>, <simpleores:onyx_rod>], 24);

//White stone
recipes.addShaped(<betterwithaddons:whitebrick> * 4, [
    [<betterwithmods:aesthetic:6>,<betterwithmods:aesthetic:6>],
    [<betterwithmods:aesthetic:6>,<betterwithmods:aesthetic:6>]
]);
furnace.addRecipe(<betterwithaddons:whitebrick>, <betterwithaddons:whitebrick:2>);
