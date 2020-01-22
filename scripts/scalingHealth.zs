import crafttweaker.item.IIngredient;
recipes.remove(<scalinghealth:healingitem:1>);

recipes.addShaped("scalinghealth:medkit", <scalinghealth:healingitem:1>, 
[[null, <ore:ingotIron>, null], 
[<scalinghealth:healingitem>, <minecraft:speckled_melon>, <scalinghealth:healingitem>], 
[<ore:dyeWhite>, <ore:dyeWhite>, <ore:dyeWhite>]]);

recipes.addShapeless("trilium bandage", <scalinghealth:healingitem>*2,
 [<ore:fiberHemp>,<ore:fiberHemp>,<betteranimalsplus:trillium>]);
recipes.addShapeless("eucalyptus bandage", <scalinghealth:healingitem>,
 [<ore:fiberHemp>,<ore:fiberHemp>,<dynamictreesbop:eucalyptusseed>]);
recipes.addShapeless("aloe bandage", <scalinghealth:healingitem>*3,
 [<ore:fiberHemp>,<ore:fiberHemp>,<rustic:aloe_vera>]);
recipes.addShapeless("glowshroom bandage", <scalinghealth:healingitem>,
 [<ore:fiberHemp>,<ore:fiberHemp>,<quark:glowshroom>]);
recipes.addShapeless("root bandage", <scalinghealth:healingitem>,
 [<ore:fiberHemp>,<ore:fiberHemp>,<quark:root>]);
recipes.addShapeless("clean soap bandage", <scalinghealth:healingitem>*3,
 [<ore:fiberHemp>,<ore:fiberHemp>,<ore:soap>]);
recipes.addShapeless("squishy cicada bandage", <scalinghealth:healingitem>*2,
 [<ore:fiberHemp>,<ore:fiberHemp>,<twilightforest:cicada>]);
