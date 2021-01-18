import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

JEI.removeAndHide(<scalinghealth:crystalore>);
JEI.removeAndHide(<scalinghealth:difficultychanger:*>);

recipes.remove(<scalinghealth:healingitem:1>);

recipes.addShaped("scalinghealth medkit", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <minecraft:speckled_melon>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 2", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <minecraft:potion>.withTag({Potion: "minecraft:healing"}), <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 3", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health"}]}), <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 4", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <scalinghealth:heartdust>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 5", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <scalinghealth:healingitem>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 6", <scalinghealth:healingitem:1>, 
[[null, <ore:genericMetal>, null], 
[<scalinghealth:healingitem>, <aether_legacy:healing_stone>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:durableFiber>, <minecraft:string>]]);

recipes.addShapeless(<mod_lavacow:cursed_bandage>*5, [<scalinghealth:healingitem:1>]);

recipes.remove(<mod_lavacow:cursed_bandage>);
recipes.addShaped("pet_bandage", <mod_lavacow:cursed_bandage>*20, 
[[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:durableFiber>, <mod_lavacow:cursed_fabric>]]);

recipes.removeByRecipeName("scalinghealth:bandages");


recipes.addShapeless("trilium bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<betteranimalsplus:trillium>]);
recipes.addShapeless("eucalyptus bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<dynamictreesbop:eucalyptusseed>]);
recipes.addShapeless("aloe bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<rustic:aloe_vera>]);
recipes.addShapeless("glowshroom bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<quark:glowshroom>]);
recipes.addShapeless("root bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<quark:root>]);
recipes.addShapeless("clean soap bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<ore:soap>]);
recipes.addShapeless("squishy cicada bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<twilightforest:cicada>]);
recipes.addShapeless("heart dust bandage", <scalinghealth:healingitem>,
 [<ore:durableFiber>,<ore:durableFiber>,<scalinghealth:heartdust>]);