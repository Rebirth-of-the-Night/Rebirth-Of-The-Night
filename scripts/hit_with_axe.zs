import mods.hitwithaxe.Chopping;

//non-default log to wood
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.addShaped("oak_planks", <minecraft:planks>*2,[
	[null],
    [<minecraft:log>], 
	[null]
]);

//Oak
Chopping.addRecipe("minecraft:log", 0, "hitwithaxe:debarked_oak", 1, <hitwithaxe:bark:15>); //Y Axis
Chopping.addRecipe("minecraft:log", 4, "hitwithaxe:debarked_oak", 0, <hitwithaxe:bark:15>); //X Axis
Chopping.addRecipe("minecraft:log", 8, "hitwithaxe:debarked_oak", 2, <hitwithaxe:bark:15>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_oak", 32767, <minecraft:planks>);

//Birch
Chopping.addRecipe("minecraft:log", 2, "hitwithaxe:debarked_birch", 1, <hitwithaxe:bark:2>); //Y Axis
Chopping.addRecipe("minecraft:log", 6, "hitwithaxe:debarked_birch", 0, <hitwithaxe:bark:2>); //X Axis
Chopping.addRecipe("minecraft:log", 10, "hitwithaxe:debarked_birch", 2, <hitwithaxe:bark:2>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_birch", 32767, <minecraft:planks:2>);

//Spruce
Chopping.addRecipe("minecraft:log", 1, "hitwithaxe:debarked_spruce", 1, <hitwithaxe:bark:20>); //Y Axis
Chopping.addRecipe("minecraft:log", 5, "hitwithaxe:debarked_spruce", 0, <hitwithaxe:bark:20>); //X Axis
Chopping.addRecipe("minecraft:log", 9, "hitwithaxe:debarked_spruce", 2, <hitwithaxe:bark:20>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_spruce", 32767, <minecraft:planks:1>);

//Jungle
Chopping.addRecipe("minecraft:log", 3, "hitwithaxe:debarked_jungle", 1, <hitwithaxe:bark:12>); //Y Axis
Chopping.addRecipe("minecraft:log", 7, "hitwithaxe:debarked_jungle", 0, <hitwithaxe:bark:12>); //X Axis
Chopping.addRecipe("minecraft:log", 11, "hitwithaxe:debarked_jungle", 2, <hitwithaxe:bark:12>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_jungle", 32767, <minecraft:planks:3>);

//Dark Oak
Chopping.addRecipe("minecraft:log2", 1, "hitwithaxe:debarked_dark_oak", 1, <hitwithaxe:bark:8>); //Y Axis
Chopping.addRecipe("minecraft:log2", 5, "hitwithaxe:debarked_dark_oak", 0, <hitwithaxe:bark:8>); //X Axis
Chopping.addRecipe("minecraft:log2", 9, "hitwithaxe:debarked_dark_oak", 2, <hitwithaxe:bark:8>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_dark_oak", 32767, <minecraft:planks:5>);

//Acacia
Chopping.addRecipe("minecraft:log2", 0, "hitwithaxe:debarked_acacia", 1, <hitwithaxe:bark>); //Y Axis
Chopping.addRecipe("minecraft:log2", 4, "hitwithaxe:debarked_acacia", 0, <hitwithaxe:bark>); //X Axis
Chopping.addRecipe("minecraft:log2", 8, "hitwithaxe:debarked_acacia", 2, <hitwithaxe:bark>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_acacia", 32767, <minecraft:planks:4>);

//Spectre
Chopping.addRecipe("randomthings:spectrelog", 1, "hitwithaxe:debarked_spectre", 1, <hitwithaxe:bark:19>); //Y Axis
Chopping.addRecipe("randomthings:spectrelog", 0, "hitwithaxe:debarked_spectre", 0, <hitwithaxe:bark:19>); //X Axis
Chopping.addRecipe("randomthings:spectrelog", 2, "hitwithaxe:debarked_spectre", 2, <hitwithaxe:bark:19>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_spectre", 32767, <randomthings:spectreplank>);

// Olive
Chopping.addRecipe("rustic:log", 0, "hitwithaxe:debarked_olive", 1, <hitwithaxe:bark:27>); //Y Axis
Chopping.addRecipe("rustic:log", 4, "hitwithaxe:debarked_olive", 0, <hitwithaxe:bark:27>); //X Axis
Chopping.addRecipe("rustic:log", 8, "hitwithaxe:debarked_olive", 2, <hitwithaxe:bark:27>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_olive", 32767, <rustic:planks>);

// Ironwood
Chopping.addRecipe("rustic:log", 1, "hitwithaxe:debarked_ironwood", 1, <hitwithaxe:bark:25>); //Y Axis
Chopping.addRecipe("rustic:log", 5, "hitwithaxe:debarked_ironwood", 0, <hitwithaxe:bark:25>); //X Axis
Chopping.addRecipe("rustic:log", 9, "hitwithaxe:debarked_ironwood", 2, <hitwithaxe:bark:25>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_ironwood", 32767, <rustic:planks:1>);

//Plank -> Stick
Chopping.addRecipe("minecraft:planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("randomthings:spectreplank", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("rustic:planks", 32767, <minecraft:stick> * 2);
