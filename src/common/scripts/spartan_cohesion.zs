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
recipes.remove(<twilightforest:ironwood_sword>);
recipes.remove(<twilightforest:steeleaf_sword>);
recipes.remove(<twilightforest:knightmetal_sword>);
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
val stone = <ore:cobblestone>;
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
val ironwoodsword = <twilightforest:ironwood_sword>;
val steeleafsword = <twilightforest:steeleaf_sword>;
val knightsword = <twilightforest:knightmetal_sword>;
val giantsword = <twilightforest:giant_sword>;
val fiber = <ore:durableFiber>;

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
recipes.addShaped("Stone_Sword", stonesword,
 [[null,stone,null],
  [null,stone,null],
  [null,handle,null]]);
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
  
  val enchantments1 as IEnchantmentDefinition[] = [<enchantment:minecraft:knockback>];

var enchantmentMap1 as IData = {};

enchantmentMap1 += enchantments1[0].makeEnchantment(1).makeTag();

recipes.addShaped("Ironwood_Sword", ironwoodsword.withTag(enchantmentMap1),
 [[null,ironwood,null],
  [null,ironwood,null],
  [null,handle,null]]);
  
  val enchantments2 as IEnchantmentDefinition[] = [<enchantment:minecraft:looting>];

var enchantmentMap2 as IData = {};

enchantmentMap2 += enchantments2[0].makeEnchantment(2).makeTag();
  
recipes.addShaped("Steeleaf_Sword", steeleafsword.withTag(enchantmentMap2),
 [[null,steeleaf,null],
  [null,steeleaf,null],
  [null,handle,null]]);
recipes.addShaped("Knightmetal_Sword", knightsword,
 [[null,knightmetal,null],
  [null,knightmetal,null],
  [null,handle,null]]);
recipes.addShaped("Giant_Sword", giantsword,
 [[null,giantcobblestone,null],
  [null,giantcobblestone,null],
  [null,<twilightforest:giant_log>,null]]);
  
  
  
  
  
  
