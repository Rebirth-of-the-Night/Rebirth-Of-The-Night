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
    "filter",
    "vacuum_bag",
    "vacuum_tube",
    "respirator"
] as string[];

for mat in mats {
    for item in hiddenItems {
        JEI.removeAndHide(itemUtils.getItem("adpother:"~mat~"_"~item));
    }
}
