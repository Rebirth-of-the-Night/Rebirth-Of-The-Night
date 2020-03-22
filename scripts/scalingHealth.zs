import crafttweaker.item.IIngredient;
recipes.remove(<scalinghealth:healingitem:1>);

recipes.addShaped("scalinghealth medkit", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <minecraft:speckled_melon>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 2", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <minecraft:potion>.withTag({Potion: "minecraft:healing"}), <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 3", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <rustic:elixir>.withTag({ElixirEffects: [{Effect: "minecraft:instant_health"}]}), <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 4", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <scalinghealth:heartdust>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 5", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <scalinghealth:healingitem>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShaped("scalinghealth medkit 6", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <aether_legacy:healing_stone>, <scalinghealth:healingitem>], 
[<minecraft:string>, <ore:fiber>, <minecraft:string>]]);

recipes.addShapeless(<mod_lavacow:cursed_bandage>*5, [<scalinghealth:healingitem:1>]);
<mod_lavacow:cursed_bandage>.displayName = "Pet Bandage";

recipes.remove(<mod_lavacow:cursed_bandage>);
recipes.addShaped("pet_bandage", <mod_lavacow:cursed_bandage>*20, 
[[<mod_lavacow:cursed_fabric>, <ore:fiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:fiber>, <mod_lavacow:cursed_fabric>], 
[<mod_lavacow:cursed_fabric>, <ore:fiber>, <mod_lavacow:cursed_fabric>]]);

recipes.removeByRecipeName("scalinghealth:bandages");


recipes.addShapeless("trilium bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<betteranimalsplus:trillium>]);
recipes.addShapeless("eucalyptus bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<dynamictreesbop:eucalyptusseed>]);
recipes.addShapeless("aloe bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<rustic:aloe_vera>]);
recipes.addShapeless("glowshroom bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<quark:glowshroom>]);
recipes.addShapeless("root bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<quark:root>]);
recipes.addShapeless("clean soap bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<ore:soap>]);
recipes.addShapeless("squishy cicada bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<twilightforest:cicada>]);
recipes.addShapeless("heart dust bandage", <scalinghealth:healingitem>,
 [<ore:fiber>,<ore:fiber>,<scalinghealth:heartdust>]);