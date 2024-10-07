import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

JEI.removeAndHide(<animania:block_mud>);
JEI.removeAndHide(<animania:riding_crop>);
JEI.removeAndHide(<animania:item_wagon>);

JEI.removeAndHide(<animania:honey_bottle>);
JEI.removeAndHide(<animania:honey_bottle>.withTag({Fluid: {FluidName: "animania_honey", Amount: 1000}}));
JEI.hide(<liquid:animania_honey>);
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "animania_honey", Amount: 1000}));
JEI.removeAndHide(<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "animania_honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "animania_honey", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "animania_honey", Amount: 1000}}));
JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "animania_honey", Amount: 1000}}));
JEI.removeAndHide(<animania:bee_hive>);
JEI.removeAndHide(<animania:wild_hive>);
JEI.removeAndHide(<animania:item_cart>);
JEI.removeAndHide(<animania:wheel>);
JEI.removeAndHide(<animania:item_tiller>);

<ore:foodHoneydrop>.remove(<animania:honey_bottle>);
<ore:dropHoney>.remove(<animania:honey_bottle>);
<ore:foodHoney>.remove(<animania:honey_bottle>);
<ore:listAllrabbitraw>.add(<animania:raw_prime_rabbit>);


recipes.removeByRecipeName("animania:straw");
recipes.removeByRecipeName("animania:bed");

recipes.remove(<animania:block_hamster_wheel>);
recipes.addShaped("hamster_wheel",<animania:block_hamster_wheel>,[
	[null,<ore:genericMetal>,null],
	[<ore:genericMetal>,null,<ore:genericMetal>],
	[<ore:stoneSlab>,<ore:ingotIron>,<ore:stoneSlab>]
]);

recipes.remove(<animania:carving_knife>);
recipes.addShapedMirrored("carving_knife",<animania:carving_knife>,[
	[<ore:genericMetal>,<ore:genericMetal>],
	[<ore:genericMetal>,<ore:genericMetal>],
	[<ore:stickWood>,null]
]);

var flimsywaterbucket = <pyrotech:bucket_stone>.withTag({durability: 32767, fluids: {FluidName: "water", Amount: 1000}}).transformReplace(<pyrotech:bucket_stone>);
var qualitybucket = <minecraft:water_bucket>.transformReplace(<minecraft:bucket>);

recipes.removeByRecipeName("animania:salt_lick_0");
recipes.addShapeless("salt_lick_0",<animania:salt_lick>,[
    <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, flimsywaterbucket
]);
recipes.addShapeless("salt_lick_1",<animania:salt_lick>,[
    <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, <ore:itemSalt>, qualitybucket
]);

// Hamster balls craftable with stained glass

for i in 0 to 16 {
	recipes.addShaped(<animania:hamster_ball_colored>.definition.makeStack(i),[
		[<minecraft:stained_glass_pane>.definition.makeStack(15-i),<minecraft:stained_glass_pane>.definition.makeStack(15-i),<minecraft:stained_glass_pane>.definition.makeStack(15-i)],
		[<minecraft:stained_glass_pane>.definition.makeStack(15-i),null,<minecraft:stained_glass_pane>.definition.makeStack(15-i)],
		[<minecraft:stained_glass_pane>.definition.makeStack(15-i),<minecraft:stained_glass_pane>.definition.makeStack(15-i),<minecraft:stained_glass_pane>.definition.makeStack(15-i)]
	]);
}

// Milk oredict
var bovid_milk =
<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})|
<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}})|
<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})|
<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}})|
<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_goat", Amount: 1000}})|
<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_sheep", Amount: 1000}})|
<forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000})|
<forge:bucketfilled>.withTag({FluidName: "milk_sheep", Amount: 1000});

var deluxeMilk = 
<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})|
<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})|
<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})|
<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})|
<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})|
<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})|
<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_holstein", Amount: 1000}})|
<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_friesian", Amount: 1000}})|
<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "milk_jersey", Amount: 1000}})|
<forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000})|
<forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000})|
<forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000});

recipes.remove(<animania:milk_bottle>);
recipes.addShapeless("bottle_of_milk",<animania:milk_bottle>,[<ore:listAllmilk>,<minecraft:glass_bottle>]);
recipes.addShapeless("bottle_of_bovid_milk",<animania:milk_bottle>,[bovid_milk,<minecraft:glass_bottle>]);
recipes.addShapeless("bottle_of_deluxe_milk",<animania:milk_bottle>*2,[deluxeMilk,<minecraft:glass_bottle>,<minecraft:glass_bottle>]);

// Omelette recipes

var eggAddArray = [<aether_legacy:moa_egg>,<betteranimalsplus:turkey_egg>,<betteranimalsplus:pheasant_egg>,<betteranimalsplus:goose_egg>,<primitivemobs:dodo_egg>] as IItemStack[];
var eggRemoveArray = [<betteranimalsplus:turkey_egg>,<betteranimalsplus:pheasant_egg>,<betteranimalsplus:goose_egg>] as IItemStack[];

for egg in eggAddArray{
	if(eggRemoveArray has egg){
		furnace.remove(<betteranimalsplus:fried_egg>,egg);
	}
	furnace.addRecipe(<animania:plain_omelette>,egg,0.3);
}
