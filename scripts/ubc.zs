import crafttweaker.item.IIngredient;

val hammer = <endreborn:tool_hammer_iron>;

recipes.addShapeless("anyCobble",<minecraft:cobblestone>,[<ore:cobblestone>,hammer.anyDamage().transformDamage()]);