import crafttweaker.item.IIngredient;

recipes.remove(<grapplemod:launcheritem>);
recipes.remove(<grapplemod:grapplinghook>);
recipes.remove(<grapplemod:ropeupgradeitem>);
mods.jei.JEI.removeAndHide(<grapplemod:repeller>);

val gravititepick = <aether_legacy:gravitite_pickaxe>;
val rope = <quark:rope>;
val grapplehook = <grapplemod:grapplinghook>;
val lead = <minecraft:lead>;
val baseupgrade = <grapplemod:baseupgradeitem>;
val ropeupgrade = <grapplemod:ropeupgradeitem>;

recipes.addShaped("GrappleHook", grapplehook,
 [[null,null,gravititepick],
  [null,lead,null],
  [rope,null,null]]);

recipes.addShapeless("GrappleRopeUpgrade", ropeupgrade,[baseupgrade, rope]);