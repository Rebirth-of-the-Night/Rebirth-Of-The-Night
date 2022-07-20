import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

recipes.removeByMod("adpother");
JEI.removeAndHide(<adpother:carbon:*>);
JEI.removeAndHide(<adpother:sulfur:*>);
JEI.removeAndHide(<adpother:dust:*>);
// JEI.removeAndHide(<adpother:degassing:*>); // in case of jei descriptions
JEI.removeAndHide(<adpother:nitrogen:*>);
JEI.removeAndHide(<adpother:aerometer>);
JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: "polluted_water", Amount: 1000}));
JEI.removeAndHide(<pyrotech:bucket_wood>.withTag({fluids: {FluidName: "polluted_water", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_clay>.withTag({fluids: {FluidName: "polluted_water", Amount: 1000}}));
JEI.removeAndHide(<pyrotech:bucket_stone>.withTag({fluids: {FluidName: "polluted_water", Amount: 1000}}));
JEI.removeAndHide(<adpother:polluted_water>);

val mats as string[] = [
    "iron",
    "gold",
    "diamond"
] as string[];

var hiddenItems as string[] = [
    "vacuum_bag",
    "vacuum_tube",
] as string[];

for mat in mats {
    for item in hiddenItems {
        JEI.removeAndHide(itemUtils.getItem("adpother:"~mat~"_"~item));
    }
}

JEI.removeAndHide(<adpother:diamond_filter>);
JEI.removeAndHide(<adpother:gold_filter>);
JEI.removeAndHide(<adpother:diamond_respirator>);
JEI.removeAndHide(<adpother:gold_respirator>);

recipes.addShaped(<adpother:iron_filter>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <ore:genericMetalBars>, <minecraft:iron_ingot>], 
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);
recipes.addShaped(<adpother:iron_respirator>.withTag({FULLNESS: {CAPACITY: 30, degassing: 0, nitrogen: 0, dreadmist: 0, sulfur: 0, dust: 0, vilemist: 0, methaneCoalbed: 0}}), [
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],
    [<harvestcraft:hardenedleatheritem>, <ore:paneGlass>, <harvestcraft:hardenedleatheritem>], 
    [<harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>, <harvestcraft:wovencottonitem>]
]);