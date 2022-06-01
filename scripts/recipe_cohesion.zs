import crafttweaker.item.IIngredient;
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.data.IData;

//Removal of weapons recipes that involve stick > handle

recipes.remove(<iceandfire:silver_sword>);
recipes.remove(<iceandfire:hippogryph_sword>);
recipes.remove(<iceandfire:stymphalian_bird_dagger>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<aether_legacy:holystone_sword>);
recipes.remove(<aether_legacy:zanite_sword>);
recipes.remove(<aether_legacy:gravitite_sword>);
recipes.remove(<iceandfire:myrmex_desert_sword>);
recipes.remove(<iceandfire:myrmex_desert_sword_venom>);
recipes.remove(<iceandfire:myrmex_jungle_sword>);
recipes.remove(<iceandfire:myrmex_jungle_sword_venom>);
recipes.remove(<iceandfire:amphithere_macuahuitl>);
recipes.remove(<twilightforest:giant_sword>);

//Addition of weapon recipes that involve stick > handle + crossbow

val wood = <ore:plankWood>;
val handle = <spartanweaponry:material>;
val witherhandle = <spartanfire:witherbone_handle>;
val feather = <ore:feather>;
val iron = <ore:ingotIron>;
val steel = <ore:ingotSteel>;
val wool = <ore:wool>;
val wheel = <ore:componentWheel>;
val log = <ore:log>;
val stone = <ore:rock>;
val gold = <ore:ingotGold>;
val skyroot = <aether_legacy:skyroot_plank>;
val holystone = <aether_legacy:holystone>;
val zanite = <aether_legacy:zanite_gemstone>;
val egravitite = <ore:ingotGravitite>;
val diamond = <betterwithmods:material:45>;
val obsidian = <minecraft:obsidian>;
val dragonbone = <iceandfire:dragonbone>;
val mdchitin = <iceandfire:myrmex_desert_chitin>;
val mjchitin = <iceandfire:myrmex_jungle_chitin>;
val mstinger = <iceandfire:myrmex_stinger>;
val amphitherefeather = <iceandfire:amphithere_feather>;
val ironwood = <twilightforest:ironwood_ingot>;
val steeleaf = <twilightforest:steeleaf_ingot>;
val knightmetal = <twilightforest:knightmetal_ingot>;
val giantcobblestone = <twilightforest:giant_cobblestone>;
val bow = <minecraft:bow>;
val goldensword = <minecraft:golden_sword>;
val stonesword = <minecraft:stone_sword>;
val ironsword = <minecraft:iron_sword>;
val diamondsword = <minecraft:diamond_sword>;
val skyrootsword = <aether_legacy:skyroot_sword>;
val holystonesword = <aether_legacy:holystone_sword>;
val zanitesword = <aether_legacy:zanite_sword>;
val gravititesword = <aether_legacy:gravitite_sword>;
val hippogryphtalon = <iceandfire:hippogryph_talon>;
val symphalianbirdfeather = <iceandfire:stymphalian_bird_feather>;
val hippogryph_sword = <iceandfire:hippogryph_sword>;
val stymphalian_bird_dagger = <iceandfire:stymphalian_bird_dagger>;
val desertmyrmexsword = <iceandfire:myrmex_desert_sword>;
val desertmyrmexstingersword = <iceandfire:myrmex_desert_sword_venom>;
val junglemyrmexsword = <iceandfire:myrmex_jungle_sword>;
val junglemyrmexstingersword = <iceandfire:myrmex_jungle_sword_venom>;
val amphitheremacuahuitl = <iceandfire:amphithere_macuahuitl>;
val giantsword = <twilightforest:giant_sword>;
val fiber = <ore:durableFiber>;
val flint = <minecraft:flint>;
val stick = <ore:stickWood>;
val pole = <spartanweaponry:material:1>;


recipes.remove(<minecraft:stone_axe>);
recipes.addShapedMirrored("stone_axe", <minecraft:stone_axe>,[
    [stone, stone, null],
    [stone, stick, null],
    [null, stick, null]
]);
recipes.addShapedMirrored("flintstone_axe", <minecraft:stone_axe>,[
    [flint, flint, null],
    [flint, stick, null],
    [null, stick, null]
]);

recipes.remove(<minecraft:stone_hoe>);
recipes.addShapedMirrored("stone_hoe", <minecraft:stone_hoe>,[
    [stone, stone, null],
    [null, stick, null],
    [null, stick, null]
]);
recipes.addShapedMirrored("flintstone_hoe", <minecraft:stone_hoe>,[
    [flint, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.remove(<minecraft:stone_shovel>);
recipes.addShaped("stone_shovel", <minecraft:stone_shovel>,[
    [null, stone, null],
    [null, stick, null],
    [null, stick, null]
]);
recipes.addShaped("flintstone_shovel", <minecraft:stone_shovel>,[
    [null, flint, null],
    [null, stick, null],
    [null, stick, null]
]);

recipes.remove(<minecraft:stone_pickaxe>);
recipes.addShaped("stone_pickaxe", <minecraft:stone_pickaxe>,[
    [stone, stone, stone],
    [null, stick, null],
    [null, stick, null]
]);
recipes.addShaped("flintstone_pickaxe", <minecraft:stone_pickaxe>,[
    [flint, flint, flint],
    [null, stick, null],
    [null, stick, null]
]);

recipes.remove(<pyrotech:stone_hammer>);
recipes.addShaped("stone_sledgehammer", <pyrotech:stone_hammer>,
 [[stone,stick,stone],
  [stone,stick,stone],
  [null,stick,null]]);
recipes.addShaped("flintstone_sledgehammer", <pyrotech:stone_hammer>,
 [[flint,stick,flint],
  [flint,stick,flint],
  [null,stick,null]]);

recipes.remove(<minecraft:stone_button>);
recipes.addShapeless("stone_button",<minecraft:stone_button>,[stone]);

// Crossbow Tweaks
recipes.remove(<spartanweaponry:crossbow_wood>);
recipes.addShaped("SteelCrossbow", <spartanweaponry:crossbow_wood>.withTag({display: {Name: "§5Steel Crossbow"}}),
 [[bow,fiber,wheel],
  [fiber,steel,null],
  [wheel,null,handle]]);

//Weapons
recipes.addShaped("Silver_Sword", <iceandfire:silver_sword>,
 [[null,<ore:ingotSilver>,null],
  [null,<ore:ingotSilver>,null],
  [null,handle,null]]);
recipes.addShaped("Hippogryph_Sword", hippogryph_sword,
 [[null,hippogryphtalon,null],
  [feather,iron,feather],
  [null,handle,null]]);
recipes.addShaped("Stymphalian_Bird_Dagger", stymphalian_bird_dagger,
 [[null,symphalianbirdfeather,null],
  [null,symphalianbirdfeather,null],
  [null,handle,null]]);
recipes.addShaped("Golden_Sword", goldensword,
 [[null,gold,null],
  [null,gold,null],
  [null,handle,null]]);
recipes.addShaped("stone_sword", stonesword,
 [[stone],
  [stone],
  [handle]]);
recipes.addShaped("flint_sword", stonesword,
 [[flint],
  [flint],
  [handle]]);
recipes.addShaped("stone_dagger", <spartanweaponry:dagger_stone>,
 [[stone],
  [handle]]);
recipes.addShaped("flint_dagger", <spartanweaponry:dagger_stone>,
 [[flint],
  [handle]]);
recipes.addShaped("stone_longsword", <spartanweaponry:longsword_stone>,
 [[null,stone,null],
  [null,stone,null],
  [stone,handle,stone]]);
recipes.addShaped("flint_longsword", <spartanweaponry:longsword_stone>,
 [[null,flint,null],
  [null,flint,null],
  [flint,handle,flint]]);
recipes.addShaped("stone_greatsword", <spartanweaponry:greatsword_stone>,
 [[null,stone,null],
  [stone,stone,stone],
  [stone,handle,stone]]);
recipes.addShaped("flint_greatsword", <spartanweaponry:greatsword_stone>,
 [[null,flint,null],
  [flint,flint,flint],
  [flint,handle,flint]]);
recipes.addShaped("stone_mallet", <spartanweaponry:hammer_stone>,
 [[stone,stone,stone],
  [stone,stone,stone],
  [null,handle,null]]);
recipes.addShaped("flint_mallet", <spartanweaponry:hammer_stone>,
 [[flint,flint,flint],
  [flint,flint,flint],
  [null,handle,null]]);
recipes.addShapedMirrored("stone_warhammer",<spartanweaponry:warhammer_stone>,
 [[null,stone],
  [stone,stone],
  [null,handle]]);
recipes.addShapedMirrored("flint_warhammer",<spartanweaponry:warhammer_stone>,
 [[null,flint],
  [flint,flint],
  [null,handle]]);
recipes.addShaped("stone_spear",<spartanweaponry:spear_stone>,
 [[stone],
  [pole]]);
recipes.addShaped("flint_spear",<spartanweaponry:spear_stone>,
 [[flint],
  [pole]]);
recipes.addShapedMirrored("stone_throwing_knife", <spartanweaponry:throwing_knife_stone>,
 [[handle,stone]]);
recipes.addShapedMirrored("flint_throwing_knife", <spartanweaponry:throwing_knife_stone>,
 [[handle,flint]]);
recipes.addShapedMirrored("stone_tomahawk", <spartanweaponry:throwing_axe_stone>,
 [[handle,stone],
  [null,stone]]);
recipes.addShapedMirrored("flint_tomahawk", <spartanweaponry:throwing_axe_stone>,
 [[handle,flint],
  [null,flint]]);
recipes.addShapedMirrored("stone_javelin", <spartanweaponry:javelin_stone>,
 [[pole,stone]]);
recipes.addShapedMirrored("flint_javelin", <spartanweaponry:javelin_stone>,
 [[pole,flint]]);
recipes.addShapedMirrored("stoner_boomer", <spartanweaponry:boomerang_stone>,
 [[stone,wood,wood],
  [wood,null,null],
  [wood,null,null]]);
recipes.addShapedMirrored("flint_boomerang", <spartanweaponry:boomerang_stone>,
 [[flint,wood,wood],
  [wood,null,null],
  [wood,null,null]]);
recipes.addShapedMirrored("stone_mace", <spartanweaponry:mace_stone>,
 [[null,stone,stone],
  [null,stick,stone],
  [handle,null,null]]);
recipes.addShapedMirrored("flint_mace", <spartanweaponry:mace_stone>,
 [[null,flint,flint],
  [null,stick,flint],
  [handle,null,null]]);
recipes.addShaped("stone_quarterstaff", <spartanweaponry:staff_stone>,
 [[null,null,stone],
  [null,pole,null],
  [stone,null,null]]);
recipes.addShaped("flint_quarterstaff", <spartanweaponry:staff_stone>,
 [[null,null,flint],
  [null,pole,null],
  [flint,null,null]]);
recipes.addShaped("Iron_Sword", ironsword,
 [[null,iron,null],
  [null,iron,null],
  [null,handle,null]]);
recipes.addShaped("Diamond_Sword", diamondsword,
 [[null,diamond,null],
  [null,diamond,null],
  [null,handle,null]]);
// recipes.addShaped("Skyroot_Sword", skyrootsword,
//  [[null,skyroot,null],
//   [null,skyroot,null],
//   [null,handle,null]]);
recipes.addShaped("Holystone_Sword", holystonesword,
 [[null,holystone,null],
  [null,holystone,null],
  [null,handle,null]]);
recipes.addShaped("Zanite_Sword", zanitesword,
 [[null,zanite,null],
  [null,zanite,null],
  [null,handle,null]]);
recipes.addShaped("Gravitite_Sword", gravititesword,
 [[null,egravitite,null],
  [null,egravitite,null],
  [null,handle,null]]);
recipes.addShaped("Desert_Myrmex_Chitin_Sword", desertmyrmexsword,
 [[null,mdchitin,null],
  [null,mdchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Desert_Myrmex_Stinger_Sword", desertmyrmexstingersword,
 [[null,mstinger,null],
  [null,mdchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Jungle_Myrmex_Chitin_Sword", junglemyrmexsword,
 [[null,mjchitin,null],
  [null,mjchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Jungle_Myrmex_Stinger_Sword", junglemyrmexstingersword,
 [[null,mstinger,null],
  [null,mjchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Amphithere_Macuahuitl", amphitheremacuahuitl,
 [[obsidian,wood,obsidian],
  [amphitherefeather,wood,amphitherefeather],
  [obsidian,handle,obsidian]]);

recipes.addShaped("Giant_Sword", giantsword,
 [[null,giantcobblestone,null],
  [null,giantcobblestone,null],
  [null,<twilightforest:giant_log>,null]]);
  
  
  
  
  
  
