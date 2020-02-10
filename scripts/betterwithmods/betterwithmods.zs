import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.betterwithmods.Mill.addRecipe([<minecraft:rotten_flesh>],[<minecraft:leather>]);

mods.jei.JEI.removeAndHide(<betterwithmods:steel_sword>);
mods.jei.JEI.removeAndHide(<betterwithmods:steel_battleaxe>);

mods.jei.JEI.removeAndHide(<betterwithmods:candle_holder>);
mods.jei.JEI.removeAndHide(<betterwithmods:aesthetic:5>);


recipes.removeShapeless(<betterwithmods:candle:*>,[<quark:candle:*>]);

mods.betterwithmods.Cauldron.remove([<minecraft:mushroom_stew>]);

mods.jei.JEI.removeAndHide(<betterwithmods:material:13>); # tallow
mods.jei.JEI.removeAndHide(<betterwithmods:material:47>); # chainmail


mods.betterwithmods.Cauldron.remove([<betterwithmods:material:29>]); # blasting oil
mods.betterwithmods.Cauldron.remove([<betterwithmods:material:50>]); # soal

mods.betterwithmods.Cauldron.addUnstoked([<betterwithmods:material:16>,<quark:tallow>],[<betterwithmods:material:29>]);
mods.betterwithmods.Cauldron.addStoked([<betterwithmods:material:21>,<quark:tallow>],[<betterwithmods:material:50>]);



mods.jei.JEI.removeAndHide(<betterwithmods:wool_boots>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_chest>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_helmet>);
mods.jei.JEI.removeAndHide(<betterwithmods:wool_pants>);

mods.jei.JEI.removeAndHide(<betterwithmods:material:45>); # diamond ingot


recipes.addShapeless("Hemp Fibers", <betterwithmods:material:3>*4,[<betterwithmods:material:2>,<betterwithmods:material:2>]);
recipes.addShapeless("Hemp Seeds", <betterwithmods:hemp>,[<ore:cropHemp>]);

mods.jei.JEI.removeAndHide(<betterwithmods:chicken_soup>);

//Descriptions
mods.jei.JEI.addDescription(<betterwithmods:material:14>,"Used as a late-game crafting material. It can craft a Mattock, the best mining tool available! It is also needed for some late game contraptions.");
mods.jei.JEI.addDescription(<ore:cropHemp>,"An extremely useful plant, it can make super high quality and durable fibers for a variety of uses like sails and different kinds of cloth");
mods.jei.JEI.addDescription(<betterwithmods:material:3>,"High quality fiber used in advanced recipes where string falls short, can be made by interlacing some plants.");
mods.jei.JEI.addDescription(<betterwithmods:saw>,"Even if any axe and any log can give the so coveted bark in a crafting table, some people seek efficiency. The saw can also make some nice half blocks");