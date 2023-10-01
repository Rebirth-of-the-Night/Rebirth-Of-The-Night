import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

recipes.removeByMod("primallib");
recipes.removeByMod("basketcase");

val bark_strips = <primallib:bark_strips_generic>;
val wicker_pane = <ore:wicker>;
val wicker_full = <betterwithmods:aesthetic:12>;
val twine = <ore:twine>;
val durable_fiber = <ore:durableFiber>;

<ore:barkWood>.remove([<primallib:bark_oak>, <primallib:bark_spruce>, <primallib:bark_birch>, <primallib:bark_jungle>, <primallib:bark_acacia>, <primallib:bark_dark_oak>]);

recipes.addShapeless("bark_strips", bark_strips*4,
[<ore:barkWood>]);
recipes.addShaped("basket_small", <basketcase:basket_small_generic>,
 [[null,twine,null],
  [wicker_pane,null,wicker_pane],
  [null,wicker_full,null]]);
recipes.addShaped("basket_medium", <basketcase:basket_medium_generic>,
 [[durable_fiber,null,durable_fiber],
  [wicker_pane,null,wicker_pane],
  [wicker_pane,wicker_full,wicker_pane]]);
recipes.addShaped("basket_big", <basketcase:basket_large_generic>,
 [[durable_fiber,null,durable_fiber],
  [wicker_full,null,wicker_full],
  [wicker_pane,wicker_full,wicker_pane]]);
  
JEI.removeAndHide(<basketcase:wicker_medium_twig_birch>);
JEI.removeAndHide(<basketcase:wicker_large_twig_birch>);
JEI.removeAndHide(<basketcase:wicker_small_bark_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_large_bark_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_small_twig_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_medium_twig_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_small_bark_acacia>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_acacia>);
JEI.removeAndHide(<basketcase:wicker_large_bark_acacia>);
JEI.removeAndHide(<basketcase:wicker_small_twig_acacia>);
JEI.removeAndHide(<basketcase:wicker_medium_twig_acacia>);
JEI.removeAndHide(<basketcase:wicker_large_twig_acacia>);
JEI.removeAndHide(<basketcase:wicker_small_bark_birch>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_birch>);
JEI.removeAndHide(<basketcase:wicker_large_bark_birch>);
JEI.removeAndHide(<basketcase:wicker_small_twig_birch>);
JEI.removeAndHide(<basketcase:wicker_small_bark_spruce>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_spruce>);
JEI.removeAndHide(<basketcase:wicker_large_bark_spruce>);
JEI.removeAndHide(<basketcase:wicker_small_twig_spruce>);
JEI.removeAndHide(<basketcase:wicker_medium_twig_spruce>);
JEI.removeAndHide(<basketcase:wicker_large_twig_spruce>);
JEI.removeAndHide(<basketcase:wicker_small_bark_jungle>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_jungle>);
JEI.removeAndHide(<basketcase:wicker_large_bark_jungle>);
JEI.removeAndHide(<basketcase:wicker_small_twig_jungle>);
JEI.removeAndHide(<basketcase:wicker_medium_twig_jungle>);
JEI.removeAndHide(<basketcase:wicker_large_twig_jungle>);
JEI.removeAndHide(<basketcase:basket_small_bark_acacia>);
JEI.removeAndHide(<basketcase:basket_medium_bark_acacia>);
JEI.removeAndHide(<basketcase:basket_large_bark_acacia>);
JEI.removeAndHide(<basketcase:basket_small_bark_birch>);
JEI.removeAndHide(<basketcase:basket_medium_bark_birch>);
JEI.removeAndHide(<basketcase:basket_large_bark_birch>);
JEI.removeAndHide(<basketcase:basket_small_bark_dark_oak>);
JEI.removeAndHide(<basketcase:basket_medium_bark_dark_oak>);
JEI.removeAndHide(<basketcase:basket_large_bark_dark_oak>);
JEI.removeAndHide(<basketcase:basket_small_bark_jungle>);
JEI.removeAndHide(<basketcase:basket_medium_bark_jungle>);
JEI.removeAndHide(<basketcase:basket_large_bark_jungle>);
JEI.removeAndHide(<basketcase:basket_small_bark_oak>);
JEI.removeAndHide(<basketcase:basket_medium_bark_oak>);
JEI.removeAndHide(<basketcase:basket_large_bark_oak>);
JEI.removeAndHide(<basketcase:basket_small_bark_spruce>);
JEI.removeAndHide(<basketcase:basket_medium_bark_spruce>);
JEI.removeAndHide(<basketcase:basket_large_bark_spruce>);
JEI.removeAndHide(<basketcase:basket_small_twig_acacia>);
JEI.removeAndHide(<basketcase:basket_medium_twig_acacia>);
JEI.removeAndHide(<basketcase:basket_large_twig_acacia>);
JEI.removeAndHide(<basketcase:basket_small_twig_birch>);
JEI.removeAndHide(<basketcase:basket_medium_twig_birch>);
JEI.removeAndHide(<basketcase:basket_large_twig_birch>);
JEI.removeAndHide(<basketcase:basket_small_twig_dark_oak>);
JEI.removeAndHide(<basketcase:basket_medium_twig_dark_oak>);
JEI.removeAndHide(<basketcase:basket_large_twig_dark_oak>);
JEI.removeAndHide(<basketcase:basket_small_twig_jungle>);
JEI.removeAndHide(<basketcase:basket_medium_twig_jungle>);
JEI.removeAndHide(<basketcase:basket_large_twig_jungle>);
JEI.removeAndHide(<basketcase:basket_small_twig_oak>);
JEI.removeAndHide(<basketcase:basket_medium_twig_oak>);
JEI.removeAndHide(<basketcase:basket_large_twig_oak>);
JEI.removeAndHide(<basketcase:basket_small_twig_spruce>);
JEI.removeAndHide(<basketcase:basket_medium_twig_spruce>);
JEI.removeAndHide(<basketcase:basket_large_twig_spruce>);
JEI.removeAndHide(<basketcase:bark_strips_dark_oak>);
JEI.removeAndHide(<basketcase:bark_strips_acacia>);
JEI.removeAndHide(<basketcase:bark_strips_birch>);
JEI.removeAndHide(<basketcase:bark_strips_spruce>);
JEI.removeAndHide(<basketcase:bark_strips_jungle>);
JEI.removeAndHide(<basketcase:wicker_large_twig_dark_oak>);
JEI.removeAndHide(<basketcase:wicker_small_bark_oak>);
JEI.removeAndHide(<basketcase:wicker_medium_bark_oak>);
JEI.removeAndHide(<basketcase:wicker_large_bark_oak>);
JEI.removeAndHide(<basketcase:wicker_small_twig_oak>);
JEI.removeAndHide(<basketcase:wicker_medium_twig_oak>);
JEI.removeAndHide(<basketcase:wicker_large_twig_oak>);
JEI.removeAndHide(<basketcase:wicker_small_generic>);
JEI.removeAndHide(<basketcase:wicker_medium_generic>);
JEI.removeAndHide(<basketcase:wicker_large_generic>);
JEI.removeAndHide(<basketcase:bark_strips_oak>);
JEI.removeAndHide(<basketcase:twig_acacia>);
JEI.removeAndHide(<basketcase:twig_birch>);
JEI.removeAndHide(<basketcase:twig_dark_oak>);
JEI.removeAndHide(<basketcase:twig_jungle>);
JEI.removeAndHide(<basketcase:twig_oak>);
JEI.removeAndHide(<basketcase:twig_spruce>);

JEI.removeAndHide(<primallib:plant_fiber>);
JEI.removeAndHide(<primallib:twine>);
JEI.removeAndHide(<primallib:bark_oak>);
JEI.removeAndHide(<primallib:bark_spruce>);
JEI.removeAndHide(<primallib:bark_birch>);
JEI.removeAndHide(<primallib:bark_jungle>);
JEI.removeAndHide(<primallib:bark_acacia>);
JEI.removeAndHide(<primallib:bark_dark_oak>);
JEI.removeAndHide(<primallib:wooden_shaft>);
JEI.removeAndHide(<primallib:twig_generic>);
JEI.removeAndHide(<primallib:branch>);
JEI.removeAndHide(<primallib:twine>);
JEI.removeAndHide(<primallib:log_stripped_oak>);
JEI.removeAndHide(<primallib:log_stripped_spruce>);
JEI.removeAndHide(<primallib:log_stripped_birch>);
JEI.removeAndHide(<primallib:log_stripped_jungle>);
JEI.removeAndHide(<primallib:log_stripped_acacia>);
JEI.removeAndHide(<primallib:log_stripped_dark_oak>);