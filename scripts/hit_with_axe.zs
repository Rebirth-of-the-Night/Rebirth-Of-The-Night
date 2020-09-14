import mods.hitwithaxe.Chopping;

//Oak
recipes.removeByRecipeName("minecraft:oak_planks");
recipes.addShaped("oak_planks", <minecraft:planks>*3,[
	[null],
	[<minecraft:log>],
	[null]
]);
recipes.addHiddenShaped("oak_planks1", <minecraft:planks>*3,[
	[<minecraft:log>],
	[null],
	[null]
]);
recipes.addHiddenShaped("oak_planks2", <minecraft:planks>*3,[
	[null],
	[null],
	[<minecraft:log>]
]);
Chopping.addRecipe("minecraft:log", 0, "hitwithaxe:debarked_oak", 1, <hitwithaxe:bark:15>); //Y Axis
Chopping.addRecipe("minecraft:log", 4, "hitwithaxe:debarked_oak", 0, <hitwithaxe:bark:15>); //X Axis
Chopping.addRecipe("minecraft:log", 8, "hitwithaxe:debarked_oak", 2, <hitwithaxe:bark:15>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_oak", 32767, <minecraft:planks>);

//Birch
recipes.removeByRecipeName("minecraft:birch_planks");
recipes.addShaped("birch_planks", <minecraft:planks:2>*3,[
	[null],
	[<minecraft:log:2>],
	[null]
]);
recipes.addHiddenShaped("birch_planks1", <minecraft:planks:2>*3,[
	[<minecraft:log:2>],
	[null],
	[null]
]);
recipes.addHiddenShaped("birch_planks2", <minecraft:planks:2>*3,[
	[null],
	[null],
	[<minecraft:log:2>]
]);
Chopping.addRecipe("minecraft:log", 2, "hitwithaxe:debarked_birch", 1, <hitwithaxe:bark:2>); //Y Axis
Chopping.addRecipe("minecraft:log", 6, "hitwithaxe:debarked_birch", 0, <hitwithaxe:bark:2>); //X Axis
Chopping.addRecipe("minecraft:log", 10, "hitwithaxe:debarked_birch", 2, <hitwithaxe:bark:2>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_birch", 32767, <minecraft:planks:2>);

//Spruce
recipes.removeByRecipeName("minecraft:spruce_planks");
recipes.addShaped("spruce_planks", <minecraft:planks:1>*3,[
	[null],
	[<minecraft:log:1>],
	[null]
]);
recipes.addHiddenShaped("spruce_planks1", <minecraft:planks:1>*3,[
	[<minecraft:log:1>],
	[null],
	[null]
]);
recipes.addHiddenShaped("spruce_planks2", <minecraft:planks:1>*3,[
	[null],
	[null],
	[<minecraft:log:1>]
]);
Chopping.addRecipe("minecraft:log", 1, "hitwithaxe:debarked_spruce", 1, <hitwithaxe:bark:20>); //Y Axis
Chopping.addRecipe("minecraft:log", 5, "hitwithaxe:debarked_spruce", 0, <hitwithaxe:bark:20>); //X Axis
Chopping.addRecipe("minecraft:log", 9, "hitwithaxe:debarked_spruce", 2, <hitwithaxe:bark:20>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_spruce", 32767, <minecraft:planks:1>);

//Jungle
recipes.removeByRecipeName("minecraft:jungle_planks");
recipes.addShaped("jungle_planks", <minecraft:planks:3>*3,[
	[null],
	[<minecraft:log:3>],
	[null]
]);
recipes.addHiddenShaped("jungle_planks1", <minecraft:planks:3>*3,[
	[<minecraft:log:3>],
	[null],
	[null]
]);
recipes.addHiddenShaped("jungle_planks2", <minecraft:planks:3>*3,[
	[null],
	[null],
	[<minecraft:log:3>]
]);
Chopping.addRecipe("minecraft:log", 3, "hitwithaxe:debarked_jungle", 1, <hitwithaxe:bark:12>); //Y Axis
Chopping.addRecipe("minecraft:log", 7, "hitwithaxe:debarked_jungle", 0, <hitwithaxe:bark:12>); //X Axis
Chopping.addRecipe("minecraft:log", 11, "hitwithaxe:debarked_jungle", 2, <hitwithaxe:bark:12>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_jungle", 32767, <minecraft:planks:3>);

//Dark Oak
recipes.removeByRecipeName("minecraft:dark_oak_planks");
recipes.addShaped("dark_oak_planks", <minecraft:planks:5>*3,[
	[null],
	[<minecraft:log2:1>],
	[null]
]);
recipes.addHiddenShaped("dark_oak_planks1", <minecraft:planks:5>*3,[
	[<minecraft:log2:1>],
	[null],
	[null]
]);
recipes.addHiddenShaped("dark_oak_planks2", <minecraft:planks:5>*3,[
	[null],
	[null],
	[<minecraft:log2:1>]
]);
Chopping.addRecipe("minecraft:log2", 1, "hitwithaxe:debarked_dark_oak", 1, <hitwithaxe:bark:8>); //Y Axis
Chopping.addRecipe("minecraft:log2", 5, "hitwithaxe:debarked_dark_oak", 0, <hitwithaxe:bark:8>); //X Axis
Chopping.addRecipe("minecraft:log2", 9, "hitwithaxe:debarked_dark_oak", 2, <hitwithaxe:bark:8>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_dark_oak", 32767, <minecraft:planks:5>);

//Acacia
recipes.removeByRecipeName("minecraft:acacia_planks");
recipes.addShaped("acacia_planks", <minecraft:planks:4>*3,[
	[null],
	[<minecraft:log2>],
	[null]
]);
recipes.addHiddenShaped("acacia_planks1", <minecraft:planks:4>*3,[
	[<minecraft:log2>],
	[null],
	[null]
]);
recipes.addHiddenShaped("acacia_planks2", <minecraft:planks:4>*3,[
	[null],
	[null],
	[<minecraft:log2>]
]);
Chopping.addRecipe("minecraft:log2", 0, "hitwithaxe:debarked_acacia", 1, <hitwithaxe:bark>); //Y Axis
Chopping.addRecipe("minecraft:log2", 4, "hitwithaxe:debarked_acacia", 0, <hitwithaxe:bark>); //X Axis
Chopping.addRecipe("minecraft:log2", 8, "hitwithaxe:debarked_acacia", 2, <hitwithaxe:bark>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_acacia", 32767, <minecraft:planks:4>);

//Spectre
//Chopping.addRecipe("randomthings:spectrelog", 1, "hitwithaxe:debarked_spectre", 1, <hitwithaxe:bark:19>); //Y Axis
//Chopping.addRecipe("randomthings:spectrelog", 0, "hitwithaxe:debarked_spectre", 0, <hitwithaxe:bark:19>); //X Axis
//Chopping.addRecipe("randomthings:spectrelog", 2, "hitwithaxe:debarked_spectre", 2, <hitwithaxe:bark:19>); //Z Axis
//Chopping.addRecipe("hitwithaxe:debarked_spectre", 32767, <randomthings:spectreplank>);

// Olive
recipes.removeByRecipeName("rustic:olive_planks");
recipes.addShaped("olive_planks", <rustic:planks>*3,[
	[null],
	[<rustic:log>],
	[null]
]);
recipes.addHiddenShaped("olive_planks1", <rustic:planks>*3,[
	[<rustic:log>],
	[null],
	[null]
]);
recipes.addHiddenShaped("olive_planks2", <rustic:planks>*3,[
	[null],
	[null],
	[<rustic:log>]
]);
Chopping.addRecipe("rustic:log", 0, "hitwithaxe:debarked_olive", 1, <hitwithaxe:bark:27>); //Y Axis
Chopping.addRecipe("rustic:log", 4, "hitwithaxe:debarked_olive", 0, <hitwithaxe:bark:27>); //X Axis
Chopping.addRecipe("rustic:log", 8, "hitwithaxe:debarked_olive", 2, <hitwithaxe:bark:27>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_olive", 32767, <rustic:planks>);

// Ironwood
recipes.removeByRecipeName("rustic:ironwood_planks");
recipes.addShaped("ironwood_planks", <rustic:planks:1>*3,[
	[null],
	[<rustic:log:1>],
	[null]
]);
recipes.addHiddenShaped("ironwood_planks1", <rustic:planks:1>*3,[
	[<rustic:log:1>],
	[null],
	[null]
]);
recipes.addHiddenShaped("ironwood_planks2", <rustic:planks:1>*3,[
	[null],
	[null],
	[<rustic:log:1>]
]);
Chopping.addRecipe("rustic:log", 1, "hitwithaxe:debarked_ironwood", 1, <hitwithaxe:bark:25>); //Y Axis
Chopping.addRecipe("rustic:log", 5, "hitwithaxe:debarked_ironwood", 0, <hitwithaxe:bark:25>); //X Axis
Chopping.addRecipe("rustic:log", 9, "hitwithaxe:debarked_ironwood", 2, <hitwithaxe:bark:25>); //Z Axis
Chopping.addRecipe("hitwithaxe:debarked_ironwood", 32767, <rustic:planks:1>);

// Sacred Oak
recipes.removeByRecipeName("biomesoplenty:sacred_oak_planks");
recipes.addShaped("sacred_oak_planks_planks", <biomesoplenty:planks_0:0>*3,[
	[null],
	[<biomesoplenty:log_0>],
	[null]
]);
recipes.addHiddenShaped("sacred_oak_planks_planks1", <biomesoplenty:planks_0:0>*3,[
	[<biomesoplenty:log_0>],
	[null],
	[null]
]);
recipes.addHiddenShaped("sacred_oak_planks_planks2", <biomesoplenty:planks_0:0>*3,[
	[null],
	[null],
	[<biomesoplenty:log_0>]
]);
Chopping.addRecipe("biomesoplenty:log_0", 0, "hitwithaxe:debarked_sacred_oak", 0, <hitwithaxe:bark:47>); // X Axis
Chopping.addRecipe("biomesoplenty:log_0", 4, "hitwithaxe:debarked_sacred_oak", 1, <hitwithaxe:bark:47>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_0", 8, "hitwithaxe:debarked_sacred_oak", 2, <hitwithaxe:bark:47>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_sacred_oak", 32767, <biomesoplenty:planks_0:0>);

// Cherry
recipes.removeByRecipeName("biomesoplenty:cherry_planks");
recipes.addShaped("cherry_planks", <biomesoplenty:planks_0:1>*3,[
	[null],
	[<biomesoplenty:log_0:5>],
	[null]
]);
recipes.addHiddenShaped("cherry_planks1", <biomesoplenty:planks_0:1>*3,[
	[<biomesoplenty:log_0:5>],
	[null],
	[null]
]);
recipes.addHiddenShaped("cherry_planks2", <biomesoplenty:planks_0:1>*3,[
	[null],
	[null],
	[<biomesoplenty:log_0:5>]
]);
Chopping.addRecipe("biomesoplenty:log_0", 1, "hitwithaxe:debarked_cherry", 0, <hitwithaxe:bark:33>); // X Axis
Chopping.addRecipe("biomesoplenty:log_0", 5, "hitwithaxe:debarked_cherry", 1, <hitwithaxe:bark:33>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_0", 9, "hitwithaxe:debarked_cherry", 2, <hitwithaxe:bark:33>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_cherry", 32767, <biomesoplenty:planks_0:1>);

// Umbran
recipes.removeByRecipeName("biomesoplenty:umbran_planks");
recipes.addShaped("umbran_planks", <biomesoplenty:planks_0:2>*3,[
	[null],
	[<biomesoplenty:log_0:6>],
	[null]
]);
recipes.addHiddenShaped("umbran_planks1", <biomesoplenty:planks_0:2>*3,[
	[<biomesoplenty:log_0:6>],
	[null],
	[null]
]);
recipes.addHiddenShaped("umbran_planks2", <biomesoplenty:planks_0:2>*3,[
	[null],
	[null],
	[<biomesoplenty:log_0:6>]
]);
Chopping.addRecipe("biomesoplenty:log_0", 2, "hitwithaxe:debarked_umbran", 0, <hitwithaxe:bark:48>); // X Axis
Chopping.addRecipe("biomesoplenty:log_0", 6, "hitwithaxe:debarked_umbran", 1, <hitwithaxe:bark:48>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_0", 10, "hitwithaxe:debarked_umbran", 2, <hitwithaxe:bark:48>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_umbran", 32767, <biomesoplenty:planks_0:2>);

// Fir
recipes.removeByRecipeName("biomesoplenty:fir_planks");
recipes.addShaped("fir_planks", <biomesoplenty:planks_0:3>*3,[
	[null],
	[<biomesoplenty:log_0:7>],
	[null]
]);
recipes.addHiddenShaped("fir_planks1", <biomesoplenty:planks_0:3>*3,[
	[<biomesoplenty:log_0:7>],
	[null],
	[null]
]);
recipes.addHiddenShaped("fir_planks2", <biomesoplenty:planks_0:3>*3,[
	[null],
	[null],
	[<biomesoplenty:log_0:7>]
]);
Chopping.addRecipe("biomesoplenty:log_0", 3, "hitwithaxe:debarked_fir_bop", 0, <hitwithaxe:bark:38>); // X Axis
Chopping.addRecipe("biomesoplenty:log_0", 7, "hitwithaxe:debarked_fir_bop", 1, <hitwithaxe:bark:38>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_0", 11, "hitwithaxe:debarked_fir_bop", 2, <hitwithaxe:bark:38>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_fir_bop", 32767, <biomesoplenty:planks_0:3>);

// Ethereal
recipes.removeByRecipeName("biomesoplenty:ethereal_planks");
recipes.addShaped("ethereal_planks", <biomesoplenty:planks_0:4>*3,[
	[null],
	[<biomesoplenty:log_1:4>],
	[null]
]);
recipes.addHiddenShaped("ethereal_planks1", <biomesoplenty:planks_0:4>*3,[
	[<biomesoplenty:log_1:4>],
	[null],
	[null]
]);
recipes.addHiddenShaped("ethereal_planks2", <biomesoplenty:planks_0:4>*3,[
	[null],
	[null],
	[<biomesoplenty:log_1:4>]
]);
Chopping.addRecipe("biomesoplenty:log_1", 0, "hitwithaxe:debarked_ethereal", 0, <hitwithaxe:bark:36>); // X Axis
Chopping.addRecipe("biomesoplenty:log_1", 4, "hitwithaxe:debarked_ethereal", 1, <hitwithaxe:bark:36>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_1", 8, "hitwithaxe:debarked_ethereal", 2, <hitwithaxe:bark:36>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_ethereal", 32767, <biomesoplenty:planks_0:4>);

// Magic
recipes.removeByRecipeName("biomesoplenty:magic_planks");
recipes.addShaped("magic_planks", <biomesoplenty:planks_0:5>*3,[
	[null],
	[<biomesoplenty:log_1:5>],
	[null]
]);
recipes.addHiddenShaped("magic_planks1", <biomesoplenty:planks_0:5>*3,[
	[<biomesoplenty:log_1:5>],
	[null],
	[null]
]);
recipes.addHiddenShaped("magic_planks2", <biomesoplenty:planks_0:5>*3,[
	[null],
	[null],
	[<biomesoplenty:log_1:5>]
]);
Chopping.addRecipe("biomesoplenty:log_1", 1, "hitwithaxe:debarked_magic", 0, <hitwithaxe:bark:41>); // X Axis
Chopping.addRecipe("biomesoplenty:log_1", 5, "hitwithaxe:debarked_magic", 1, <hitwithaxe:bark:41>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_1", 9, "hitwithaxe:debarked_magic", 2, <hitwithaxe:bark:41>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_magic", 32767, <biomesoplenty:planks_0:5>);

// Mangroove
recipes.removeByRecipeName("biomesoplenty:mangroove_planks");
recipes.addShaped("mangroove_planks", <biomesoplenty:planks_0:6>*3,[
	[null],
	[<biomesoplenty:log_1:6>],
	[null]
]);
recipes.addHiddenShaped("mangroove_planks1", <biomesoplenty:planks_0:6>*3,[
	[<biomesoplenty:log_1:6>],
	[null],
	[null]
]);
recipes.addHiddenShaped("mangroove_planks2", <biomesoplenty:planks_0:6>*3,[
	[null],
	[null],
	[<biomesoplenty:log_1:6>]
]);
Chopping.addRecipe("biomesoplenty:log_1", 2, "hitwithaxe:debarked_mangrove", 0, <hitwithaxe:bark:43>); // X Axis
Chopping.addRecipe("biomesoplenty:log_1", 6, "hitwithaxe:debarked_mangrove", 1, <hitwithaxe:bark:43>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_1", 10, "hitwithaxe:debarked_mangrove", 2, <hitwithaxe:bark:43>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_mangrove", 32767, <biomesoplenty:planks_0:6>);

// Palm
recipes.removeByRecipeName("biomesoplenty:palm_planks");
recipes.addShaped("palm_planks", <biomesoplenty:planks_0:7>*3,[
	[null],
	[<biomesoplenty:log_1:7>],
	[null]
]);
recipes.addHiddenShaped("palm_planks1", <biomesoplenty:planks_0:7>*3,[
	[<biomesoplenty:log_1:7>],
	[null],
	[null]
]);
recipes.addHiddenShaped("palm_planks2", <biomesoplenty:planks_0:7>*3,[
	[null],
	[null],
	[<biomesoplenty:log_1:7>]
]);
Chopping.addRecipe("biomesoplenty:log_1", 3, "hitwithaxe:debarked_palm", 0, <hitwithaxe:bark:44>); // X Axis
Chopping.addRecipe("biomesoplenty:log_1", 7, "hitwithaxe:debarked_palm", 1, <hitwithaxe:bark:44>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_1", 11, "hitwithaxe:debarked_palm", 2, <hitwithaxe:bark:44>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_palm", 32767, <biomesoplenty:planks_0:7>);

// Redwood
recipes.removeByRecipeName("biomesoplenty:redwood_planks");
recipes.addShaped("redwood_planks", <biomesoplenty:planks_0:8>*3,[
	[null],
	[<biomesoplenty:log_2:4>],
	[null]
]);
recipes.addHiddenShaped("redwood_planks1", <biomesoplenty:planks_0:8>*3,[
	[<biomesoplenty:log_2:4>],
	[null],
	[null]
]);
recipes.addHiddenShaped("redwood_planks2", <biomesoplenty:planks_0:8>*3,[
	[null],
	[null],
	[<biomesoplenty:log_2:4>]
]);
Chopping.addRecipe("biomesoplenty:log_2", 0, "hitwithaxe:debarked_redwood", 0, <hitwithaxe:bark:46>); // X Axis
Chopping.addRecipe("biomesoplenty:log_2", 4, "hitwithaxe:debarked_redwood", 1, <hitwithaxe:bark:46>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_2", 8, "hitwithaxe:debarked_redwood", 2, <hitwithaxe:bark:46>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_redwood", 32767, <biomesoplenty:planks_0:8>);

// Willow bop
recipes.removeByRecipeName("biomesoplenty:willow_planks");
recipes.addShaped("willow_planks", <biomesoplenty:planks_0:9>*3,[
	[null],
	[<biomesoplenty:log_2:5>],
	[null]
]);
recipes.addHiddenShaped("willow_planks1", <biomesoplenty:planks_0:9>*3,[
	[<biomesoplenty:log_2:5>],
	[null],
	[null]
]);
recipes.addHiddenShaped("willow_planks2", <biomesoplenty:planks_0:9>*3,[
	[null],
	[null],
	[<biomesoplenty:log_2:5>]
]);
Chopping.addRecipe("biomesoplenty:log_2", 1, "hitwithaxe:debarked_willow_bop", 0, <hitwithaxe:bark:49>); // X Axis
Chopping.addRecipe("biomesoplenty:log_2", 5, "hitwithaxe:debarked_willow_bop", 1, <hitwithaxe:bark:49>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_2", 9, "hitwithaxe:debarked_willow_bop", 2, <hitwithaxe:bark:49>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_willow_bop", 32767, <biomesoplenty:planks_0:9>);

// Pine
recipes.removeByRecipeName("biomesoplenty:pine_planks");
recipes.addShaped("pine_planks", <biomesoplenty:planks_0:10>*3,[
	[null],
	[<biomesoplenty:log_2:6>],
	[null]
]);
recipes.addHiddenShaped("pine_planks1", <biomesoplenty:planks_0:10>*3,[
	[<biomesoplenty:log_2:6>],
	[null],
	[null]
]);
recipes.addHiddenShaped("pine_planks2", <biomesoplenty:planks_0:10>*3,[
	[null],
	[null],
	[<biomesoplenty:log_2:6>]
]);
Chopping.addRecipe("biomesoplenty:log_2", 2, "hitwithaxe:debarked_pine", 0, <hitwithaxe:bark:45>); // X Axis
Chopping.addRecipe("biomesoplenty:log_2", 6, "hitwithaxe:debarked_pine", 1, <hitwithaxe:bark:45>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_2", 10, "hitwithaxe:debarked_pine", 2, <hitwithaxe:bark:45>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_pine", 32767, <biomesoplenty:planks_0:10>);

// Hellbark
recipes.removeByRecipeName("biomesoplenty:hellbark_planks");
recipes.addShaped("hellbark_planks", <biomesoplenty:planks_0:11>*3,[
	[null],
	[<biomesoplenty:log_2:7>],
	[null]
]);
recipes.addHiddenShaped("hellbark_planks1", <biomesoplenty:planks_0:11>*3,[
	[<biomesoplenty:log_2:7>],
	[null],
	[null]
]);
recipes.addHiddenShaped("hellbark_planks2", <biomesoplenty:planks_0:11>*3,[
	[null],
	[null],
	[<biomesoplenty:log_2:7>]
]);
Chopping.addRecipe("biomesoplenty:log_2", 3, "hitwithaxe:debarked_hellbark", 0, <hitwithaxe:bark:39>); // X Axis
Chopping.addRecipe("biomesoplenty:log_2", 7, "hitwithaxe:debarked_hellbark", 1, <hitwithaxe:bark:39>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_2", 11, "hitwithaxe:debarked_hellbark", 2, <hitwithaxe:bark:39>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_hellbark", 32767, <biomesoplenty:planks_0:11>);

// Jacaranda
recipes.removeByRecipeName("biomesoplenty:jacaranda_planks");
recipes.addShaped("jacaranda_planks", <biomesoplenty:planks_0:12>*3,[
	[null],
	[<biomesoplenty:log_3:4>],
	[null]
]);
recipes.addHiddenShaped("jacaranda_planks1", <biomesoplenty:planks_0:12>*3,[
	[<biomesoplenty:log_3:4>],
	[null],
	[null]
]);
recipes.addHiddenShaped("jacaranda_planks2", <biomesoplenty:planks_0:12>*3,[
	[null],
	[null],
	[<biomesoplenty:log_3:4>]
]);
Chopping.addRecipe("biomesoplenty:log_3", 0, "hitwithaxe:debarked_jacaranda", 0, <hitwithaxe:bark:40>); // X Axis
Chopping.addRecipe("biomesoplenty:log_3", 4, "hitwithaxe:debarked_jacaranda", 1, <hitwithaxe:bark:40>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_3", 8, "hitwithaxe:debarked_jacaranda", 2, <hitwithaxe:bark:40>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_jacaranda", 32767, <biomesoplenty:planks_0:12>);

// Mahogancy
recipes.removeByRecipeName("biomesoplenty:mahogancy_planks");
recipes.addShaped("mahogancy_planks", <biomesoplenty:planks_0:13>*3,[
	[null],
	[<biomesoplenty:log_3:5>],
	[null]
]);
recipes.addHiddenShaped("mahogancy_planks1", <biomesoplenty:planks_0:13>*3,[
	[<biomesoplenty:log_3:5>],
	[null],
	[null]
]);
recipes.addHiddenShaped("mahogancy_planks2", <biomesoplenty:planks_0:13>*3,[
	[null],
	[null],
	[<biomesoplenty:log_3:5>]
]);
Chopping.addRecipe("biomesoplenty:log_3", 1, "hitwithaxe:debarked_mahogany", 0, <hitwithaxe:bark:42>); // X Axis
Chopping.addRecipe("biomesoplenty:log_3", 5, "hitwithaxe:debarked_mahogany", 1, <hitwithaxe:bark:42>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_3", 9, "hitwithaxe:debarked_mahogany", 2, <hitwithaxe:bark:42>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_mahogany", 32767, <biomesoplenty:planks_0:13>);

// Ebony
recipes.removeByRecipeName("biomesoplenty:ebony_planks");
recipes.addShaped("ebony_planks", <biomesoplenty:planks_0:14>*3,[
	[null],
	[<biomesoplenty:log_3:6>],
	[null]
]);
recipes.addHiddenShaped("ebony_planks1", <biomesoplenty:planks_0:14>*3,[
	[<biomesoplenty:log_3:6>],
	[null],
	[null]
]);
recipes.addHiddenShaped("ebony_planks2", <biomesoplenty:planks_0:14>*3,[
	[null],
	[null],
	[<biomesoplenty:log_3:6>]
]);
Chopping.addRecipe("biomesoplenty:log_3", 2, "hitwithaxe:debarked_ebony", 0, <hitwithaxe:bark:35>); // X Axis
Chopping.addRecipe("biomesoplenty:log_3", 6, "hitwithaxe:debarked_ebony", 1, <hitwithaxe:bark:35>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_3", 10, "hitwithaxe:debarked_ebony", 2, <hitwithaxe:bark:35>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_ebony", 32767, <biomesoplenty:planks_0:14>);

// Eucalyptus
recipes.removeByRecipeName("biomesoplenty:eucalyptus_planks");
recipes.addShaped("eucalyptus_planks", <biomesoplenty:planks_0:15>*3,[
	[null],
	[<biomesoplenty:log_3:7>],
	[null]
]);
recipes.addHiddenShaped("eucalyptus_planks1", <biomesoplenty:planks_0:15>*3,[
	[<biomesoplenty:log_3:7>],
	[null],
	[null]
]);
recipes.addHiddenShaped("eucalyptus_planks2", <biomesoplenty:planks_0:15>*3,[
	[null],
	[null],
	[<biomesoplenty:log_3:7>]
]);
Chopping.addRecipe("biomesoplenty:log_3", 3, "hitwithaxe:debarked_eucalyptus_bop", 0, <hitwithaxe:bark:37>); // X Axis
Chopping.addRecipe("biomesoplenty:log_3", 7, "hitwithaxe:debarked_eucalyptus_bop", 1, <hitwithaxe:bark:37>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_3", 11, "hitwithaxe:debarked_eucalyptus_bop", 2, <hitwithaxe:bark:37>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_eucalyptus_bop", 32767, <biomesoplenty:planks_0:15>);

// Dead
Chopping.addRecipe("biomesoplenty:log_4", 1, "hitwithaxe:debarked_dead", 0, <hitwithaxe:bark:34>); // X Axis
Chopping.addRecipe("biomesoplenty:log_4", 5, "hitwithaxe:debarked_dead", 1, <hitwithaxe:bark:34>); // Y Axis
Chopping.addRecipe("biomesoplenty:log_4", 9, "hitwithaxe:debarked_dead", 2, <hitwithaxe:bark:34>); // Z Axis
Chopping.addRecipe("hitwithaxe:debarked_dead", 32767, <minecraft:stick> * 2);
//Plank -> Stick
Chopping.addRecipe("minecraft:planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("plants2:planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("plants2:crystal_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("integrateddynamics:menril_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("thaumcraft:plank_silverwood", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("thaumcraft:plank_greatwood", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("thebetweenlands:weedwood_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("thebetweenlands:rubber_tree_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("thebetweenlands:giant_root_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("traverse:fir_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("randomthings:spectreplank", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("natura:overworld_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("rustic:planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("naturesaura:ancient_planks", 32767, <minecraft:stick> * 2);
Chopping.addRecipe("biomesoplenty:planks_0", 32767, <minecraft:stick> * 2);