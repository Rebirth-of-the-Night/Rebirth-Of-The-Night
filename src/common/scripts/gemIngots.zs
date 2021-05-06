import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// This file adds recipes for all objects that require a gem ingot to make 
//  Exceptions:
//    Diamond Sword - spartan_cohesion.zs

val diamond = <betterwithmods:material:45>;
val ruby = <contenttweaker:ruby_ingot>;
val sapphire = <contenttweaker:sapphire_ingot>;
val peridot = <contenttweaker:peridot_ingot>;
val exorite =<contenttweaker:exorite_ingot>;
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
	<spartanweaponry:javelin_diamond>,
	<spartanweaponry:boomerang_diamond>,
	<spartanweaponry:battleaxe_diamond>,
	<spartanweaponry:mace_diamond>,
	<spartanweaponry:glaive_diamond>,
	<spartanweaponry:staff_diamond>,
	<spartanweaponry:quiver_arrow_heavy>,
	<spartanweaponry:quiver_bolt_heavy>,
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
recipes.addShaped("diamond_pickaxe", <minecraft:diamond_pickaxe>,
 [[diamond,diamond,diamond],
  [null,stick,null],
  [null,stick,null]]);
  recipes.addShaped("diamond_shovel", <minecraft:diamond_shovel>,
 [[diamond],
  [stick],
  [stick]]);
recipes.addShapedMirrored("diamond_hoe", <minecraft:diamond_hoe>,
 [[diamond,diamond],
  [null,stick],
  [null,stick]]);  
recipes.addShapedMirrored("diamond_axe", <minecraft:diamond_axe>,
 [[diamond,diamond],
  [diamond,stick],
  [null,stick]]);


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

/*
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
//recipes.addShaped("diamond_throwing_knife", <spartanweaponry:throwing_knife_diamond>,
// [[handle,diamond]]);
//recipes.addShaped("diamond_throwing_axe", <spartanweaponry:throwing_axe_diamond>,
// [[handle,diamond],
//  [null,diamond]]);
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
  */
  
//ruby
recipes.remove(<atop:ruby_sword>);
recipes.addShaped("ruby_sword", <atop:ruby_sword>,
 [[ruby],
  [ruby],
  [handle]]);

recipes.remove(<atop:ruby_axe>);
recipes.addShapedMirrored("ruby_axe", <atop:ruby_axe>,
 [[ruby,ruby],
  [ruby,stick],
  [null,stick]]); 

recipes.remove(<atop:ruby_pickaxe>);
recipes.addShaped("ruby_pickaxe", <atop:ruby_pickaxe>,
 [[ruby,ruby,ruby],
  [null,stick,null],
  [null,stick,null]]);

recipes.remove(<atop:ruby_shovel>);
recipes.addShaped("ruby_shovel", <atop:ruby_shovel>,
 [[ruby],
  [stick],
  [stick]]);

recipes.remove(<atop:ruby_hoe>);
recipes.addShapedMirrored("ruby_hoe", <atop:ruby_hoe>,
 [[ruby,ruby],
  [null,stick],
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
recipes.remove(<atop:sapphire_sword>);
recipes.addShaped("sapphire_sword", <atop:sapphire_sword>,
 [[sapphire],
  [sapphire],
  [handle]]);

  recipes.remove(<atop:sapphire_axe>);
recipes.addShapedMirrored("sapphire_axe", <atop:sapphire_axe>,
 [[sapphire,sapphire],
  [sapphire,stick],
  [null,stick]]); 

recipes.remove(<atop:sapphire_pickaxe>);
recipes.addShaped("sapphire_pickaxe", <atop:sapphire_pickaxe>,
 [[sapphire,sapphire,sapphire],
  [null,stick,null],
  [null,stick,null]]);

recipes.remove(<atop:sapphire_shovel>);
recipes.addShaped("sapphire_shovel", <atop:sapphire_shovel>,
 [[sapphire],
  [stick],
  [stick]]);

recipes.remove(<atop:sapphire_hoe>);
recipes.addShapedMirrored("sapphire_hoe", <atop:sapphire_hoe>,
 [[sapphire,sapphire,null],
  [null,stick,null],
  [null,stick,null]]); 
  
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

recipes.remove(<atop:peridot_sword>);
recipes.addShaped("peridot_sword", <atop:peridot_sword>,
 [[peridot],
  [peridot],
  [handle]]);

recipes.remove(<atop:peridot_shovel>);
recipes.addShapedMirrored("peridot_shovel", <atop:peridot_shovel>,
 [[null,peridot,null],
  [null,stick,null],
  [null,stick,null]]); 

recipes.remove(<atop:peridot_axe>);
recipes.addShapedMirrored("peridot_axe", <atop:peridot_axe>,
 [[peridot,peridot],
  [peridot,stick],
  [null,stick]]); 

recipes.remove(<atop:peridot_pickaxe>);
recipes.addShaped("peridot_pickaxe", <atop:peridot_pickaxe>,
 [[peridot,peridot,peridot],
  [null,stick,null],
  [null,stick,null]]);

recipes.remove(<atop:peridot_hoe>);
recipes.addShapedMirrored("peridot_hoe", <atop:peridot_hoe>,
 [[peridot,peridot,null],
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
  
  
//exorite

recipes.remove(<atop:amethyst_sword>);
mods.betterwithmods.Anvil.addShaped(<atop:amethyst_sword>,
[
   [null, exorite, exorite, exorite],
   [exorite, exorite, <contenttweaker:voidseen_exorite>, <endreborn:sword_shard>],
   [null, exorite, exorite, exorite],
   [null, null, null, null]
]);


recipes.remove(<atop:topaz_sword>);
mods.betterwithmods.Anvil.addShaped(<atop:topaz_sword>,
[
   [<contenttweaker:voidseen_exorite>, exorite, exorite, <spartanweaponry:material:1>],
   [exorite, null, null, null],
   [exorite, null, null, null],
   [null, exorite, null, null]
]);

recipes.remove(<atop:amethyst_hoe>);
recipes.addShapedMirrored("exorite_hoe", <atop:amethyst_hoe>,
 [[exorite,exorite,null],
  [null,stick,null],
  [null,stick,null]]); 

  recipes.remove(<atop:amethyst_shovel>);
recipes.addShapedMirrored("exorite_shovel", <atop:amethyst_shovel>,
 [[null,exorite,null],
  [null,stick,null],
  [null,stick,null]]); 

recipes.remove(<atop:amethyst_axe>);
recipes.addShapedMirrored("exorite_axe", <atop:amethyst_axe>,
 [[exorite,exorite],
  [exorite,stick],
  [null,stick]]); 

recipes.remove(<atop:amethyst_pickaxe>);
recipes.addShaped("exorite_pickaxe", <atop:amethyst_pickaxe>,
 [[exorite,exorite,exorite],
  [null,stick,null],
  [null,stick,null]]);

  
recipes.remove(<atop:amethyst_helmet>);
recipes.addShaped("exorite_helmet", <atop:amethyst_helmet>,
 [[exorite,exorite,exorite],
  [exorite,null,exorite]]);  

recipes.remove(<atop:amethyst_chestplate>);
recipes.addShaped("exorite_chestplate", <atop:amethyst_chestplate>,
 [[exorite,null,exorite],
  [exorite,exorite,exorite],
  [exorite,exorite,exorite]]);  

recipes.remove(<atop:amethyst_leggings>); 
recipes.addShaped("exorite_leggings", <atop:amethyst_leggings>,
 [[exorite,exorite,exorite],
  [exorite,null,exorite],
  [exorite,null,exorite]]);   

recipes.remove(<atop:amethyst_boots>); 
recipes.addShaped("exorite_boots", <atop:amethyst_boots>,
 [[exorite,null,exorite],
  [exorite,null,exorite]]);