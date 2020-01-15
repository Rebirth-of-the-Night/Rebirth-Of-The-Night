import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

import mods.primaltech.ClayKiln;
import mods.primaltech.StoneAnvil;
import mods.primaltech.WaterSaw;
import mods.primaltech.WoodenBasin;



//Removed unnecessary items, rest is in the config file
//Reworked progression for better with mods and vanilla clay included here
mods.jei.JEI.removeAndHide(<primal_tech:flint_edged_disc>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_sword>);
mods.jei.JEI.removeAndHide(<primal_tech:wood_club>);
mods.jei.JEI.removeAndHide(<primal_tech:leaf_bed>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_pickaxe>);
mods.jei.JEI.removeAndHide(<primal_tech:fibre_torch>);
mods.jei.JEI.removeAndHide(<primal_tech:fibre_torch_lit>);
mods.jei.JEI.removeAndHide(<primal_tech:wooden_hopper>);
mods.jei.JEI.removeAndHide(<primal_tech:work_stump>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_shovel>);
mods.jei.JEI.removeAndHide(<primal_tech:rock>);
mods.jei.JEI.removeAndHide(<primal_tech:water_saw>);
mods.jei.JEI.removeAndHide(<primal_tech:plant_fibres>);
mods.jei.JEI.removeAndHide(<primal_tech:stone_club>);
mods.jei.JEI.removeAndHide(<primal_tech:fire_sticks>);
mods.jei.JEI.removeAndHide(<primal_tech:charcoal_hopper>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_knife>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_shard>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_axe>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_shears>);
mods.jei.JEI.removeAndHide(<primal_tech:stick_bundle>);
mods.jei.JEI.removeAndHide(<primal_tech:bone_club>);
mods.jei.JEI.removeAndHide(<primal_tech:wooden_basin>);
mods.jei.JEI.removeAndHide(<primal_tech:fluid_bladder>);
mods.jei.JEI.removeAndHide(<primal_tech:twine>);
mods.jei.JEI.removeAndHide(<primal_tech:stone_grill>);
mods.jei.JEI.removeAndHide(<primal_tech:work_stump_upgraded>);

mods.jei.JEI.hideCategory("primal_tech.stone_grill_recipes");
mods.jei.JEI.hideCategory("primal_tech.wooden_basin_recipes");
mods.jei.JEI.hideCategory("primal_tech.water_saw_recipes");

furnace.remove(<minecraft:brick>, <minecraft:clay_ball>);
furnace.remove(<minecraft:netherbrick>, <betterwithmods:material:35>);



//Charcoal balance and tweaks
recipes.removeByRecipeName("primal_tech:recipe_charcoal");
StoneAnvil.addRecipe(<minecraft:coal:1>*2,
			<primal_tech:charcoal_block>
		);
furnace.setFuel(<primal_tech:charcoal_block>, 2400);
furnace.setFuel(<ore:blockCharcoal>, 6400);

recipes.removeByRecipeName("betterwithmods:decompress/flint_decompress");


//Descriptions
mods.jei.JEI.addDescription(<primal_tech:clay_kiln>,"Needs Fire Block beneath to Reach working temperature. Fires single Blocks. Can't handle ores");
mods.jei.JEI.addDescription(<primal_tech:charcoal_block>,"Slightly less efficient than charcoal. Smash it on a stone anvil to get charcoal.");
mods.jei.JEI.addDescription(<primal_tech:stone_anvil>,"Place Items on it. Bash with Stone Mallet.");


 
    /*
        Clay Kiln
       
        The following script was made by using the one from the modpack SevTech Ages made by the DarkPacks team in order to learn how to add recipes to Rebirth of the Night, All due credit to them.
        Source: https://github.com/DarkPacks/SevTech-Ages/blob/master/src/scripts/crafttweaker/integrations/mods/primalTech.zs
       
        mods.primaltech.ClayKiln.addRecipe(IItemStack output, IIngredient input, int cooktime);
    */
ClayKiln.addRecipe(<betterwithmods:cooking_pot>,
            <betterwithmods:unfired_pottery>, 500
        );
ClayKiln.addRecipe(<ceramics:clay_barrel:0>,
            <ceramics:clay_barrel_unfired:0>,200
        );
ClayKiln.addRecipe(<betterwithmods:planter>,
            <betterwithmods:unfired_pottery:1>, 500
       );
ClayKiln.addRecipe(<betterwithmods:urn>,
            <betterwithmods:unfired_pottery:2>, 200
        );
ClayKiln.addRecipe(<betterwithmods:vase>,
            <betterwithmods:unfired_pottery:3>, 300
        );
ClayKiln.addRecipe(<minecraft:cake>,
            <betterwithmods:raw_pastry>, 200
        );
ClayKiln.addRecipe(<ceramics:clay_barrel:1>,
            <ceramics:clay_barrel_unfired:1>,200
        );
ClayKiln.addRecipe(<ceramics:clay_bucket:0>,
            <ceramics:clay_bucket_block:0>,200
        );
ClayKiln.addRecipe(<minecraft:brick:0>,
            <minecraft:clay_ball:0>,200
        );
ClayKiln.addRecipe(<minecraft:pumpkin_pie>,
            <betterwithmods:raw_pastry:1>, 200
        );
ClayKiln.addRecipe(<minecraft:cookie>*8,
            <betterwithmods:raw_pastry:2>, 200
        );
ClayKiln.addRecipe(<minecraft:bread>,
            <betterwithmods:raw_pastry:3>, 200
        );
ClayKiln.addRecipe(<betterwithmods:apple_pie>,
            <betterwithmods:raw_pastry:4>, 200
        );
ClayKiln.addRecipe(<minecraft:netherbrick>,
            <betterwithmods:unfired_pottery:5>, 50
        );
ClayKiln.addRecipe(<minecraft:brick>,
            <betterwithmods:unfired_pottery:4>, 50
        );
ClayKiln.addRecipe(<minecraft:stone:0>,
            <minecraft:cobblestone:0>,200
        );
ClayKiln.addRecipe(<minecraft:stone:1>,
            <betterwithmods:cobblestone:0>,200
        );
ClayKiln.addRecipe(<minecraft:stone:3>,
            <betterwithmods:cobblestone:1>,200
        );
ClayKiln.addRecipe(<minecraft:stone:5>,
            <betterwithmods:cobblestone:2>,200
        );
ClayKiln.addRecipe(<ceramics:unfired_clay:5>,
            <ceramics:unfired_clay:4>,200
        );
ClayKiln.addRecipe(<minecraft:blaze_powder>,
            <minecraft:fire_charge>, 500
        );
ClayKiln.addRecipe(<primal_tech:charcoal_block>,
			<ore:logWood>, 150
		);
ClayKiln.addRecipe(<animania:salt>,
			<ore:sandstone>, 300
		);
ClayKiln.addRecipe(<dungeontactics:magic_powder>*3,
			<aether_legacy:ambrosium_block>, 500
		);
		
