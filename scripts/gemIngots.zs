import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//This file adds recipes for all objects that require a gem ingot to make (except for the diamond sword which is in spartan_cohesion.zs)

val diamond = <betterwithmods:material:45>;
val ruby = <contenttweaker:ruby_ingot>;
val sapphire = <contenttweaker:sapphire_ingot>;
val peridot = <contenttweaker:peridot_ingot>;
val amethyst =<contenttweaker:amethyst_ingot>;
val dheart = <quark:diamond_heart>;
val stick = <ore:stickWood>;
val handle = <spartanweaponry:material>;
val pole = <spartanweaponry:material:1>;
val wood = <ore:plankWood>;
val twine = <ore:twine>;
val leather = <ore:hideTanned>;
val arrow = <ore:itemArrow>;
val bolt = <ore:itemBolt>;
val flint = <minecraft:flint>;


// Gem tools Rework

val gemAll = [
    <minecraft:diamond_sword>,
    <minecraft:diamond_shovel>,
    <minecraft:diamond_hoe>,
    <minecraft:diamond_axe>,
	<minecraft:diamond_pickaxe>,
	<spartanweaponry:dagger_diamond>,
	<spartanweaponry:longsword_diamond>,
	<spartanweaponry:katana_diamond>,
	<spartanweaponry:saber_diamond>,
	<spartanweaponry:rapier_diamond>,
	<spartanweaponry:greatsword_diamond>,
	<spartanweaponry:hammer_diamond>,
	<spartanweaponry:warhammer_diamond>,
	<spartanweaponry:spear_diamond>,
	<spartanweaponry:halberd_diamond>,
	<spartanweaponry:pike_diamond>,
	<spartanweaponry:lance_diamond>,
	<spartanweaponry:longbow_diamond>,
	<spartanweaponry:throwing_knife_diamond>,
	<spartanweaponry:throwing_axe_diamond>,
	<spartanweaponry:javelin_diamond>,
	<spartanweaponry:boomerang_diamond>,
	<spartanweaponry:battleaxe_diamond>,
	<spartanweaponry:mace_diamond>,
	<spartanweaponry:glaive_diamond>,
	<spartanweaponry:staff_diamond>,
	<spartanweaponry:quiver_arrow_heavy>,
	<spartanweaponry:quiver_bolt_heavy>,
	<advancedmortars:mortar:3>,
	<minecraft:diamond_helmet>,
	<minecraft:diamond_chestplate>,
	<minecraft:diamond_leggings>,
	<minecraft:diamond_boots>,
	<spartanshields:shield_basic_diamond>,
	<atop:ruby_helmet>,
	<atop:ruby_chestplate>,
	<atop:ruby_leggings>,
	<atop:ruby_boots>,
	<atop:sapphire_helmet>,
	<atop:sapphire_chestplate>,
	<atop:sapphire_leggings>,
	<atop:sapphire_boots>,
	<atop:peridot_helmet>,
	<atop:peridot_chestplate>,
	<atop:peridot_leggings>,
	<atop:peridot_boots>,
	<atop:amethyst_helmet>,
	<atop:amethyst_chestplate>,
	<atop:amethyst_leggings>,
	<atop:amethyst_boots>,
] as IIngredient[];


for item in gemAll{
    recipes.remove(item);
}


//Diamond Tools
recipes.addShaped("diamond_shovel", <minecraft:diamond_shovel>,
 [[diamond],
  [stick],
  [stick]]);
recipes.addShaped("diamond_pickaxe", <minecraft:diamond_pickaxe>,
 [[diamond,diamond,diamond],
  [null,stick,null],
  [null,stick,null]]);
recipes.addShapedMirrored("diamond_hoe", <minecraft:diamond_hoe>,
 [[diamond,diamond],
  [null,stick],
  [null,stick]]);  
recipes.addShapedMirrored("diamond_axe", <minecraft:diamond_axe>,
 [[diamond,diamond],
  [diamond,stick],
  [null,stick]]); 
recipes.addShapedMirrored("diamond_mortar", <advancedmortars:mortar:3>,
 [[null,null,stick],
  [diamond,flint,diamond],
  [null,diamond,null]]);


//Diamond Armor  
recipes.addShaped("diamond_helmet", <minecraft:diamond_helmet>,
 [[diamond,diamond,diamond],
  [diamond,null,diamond]]);  
recipes.addShaped("diamond_chestplate", <minecraft:diamond_chestplate>,
 [[diamond,null,diamond],
  [diamond,diamond,diamond],
  [diamond,diamond,diamond]]);   
recipes.addShaped("diamond_leggings", <minecraft:diamond_leggings>,
 [[diamond,diamond,diamond],
  [diamond,null,diamond],
  [diamond,null,diamond]]);   
recipes.addShaped("diamond_boots", <minecraft:diamond_boots>,
 [[diamond,null,diamond],
  [diamond,null,diamond]]);  


//Diamond Spartan Weapons
recipes.addShaped("diamond_dagger", <spartanweaponry:dagger_diamond>,
 [[diamond],
  [handle]]);
recipes.addShaped("diamond_longsword", <spartanweaponry:longsword_diamond>,
 [[null,diamond,null],
  [null,diamond,null],
  [diamond,handle,diamond]]); 
recipes.addShaped("diamond_katana", <spartanweaponry:katana_diamond>,
 [[null,null,diamond],
  [null,diamond,null],
  [handle,null,null]]);
recipes.addShaped("diamond_saber", <spartanweaponry:saber_diamond>,
 [[null,diamond],
  [null,diamond],
  [diamond,handle]]);
recipes.addShaped("diamond_rapier", <spartanweaponry:rapier_diamond>,
 [[null,null,diamond],
  [diamond,diamond,null],
  [handle,diamond,null]]);
recipes.addShaped("diamond_greatsword", <spartanweaponry:greatsword_diamond>,
 [[null,diamond,null],
  [diamond,diamond,diamond],
  [diamond,handle,diamond]]);
recipes.addShaped("diamond_war_mallet", <spartanweaponry:hammer_diamond>,
 [[diamond,diamond,diamond],
  [diamond,diamond,diamond],
  [null,handle,null]]);
recipes.addShaped("diamond_warhammer", <spartanweaponry:warhammer_diamond>,
 [[null,diamond],
  [diamond,diamond],
  [null,handle]]);
recipes.addShaped("diamond_spear", <spartanweaponry:spear_diamond>,
 [[diamond],
  [pole]]);
recipes.addShaped("diamond_halberd", <spartanweaponry:halberd_diamond>,
 [[null,diamond],
  [diamond,diamond],
  [diamond,handle]]);
recipes.addShaped("diamond_pike", <spartanweaponry:pike_diamond>,
 [[diamond],
  [pole],
  [pole]]);
recipes.addShaped("diamond_lance", <spartanweaponry:lance_diamond>,
 [[diamond],
  [pole],
  [handle]]);
recipes.addShaped("diamond_longbow", <spartanweaponry:longbow_diamond>,
 [[handle,stick,diamond],
  [stick,null,twine],
  [diamond,twine,twine]]);
recipes.addShaped("diamond_throwing_knife", <spartanweaponry:throwing_knife_diamond>,
 [[handle,diamond]]);
recipes.addShaped("diamond_throwing_axe", <spartanweaponry:throwing_axe_diamond>,
 [[handle,diamond],
  [null,diamond]]);
recipes.addShaped("diamond_javelin", <spartanweaponry:javelin_diamond>,
 [[pole,diamond]]);
recipes.addShaped("diamond_boomerang", <spartanweaponry:boomerang_diamond>,
 [[diamond,wood,wood],
  [wood,null,null],
  [wood,null,null]]);
recipes.addShaped("diamond_battleaxe", <spartanweaponry:battleaxe_diamond>,
 [[diamond,diamond,diamond],
  [diamond,stick,diamond],
  [null,handle,null]]);
recipes.addShaped("diamond_mace", <spartanweaponry:mace_diamond>,
 [[null,diamond,diamond],
  [null,stick,diamond],
  [handle,null,null]]);
recipes.addShaped("diamond_glaive", <spartanweaponry:glaive_diamond>,
 [[null,diamond],
  [null,diamond],
  [diamond,pole]]);
recipes.addShaped("diamond_staff", <spartanweaponry:staff_diamond>,
 [[pole],
  [diamond]]);
recipes.addShaped("diamond_arrow_quiver", <spartanweaponry:quiver_arrow_heavy>,
 [[leather,twine,leather],
  [leather,arrow,leather],
  [twine,diamond,twine]]);
recipes.addShaped("diamond_bolt_quiver", <spartanweaponry:quiver_bolt_heavy>,
 [[leather,twine,leather],
  [leather,bolt,leather],
  [twine,diamond,twine]]);
  
  
//ruby
recipes.addShaped("ruby_sword", <atop:ruby_sword>,
 [[ruby],
  [ruby],
  [handle]]);
recipes.addShapedMirrored("ruby_axe", <atop:ruby_axe>,
 [[ruby,ruby],
  [ruby,stick],
  [null,stick]]); 
  
recipes.addShaped("ruby_helmet", <atop:ruby_helmet>,
 [[ruby,ruby,ruby],
  [ruby,null,ruby]]);  
recipes.addShaped("ruby_chestplate", <atop:ruby_chestplate>,
 [[ruby,null,ruby],
  [ruby,ruby,ruby],
  [ruby,ruby,ruby]]);   
recipes.addShaped("ruby_leggings", <atop:ruby_leggings>,
 [[ruby,ruby,ruby],
  [ruby,null,ruby],
  [ruby,null,ruby]]);   
recipes.addShaped("ruby_boots", <atop:ruby_boots>,
 [[ruby,null,ruby],
  [ruby,null,ruby]]); 
  

//sapphire
recipes.addShaped("sapphire_sword", <atop:sapphire_sword>,
 [[sapphire],
  [sapphire],
  [handle]]);
recipes.addShapedMirrored("sapphire_shovel", <atop:sapphire_shovel>,
 [[sapphire],
  [stick],
  [stick]]); 
  
recipes.addShaped("sapphire_helmet", <atop:sapphire_helmet>,
 [[sapphire,sapphire,sapphire],
  [sapphire,null,sapphire]]);  
recipes.addShaped("sapphire_chestplate", <atop:sapphire_chestplate>,
 [[sapphire,null,sapphire],
  [sapphire,sapphire,sapphire],
  [sapphire,sapphire,sapphire]]);   
recipes.addShaped("sapphire_leggings", <atop:sapphire_leggings>,
 [[sapphire,sapphire,sapphire],
  [sapphire,null,sapphire],
  [sapphire,null,sapphire]]);   
recipes.addShaped("sapphire_boots", <atop:sapphire_boots>,
 [[sapphire,null,sapphire],
  [sapphire,null,sapphire]]); 
  
  
//peridot
recipes.addShaped("peridot_sword", <atop:peridot_sword>,
 [[peridot],
  [peridot],
  [handle]]);
recipes.addShapedMirrored("peridot_pickaxe", <atop:peridot_pickaxe>,
 [[peridot,peridot,peridot],
  [null,stick,null],
  [null,stick,null]]); 
  
recipes.addShaped("peridot_helmet", <atop:peridot_helmet>,
 [[peridot,peridot,peridot],
  [peridot,null,peridot]]);  
recipes.addShaped("peridot_chestplate", <atop:peridot_chestplate>,
 [[peridot,null,peridot],
  [peridot,peridot,peridot],
  [peridot,peridot,peridot]]);   
recipes.addShaped("peridot_leggings", <atop:peridot_leggings>,
 [[peridot,peridot,peridot],
  [peridot,null,peridot],
  [peridot,null,peridot]]);   
recipes.addShaped("peridot_boots", <atop:peridot_boots>,
 [[peridot,null,peridot],
  [peridot,null,peridot]]);
  
  
//amethyst
recipes.addShapedMirrored("amethyst_scythe", <atop:amethyst_hoe>,
 [[amethyst,amethyst],
  [null,stick],
  [null,stick]]); 
  
recipes.addShaped("amethyst_helmet", <atop:amethyst_helmet>,
 [[amethyst,amethyst,amethyst],
  [amethyst,null,amethyst]]);  
recipes.addShaped("amethyst_chestplate", <atop:amethyst_chestplate>,
 [[amethyst,null,amethyst],
  [amethyst,amethyst,amethyst],
  [amethyst,amethyst,amethyst]]);   
recipes.addShaped("amethyst_leggings", <atop:amethyst_leggings>,
 [[amethyst,amethyst,amethyst],
  [amethyst,null,amethyst],
  [amethyst,null,amethyst]]);   
recipes.addShaped("amethyst_boots", <atop:amethyst_boots>,
 [[amethyst,null,amethyst],
  [amethyst,null,amethyst]]);