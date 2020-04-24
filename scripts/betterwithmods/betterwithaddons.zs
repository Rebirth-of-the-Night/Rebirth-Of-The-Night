import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.removeByMod("betterwithaddons");
mods.betterwithaddons.Infuser.removeAll();

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
<betterwithaddons:leafpile_sakura>
] as IItemStack[];

for item in bwaArray {
    mods.jei.JEI.removeAndHide(item);
}

mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "sencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "assam"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "nether"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "ceylon"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "white"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "bancha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "end"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "tencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_leaves>.withTag({type: "gyokuro"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "sencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "bancha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "tencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_soaked>.withTag({type: "gyokuro"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "assam"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "nether"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "ceylon"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "white"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_wilted>.withTag({type: "end"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "sencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "assam"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "nether"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "ceylon"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "white"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "bancha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "end"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "tencha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "gyokuro"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "matcha"}));
mods.jei.JEI.removeAndHide(<betterwithaddons:tea_powder>.withTag({type: "houjicha"}));
mods.ltt.LootTable.removeGlobalItem("betterwithaddons:food_mulberry");

recipes.remove(<betterwithaddons:material:3>);
recipes.remove(<betterwithaddons:thorn_rose:0>);

mods.jei.JEI.hideCategory("bwa.tatara");
mods.jei.JEI.hideCategory("bwa.firenet");
mods.jei.JEI.hideCategory("bwa.waternet");
mods.jei.JEI.hideCategory("bwa.sandnet");
mods.jei.JEI.hideCategory("bwa.soakingbox");
mods.jei.JEI.hideCategory("bwa.dryingbox");

mods.betterwithmods.Mill.remove([<betterwithaddons:food_ground_meat>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:food_meatballs>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:pcb_block>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:0>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:1>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:2>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:3>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:4>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:5>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:6>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:7>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:8>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:9>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:10>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:11>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:12>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:13>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:14>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:wool:15>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:decomat:1>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:decomat:2>]);
mods.betterwithmods.Cauldron.remove([<betterwithaddons:pavement:0>]);
mods.betterwithmods.Saw.remove(<betterwithaddons:planks_sakura>);
mods.betterwithmods.Saw.remove(<betterwithmods:moulding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
mods.betterwithmods.Saw.remove(<betterwithmods:siding_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));
mods.betterwithmods.Saw.remove(<betterwithmods:corner_wood>.withTag({texture: {Name: "betterwithaddons:planks_sakura"}}));

furnace.addRecipe(<betterwithaddons:food_clownfish_cooked>,<minecraft:fish:2>,0.1);
furnace.addRecipe(<betterwithaddons:food_pufferfish_baked>,<minecraft:fish:3>,0.1);
mods.jei.JEI.addItem(<betterwithaddons:greatarrow>);

//Aqueducts
recipes.addShaped(<betterwithaddons:aqueduct:4> * 6, [
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<ore:sandstone>, <ore:sandstone>, <ore:sandstone>]]
);
recipes.addShaped(<betterwithaddons:aqueduct> * 6, [
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], 
[<ore:StoneHugeBrick>, <ore:StoneHugeBrick>, <ore:StoneHugeBrick>]]
);
recipes.addShaped(<betterwithaddons:aqueduct:1> * 6, 
[[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>],
[<minecraft:clay_ball>, <minecraft:clay_ball>, <minecraft:clay_ball>], 
[<minecraft:brick_block>, <minecraft:brick_block>, <minecraft:brick_block>]]
);

//Misc.
recipes.addShapeless(<betterwithaddons:lattice> * 4, [<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>]);
recipes.addShaped(<betterwithaddons:wrought_bars> * 6, [[null, null, null],[<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>], [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>]]);

// Spirit potion. This is TEMPORARY until we can find a way to spawn spirits at night.

recipes.addShaped(<betterwithaddons:ancestry_bottle>, [[null, null, null],[null, <minecraft:glass_bottle>, null], [<nyx:fallen_star>, <quark:soul_powder>, <bountifulbaubles:spectralsilt>]]);

//INFUSER
recipes.addShaped(<betterwithaddons:ancestry_infuser>, [
[<betternether:cincinnasite>, <contenttweaker:soul_orb>, <betternether:cincinnasite>],
[<bountifulbaubles:spectralsilt>, <minecraft:carpet:10>, <bountifulbaubles:spectralsilt>], 
[<betternether:cincinnasite>, <minecraft:enchanting_table>, <betternether:cincinnasite>]]);

mods.betterwithaddons.Infuser.addShaped(<betterwithaddons:greatarrow_lightning>*8,[
[<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>],
[<betterwithaddons:greatarrow>,<rats:charged_creeper_chunk>,<betterwithaddons:greatarrow>],
[<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>,<betterwithaddons:greatarrow>]], 0);

mods.betterwithaddons.Infuser.addShapeless(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}),[<spartanweaponry:katana_wood>, <simpleores:onyx_rod>], 24);

//White stone
recipes.addShaped(<betterwithaddons:whitebrick> * 4, [
    [<betterwithmods:aesthetic:6>,<betterwithmods:aesthetic:6>],
    [<betterwithmods:aesthetic:6>,<betterwithmods:aesthetic:6>]
]);
furnace.addRecipe(<betterwithaddons:whitebrick>, <betterwithaddons:whitebrick:2>);