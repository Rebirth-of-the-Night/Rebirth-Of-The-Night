import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

// antler -> bonemeal
recipes.addShapeless("antlerBonemeal", <minecraft:dye:15>*2,[<betteranimalsplus:antler>]);

// alternative throwbone recipe
recipes.addShaped("antlerThrowbone", <doggytalents:throw_bone>,[
	[<betteranimalsplus:antler>, null, <betteranimalsplus:antler>],
	[null, <ore:slimeball>, null],
	[<betteranimalsplus:antler>, null, <betteranimalsplus:antler>]
]);

recipes.removeByRecipeName("betteranimalsplus:blubber_torch");
recipes.addShaped("blubber_torch",<minecraft:torch>*4,[
	[<betteranimalsplus:blubber>],
	[<ore:stickWood>]
]);

JEI.removeAndHide(<betteranimalsplus:goatcheese>);
recipes.removeByRecipeName("betteranimalsplus:milk_to_cheese2");

//<betteranimalsplus:hirschgeistskull>.addTooltip(format.gold("Legendary Artifact"));
<betteranimalsplus:hirschgeistskull_1>.addTooltip(format.gold("Legendary Artifact"));
<betteranimalsplus:hirschgeistskullwearable>.addTooltip(format.gold("Legendary Helmet"));

JEI.addDescription(<betteranimalsplus:handoffate>,"§oMourning echoes, coursing hate / Churn within the Hand of Fate / Bid you not the Hirschgeist here / That accursed restless soul. / Seek you still its dread Appeal / Burn the palm with sparks of steel / Mind as realms apart draw near / Beast and spirit, one and whole. / Place then, quick, inside the hand / Spurn the warts of fires damned / Offer fresh remains of deer / Hirschgeist comes to take its Toll.");