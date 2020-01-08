import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

//Removed iron recipes
recipes.remove(<mcwbridges:iron_rod>);
recipes.remove(<mcwbridges:iron_armrest>);
recipes.remove(<mcwbridges:iron_platform>);
recipes.remove(<mcwbridges:most1>);

//Added material recipes
recipes.addShaped("Tin bridge armrest", <mcwbridges:iron_armrest>*6,[
	[<ore:ingotTin>],
  [<ore:ingotTin>]
]);
recipes.addShaped("Tin bridge platform", <mcwbridges:iron_platform>*2,[
	[<ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>],
]);
