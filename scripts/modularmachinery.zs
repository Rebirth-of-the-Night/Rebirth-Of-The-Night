import mods.modularmachinery.RecipeBuilder;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

val DryerInputs = [] as IItemStack[];
val DryerItemOutputs = [] as IItemStack[];
val DryerFluidOutputs = [] as IItemStack[];
val DryerRecipeNames = [] as string[];

for i, input in DryerInputs {
    var recipe = RecipeBuilder.newBuilder(DryerRecipeNames[i], "dryer", 600);
    recipe.addItemInput(DryerInputs[i]);
    recipe.addItemOutput(DryerItemOutputs[i]);
    recipe.addFluidOutput(DryerFluidOutputs[i]);
    recipe.build();
}
