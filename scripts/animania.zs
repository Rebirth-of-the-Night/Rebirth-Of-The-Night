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

//update for every new egg
recipes.addShapeless("bwmrawegg1", <betterwithmods:raw_egg>, [<harvestcraft:rawtofeegitem>]);
recipes.addShapeless("bwmrawegg2", <betterwithmods:raw_egg>, [<minecraft:egg>]);
recipes.addShapeless("bwmrawegg3", <betterwithmods:raw_egg>, [<animania:brown_egg>]);
recipes.addShapeless("bwmrawegg4", <betterwithmods:raw_egg>, [<animania:peacock_egg_blue>]);
recipes.addShapeless("bwmrawegg5", <betterwithmods:raw_egg>, [<animania:peacock_egg_white>]);
recipes.addShapeless("bwmrawegg6", <betterwithmods:raw_egg>, [<primitivemobs:dodo_egg>]);
//recipes.replaceAllOccurences(<ore:woolBlock>, <ore:wool>);