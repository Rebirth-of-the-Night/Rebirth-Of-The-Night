import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.jei.JEI.removeAndHide(<animania:block_mud>);

recipes.removeByRecipeName("animania:straw");
recipes.removeByRecipeName("animania:bed");
recipes.addShaped("animania_bed", <minecraft:bed>,
    [[null,null,null],
    [<animania:wool:0>|<animania:wool:1>|<animania:wool:2>|<animania:wool:3>|<animania:wool:4>|<animania:wool:5>|<animania:wool:6>,<animania:wool:0>|<animania:wool:1>|<animania:wool:2>|<animania:wool:3>|<animania:wool:4>|<animania:wool:5>|<animania:wool:6>,<animania:wool:0>|<animania:wool:1>|<animania:wool:2>|<animania:wool:3>|<animania:wool:4>|<animania:wool:5>|<animania:wool:6>],
    [<ore:plankWood>,<ore:plankWood>,<ore:plankWood>]]);

recipes.addShapeless("bwmrawegg", <betterwithmods:raw_egg>, [<ore:listAllegg>]);
//recipes.replaceAllOccurences(<ore:woolBlock>, <ore:wool>);