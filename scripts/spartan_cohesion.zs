import crafttweaker.item.IIngredient;

//Removal of weapons recipes that involve stick > handle

recipes.remove(<iceandfire:hippogryph_sword>);
recipes.remove(<iceandfire:stymphalian_bird_dagger>);

//Wooden Sword Tweaks

val sharp_stick = <dungeontactics:sharp_stick>;
val wood = <ore:plankWood>;
val stick = <minecraft:stick>;

recipes.remove(<dungeontactics:sharp_stick>);
recipes.remove(<minecraft:wooden_sword>);
mods.jei.JEI.removeAndHide(<minecraft:wooden_sword>);

recipes.addShaped("Sharp Stick", sharp_stick,
 [[null,wood,null],
  [null,wood,null],
  [null,stick,null]]);

//Addition of weapon recipes that involve stick > handle

val handle = <spartanweaponry:material>;
val feather = <ore:feather>;
val hippogryphtalon = <iceandfire:hippogryph_talon>;
val symphalianbirdfeather = <iceandfire:stymphalian_bird_feather>;
val iron = <ore:ingotIron>;
val hippogryph_sword = <iceandfire:hippogryph_sword>;
val stymphalian_bird_dagger = <iceandfire:stymphalian_bird_dagger>;

recipes.addShaped("HippogryphSword", hippogryph_sword,
 [[null,hippogryphtalon,null],
  [feather,iron,feather],
  [null,handle,null]]);
  recipes.addShaped("Stymphalian Bird Dagger", stymphalian_bird_dagger,
 [[null,symphalianbirdfeather,null],
  [null,symphalianbirdfeather,null],
  [null,handle,null]]);