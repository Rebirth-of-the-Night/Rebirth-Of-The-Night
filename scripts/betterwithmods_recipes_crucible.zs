import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

mods.betterwithmods.Crucible.addStoked([<ore:cobblestone>],[<minecraft:stone>]);
//Normal Steel
mods.betterwithmods.Crucible.addStoked(
    [
        <minecraft:iron_ingot>,
        <ore:dustCoal>,
        <ore:dustCoal>,
        <ore:dustCoal>
    ],
    [
        <dungeontactics:steel_ingot>
    ]
);
//Soul Forged Steel
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotSteel>,
        <betterwithmods:material:38>,
        <ore:dustCoal>,
        <ore:blockSoulUrn>
    ],
    [
        <betterwithmods:material:14>
    ]
);