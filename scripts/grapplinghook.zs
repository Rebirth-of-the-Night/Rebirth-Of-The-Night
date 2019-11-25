import crafttweaker.item.IIngredient;

recipes.remove(<grapplemod:launcheritem>);
recipes.remove(<grapplemod:grapplinghook>);

val gravititepick = <aether_legacy:gravitite_pickaxe>;
val zaniteglove = <aether_legacy:zanite_gloves>;
val grapplehook = <grapplemod:grapplinghook>;
val lead = <minecraft:lead>;

recipes.addShaped("GrappleHook", grapplehook,
 [[null,null,gravititepick],
  [null,lead,null],
  [zaniteglove,null,null]]);