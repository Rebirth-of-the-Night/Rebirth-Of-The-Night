import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

furnace.addRecipe(<betterwithmods:cooking_pot>, <betterwithmods:unfired_pottery>);


mods.betterwithmods.Crucible.removeAll();


// nugget > sfs
// block > sfs
// sfs rail > 6iron 2sfs
// urn:8 steel dustCarbon soul flux > sfs urn:0

mods.betterwithmods.Crucible.addUnstoked([<ore:cobblestone>],[<minecraft:stone>]);

//Normal Steel
mods.betterwithmods.Crucible.addUnstoked(
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
//Stoked Normal Steel
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
        <ore:gemEnderBiotite>,
        <ore:blockSoulUrn>
    ],
    [
        <betterwithmods:material:14>,
        <betterwithmods:urn>
    ]
);

// Anvil > Steel
mods.betterwithmods.Crucible.addUnstoked(
    [
        <betterwithmods:steel_anvil>
    ],
    [
        <dungeontactics:steel_ingot>*9
    ]
);


//Soul Flux
mods.betterwithmods.Crucible.addStoked(
    [
        <betterwithmods:material:39>,
    ],
    [
        <betterwithmods:material:25>,
        <betterwithmods:material:38>
    ]
);

//Bronze Production
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:blockTin>,
        <ore:blockCopper>,
        <ore:blockCopper>,
        <ore:blockCopper>
    ],
    [
        <ore:blockBronze>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addUnstoked(
    [
        <ore:ingotTin>,
        <ore:ingotCopper>,
        <ore:ingotCopper>,
        <ore:ingotCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);
//Stoked Bronze Production
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:blockTin>,
        <ore:blockCopper>,
        <ore:blockCopper>,
        <ore:blockCopper>
    ],
    [
        <ore:blockBronze>.firstItem*4
    ]
);
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotTin>,
        <ore:ingotCopper>,
        <ore:ingotCopper>,
        <ore:ingotCopper>
    ],
    [
        <ore:ingotBronze>.firstItem*4
    ]
);
