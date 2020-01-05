import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

//mods.betterwithmods.Crucible.remove([<dungeontactics:steel_ingot>]); // nugget > steel ingot
//mods.betterwithmods.StokedCrucible.remove([<betterwithmods:material:14>,<betterwithmods:urn>]);

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
//Soul Forged Steel
mods.betterwithmods.Crucible.addStoked(
    [
        <ore:ingotSteel>,
        <betterwithmods:material:38>,
        <ore:dustCoal>,
        <ore:blockSoulUrn>
    ],
    [
        <betterwithmods:material:14>,
        <betterwithmods:urn:8>
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
