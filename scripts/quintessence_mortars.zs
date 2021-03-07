import mods.advancedmortars.Mortar;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

// Magic Blend
val blendPowder = <ore:blendPowder>;
blendPowder.add(<minecraft:glowstone_dust>, <arcanearchives:radiant_dust>, <aether_legacy:ambrosium_shard>);

Mortar.addRecipe(["wood"], <contenttweaker:magic_blend>, 8, <contenttweaker:magic_blend> * 1, 0.05, [<ore:blendPowder>, <ore:mushroomAny>, <contenttweaker:vis_speck>, <ore:anyQuintessence>]);

Mortar.addRecipe(["iron"], <contenttweaker:magic_blend>, 4, <contenttweaker:magic_blend> * 1, 0.10, [<ore:blendPowder>, <ore:mushroomAny>, <contenttweaker:vis_speck>, <ore:anyQuintessence>]);

Mortar.addRecipe(["gold"], <contenttweaker:magic_blend>, 2, <contenttweaker:magic_blend> * 1, 0.15, [<ore:blendPowder>, <ore:mushroomAny>, <contenttweaker:vis_speck>, <ore:anyQuintessence>]);

############
# Ore Dict #
############

## MUNDANE ##

// Earth
val earthQuintessence = <ore:earthQuintessence>;
earthQuintessence.addAll(<ore:dirt>);
earthQuintessence.addAll(<ore:stone>);
earthQuintessence.addAll(<ore:sand>);
earthQuintessence.add(
    <defiledlands:dirt_defiled>,
    <defiledlands:sand_defiled>,
    <defiledlands:stone_defiled>,
    <defiledlands:sandstone_defiled>,
    <defiledlands:gravel_defiled>
);

// Water
val waterQuintessence = <ore:waterQuintessence>;
waterQuintessence.addAll(
    <ore:listAllwater>
);
waterQuintessence.add(
    <minecraft:snowball>,
    <minecraft:ice>,
    <minecraft:packed_ice>,
    <mod_lavacow:shattered_ice>,
    <aether_legacy:icestone>,
    <futuremc:blue_ice>,
    <iceandfire:dragon_ice>,
    <iceandfire:dragon_ice_spikes>,
    <iceandfire:ice_dragon_flesh>,
    <iceandfire:ice_dragon_heart>,
    <iceandfire:ice_dragon_blood>,
    <mowziesmobs:ice_crystal>
);

// Air
val airQuintessence = <ore:airQuintessence>;
airQuintessence.addAll(
    <ore:feather>
);

airQuintessence.add(
    <minecraft:glass_bottle>,
    <rustic:cloudsbluff>,
    <aether_legacy:aercloud:*>,
    <rustic:wind_thistle>,
    <aether_legacy:white_flower>,
    <aether_legacy:aether_leaves>,
    <aether_legacy:skyroot_sapling>,
    <dynamictreestheaether:skyrootseed>
);

// Fire
val fireQuintessence = <ore:fireQuintessence>;

fireQuintessence.add(
    <minecraft:coal:*>,
    <betterwithmods:material:1>,
    <betterwithmods:material:18>,
    <betterwithmods:material:37>,
    <pyrotech:material:15>,
    <minecraft:flint>,
    <betterwithmods:material:26>,
    <betterwithmods:material:25>,
    <minecraft:blaze_rod>,
    <minecraft:blaze_powder>,
    <minecraft:lava_bucket>,
    <biomesoplenty:flower_0:15>,
    <minecraft:fire_charge>,
    <betterwithmods:material:16>,
    <iceandfire:fire_lily>,
    <iceandfire:fire_dragon_flesh>,
    <iceandfire:fire_dragon_heart>,
    <iceandfire:fire_dragon_blood>,
    <defiledlands:blastem_fruit_blazing>,
    <defiledlands:blastem_fruit>,
    <defiledlands:hephaestite>,
    <defiledlands:blastem_seed>
);

// Lunar
val  lunarQuintessence = <ore:lunarQuintessence>;

lunarQuintessence.add(
    <nyx:fallen_star>,
    <biomesoplenty:mushroom:3>,
    <mod_lavacow:glowshroom>,
    <quark:glowshroom>,
    <biomesoplenty:flower_0:3>,
    <biomesoplenty:coral:3>,
    <mowziesmobs:glowing_jelly>,
    <dungeontactics:fish_tunnel>,
    <dynamictreesdefiledlands:tenebraseed>,
    <defiledlands:tenebra_sapling>,
    <defiledlands:tenebra_leaves>,
    <aether_legacy:purple_flower>,
    <defiledlands:scuttler_eye>,
    <defiledlands:scuronotte>
);

// Solar
val solarQuintessence = <ore:solarQuintessence>;

solarQuintessence.add(
    <minecraft:double_plant:0>,
    <minecraft:yellow_flower:0>,
    <mowziesmobs:barako_mask>,
    <contenttweaker:material_part:29>,
    <dynamictreestheaether:goldenoakseed>,
    <aether_legacy:golden_oak_sapling>,
    <aether_legacy:aether_leaves:1>,
    <aether_legacy:golden_amber>,
    <aether_legacy:aether_log:1>
);

## ARCANE ##

// Chaos A - Inert chaotic items (items that are an ingredient to volatile items, such as gunpowder)
val chaosQuintessenceA = <ore:chaosQuintessenceA>;

chaosQuintessenceA.add(
    <minecraft:gunpowder>,
    <betterwithmods:material:26>,
    <betterwithmods:material:25>,
    <betterwithmods:material:37>,
    <betterwithmods:material:18>,
    <minecraft:skull:4>,
    <defiledlands:blastem_fruit>,
    <defiledlands:defilement_powder>,
    <defiledlands:blastem_seed>
);

// Chaos B - Volatile chaotic items (the resulting item made from inert chaotic items, such as TNT)
val chaosQuintessenceB = <ore:chaosQuintessenceB>;

chaosQuintessenceB.add(
    <betterwithmods:material:29>,
    <minecraft:tnt>,
    <dungeontactics:bomb_frag>,
    <dungeontactics:bomb_frag_cluster>,
    <dungeontactics:bomb_pyro>,
    <dungeontactics:bomb_pyro_cluster>,
    <dungeontactics:bomb_porting>,
    <dungeontactics:bomb_porting_cluster>,
    <dungeontactics:bomb_cryo>,
    <dungeontactics:bomb_cryo_cluster>,
    <minecraft:fire_charge>,
    <rats:charged_creeper_chunk>,
    <defiledlands:blastem_fruit_blazing>
);

// Mind A - Products of creativity. Anything artistic or abstract and man-made
val mindQuintessenceA = <ore:mindQuintessenceA>;

mindQuintessenceA.add(
    <minecraft:painting>,
    <minecraft:white_glazed_terracotta>,
    <minecraft:orange_glazed_terracotta>,
    <minecraft:magenta_glazed_terracotta>,
    <minecraft:light_blue_glazed_terracotta>,
    <minecraft:yellow_glazed_terracotta>,
    <minecraft:lime_glazed_terracotta>,
    <minecraft:pink_glazed_terracotta>,
    <minecraft:gray_glazed_terracotta>,
    <minecraft:silver_glazed_terracotta>,
    <minecraft:cyan_glazed_terracotta>,
    <minecraft:purple_glazed_terracotta>,
    <minecraft:blue_glazed_terracotta>,
    <minecraft:brown_glazed_terracotta>,
    <minecraft:green_glazed_terracotta>,
    <minecraft:red_glazed_terracotta>,
    <minecraft:black_glazed_terracotta>,
    <betternether:pig_statue_01>,
    <minecraft:flower_pot>,
    <betternether:cincinnasite_pot>,
    <quark:colored_flowerpot_white>,
    <quark:colored_flowerpot_orange>,
    <quark:colored_flowerpot_magenta>,
    <quark:colored_flowerpot_light_blue>,
    <quark:colored_flowerpot_yellow>,
    <quark:colored_flowerpot_lime>,
    <quark:colored_flowerpot_pink>,
    <quark:colored_flowerpot_gray>,
    <quark:colored_flowerpot_silver>,
    <quark:colored_flowerpot_cyan>,
    <quark:colored_flowerpot_purple>,
    <quark:colored_flowerpot_blue>,
    <quark:colored_flowerpot_brown>,
    <quark:colored_flowerpot_green>,
    <quark:colored_flowerpot_red>,
    <quark:colored_flowerpot_black>,
    <rustic:vase>
);

// Mind B - Products of logic - Please note this shouldn't just be a mirror of knowledge items. Magic books aren't products of logic, but guides, manuals, written books are.
val mindQuintessenceB = <ore:mindQuintessenceB>;

mindQuintessenceB.add(
    <minecraft:book>,
    <minecraft:written_book>,
    <aether_legacy:lore_book>,
    <animania:animania_manual>,
    <arcanearchives:tome_arcana>,
    <betterwithmods:manual>,
    <patchouli:guide_book>,
    <dungeontactics:dungeonpedia_volume_8>,
    <dungeontactics:dungeonpedia_volume_7>,
    <dungeontactics:dungeonpedia_volume_6>,
    <dungeontactics:dungeonpedia_volume_5>,
    <dungeontactics:dungeonpedia_volume_4>,
    <dungeontactics:dungeonpedia_volume_3>,
    <dungeontactics:dungeonpedia_volume_2>,
    <dungeontactics:dungeonpedia_volume_1>,
    <cyclicmagic:tool_trade>,
    <rustic:book>
);

// Creation A - The spark of life - items that may be used to give an artificial creation/automoton "life" (gears, heart, fire, etc)
val creationQuintessenceA = <ore:creationQuintessenceA>;

creationQuintessenceA.add(
    <betterwithmods:material:0>,
    <betterwithmods:material:48>,
    <pyrotech:cog_bone>,
    <minecraft:blaze_powder>,
    <minecraft:fire_charge>,
    <contenttweaker:heartofthefallen>,
    <contenttweaker:heavensheart>,
    <mod_lavacow:undyingheart>,
    <mod_lavacow:mootenheart>,
    <mod_lavacow:acidicheart>,
    <iceandfire:fire_dragon_heart>,
    <iceandfire:ice_dragon_heart>,
    <iceandfire:hydra_heart>,
    <defiledlands:black_heart>
);

// Creation B - The vessel that carries life (straw, clay, mud, etc)
val creationQuintessenceB = <ore:creationQuintessenceB>;

creationQuintessenceB.add(
    <biomesoplenty:mudball>,
    <minecraft:clay_ball>,
    <quark:tallow>,
    <minecraft:wheat>,
	<biomesoplenty:fleshchunk>
);

// Order A - Natural order
val orderQuintessenceA = <ore:orderQuintessenceA>;

orderQuintessenceA.add(
    <minecraft:tallgrass:2>,
    <undergroundbiomes:fossil_piece:6>,
    <undergroundbiomes:fossil_piece:0>,
    <undergroundbiomes:fossil_piece:1>,
    <biomesoplenty:gem:*>,
    <defiledlands:scuronotte>
);


// Order B - Artificial order
val orderQuintessenceB = <ore:orderQuintessenceB>;

orderQuintessenceB.add(
    <minecraft:stonebrick:3>,
    <minecraft:quartz_block:1>,
    <minecraft:sandstone:1>,
    <minecraft:red_sandstone:1>,
    <betterwithaddons:whitebrick:3>,
    <biomesoplenty:white_sandstone:1>,
    <iceandfire:dread_stone_bricks_chiseled>,
    <iceandfire:dread_stone_face>,
    <nyx:chiseled_star_block>
);

// Nature A - Flora
val natureQuintessenceA = <ore:natureQuintessenceA>;
natureQuintessenceA.addAll(<ore:treeSapling>);
natureQuintessenceA.addAll(<ore:flower>);
natureQuintessenceA.addAll(<ore:treeLeaves>);
natureQuintessenceA.addAll(<ore:listAllseed>);
natureQuintessenceA.addAll(<ore:listAllmushroom>);

natureQuintessenceA.add(
    <biomesoplenty:plant_0:*>,
    <biomesoplenty:plant_1:*>,
    <minecraft:tallgrass:*>,
    <minecraft:double_plant:*>,
    <dynamictreesdefiledlands:tenebraseed>,
    <nyx:unrefined_crystal>,
    <defiledlands:blastem_fruit>,
    <defiledlands:blastem_fruit_blazing>,
    <defiledlands:vilespine>,
    <defiledlands:blastem_seed>
);

// Nature B - Fauna
val natureQuintessenceB = <ore:natureQuintessenceB>;

natureQuintessenceB.add(
    <betteranimalsplus:antler>,
    <betteranimalsplus:hirschgeistskullwearable>,
    <betteranimalsplus:wolf_pelt_snowy>,
    <betteranimalsplus:wolf_pelt_timber>,
    <betteranimalsplus:wolf_pelt_black>,
    <betteranimalsplus:wolf_pelt_arctic>,
    <betteranimalsplus:wolf_pelt_brown>,
    <betteranimalsplus:wolf_pelt_red>,
    <minecraft:leather>
);

// Illusion A - Prismatics - things that shift and change color
val illusionQuintessenceA = <ore:illusionQuintessenceA>;

illusionQuintessenceA.add(
    <iceandfire:shiny_scales>,
    <twilightforest:twilight_sapling:9>,
    <twilightforest:twilight_leaves:3>,
    <primitivemobs:camouflage_dye>,
    <ceramics:clay_hard:6>,
    <ceramics:clay_wall:7>,
    <ceramics:clay_slab:6>,
    <ceramics:rainbow_clay:*>,
    <inspirations:enlightened_bush:4>,
    <cyclicmagic:horse_upgrade_variant>
);

// Illusion B - Invisibility - things that go invisible, transparent
val illusionQuintessenceB = <ore:illusionQuintessenceB>;

illusionQuintessenceB.add(
    <endreborn:block_phantom>,
    <minecraft:potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:lingering_potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:invisibility"}),
    <minecraft:splash_potion>.withTag({Potion: "minecraft:long_invisibility"}),
    <aether_legacy:invisibility_cape>
);

// Transformation A - Things that tranform other things
val transformationQuintessenceA = <ore:transformationQuintessenceA>;

transformationQuintessenceA.add(
    <twilightforest:transformation_powder>,
    <twilightforest:twilight_sapling:6>,
    <twilightforest:magic_leaves:1>,
    <twilightforest:magic_log_core:1>,
    <rats:plague_doctorate>,
    <cyclicmagic:horse_upgrade_variant>,
    <dynamictrees:dendropotion:2>,
    <dungeontactics:steel_sword>,
    <defiledlands:defilement_powder>,
    <nyx:unrefined_crystal>,
    <defiledlands:scuronotte>
);

// Transformation B - Things that transform themselves
val transformationQuintessenceB = <ore:transformationQuintessenceB>;
transformationQuintessenceB.addAll(<ore:listAllseed>);

transformationQuintessenceB.add(
    <mod_lavacow:mimic_claw>,
    <butterflies:butterfly>,
    <exsartagine:yeast>,
    <twilightforest:tower_device:12>
);

// Knowledge A - Ancient knowledge (lore books, enchants, etc)
val knowledgeQuintessenceA = <ore:knowledgeQuintessenceA>;

knowledgeQuintessenceA.add(
    <villagenames:codex>,
    <iceandfire:manuscript>,
    <aether_legacy:lore_book>,
    <minecraft:enchanted_book>,
    <quark:ancient_tome>,
    <antiqueatlas:empty_antique_atlas>,
    <randomthings:enderletter>,
    <contenttweaker:brain>,
    <defiledlands:book_wyrm_raw>
);

// Knowledge B - Modern knowledge (player-made books, paper, journals, etc)
val knowledgeQuintessenceB = <ore:knowledgeQuintessenceB>;

knowledgeQuintessenceB.add(
    <minecraft:written_book>,
    <harvestcraft:fortunecookieitem>,
    <arcanearchives:manifest>,
    <animania:animania_manual>,
    <minecraft:map>,
    <twilightforest:magic_map_empty>,
    <twilightforest:maze_map_empty>,
    <twilightforest:ore_map_empty>,
    <defiledlands:book_wyrm_analyzer>,
    <rustic:book>,
    <arcanearchives:tome_arcana>,
    <betterwithmods:manual>,
    <contenttweaker:slayers_tattered_journal>
);
// Disintegration A - Catalysts of disintegration (fire, acid, etc)
val disintegrationQuintessenceA = <ore:disintegrationQuintessenceA>;

disintegrationQuintessenceA.add(
    <minecraft:blaze_powder>,
    <mod_lavacow:poisonspore>,
    <mod_lavacow:acidicheart>,
    <defiledlands:defilement_powder>
);

// Disintegration B - Results of disintegration (ash, powders, dust etc)
val disintegrationQuintessenceB = <ore:disintegrationQuintessenceB>;

disintegrationQuintessenceB.add(
    <biomesoplenty:ash>,
    <quark:black_ash>,
    <quark:soul_powder>,
    <biomesoplenty:shroompowder>
);

// Strength A - Strength in life
val strengthQuintessenceA = <ore:strengthQuintessenceA>;

strengthQuintessenceA.add(
    <iceandfire:dragonscales_red>,
    <iceandfire:dragonscales_green>,
    <iceandfire:dragonscales_bronze>,
    <iceandfire:dragonscales_gray>,
    <iceandfire:dragonscales_blue>,
    <iceandfire:dragonscales_white>,
    <iceandfire:dragonscales_sapphire>,
    <iceandfire:dragonscales_silver>,
    <mod_lavacow:moltenbeef>,
    <twilightforest:naga_scale>
);

// Strength B - Strength in nature
val strengthQuintessenceB = <ore:strengthQuintessenceB>;

strengthQuintessenceB.add(
    <betterwithmods:material>,
    <dungeontactics:steel_ingot>,
    <iceandfire:dragonsteel_fire_ingot>,
    <iceandfire:dragonsteel_ice_ingot>,
    <simpleores:onyx_gem>,
    <rustic:ironberries>
);

// Poison A - Plant poisons
val poisonQuintessenceA = <ore:poisonQuintessenceA>;

poisonQuintessenceA.add(
    <minecraft:poisonous_potato>,
    <harvestcraft:whitemushroomseeditem>,
    <netherex:spore>,
    <mod_lavacow:poisonspore>,
    <defiledlands:vilespine>
);

// Poison B - Animal poisons
val poisonQuintessenceB = <ore:poisonQuintessenceB>;

poisonQuintessenceB.add(
    <betterwithmods:material:54>,
    <mowziesmobs:naga_fang>,
    <minecraft:spider_eye>,
    <defiledlands:foul_slime>
);

// Energy A - Life energy (sugar, etc)
val energyQuintessenceA = <ore:energyQuintessenceA>;
energyQuintessenceA.addAll(
    <ore:listAllsugar>
);

// Energy B - Worldly energy (redstone, etc)
val energyQuintessenceB = <ore:energyQuintessenceB>;

energyQuintessenceB.add(
    <minecraft:redstone>
);

// Life A - Hearts
val lifeQuintessenceA = <ore:lifeQuintessenceA>;

lifeQuintessenceA.add(
    <scalinghealth:crystalshard>,
    <defiledlands:black_heart>
);

// Life B - Blood
val lifeQuintessenceB = <ore:lifeQuintessenceB>;

lifeQuintessenceB.add(
    <rustic:blood_orchid>,
    <twilightforest:fiery_blood>,
    // <wings:bat_blood>,
    <iceandfire:fire_dragon_blood>,
    <iceandfire:ice_dragon_blood>
);

// Soul A - Pure (holy)
val soulQuintessenceA = <ore:soulQuintessenceA>;

soulQuintessenceA.add(
    <aether_legacy:holystone>,
    <aether_legacy:mossy_holystone>,
    <aether_legacy:golden_amber>
);

// Soul B - Unpure (evil)
val soulQuintessenceB = <ore:soulQuintessenceB>;

soulQuintessenceB.add(
    <minecraft:soul_sand>,
    <quark:soul_powder>,
    <betterwithmods:material:23>,
    <betterwithmods:material:38>,
    <quark:soul_bead>,
	<mod_lavacow:scythe_claw>
);

// Death A - Wither
val deathQuintessenceA = <ore:deathQuintessenceA>;

deathQuintessenceA.add(
    <minecraft:skull:1>,
    <futuremc:wither_rose>,
    <iceandfire:witherbone>,
    <quark:black_ash>
);

// Death B - Rot
val deathQuintessenceB = <ore:deathQuintessenceB>;

deathQuintessenceB.add(
    <minecraft:rotten_flesh>,
    <betterwithaddons:congealed:1>,
    <mod_lavacow:canerottenmeat>,
	<mod_lavacow:parasite_item>,
	<mod_lavacow:frozenthigh>,
    <defiledlands:black_heart>
);

// Balance A - Ying - For every ore value in Ying, there must be a thematically-opposite ore value in Yang. Example, YingCold and YangHot
val balanceYingQuintessenceA = <ore:balanceYingQuintessenceA>; //fire items
balanceYingQuintessenceA.addAll(
    <ore:fireQuintessence>
);

val balanceYingQuintessenceB = <ore:balanceYingQuintessenceB>; //day items
balanceYingQuintessenceB.addAll(
    <ore:solarQuintessence>
);

val balanceYingQuintessenceC = <ore:balanceYingQuintessenceC>; //holy items
balanceYingQuintessenceC.addAll(
    <ore:soulQuintessenceA>
);

val balanceYingQuintessenceD = <ore:balanceYingQuintessenceD>; //order items
balanceYingQuintessenceD.addAll(<ore:orderQuintessenceA>);
balanceYingQuintessenceD.addAll(<ore:orderQuintessenceB>);


// Balance B - Yang
val balanceYangQuintessenceA = <ore:balanceYangQuintessenceA>; // cold items
balanceYangQuintessenceA.add(
    <aether_legacy:aercloud>,
    <mod_lavacow:frozenthigh>,
    <minecraft:ice>,
    <minecraft:packed_ice>,
    <aether_legacy:icestone>,
    <biomesoplenty:hard_ice>,
    <futuremc:blue_ice>,
    <iceandfire:dragon_ice>,
    <netherex:frost_rod>,
    <quark:biome_cobblestone:1>
);

val balanceYangQuintessenceB = <ore:balanceYangQuintessenceB>; // night items
balanceYangQuintessenceB.addAll(<ore:lunarQuintessence>);

val balanceYangQuintessenceC = <ore:balanceYangQuintessenceC>; // evil/unholy items
balanceYangQuintessenceC.addAll(<ore:soulQuintessenceB>);

val balanceYangQuintessenceD = <ore:balanceYangQuintessenceD>; // chaos items
balanceYangQuintessenceD.addAll(<ore:chaosQuintessenceA>);
balanceYangQuintessenceD.addAll(<ore:chaosQuintessenceB>);

// Arcana A - Magical natural resources, including enchantable materials.
val arcanaQuintessenceA = <ore:arcanaQuintessenceA>;
arcanaQuintessenceA.add(
    <simpleores:mythril_ingot>,
    <betterwithmods:material:20>,
    <twilightforest:fiery_ingot>,
    <ore:ingotGravitite>.firstItem,
    <twilightforest:steeleaf_ingot>,
    <twilightforest:naga_scale>,
    <biomesoplenty:sapling_0:3>,
    <dynamictreesbop:magicseed:0>,
    <twilightforest:twilight_sapling:4>,
    <twilightforest:twilight_sapling:5>,
    <twilightforest:twilight_sapling:6>,
    <twilightforest:twilight_sapling:7>,
    <twilightforest:twilight_sapling:8>,
    <twilightforest:twilight_sapling:9>,
    <aether_legacy:enchanted_blueberry>,
    <minecraft:golden_apple:*>
);

// Arcana B - Magic powders, essences, dusts, etc. May also include man-made materials such as AA quartz
val arcanaQuintessenceB = <ore:arcanaQuintessenceB>;
arcanaQuintessenceB.add(
    <arcanearchives:radiant_dust>,
    <biomesoplenty:biome_essence>,
    <dungeontactics:magic_powder>,
    <arcanearchives:raw_quartz>,
    <arcanearchives:quartz_sliver>,
    <arcanearchives:shaped_quartz>,
    <arcaneworld:biome_crystal>,
    <defiledlands:defilement_powder>,
    <ore:dustElectrum>.firstItem //note, I added this because gold and ambrosium seems too cheap for this quintessence
);

/* val balanceYangQuintessenceB = <ore:balanceYangQuintessenceB>; // night/dark items
balanceYangQuintessenceB.add(
    <>
)
*/

## MYSTICAL ##

// Fae A - Mushrooms
val faeQuintessenceA = <ore:faeQuintessenceA>;
faeQuintessenceA.addAll(
    <ore:mushroomAny>
);

// Fae B - Pixie items
val faeQuintessenceB = <ore:faeQuintessenceB>;
faeQuintessenceB.add(
    <iceandfire:pixie_dust>,
    <iceandfire:pixie_wings>,
    <iceandfire:pixie_house:*>,
    <iceandfire:jar_pixie:*>
);

// Fae C - Magic flora (This should be same as the Arcana flora and food list, except for Fae, it should be plant-only. No foods)
val faeQuintessenceC = <ore:faeQuintessenceC>;
faeQuintessenceC.add(
    <biomesoplenty:sapling_0:3>,
    <dynamictreesbop:magicseed:0>,
    <twilightforest:twilight_sapling:4>,
    <twilightforest:twilight_sapling:5>,
    <twilightforest:twilight_sapling:6>,
    <twilightforest:twilight_sapling:7>,
    <twilightforest:twilight_sapling:8>,
    <twilightforest:twilight_sapling:9>
);

// Holding A - Ender catalyst resource
val holdingQuintessenceA = <ore:holdingQuintessenceA>;
holdingQuintessenceA.add(
    <endreborn:catalyst>,
    // <undergroundbiomes:lignite_coal>,
    <quark:biotite>
);

// Holding B - Void/infinity/teleport material (eyes, shulker shell, any other item that has 'void' connetations)
val holdingQuintessenceB = <ore:holdingQuintessenceB>;
holdingQuintessenceB.add(
    <minecraft:ender_eye>,
    <endreborn:item_ender_string>,
    <minecraft:shulker_shell>
);

// Holding C - Ender gems or Arcane Archives gems
val holdingQuintessenceC = <ore:holdingQuintessenceC>;
holdingQuintessenceC.add(<rotn_blocks:exorite_crystal>);

holdingQuintessenceC.add(
    <arcanearchives:shaped_quartz>,
    <arcanearchives:raw_quartz>,
    <arcanearchives:radiant_dust>
);

// Plague A - Plague cures
val plagueQuintessenceA = <ore:plagueQuintessenceA>;
plagueQuintessenceA.add(
    <rats:herb_bundle>,
    <rats:plague_leech>,
    <rats:plague_stew>
);

// Plague B - Plagued materials
val plagueQuintessenceB = <ore:plagueQuintessenceB>;
plagueQuintessenceB.add(
    <mod_lavacow:plagued_porkchop>,
    <mod_lavacow:pigboarhide>,
    <rats:plague_essence>,
    <iceandfire:sickly_dragon_meal>,
    <twilightforest:twilight_sapling:0>,
    <minecraft:rotten_flesh>
);

// Plague C - Poison materials
val plagueQuintessenceC = <ore:plagueQuintessenceC>;
plagueQuintessenceC.add(
    <minecraft:fermented_spider_eye>,
    <betterwithmods:material:54>,
    <minecraft:poisonous_potato>,
    <mowziesmobs:naga_fang>,
    <aether_legacy:skyroot_bucket:2>
);

// Draconic A - Dragon scales
val draconicQuintessenceA = <ore:draconicQuintessenceA>;
draconicQuintessenceA.add(
    <bountifulbaubles:brokenblackdragonscale>,
    <iceandfire:dragonscales_red>,
    <iceandfire:dragonscales_green>,
    <iceandfire:dragonscales_bronze>,
    <iceandfire:dragonscales_gray>,
    <iceandfire:dragonscales_blue>,
    <iceandfire:dragonscales_white>,
    <iceandfire:dragonscales_sapphire>,
    <iceandfire:dragonscales_silver>,
    <endreborn:dragon_scales>
);

// Draconic B - Dragon parts
val draconicQuintessenceB = <ore:draconicQuintessenceB>;
draconicQuintessenceB.add(
    <iceandfire:dragonbone:*>,
    <rats:dragon_wing>
);

// Draconic C - Dragon eggs
val draconicQuintessenceC = <ore:draconicQuintessenceC>;
draconicQuintessenceC.add(
    <iceandfire:dragonegg_red>,
    <iceandfire:dragonegg_green>,
    <iceandfire:dragonegg_bronze>,
    <iceandfire:dragonegg_gray>,
    <iceandfire:dragonegg_blue>,
    <iceandfire:dragonegg_white>,
    <iceandfire:dragonegg_sapphire>,
    <iceandfire:dragonegg_silver>
);

// Aether A - Aether natural resource
val aetherQuintessenceA = <ore:aetherQuintessenceA>;
aetherQuintessenceA.add(
    <aether_legacy:aether_grass>,
    <aether_legacy:aether_dirt>,
    <aether_legacy:holystone>,
    <aether_legacy:mossy_holystone>,
    <aether_legacy:ambrosium_shard>,
    <aether_legacy:zanite_gemstone>,
    <ore:ingotGravitite>.firstItem,
    <aether_legacy:aercloud:*>
);

// Aether B - Aether flora
val aetherQuintessenceB = <ore:aetherQuintessenceB>;
aetherQuintessenceB.add(
    <aether_legacy:purple_flower>,
    <aether_legacy:white_flower>,
    <aether_legacy:skyroot_sapling>,
    <aether_legacy:golden_oak_sapling>,
    <aether_legacy:aether_leaves:*>,
    <aether_legacy:aether_log>,
    <aether_legacy:berry_bush_stem>,
    <rustic:cloudsbluff>,
    <dynamictreestheaether:skyrootseed>,
    <dynamictreestheaether:goldenoakseed>
);

// Aether C - Aether mob drops
val aetherQuintessenceC = <ore:aetherQuintessenceC>;
aetherQuintessenceC.add(
    <aether_legacy:aechor_petal>,
    <aether_legacy:cockatrice>,
    <betterslimes:yellow_slime>    
);

// Nether A - Mob drops
val netherQuintessenceA = <ore:netherQuintessenceA>;
netherQuintessenceA.add(
    <minecraft:ghast_tear>,
    <minecraft:blaze_rod>,
    <netherex:orange_salamander_hide>,
    <netherex:black_salamander_hide>,
    <netherex:ghast_meat_raw>,
    <defiledlands:black_heart>
);

// Nether B - Flora
val netherQuintessenceB = <ore:netherQuintessenceB>;
netherQuintessenceB.add(
    <minecraft:nether_wart>,
    <betternether:nether_reed>,
    <betternether:red_mold>,
    <betternether:gray_mold>,
    <biomesoplenty:double_plant:2>,
    <betternether:nether_grass>,
    <betternether:nether_cactus>,
    <biomesoplenty:flower_0:15>
);

// Nether C - Natural Resources
val netherQuintessenceC = <ore:netherQuintessenceC>;
netherQuintessenceC.add(
    <betternether:cincinnasite>,
    <minecraft:quartz>,
    <betterwithmods:material:1>,
    <betterwithmods:material:15>,
    <betterwithmods:material:35>,
    <netherex:amethyst_crystal>
);


// End A - End natural resource
val endQuintessenceA = <ore:endQuintessenceA>;
endQuintessenceA.add(
    <minecraft:end_stone>,
    <minecraft:obsidian>,
    <stygian:endgrass>,
    <stygian:endobsidian>,
    <stygian:endmagma>,
    <rotn_blocks:exorite_crystal>
);

// End B - End flora
val endQuintessenceB = <ore:endQuintessenceB>;
endQuintessenceB.add(
    <stygian:endleaves>,
    <stygian:endtallgrass>,
    <stygian:endglow>,
    <stygian:endcanopysapling>,
    <stygian:endvine>,
    <stygian:endcactus>,
    <minecraft:chorus_plant>,
    <minecraft:chorus_flower>
);

// End C - End mob drop
val endQuintessenceC = <ore:endQuintessenceC>;
endQuintessenceC.add(
    <minecraft:ender_pearl>,
    <endreborn:item_end_shard>,
    <minecraft:dragon_breath>,
    <minecraft:shulker_shell>,
    <minecraft:dragon_egg>
);

// Time - Unimplemented!!

// Mundane Quintessence
val anyMundaneQuintessence = <ore:anyMundaneQuintessence>;
anyMundaneQuintessence.add(<contenttweaker:earth_quintessence>);
anyMundaneQuintessence.add(<contenttweaker:air_quintessence>);
anyMundaneQuintessence.add(<contenttweaker:fire_quintessence>);
anyMundaneQuintessence.add(<contenttweaker:water_quintessence>);
anyMundaneQuintessence.add(<contenttweaker:sol_quintessence>);
anyMundaneQuintessence.add(<contenttweaker:luna_quintessence>);

// Arcane Quintessence
val anyArcaneQuintessence = <ore:anyArcaneQuintessence>;
anyArcaneQuintessence.add(<contenttweaker:balance_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:death_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:life_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:chaos_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:energy_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:poison_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:strength_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:mind_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:knowledge_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:order_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:nature_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:soul_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:illusion_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:trans_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:disint_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:creation_quintessence>);
anyArcaneQuintessence.add(<contenttweaker:arcane_quintessence>);

// Mystical Quintessence
val anyMysticalQuintessence = <ore:anyMysticalQuintessence>;
anyMysticalQuintessence.add(<contenttweaker:draconic_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:aether_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:fae_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:holding_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:plague_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:end_quintessence>);
anyMysticalQuintessence.add(<contenttweaker:nether_quintessence>);

//ALL the quintessences!
val anyQuintessence = <ore:anyQuintessence>;
anyQuintessence.addAll(<ore:anyMundaneQuintessence>);
anyQuintessence.addAll(<ore:anyArcaneQuintessence>);
anyQuintessence.addAll(<ore:anyMysticalQuintessence>);

##########################
# Mundane Mortar (wood)  #
# 15% Vis per craft       #
# 8 int duration         #
##########################

## Mundane Qs - 1 speck per chance craft ##

// Earth Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:earth_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:earthQuintessence>]);

// Fire Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:fire_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:fireQuintessence>]);

// Water Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:water_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:waterQuintessence>]);

// Air Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:air_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:airQuintessence>]);

// Lunar Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:luna_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:lunarQuintessence>]);

// Solar Quintessence

Mortar.addRecipe(["wood"], <contenttweaker:sol_quintessence>, 8, <contenttweaker:vis_speck> * 1, 0.15, [<ore:solarQuintessence>]);


##########################
# Arcane Mortar (iron)   #
# 25% Vis per craft      #
# 4 int duration         #
##########################

## Mundane Qs - 1 speck per chance craft ##

// Earth Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:earth_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:earthQuintessence>]);

// Fire Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:fire_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:fireQuintessence>]);

// Water Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:water_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:waterQuintessence>]);

// Air Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:air_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:airQuintessence>]);

// Lunar Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:luna_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:lunarQuintessence>]);

// Solar Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:sol_quintessence>, 4, <contenttweaker:vis_speck> * 1, 0.25, [<ore:solarQuintessence>]);

## Arcane Qs - 2 speck per chance craft ##

// Chaos Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:chaos_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:chaosQuintessenceA>, <ore:chaosQuintessenceB>]);

// Mind Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:mind_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:mindQuintessenceA>, <ore:mindQuintessenceB>]);

// Creation Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:creation_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:creationQuintessenceA>, <ore:creationQuintessenceB>]);

// Order Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:order_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:orderQuintessenceA>, <ore:orderQuintessenceB>]);

// Nature Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:nature_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:natureQuintessenceA>, <ore:natureQuintessenceB>]);

// Illusion Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:illusion_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:illusionQuintessenceA>, <ore:illusionQuintessenceB>]);

// Transformation Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:trans_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:transformationQuintessenceA>, <ore:transformationQuintessenceB>]);

// Knowledge Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:knowledge_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:knowledgeQuintessenceA>, <ore:knowledgeQuintessenceB>]);

// Disintegration Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:disint_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:disintegrationQuintessenceA>, <ore:disintegrationQuintessenceB>]);

// Strength Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:strength_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:strengthQuintessenceA>, <ore:strengthQuintessenceB>]);

// Poison Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:poison_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:poisonQuintessenceA>, <ore:poisonQuintessenceB>]);

// Energy Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:energy_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:energyQuintessenceA>, <ore:energyQuintessenceB>]);

// Life Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:life_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:lifeQuintessenceA>, <ore:lifeQuintessenceB>]);

// Soul Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:soul_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:soulQuintessenceA>, <ore:soulQuintessenceB>]);

// Death Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:death_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:deathQuintessenceA>, <ore:deathQuintessenceB>]);

// Balance Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:balance_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:balanceYingQuintessenceA>, <ore:balanceYangQuintessenceA>]);

Mortar.addRecipe(["iron"], <contenttweaker:balance_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:balanceYingQuintessenceB>, <ore:balanceYangQuintessenceB>]);

Mortar.addRecipe(["iron"], <contenttweaker:balance_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:balanceYingQuintessenceC>, <ore:balanceYangQuintessenceC>]);

Mortar.addRecipe(["iron"], <contenttweaker:balance_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:balanceYingQuintessenceD>, <ore:balanceYangQuintessenceD>]);

// Arcane Quintessence

Mortar.addRecipe(["iron"], <contenttweaker:arcane_quintessence>, 4, <contenttweaker:vis_speck> * 2, 0.25, [<ore:arcanaQuintessenceA>, <ore:arcanaQuintessenceB>]);

##########################
# Mystical Mortar (gold) #
# 35% Vis per craft      #
# 2 int duration         #
##########################

## Mundane Qs - 1 speck per chance craft ##

// Earth Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:earth_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:earthQuintessence>]);

// Fire Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:fire_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:fireQuintessence>]);

// Water Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:water_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:waterQuintessence>]);

// Air Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:air_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:airQuintessence>]);

// Lunar Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:luna_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:lunarQuintessence>]);

// Solar Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:sol_quintessence>, 2, <contenttweaker:vis_speck> * 1, 0.35, [<ore:solarQuintessence>]);

## Arcane Qs - 2 speck per chance craft ##

// Chaos Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:chaos_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:chaosQuintessenceA>, <ore:chaosQuintessenceB>]);

// Mind Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:mind_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:mindQuintessenceA>, <ore:mindQuintessenceB>]);

// Creation Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:creation_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:creationQuintessenceA>, <ore:creationQuintessenceB>]);

// Order Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:order_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:orderQuintessenceA>, <ore:orderQuintessenceB>]);

// Nature Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:nature_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:natureQuintessenceA>, <ore:natureQuintessenceB>]);

// Illusion Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:illusion_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:illusionQuintessenceA>, <ore:illusionQuintessenceB>]);

// Transformation Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:trans_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:transformationQuintessenceA>, <ore:transformationQuintessenceB>]);

// Knowledge Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:knowledge_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:knowledgeQuintessenceA>, <ore:knowledgeQuintessenceB>]);

// Disintegration Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:disint_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:disintegrationQuintessenceA>, <ore:disintegrationQuintessenceB>]);

// Strength Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:strength_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:strengthQuintessenceA>, <ore:strengthQuintessenceB>]);

// Poison Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:poison_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:poisonQuintessenceA>, <ore:poisonQuintessenceB>]);

// Energy Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:energy_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:energyQuintessenceA>, <ore:energyQuintessenceB>]);

// Life Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:life_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:lifeQuintessenceA>, <ore:lifeQuintessenceB>]);

// Soul Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:soul_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:soulQuintessenceA>, <ore:soulQuintessenceB>]);

// Death Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:death_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:deathQuintessenceA>, <ore:deathQuintessenceB>]);

// Balance Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:balance_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:balanceYingQuintessenceA>, <ore:balanceYangQuintessenceA>]);

Mortar.addRecipe(["gold"], <contenttweaker:balance_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:balanceYingQuintessenceB>, <ore:balanceYangQuintessenceB>]);

Mortar.addRecipe(["gold"], <contenttweaker:balance_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:balanceYingQuintessenceC>, <ore:balanceYangQuintessenceC>]);

Mortar.addRecipe(["gold"], <contenttweaker:balance_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:balanceYingQuintessenceD>, <ore:balanceYangQuintessenceD>]);

// Arcana Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:arcane_quintessence>, 2, <contenttweaker:vis_speck> * 2, 0.35, [<ore:arcanaQuintessenceA>, <ore:arcanaQuintessenceB>]);


## Mystical Qs - 3 speck per chance craft ##

// Fae Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:fae_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:faeQuintessenceA>, <ore:faeQuintessenceB>, <ore:faeQuintessenceC>]);

// Holding Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:holding_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:holdingQuintessenceA>, <ore:holdingQuintessenceB>, <ore:holdingQuintessenceC>]);

// Plague Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:plague_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:plagueQuintessenceA>, <ore:plagueQuintessenceB>, <ore:plagueQuintessenceC>]);

// Draconic Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:draconic_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:draconicQuintessenceA>, <ore:draconicQuintessenceB>, <ore:draconicQuintessenceC>]);

// Aether Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:aether_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:aetherQuintessenceA>, <ore:aetherQuintessenceB>, <ore:aetherQuintessenceC>]);

// Nether Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:nether_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:netherQuintessenceA>, <ore:netherQuintessenceB>, <ore:netherQuintessenceC>]);

// End Quintessence

Mortar.addRecipe(["gold"], <contenttweaker:end_quintessence>, 2, <contenttweaker:vis_speck> * 3, 0.35, [<ore:endQuintessenceA>, <ore:endQuintessenceB>, <ore:endQuintessenceC>]);
