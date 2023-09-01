import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;

var branchArray = [
    <dynamictrees:oakbranch>,
    <dynamictrees:oakbranchx>,
    <dynamictrees:sprucebranch>,
    <dynamictrees:sprucebranchx>,
    <dynamictrees:birchbranch>,
    <dynamictrees:junglebranch>,
    <dynamictrees:acaciabranch>,
    <dynamictrees:darkoakbranch>,
    <dynamictrees:darkoakbranchx>,
    <dynamictreesbop:magicbranch>,
    <dynamictreesbop:umbranbranch>,
    <dynamictreesbop:umbranbranchx>,
    <dynamictreesbop:firbranch>,
    <dynamictreesbop:firbranchx>,
    <dynamictreesbop:cherrybranch>,
    <dynamictreesbop:deadbranch>,
    <dynamictreesbop:jacarandabranch>,
    <dynamictreesbop:redwoodbranch>,
    <dynamictreesbop:redwoodbranchx>,
    <dynamictreesbop:willowbranch>,
    <dynamictreesbop:hellbarkbranch>,
    <dynamictreesbop:pinebranch>,
    <dynamictreesbop:palmbranch>,
    <dynamictreesbop:mahoganybranch>,
    <dynamictreesbop:ebonybranch>,
    <dynamictreesbop:bamboobranch>,
    <dynamictreesbop:eucalyptusbranch>,
    <dynamictreesphc:cinnamonbranch>,
    <dynamictreesphc:maplebranch>,
    <dynamictreesphc:paperbarkbranch>,
    <rustic:olivebranch>,
    <rustic:ironwoodbranch>,
    <rustic:ironwoodbranchx>,
    <dynamictrees:cactusbranch>,
    <dynamictreesquark:blossomingbranch>,
    <dynamictreesquark:swampoakbranch>,
    <dynamictreestheaether:skyrootbranch>,
    <dynamictreestheaether:goldenoakbranch>,
    <dynamictreestheaether:crystalbranch>,
    <dynamictreestheaether:holidaybranch>,
    <dynamictreesttf:canopybranch>,
    <dynamictreesttf:mangrovebranch>,
    <dynamictreesttf:darkwoodbranch>,
    <dynamictreesttf:treeoftimecorebranch>,
    <dynamictreesttf:treeoftimebranch>,
    <dynamictreesttf:treeoftimebranchx>,
    <dynamictreesttf:treeoftransformationcorebranch>,
    <dynamictreesttf:treeoftransformationbranch>,
    <dynamictreesttf:minerstreecorebranch>,
    <dynamictreesttf:minerstreebranch>,
    <dynamictreesttf:sortingtreecorebranch>,
    <dynamictreesttf:sortingtreebranch>,
    <dynamictreesttf:rainbowoakbranch>,
    <dynamictrees:junglebranchx>,
    <dynamictreesttf:twilightoakbranch>,
    <dynamictreesttf:twilightoakbranchx>,
    <dynamictreesdefiledlands:tenebrabranch>
] as IItemStack[];

for branch in branchArray {
    JEI.removeAndHide(branch);
    furnace.setFuel(branch, 0);
}

JEI.removeAndHide(<dynamictreesphc:grapefruitseed>);
JEI.removeAndHide(<dynamictreesbop:mangrovebranch>);
JEI.removeAndHide(<dynamictreesphc:paperbarkcutbranch>);
JEI.removeAndHide(<dynamictreesphc:palmbranch>);
JEI.removeAndHide(<dynamictreesphc:dragonfruitbranch>);
JEI.removeAndHide(<dynamictreesphc:dragonfruitbranch>);

JEI.removeAndHide(<dynamictrees:staff>.withTag({code: "P", tree: "dynamictrees:oak"}));

recipes.remove(<dynamictrees:dirtbucket>);
recipes.addShapeless("dirt_bucket_stone", <dynamictrees:dirtbucket>,
	[<pyrotech:bucket_stone>.noReturn(), <ore:dirt>]
);
// bamboo to bamboo shoot for greater yield
recipes.addShaped("bamboo_to_bamboo_shoot", <dynamictreesbop:bambooseed>,
 [[null,<ore:shears>,null],
  [<biomesoplenty:bamboo>,<biomesoplenty:bamboo>,<biomesoplenty:bamboo>]]);

recipes.addShapeless("dyntree_guide", <patchouli:guide_book>.withTag({"patchouli:book": "dynamictrees:guide"}),[<minecraft:book>, <ore:treeSapling>]);