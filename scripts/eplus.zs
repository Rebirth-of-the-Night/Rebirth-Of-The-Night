import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

recipes.remove(<eplus:advanced_table>);
recipes.remove(<eplus:table_upgrade>);

recipes.addShaped("Table Upgrade", <eplus:table_upgrade>,[
	[<minecraft:gold_block>, <minecraft:writable_book>, <minecraft:gold_block>],
    [<minecraft:obsidian>, <simpleores:mythril_ingot>, <minecraft:obsidian>],
    [<minecraft:gold_block>, <minecraft:ender_eye>, <minecraft:gold_block>]
]);
      


mods.jei.JEI.hideCategory("minecraft.anvil");
mods.jei.JEI.hideCategory("jeresources.plant");
mods.jei.JEI.hideCategory("jeresources.worldgen");
mods.jei.JEI.hideCategory("jeresources.mob");
mods.jei.JEI.hideCategory("jeresources.dungeon");
mods.jei.JEI.hideCategory("jeresources.villager");
mods.jei.JEI.hideCategory("jeresources.plant");
mods.jei.JEI.hideCategory("endreborn.user");


mods.rockytweaks.Anvil.remove([<dungeontactics:silver_sword>]); // true darks edge
mods.rockytweaks.Anvil.remove([<msmlegacy:dawn_star:*>]); // true lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:eye_end_blade:*>]); // interdim blade
mods.rockytweaks.Anvil.remove([<msmlegacy:glacial_blade:*>]); // dragons bane
mods.rockytweaks.Anvil.remove([<msmlegacy:crystaline_blade:*>]); // lights edge
mods.rockytweaks.Anvil.remove([<msmlegacy:wither_bane:*>]); // darks edge
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_aqueous:*>]);
mods.rockytweaks.Anvil.remove([<msmlegacy:relic_candy:*>]);