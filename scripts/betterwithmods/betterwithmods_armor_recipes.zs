import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;


//Universal plate armor
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:42>, [
   [<ore:hideStrap>],
   [<ore:gemOnyx>],
   [<ore:padding>],
   [<ore:hideStrap>]
]);
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:42>, [
   [<ore:hideStrap>],
   [<simpleores:mythril_ingot>],
   [<ore:padding>],
   [<ore:hideStrap>]
]);
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:42>, [
   [<ore:hideStrap>],
   [<simpleores:adamantium_ingot>],
   [<ore:padding>],
   [<ore:hideStrap>]
]);
mods.betterwithmods.Anvil.addShaped(<betterwithmods:material:42>, [
   [<ore:hideStrap>],
   [<endreborn:item_ingot_endorium>],
   [<ore:padding>],
   [<ore:hideStrap>]
]);

//Removed Recipes
recipes.remove(<simpleores:mythril_helmet>);
recipes.remove(<simpleores:mythril_chestplate>);
recipes.remove(<simpleores:mythril_leggings>);
recipes.remove(<simpleores:mythril_boots>);

recipes.remove(<simpleores:onyx_helmet>);
recipes.remove(<simpleores:onyx_chestplate>);
recipes.remove(<simpleores:onyx_leggings>);
recipes.remove(<simpleores:onyx_boots>);

recipes.remove(<simpleores:adamantium_helmet>);
recipes.remove(<simpleores:adamantium_chestplate>);
recipes.remove(<simpleores:adamantium_leggings>);
recipes.remove(<simpleores:adamantium_boots>);

recipes.remove(<iceandfire:dragonsteel_fire_helmet>);
recipes.remove(<iceandfire:dragonsteel_fire_chestplate>);
recipes.remove(<iceandfire:dragonsteel_fire_leggings>);
recipes.remove(<iceandfire:dragonsteel_fire_boots>);

recipes.remove(<iceandfire:dragonsteel_ice_helmet>);
recipes.remove(<iceandfire:dragonsteel_ice_chestplate>);
recipes.remove(<iceandfire:dragonsteel_ice_leggings>);
recipes.remove(<iceandfire:dragonsteel_ice_boots>);


//Armors
//Mythril
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_helmet>, 
[
   [<ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <betterwithmods:material:42>],
   [<ore:ingotMythril>, null, null, null],
   [<ore:ingotMythril>, null, null, null],
   [<ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>, <betterwithmods:material:42>]
]);   
   mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_chestplate>, 
   [
   [<betterwithmods:material:42>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>],
   [null, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>],
   [null, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>],
   [<betterwithmods:material:42>, <ore:ingotMythril>, <ore:ingotMythril>, <ore:ingotMythril>],
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_leggings>, 
[
   [<ore:ingotMythril>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
   [<ore:ingotMythril>, <ore:ingotMythril>, null, null],
   [<ore:ingotMythril>, <ore:ingotMythril>, null, null],
    [<ore:ingotMythril>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>]
]);mods.betterwithmods.Anvil.addShaped(<simpleores:mythril_boots>, 
[
   [null, null, <ore:ingotMythril>],
   [<ore:ingotMythril>, <ore:ingotMythril>, <betterwithmods:material:42>],
   [<ore:ingotMythril>, <ore:ingotMythril>, <betterwithmods:material:42>],
   [null, null, <ore:ingotMythril>]
]);

//Onyx
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_helmet>, 
[
   [<ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>, <betterwithmods:material:42>],
   [<ore:gemOnyx>, null, null, null],
   [<ore:gemOnyx>, null, null, null],
   [<ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>, <betterwithmods:material:42>]
]);   
   mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_chestplate>, 
   [
   [<betterwithmods:material:42>, <ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>],
   [null, <ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>],
   [null, <ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>],
   [<betterwithmods:material:42>, <ore:gemOnyx>, <ore:gemOnyx>, <ore:gemOnyx>],
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_leggings>, 
[
   [<ore:gemOnyx>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
   [<ore:gemOnyx>, <ore:gemOnyx>, null, null],
   [<ore:gemOnyx>, <ore:gemOnyx>, null, null],
    [<ore:gemOnyx>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>]
]);mods.betterwithmods.Anvil.addShaped(<simpleores:onyx_boots>, 
[
   [null, null, <ore:gemOnyx>],
   [<ore:gemOnyx>, <ore:gemOnyx>, <betterwithmods:material:42>],
   [<ore:gemOnyx>, <ore:gemOnyx>, <betterwithmods:material:42>],
   [null, null, <ore:gemOnyx>]
]);

//Viridium
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_helmet>, 
[
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <betterwithmods:material:42>],
   [<simpleores:adamantium_ingot>, null, null, null],
   [<simpleores:adamantium_ingot>, null, null, null],
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <betterwithmods:material:42>]
]);   
   mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_chestplate>, 
   [
   [<betterwithmods:material:42>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>],
   [null, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>],
   [null, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>],
   [<betterwithmods:material:42>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>],
]);
mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_leggings>, 
[
   [<simpleores:adamantium_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, null, null],
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, null, null],
    [<simpleores:adamantium_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>]
]);mods.betterwithmods.Anvil.addShaped(<simpleores:adamantium_boots>, 
[
   [null, null, <simpleores:adamantium_ingot>],
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <betterwithmods:material:42>],
   [<simpleores:adamantium_ingot>, <simpleores:adamantium_ingot>, <betterwithmods:material:42>],
   [null, null, <simpleores:adamantium_ingot>]
]);


//Dragon Steel
//Fire
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_fire_helmet>, 
[
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_fire_ingot>, null, null, null],
   [<iceandfire:dragonsteel_fire_ingot>, null, null, null],
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>]
]);   
   mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_fire_chestplate>, 
   [
   [<betterwithmods:material:42>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>],
   [null, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>],
   [null, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>],
   [<betterwithmods:material:42>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>],
]);
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_fire_leggings>, 
[
   [<iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, null, null],
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, null, null],
   [<iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
]);
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_fire_boots>, 
[
   [null, null, <iceandfire:dragonsteel_fire_ingot>],
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_fire_ingot>, <iceandfire:dragonsteel_fire_ingot>, <betterwithmods:material:42>],
   [null, null, <iceandfire:dragonsteel_fire_ingot>]
]);

//Ice
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_ice_helmet>, 
[
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_ice_ingot>, null, null, null],
   [<iceandfire:dragonsteel_ice_ingot>, null, null, null],
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>]
]);   
   mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_ice_chestplate>, 
   [
   [<betterwithmods:material:42>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>],
   [null, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>],
   [null, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>],
   [<betterwithmods:material:42>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>],
]);
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_ice_leggings>, 
[
   [<iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, null, null],
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, null, null],
   [<iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>, <betterwithmods:material:42>, <betterwithmods:material:42>],
]);
mods.betterwithmods.Anvil.addShaped(<iceandfire:dragonsteel_ice_boots>, 
[
   [null, null, <iceandfire:dragonsteel_ice_ingot>],
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>],
   [<iceandfire:dragonsteel_ice_ingot>, <iceandfire:dragonsteel_ice_ingot>, <betterwithmods:material:42>],
   [null, null, <iceandfire:dragonsteel_ice_ingot>]
]);
