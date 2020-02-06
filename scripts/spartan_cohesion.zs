import crafttweaker.item.IIngredient;

//Removal of weapons recipes that involve stick > handle

recipes.remove(<iceandfire:hippogryph_sword>);
recipes.remove(<iceandfire:stymphalian_bird_dagger>);
recipes.remove(<minecraft:golden_sword>);
recipes.remove(<minecraft:stone_sword>);
recipes.remove(<minecraft:iron_sword>);
recipes.remove(<minecraft:diamond_sword>);
recipes.remove(<aether_legacy:skyroot_sword>);
recipes.remove(<aether_legacy:holystone_sword>);
recipes.remove(<aether_legacy:zanite_sword>);
recipes.remove(<aether_legacy:gravitite_sword>);
recipes.remove(<iceandfire:dragonbone_sword>);
recipes.remove(<iceandfire:myrmex_desert_sword>);
recipes.remove(<iceandfire:myrmex_desert_sword_venom>);
recipes.remove(<iceandfire:myrmex_jungle_sword>);
recipes.remove(<iceandfire:myrmex_jungle_sword_venom>);
recipes.remove(<iceandfire:amphithere_macuahuitl>);

//Wooden Sword Tweaks

val sharp_stick = <dungeontactics:sharp_stick>;
val wood = <ore:plankWood>;
val stick = <minecraft:stick>;

recipes.remove(<dungeontactics:sharp_stick>);
recipes.remove(<minecraft:wooden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_sword>);

recipes.addShaped("Sharp Stick", sharp_stick,
 [[null,wood,null],
  [null,wood,null],
  [null,stick,null]]);

//Addition of weapon recipes that involve stick > handle

val handle = <spartanweaponry:material>;
val witherhandle = <spartanfire:witherbone_handle>;
val feather = <ore:feather>;
val iron = <ore:ingotIron>;
val stone = <ore:cobblestone>;
val gold = <ore:ingotGold>;
val skyroot = <aether_legacy:skyroot_plank>;
val holystone = <aether_legacy:holystone>;
val zanite = <aether_legacy:zanite_gemstone>;
val egravitite = <aether_legacy:enchanted_gravitite>;
val diamond = <minecraft:diamond>;
val obsidian = <minecraft:obsidian>;
val dragonbone = <iceandfire:dragonbone>;
val mdchitin = <iceandfire:myrmex_desert_chitin>;
val mjchitin = <iceandfire:myrmex_jungle_chitin>;
val mstinger = <iceandfire:myrmex_stinger>;
val amphitherefeather = <iceandfire:amphithere_feather>;
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
val dragonbonesword = <iceandfire:dragonbone_sword>;
val desertmyrmexsword = <iceandfire:myrmex_desert_sword>;
val desertmyrmexstingersword = <iceandfire:myrmex_desert_sword_venom>;
val junglemyrmexsword = <iceandfire:myrmex_jungle_sword>;
val junglemyrmexstingersword = <iceandfire:myrmex_jungle_sword_venom>;
val amphitheremacuahuitl = <iceandfire:amphithere_macuahuitl>;

recipes.addShaped("HippogryphSword", hippogryph_sword,
 [[null,hippogryphtalon,null],
  [feather,iron,feather],
  [null,handle,null]]);
recipes.addShaped("Stymphalian Bird Dagger", stymphalian_bird_dagger,
 [[null,symphalianbirdfeather,null],
  [null,symphalianbirdfeather,null],
  [null,handle,null]]);
recipes.addShaped("Golden Sword", goldensword,
 [[null,gold,null],
  [null,gold,null],
  [null,handle,null]]);
recipes.addShaped("Stone Sword", stonesword,
 [[null,stone,null],
  [null,stone,null],
  [null,handle,null]]);
recipes.addShaped("Iron Sword", ironsword,
 [[null,iron,null],
  [null,iron,null],
  [null,handle,null]]);
recipes.addShaped("Diamond Sword", diamondsword,
 [[null,diamond,null],
  [null,diamond,null],
  [null,handle,null]]);
recipes.addShaped("Skyroot Sword", skyrootsword,
 [[null,skyroot,null],
  [null,skyroot,null],
  [null,handle,null]]);
recipes.addShaped("Holystone Sword", holystonesword,
 [[null,holystone,null],
  [null,holystone,null],
  [null,handle,null]]);
recipes.addShaped("Zanite Sword", zanitesword,
 [[null,zanite,null],
  [null,zanite,null],
  [null,handle,null]]);
recipes.addShaped("Gravitite Sword", gravititesword,
 [[null,egravitite,null],
  [null,egravitite,null],
  [null,handle,null]]);
recipes.addShaped("Dragonbone Sword", dragonbonesword,
 [[null,dragonbone,null],
  [null,dragonbone,null],
  [null,witherhandle,null]]);
recipes.addShaped("Desert Myrmex Chitin Sword", desertmyrmexsword,
 [[null,mdchitin,null],
  [null,mdchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Desert Myrmex Stinger Sword", desertmyrmexstingersword,
 [[null,mstinger,null],
  [null,mdchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Jungle Myrmex Chitin Sword", junglemyrmexsword,
 [[null,mjchitin,null],
  [null,mjchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Jungle Myrmex Stinger Sword", junglemyrmexstingersword,
 [[null,mstinger,null],
  [null,mjchitin,null],
  [null,witherhandle,null]]);
recipes.addShaped("Amphithere Macuahuitl", amphitheremacuahuitl,
 [[obsidian,wood,obsidian],
  [amphitherefeather,wood,amphitherefeather],
  [obsidian,handle,obsidian]]);
  
  
  
  
  
  