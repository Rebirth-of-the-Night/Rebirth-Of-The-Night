import mods.requious.SlotVisual;
import mods.requious.Color;
import mods.requious.ComponentFace;
import mods.requious.AssemblyRecipe;
 
var interaction = <assembly:interaction>;

// sets the interactionPointerVisual static as the pointing finger icon at coordinates 2,7 in the specified file
static interactionPointerVisual as SlotVisual = SlotVisual.createSimple("requious:textures/gui/assembly_gauges.png",2,7);
 
// jei structure single catalyst
interaction.setJEIItemSlot(3,2,"input");
interaction.setJEIItemSlot(5,2,"output");
interaction.setJEIDecoration(4,2,"interactionPointer", interactionPointerVisual);
interaction.setJEIItemSlot(4,3,"catalyst1");
interaction.setJEIItemSlot(4,4,"catalyst2");

var ricePaddy = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<contenttweaker:rice_paddy_dummy>);
}).requireItem("input",<ore:farmland>).requireItem("catalyst1",<ore:pileDirt>);
interaction.addJEIRecipe(ricePaddy);

var fertileSoil = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<rustic:fertile_soil>);
}).requireItem("input",<ore:farmland>).requireItem("catalyst1",<primitivemobs:wonder_sap>);
interaction.addJEIRecipe(fertileSoil);

var defiledDirt = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<defiledlands:dirt_defiled>);
}).requireItem("input",<ore:dirt>).requireItem("catalyst1",<contenttweaker:defiled_dirt_pile>);
interaction.addJEIRecipe(defiledDirt);

var defiledGrass = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<defiledlands:grass_defiled>);
}).requireItem("input",<ore:defileableGrass>).requireItem("catalyst1",<contenttweaker:defiled_dirt_pile>);
interaction.addJEIRecipe(defiledGrass);

var botanicGlass = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<sereneseasons:greenhouse_glass>);
}).requireItem("input",<quark:framed_glass>).requireItem("catalyst1",<contenttweaker:nature_rune>);
interaction.addJEIRecipe(botanicGlass);

var botanicGlassEarly = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<sereneseasons:greenhouse_glass>);
}).requireItem("input",<quark:framed_glass>).requireItem("catalyst1",<contenttweaker:artificial_nature>);
interaction.addJEIRecipe(botanicGlassEarly);

var xpBlock = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<globalxp:xp_block>);
}).requireItem("input",<iceandfire:venerable_stump>).requireItem("catalyst1",<betterwithmods:cooking_pot:2>);
interaction.addJEIRecipe(xpBlock);

var soulSand = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<minecraft:soul_sand>);
}).requireItem("input",<minecraft:sand>).requireItem("catalyst1",<contenttweaker:soul_rune>);
interaction.addJEIRecipe(soulSand);

var thatch = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<quark:thatch>);
}).requireItem("input",<futuremc:scaffolding>).requireItem("catalyst1",<minecraft:wheat>);
interaction.addJEIRecipe(thatch);

var turf = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<quark:turf>);
}).requireItem("input",<futuremc:scaffolding>).requireItem("catalyst1",<minecraft:tallgrass:1>);
interaction.addJEIRecipe(turf);

var lavaBrick = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<ceramics:clay_hard:5>);
}).requireItem("input",<contenttweaker:brick_pyrotech_refractory>).requireItem("catalyst1",<minecraft:magma_cream>).requireItem("catalyst2",<artisanworktables:artisans_carver_gold>);
interaction.addJEIRecipe(lavaBrick);

var goldNugget = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<iceandfire:silver_nugget>);
}).requireItem("input",<contenttweaker:rocky_dirt>).requireItem("catalyst1",<artisanworktables:artisans_lens_gold>);
interaction.addJEIRecipe(goldNugget);

var codex = AssemblyRecipe.create(function(container) {
    container.addItemOutput("output",<villagenames:codex>);
}).requireItem("input",<contenttweaker:rocky_dirt>).requireItem("catalyst1",<cyclicmagic:tool_spelunker>);
interaction.addJEIRecipe(codex);