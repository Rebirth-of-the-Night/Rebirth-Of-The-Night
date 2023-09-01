import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

JEI.removeAndHide(<advancedliftingmethods:ender_elevator>);
JEI.removeAndHide(<advancedliftingmethods:advanced_ender_elevator>);
JEI.removeAndHide(<advancedliftingmethods:advanced_blowing_elevator>);
JEI.removeAndHide(<advancedliftingmethods:ultimate_blowing_elevator>);
JEI.removeAndHide(<advancedliftingmethods:advanced_rotor>);
JEI.removeAndHide(<advancedliftingmethods:ultimate_rotor>);
recipes.remove(<advancedliftingmethods:blowing_elevator>);
recipes.remove(<advancedliftingmethods:ultimate_ender_elevator>);
recipes.remove(<advancedliftingmethods:powered_ladder>);

recipes.addShaped("auto_ladder_iron", <advancedliftingmethods:powered_ladder>*4, 
[[<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotIron>,<ore:dustRedstone>,<ore:ingotIron>]]);
recipes.addShaped("auto_ladder_tin", <advancedliftingmethods:powered_ladder>*1, 
[[<ore:ingotTin>,<ore:dustRedstone>,<ore:ingotTin>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotTin>,<ore:dustRedstone>,<ore:ingotTin>]]);
recipes.addShaped("auto_ladder_steel", <advancedliftingmethods:powered_ladder>*8,
[[<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>],
[<ore:ingotElectrum>,<betterwithmods:material:36>,<ore:ingotElectrum>],
[<ore:ingotSteel>,<ore:dustRedstone>,<ore:ingotSteel>]]);

recipes.addShaped("elevator_fan", <advancedliftingmethods:blowing_elevator>,[
	[<minecraft:iron_bars>, <ore:ingotSteel>, <minecraft:iron_bars>],
    [<ore:ingotSteel>, <advancedliftingmethods:rotor>, <ore:ingotSteel>],
    [<ore:cobblestone>, <minecraft:stone_pressure_plate>, <ore:cobblestone>]
]);
recipes.addShaped("elevator_ender", <contenttweaker:elevator>,[
	[<endreborn:item_end_shard>, <betterwithmods:lens>, <endreborn:item_end_shard>],
    [<betterwithaddons:material:6>, <endreborn:item_advanced_ender_pearl>, <betterwithaddons:material:6>],
    [<ore:shulkerShell>, <betterwithmods:detector>, <ore:shulkerShell>]
]);
