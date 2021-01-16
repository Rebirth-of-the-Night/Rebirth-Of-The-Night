import crafttweaker.item.IIngredient;
import mods.jei.JEI;

JEI.removeAndHide(<doggytalents:radar>);
JEI.removeAndHide(<doggytalents:radio_collar>);
JEI.removeAndHide(<doggytalents:doggy_charm>);
JEI.removeAndHide(<doggytalents:owner_change>);

var sugar = <minecraft:sugar>;
var wheat = <minecraft:wheat>;
var bone = <minecraft:bone>;

recipes.remove(<doggytalents:training_treat>);
recipes.addShaped("Training Treat", <doggytalents:training_treat>,[
	[sugar, sugar, sugar],
    [wheat, bone, wheat],
    [wheat, wheat, wheat]
]);

recipes.remove(<doggytalents:wool_collar>);
recipes.addShaped("Collar", <doggytalents:wool_collar>,[
	[null, <minecraft:string>, null],
    [<minecraft:string>, null, <minecraft:string>],
    [null, <minecraft:string>, null]
]);

recipes.remove(<doggytalents:tiny_bone>);
recipes.addShapedMirrored("Tiny Bone", <doggytalents:tiny_bone>,[
	[<ore:stickBone>, <ore:ingotTin>],
    [<ore:ingotTin>, <ore:stickBone>]
]);

recipes.remove(<doggytalents:spotted_collar>);
recipes.addShaped("spotted_collar",<doggytalents:spotted_collar>,[
    [<ore:dyeBlack>,<ore:dyeWhite>,<ore:dyeBlack>],
    [<ore:dyeWhite>,<doggytalents:wool_collar>,<ore:dyeWhite>],
    [<ore:dyeBlack>,<minecraft:string>,<ore:dyeBlack>]
]);

recipes.remove(<doggytalents:multicoloured_collar>);
recipes.addShapeless("multicolored_collar>",<doggytalents:multicoloured_collar>,
    [<doggytalents:wool_collar>,<ore:dyeBlue>,<ore:dyeLime>,<ore:dyeYellow>,<ore:dyeOrange>,<ore:dyeRed>,<ore:dyePurple>,<minecraft:string>]
);

recipes.removeByRecipeName("doggytalents:throw_stick");
recipes.addShaped("throw_stick",<doggytalents:throw_stick>,[
    [<ore:stickWood>,null,<ore:stickWood>],
    [null,<ore:slimeball>,null],
    [<ore:stickWood>,null,<ore:stickWood>]
]);

recipes.removeByRecipeName("doggytalents:throw_bone");
recipes.addShaped("throw_bone",<doggytalents:throw_bone>,[
    [<minecraft:bone>,null,<minecraft:bone>],
    [null,<ore:slimeball>,null],
    [<minecraft:bone>,null,<minecraft:bone>]
]);

recipes.remove(<doggytalents:breeding_bone>);
recipes.addShapeless("breeding_bone",<doggytalents:breeding_bone>*2,[<doggytalents:master_treat>,<ore:listAllbeefcooked>,<ore:listAllchickencooked>,<ore:listAllporkcooked>,<ore:listAllfishcooked>]);

recipes.remove(<doggytalents:sunglasses>);
recipes.addShaped("dog_sunglasses",<doggytalents:sunglasses>,[
    [<ore:stickWood>,null,<ore:stickWood>],
    [<minecraft:stained_glass_pane:15>,<ore:stickWood>,<minecraft:stained_glass_pane:15>]
]);

recipes.remove(<doggytalents:master_treat>);
recipes.addShapeless("master_treat",<doggytalents:master_treat>,[<doggytalents:super_treat>,<doggytalents:super_treat>,<doggytalents:super_treat>,<doggytalents:super_treat>,<doggytalents:super_treat>,<ore:ingotableGem>]);