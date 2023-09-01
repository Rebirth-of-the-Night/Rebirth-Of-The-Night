#priority 1000

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import mods.ltt.LootTable;
import mods.betterwithaddons.Infuser;
import mods.betterwithmods.Mill;
import mods.betterwithmods.MiniBlocks;
import mods.betterwithmods.Cauldron;
import mods.betterwithmods.Saw;
import mods.artisanworktables.builder.RecipeBuilder;

import scripts.shared.utils.recipeUtils.metaArray;
import scripts.shared.utils.recipeUtils.removeRecipeArrayRegex;

	// original array, has been shortened a bit
val bwaArray = [
    <betterwithaddons:pcb_block>,
    <betterwithaddons:chandelier>,
    <betterwithaddons:material:4>,
    <betterwithaddons:material:5>,
    <betterwithaddons:laxative>,
    <betterwithaddons:brick_stained>,
    <betterwithaddons:shinai>,
    <betterwithaddons:japanmat:4>,
    <betterwithaddons:japanmat:1>,
    <betterwithaddons:japanmat>,
    <betterwithaddons:japanmat:35>,
    <betterwithaddons:japanmat:36>,
    <betterwithaddons:decomat:1>,
    <betterwithaddons:decomat:2>,
    <betterwithaddons:tweakmat>,
    <betterwithaddons:rotten_food>,
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
    <betterwithaddons:bamboo>,
    <betterwithaddons:slat>,
    <betterwithaddons:netted_screen>,
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
    <betterwithaddons:leafpile_sakura>,
    <betterwithaddons:bag:*>,
    <betterwithaddons:legendarium>,
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

var bwa = "betterwithaddons";
recipes.removeByMod(bwa);
Infuser.removeAll();

for item in bwaArray {
    JEI.removeAndHide(item);
}

	// explanation for below, cuz i know regex is hard to read
	// (a|b|c) gets anything that matches one of those three
	// (?!a|b|c).* gets everything except items matching those three
val regexArray = [
	"(iron|diamond|gold).*",
	".*(paper|samurai)",
	"food_(?!carrot_baked|beetroot_baked|clownfish_cooked|pufferfish_baked|mulberry).*",
	"crop.*",
	"(log|sapling|planks|leaves)_(?!luretree).*",
	"world.*",
] as string[];

for i in regexArray {
	removeRecipeArrayRegex(bwa~":"~i);
}

var unbak = metaArray(bwa~":unbaked",0,5) as IItemStack[];
for i in unbak {
	JEI.removeAndHide(i);
}

val teaTypes = [
	"sencha",
	"assam",
	"nether",
	"ceylon",
	"white",
	"bancha",
	"end",
	"tencha",
	"gyokuro",
	"matcha",
	"houjicha"
] as string[];

val teaItems = [
	<betterwithaddons:tea_leaves>,
	<betterwithaddons:tea_soaked>,
	<betterwithaddons:tea_wilted>,
	<betterwithaddons:tea_powder>
] as IItemStack[];


for t in teaTypes {
	for it in teaItems {
		JEI.removeAndHide(it.withTag({type: t}));
	}
}

furnace.remove(<betterwithaddons:food_cooked_rice>);
LootTable.removeGlobalItem("betterwithaddons:food_mulberry");

recipes.remove(<betterwithaddons:material:3>);
recipes.remove(<betterwithaddons:thorn_rose:0>);
JEI.removeAndHide(<betterwithaddons:steel_masonpick>);

var cat = [
	"tatara",
	"firenet",
	"sandnet",
	"soakingbox",
	"dryingbox"
] as string[];

for i in cat {
	JEI.hideCategory("bwa."~i);
}

Mill.remove([<betterwithaddons:food_ground_meat>]);
Cauldron.remove([<betterwithaddons:food_meatballs>]);
Cauldron.remove([<betterwithaddons:pcb_block>]);
Cauldron.remove([<betterwithaddons:decomat:1>]);
Cauldron.remove([<betterwithaddons:decomat:2>]);
Cauldron.remove([<betterwithaddons:pavement:0>]);

var wool = metaArray("betterwithaddons:wool");
for i in wool {
	Cauldron.remove([i]);
}

Saw.remove(<betterwithaddons:planks_sakura>);
Saw.remove(MiniBlocks.getMiniBlock("moulding", <betterwithaddons:planks_sakura>).items[0]);
Saw.remove(MiniBlocks.getMiniBlock("siding", <betterwithaddons:planks_sakura>).items[0]);
// Saw.remove(MiniBlocks.getMiniBlock("corner", <betterwithaddons:planks_sakura>)); // removed in betterwithmods_recipes_saw.zs

furnace.addRecipe(<betterwithaddons:food_clownfish_cooked>,<minecraft:fish:2>,0.1);
furnace.addRecipe(<betterwithaddons:food_pufferfish_baked>,<minecraft:fish:3>,0.1);
JEI.addItem(<betterwithaddons:greatarrow>);

val wicker = <betterwithmods:wicker>;
val cloth = <harvestcraft:wovencottonitem>;
val gcandle = <rustic:candle_gold>;

//Tatami
recipes.addShaped(<betterwithaddons:tatami> * 4, [
    [cloth, cloth, cloth],
    [wicker, wicker, wicker]
]);

val hollowReed = <ore:hollowReed>;
var stone3 = [<ore:stone>, <ore:stone>, <ore:stone>] as IIngredient[];

recipes.addShaped("bwa_scaffold", <futuremc:scaffolding> * 8, [
    [wicker],
    [<randomthings:blockofsticks:0>]
]);

recipes.addShaped("bwa_banner_detector", <betterwithaddons:banner_detector>, [
    stone3,
    [<minecraft:item_frame>, <betterwithaddons:block_matcher>, <minecraft:ender_eye>],
    stone3
]);

RecipeBuilder.get("mage")
  .setShaped([
    stone3,
    [<minecraft:comparator>, <minecraft:redstone>, <minecraft:comparator>],
    stone3])
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
var aq as IIngredient[IItemStack] = {
	<betterwithaddons:aqueduct> : <ore:StoneHugeBrick>,
	<betterwithaddons:aqueduct:1> : <contenttweaker:brick_minecraft_clay>,
	<betterwithaddons:aqueduct:4> : <ore:sandstone>
};

var clay = <minecraft:clay_ball> as IIngredient;

for k,v in aq {
	recipes.addShaped(k * 6, [
		[clay, clay, clay],
		[clay, clay, clay],
		[v, v, v]
	]);
}

//Misc.
recipes.addShapeless(<betterwithaddons:lattice> * 4, [<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>,<rustic:iron_lattice>]);
recipes.addShaped(<betterwithaddons:wrought_bars> * 16, [
    [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>],
    [<ore:ingotWroughtIron>, <ore:ingotWroughtIron>, <ore:ingotWroughtIron>]
]);
recipes.addShaped(<betterwithaddons:wrought_lamp>, [
    [<ore:nuggetWroughtIron>, <iceandfire:chain_link>, <ore:nuggetWroughtIron>],
    [<ore:nuggetWroughtIron>, <pyrotech:tinder>, <ore:nuggetWroughtIron>],
    [<ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>, <ore:nuggetWroughtIron>]
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

// Spirit charging
Infuser.addShapeless(<cyclicmagic:wand_hypno>,
[<cyclicmagic:wand_hypno>.anyDamage(),<contenttweaker:vis_sliver>], 64);

Infuser.addShapeless(<spartancompat:katana_onyx>.withTag({"Quark:RuneColor": 0, ench: [{lvl: 5 as short, id: 25 as short}], RepairCost: 1, Quality: {}, display: {Name: "§4Unlabored §o§6Flawlessness"}, "Quark:RuneAttached": 1 as byte}),[<spartanweaponry:katana_wood>, <simpleores:onyx_rod>], 27);

Infuser.removeAllTransmutation();
Infuser.addTransmutation(<contenttweaker:ofuda>,<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 267}]}), 44); //if this break, the enchantment is cursebreak from RLtweaker
Infuser.addTransmutation(<betternether:gray_mold>,<contenttweaker:koji_mold>, 1);
Infuser.addTransmutation(<dynamictrees:oakseed>,<dynamictreesbop:whitecherryseed>, 1);
Infuser.addTransmutation(<dynamictreesbop:orangeautumnseed>,<dynamictreesbop:whitecherryseed>, 1);
Infuser.addTransmutation(<dynamictrees:darkoakseed>,<dynamictreesbop:pinkcherryseed>, 1);
Infuser.addTransmutation(<dynamictreesbop:floweringoakseed>,<dynamictreesbop:pinkcherryseed>, 1);
Infuser.addTransmutation(<minecraft:reeds>,<dynamictreesbop:bambooseed>, 1);
Infuser.addTransmutation(<cyclicmagic:water_candle>, gcandle, 44);

//White stone
furnace.addRecipe(<contenttweaker:brick_betterwithaddons_whitebrick>, <betterwithaddons:whitebrick:2>);