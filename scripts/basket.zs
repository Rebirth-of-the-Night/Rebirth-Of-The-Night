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
<ore:wicker>.remove([<basketcase:wicker_small_bark_acacia>, <basketcase:wicker_medium_bark_acacia>, <basketcase:wicker_large_bark_acacia>, <basketcase:wicker_small_twig_acacia>, <basketcase:wicker_medium_twig_acacia>, <basketcase:wicker_large_twig_acacia>, <basketcase:wicker_small_bark_birch>, <basketcase:wicker_medium_bark_birch>, <basketcase:wicker_large_bark_birch>, <basketcase:wicker_small_twig_birch>, <basketcase:wicker_medium_twig_birch>, <basketcase:wicker_large_twig_birch>, <basketcase:wicker_small_bark_dark_oak>, <basketcase:wicker_medium_bark_dark_oak>, <basketcase:wicker_large_bark_dark_oak>, <basketcase:wicker_small_twig_dark_oak>, <basketcase:wicker_medium_twig_dark_oak>, <basketcase:wicker_large_twig_dark_oak>, <basketcase:wicker_small_bark_jungle>, <basketcase:wicker_medium_bark_jungle>, <basketcase:wicker_large_bark_jungle>, <basketcase:wicker_small_twig_jungle>, <basketcase:wicker_medium_twig_jungle>, <basketcase:wicker_large_twig_jungle>, <basketcase:wicker_small_bark_oak>, <basketcase:wicker_medium_bark_oak>, <basketcase:wicker_large_bark_oak>, <basketcase:wicker_small_twig_oak>, <basketcase:wicker_medium_twig_oak>, <basketcase:wicker_large_twig_oak>, <basketcase:wicker_small_bark_spruce>, <basketcase:wicker_medium_bark_spruce>, <basketcase:wicker_large_bark_spruce>, <basketcase:wicker_small_twig_spruce>, <basketcase:wicker_medium_twig_spruce>, <basketcase:wicker_large_twig_spruce>, <basketcase:wicker_small_generic>, <basketcase:wicker_medium_generic>, <basketcase:wicker_large_generic>]);

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