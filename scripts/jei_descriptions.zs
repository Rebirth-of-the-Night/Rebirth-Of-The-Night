import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import mods.jei.JEI;

/*
 * Putting this here because aaaaaaa formatting.
 * Also, such a dense file needs to have proper formatting to be legible.
 * 
 * Syntax
 * * The item should not be enclosed in [] unless it is a list.
 * * The description should not be enclosed in [] unless it is meant to be separated by a line break, in which case use an extra "".
 * * Try to keep separate pages of descriptions close to each other in the file...
 * * Try to separate long descriptions onto separate pages where fit.
 * 
 * Spacing
 * * 2 lines between categories
 * * 1 line between groups within the category
 * 
 * Sorting
 * * PLEASE put descriptions in the correct category. As of this viewing, brick and wildberries are under BWM.
 * * Grouped by purpose or aesthetic
 * * Categorized by what you would normally organize your chests with, such as:
 * * - Ores
 * * - Ingots
 * * - Manufacturing
 * * - Plants
 * * - Food
 * * - Decorative blocks
 * * - Tools
 * * - Weapons
 * * - Armor
 * * - Redstone
 * * - etc.
 * 
 * Style
 * * Put categories in /* Category here *\/ (Ignore the \, merely for the comment)
 * * Follow Spacing guidelines
 * * PLEASE don't comment every single damn item...
 * * ...Unless the item's id is undescriptive (like <betterwithmods:material:39>)
 * * * In case of said undescriptiveness, make a val that has a more descriptive name
 * * * An example is under the pyrotech section (soon to be revamped)
 * * Try not to put lines between items... it increases the line count waaayyy too much
 * * Also try not to put lines between comments and the item
 * 
 * And that is my page long style guide...
 * Please follow it. - democat, the god
 */

/* KNOWN BUGS */
mods.jei.JEI.addDescription([<harvestcraft:market>],["READ THIS! The market has a known issue where it will steal your emeralds if you leave the GUI in any way, including checking recipes for items in JEI while you have an emerald in the payment slot."]);

/* Tools, Weapons, and Armor */

val handle = <spartanweaponry:material>;
val pole = <spartanweaponry:material:1>;

mods.jei.JEI.addDescription(handle,"Provides a good grip for more advanced weapons.");
mods.jei.JEI.addDescription(pole,"A long stick that provides good grip.");

mods.jei.JEI.addDescription(<betterwithmods:steel_pickaxe>,"Provides the best mining speed and durability, but can only be enchanted in the True Enchanting Table.");
mods.jei.JEI.addDescription(<betterwithmods:steel_mattock>,"The best mining tool obtainable. Combines the Refined Pickaxe and Refined Shovel into one tool, but can only be enchanted in the True Enchanting Table.");
mods.jei.JEI.addDescription(<betterwithmods:steel_axe>,"Provides the best mining speed and durability, but can only be enchanted in the True Enchanting Table.");
mods.jei.JEI.addDescription(<betterwithmods:steel_shovel>,"Provides the best mining speed and durability, but can only be enchanted in the True Enchanting Table.");
mods.jei.JEI.addDescription(<betterwithmods:steel_hoe>,"Provides the best durability, but can only be enchanted in the True Enchanting Table.");

mods.jei.JEI.addDescription([<betterwithaddons:steel_machete>],["A multipurpose tool. Cuts through thick foliage and spiderwebs easily. Acts like shears. When right-clicked, places vines from your inventory. Can only be enchanted in the True Enchanting Table."]);
mods.jei.JEI.addDescription([<betterwithaddons:steel_matchpick>],["A multipurpose tool. When right-clicked, places torches from your inventory. If you have no torches, or if you're sneaking, it will ignite the ground instead. Useful for exploring the Nether. Can only be enchanted in the True Enchanting Table."]);
mods.jei.JEI.addDescription([<betterwithaddons:steel_spade>],["A multipurpose tool. When you dig up any soil or sand, it will be placed directly in your inventory. Right-clicking with the Spade places soil and sand from your inventory. Can only be enchanted in the True Enchanting Table."]);
mods.jei.JEI.addDescription([<betterwithaddons:steel_masonpick>],["A multipurpose tool. Stone blocks mined will be placed in your inventory. Right-clicking with the Mason Pick places processed stone such as slabs, bricks, or stairs from your inventory. Can only be enchanted in the True Enchanting Table."]);
mods.jei.JEI.addDescription([<betterwithaddons:steel_kukri>],["A multipurpose tool. Cuts through any wood or leaves. Wood harvested by this tool will be collected instantly. Right-clicking with the Kukri places saplings from your inventory. Can only be enchanted in the True Enchanting Table."]);
mods.jei.JEI.addDescription([<betterwithaddons:steel_carpentersaw>],["A multipurpose tool. Wood blocks mined will be placed in your inventory. Right-clicking with the Carpenter Saw places processed wooden blocks such as slabs, planks, or stairs from your inventory. Can only be enchanted in the True Enchanting Table."]);

mods.jei.JEI.addDescription(<pyrotech:bucket_wood>,"This won't last long. Don't even think of putting hot fluids in it!");
mods.jei.JEI.addDescription(<pyrotech:bucket_stone>,"It is important to know that a metal bucket may not melt but will surely get as hot as gunpowder inside a stoked cauldron! Lava is no joke, nor should it be treated like one.");
mods.jei.JEI.addDescription(<pyrotech:crude_fishing_rod>, "A less than ideal fishing rod. May break unexpectedly after each use!");

mods.jei.JEI.addDescription(<quark:witch_hat>,"Enchanted thread is woven throughout the inside... and it's comfy, too! Protects your items from being cursed by spectres.");
mods.jei.JEI.addDescription(<betterwithmods:ender_spectacles>,"...if you gaze long into the End, the End also gazes into you. [DISABLED]");
mods.jei.JEI.addDescription(<quark:archaeologist_hat>,"Wearing this hat makes you feel a little more adventurous, a little luckier, and a little more likely to store artifacts in museums.");
<quark:archaeologist_hat>.addTooltip("When worn, provides a slight chance to unearth additional gems when mining gemstone ores.");

mods.jei.JEI.addDescription(<mod_lavacow:bonesword>,"You'll really bone your enemies with this sword - thanks to all those teeth from slain predators. Remember: the bigger they are, the harder they fall.");
mods.jei.JEI.addDescription(<dungeontactics:sharp_stick>,"Preferable to a toy sword, it's mostly useful to newly-stranded survivors in unfamiliar lands. Very low durability, but these can be stacked.");
mods.jei.JEI.addDescription(<trumpetskeleton:trumpet>,"No human should hold this much power.");

mods.jei.JEI.addDescription(<pyrotech:bow_drill>,"More durable than a simple flint and tinder. Can light a kiln if held down for enough time.");
mods.jei.JEI.addDescription(<pyrotech:flint_and_tinder>,"Made with common materials. Can light a kiln if held down, but it is rather fragile. Not as convenient as a flint and steel.");

mods.jei.JEI.addDescription(<toolbelt:belt>,"A rudimentary belt crafted using leather straps and durable fibers. A convenient way of holding many tools for quick access on one's person. Once you put on the belt, hold ` (by default, can be rebound) to access the pouches and add or remove items. Holds two tools by default, and every Belt Pouch you attach in an Iron Anvil allows it to hold one more, up to nine.");
mods.jei.JEI.addDescription(<toolbelt:pouch>,"Attach these to a Tool Belt in an Iron Anvil to allow your Tool Belt to hold more tools. Every Belt Pouch you attach allows it to hold one more tool, up to nine.");

mods.jei.JEI.addDescription(<dungeontactics:high_striker>,"Seemingly possesed by a playful spirit. Launches targets high into the sky.");
mods.jei.JEI.addDescription(<dungeontactics:wackerjab>,"Maybe made by a mad god or maybe by a force of pure entropy. The Wackerjab can turn the target into anything, at random.");
mods.jei.JEI.addDescription(<dungeontactics:taser>,"Fallen from above, only with a carefully precise and near hit, it will summon the roar of the skies.");
mods.jei.JEI.addDescription(<dungeontactics:claws>,"Evoking the arts of ancestral tribes from long ago, these claws will feed their owner with the vital energy of others in exchange of the owner's own energy.");
mods.jei.JEI.addDescription(<dungeontactics:lithen_scythe>,"The unique tool of a long forgotten being, one that had no desire to harm others. Redirects the vitality of its victims to the owner for a short period of time.");
mods.jei.JEI.addDescription(<dungeontactics:pirate_hook>, "A symbol of avarice that will transform vital energy into solid matter, but only at the closest range where hate and damnation takes physical form.");
mods.jei.JEI.addDescription(<dungeontactics:engineer_dungarees>, "Working outfit; will protect against some traps, like clamp traps. Wear with gold, iron, or diamond boots for maximum protection from base defenses.");

mods.jei.JEI.addDescription(<defiledlands:the_ravager>, "Fashioned out of a Black Heart, this weapon has an incredibly fast rate of fire, able to deal much damage at the expense of rather expensive ammunition.");
mods.jei.JEI.addDescription(<defiledlands:pellet_umbrium>, "A pellet made of heavy Soul Forged Steel, able to withstand the energy expelled by a Black Heart and made lighter with a soft core of gravitite.");

/* Ores and Ingots */
val crudeSteelIngot = <dungeontactics:steel_ingot>;
val sfsSteelIngot = <betterwithmods:material:14>;
val charcoal = <minecraft:coal:1>;
// val enderCharbiotite = <undergroundbiomes:lignite_coal>;

mods.jei.JEI.addDescription(<endreborn:block_essence_ore>, "A hard and somewhat hypnotizing rock some consider to be unnatural. It is the source of End essence.");
mods.jei.JEI.addDescription(<endreborn:item_end_essence>, "As their civilization collapsed, the ensuing chaos leaked living entropy into the world.");
mods.jei.JEI.addDescription(<biomesoplenty:biome_essence>,"Residual energy of that which was extinguished by Void. Can be found at the bottom of the Ender Dragon island.");
mods.jei.JEI.addDescription(<ore:ingotSilver>,"A material known to be effectively used against undead monsters. Silver is strong in damage and mining speed, but weak in other aspects.");
mods.jei.JEI.addDescription(<ore:ingotIron>,"Although bronze is tougher and more durable than iron, iron will always be useful for all sorts of tools and utilities.");
mods.jei.JEI.addDescription(crudeSteelIngot,["Steel made in a crucible is not the most pure, strong or durable alloy of steel, but it manages to easily outclass bronze. Steel is widely used in mechanisms for it's durability.",'Although smiths have discovered alloys of steel that are much harder and flexible, the complex process has been lost to the ages while others have been deemed too "disturbing" to make. Yet there are rumors that a craftsperson skilled enough could make a steel alloy better than anything discovered before.']);
mods.jei.JEI.addDescription(sfsSteelIngot,"Used as a late-game crafting material. It can craft a Mattock - the best mining tool available! It is also needed for some advanced contraptions.");

mods.jei.JEI.addDescription(<biomesoplenty:gem:0>,"A beautiful gem common to the lands of the Ender folk, as the deposits in the Nether have long been depleted. Some villagers in the coldest of places collect this gem through unknown methods.");
mods.jei.JEI.addDescription(<netherex:amethyst_crystal>,"A beautiful gem native to the lands of the Pigfolk, this variety is most rare since pristine veins only remain in The End. Some villagers in the coldest of places collect this gem through unknown methods.");
mods.jei.JEI.addDescription(<ore:gemDiamond>,'Diamond! The hardest material available in this world where you awakened. Its applications are countless, but apart of serving various purposes as a gem, like most other gems it can prove a powerful reinforcing material for steel alloy; diamond ingots can create "diamond" armor, tools and weapons.');
mods.jei.JEI.addDescription(charcoal,"The process to obtaining quality charcoal requires either a proper kiln or pit burning. A simple furnace's direct fire is too strong and would just burn the wood...");

mods.jei.JEI.addDescription(<quark:biotite>,"An otherworldly crystal made of tough organic matter. Can be found on the Ender Dragon island after killing the Ender Dragon.");
// mods.jei.JEI.addDescription(enderCharbiotite,"An almost otherworldly amalgamation of tough organic matter. Just powerful enough to act as a catalyst for steel to contain souls.");

/* Manufacturing */
val hempFiber = <betterwithmods:material:3>;
val windmillBlade = <betterwithmods:material:11>;
val millstone = <betterwithmods:single_machine>;
val woodChips = <pyrotech:rock:7>;
val pulp = <pyrotech:material:25>;
val bark = <ore:barkWood>;
val denseRedstone = <pyrotech:material:36>;
// val fiber = <betterwithmods:material:3>;
val plantFiber = <pyrotech:material:12>;
val driedPlantFiber = <pyrotech:material:13>;
val twine = <pyrotech:material:14>;
val durableTwine = <pyrotech:material:26>;
val coade = <liquid:coade_stone>;

mods.jei.JEI.addDescription(windmillBlade, "Can be crafted using any wooden slab, or cheaper using wooden siding once you build a Saw!");
mods.jei.JEI.addDescription(millstone,"A necessary machine for every starting mechanist! Needs mechanical power from the top or bottom.");
mods.jei.JEI.addDescription(<betterwithmods:saw>,["Requires continuous mechanical power to work. A windmill or waterwheel will suffice.","","The saw can also be used to obtain heads from creatures that die to it if the creature is standing on a stone chopping block."]);
mods.jei.JEI.addDescription(<harvestcraft:well>,"Wells drill deep into the earth in search of renewable water. Stressing these delicate components by destroying this block means it cannot be retrieved if broken - only some of the parts will be returned.");
mods.jei.JEI.addDescription(<betterwithmods:wooden_gearbox>, ["One input and multiple outputs; insert a powered axle on the side marked with arrows to redirect rotatory energy to the other sides.","","Remember, wooden axles can only transfer energy up to three blocks of distance (unless they act as a frame for a vertical windmill).","Can be turned off by giving it a redstone signal; attaching a chime will output a redstone signal if it is raining."]);

mods.jei.JEI.addDescription(<pyrotech:drying_rack:1>, "This device may hold 4 items at a time. Drying time is heavily reduced by nearby fire, but all the fire in the world won't dry something exposed to rain.");
mods.jei.JEI.addDescription(<pyrotech:chopping_block>, "A chopping block enables the harvesting of both bark and wood chips, which can be used in the advanced crafting of tanned leather or tar and charcoal production.");
mods.jei.JEI.addDescription(<pyrotech:stone_kiln>,"A primitive machine that can smelt certain items like clay, bronze alloy, and charcoal in batches of 12. Needs to be ignited with a flint and tinder or a better igniter with fuel placed inside. Use and hold the igniter until the kiln is lit.");
mods.jei.JEI.addDescription(<pyrotech:brick_kiln>,"Upgraded version of the stone kiln that can smelt certain items like clay, bronze alloy, and charcoal in batches of 32, faster and more effectively! Ignited the same way as a stone kiln.");
mods.jei.JEI.addDescription(<pyrotech:anvil_granite>,"Pretty useful to bash or break items into smaller pieces. Can turn tin and copper into pebbles suitable for making bronze.");

mods.jei.JEI.addDescription(woodChips, "This byproduct of wood can be just as useful as the base material in the hands of a resourceful carpenter.");
mods.jei.JEI.addDescription(bark,"Woof! Obtained from chopping up logs, these are most useful for tanning leather.");
mods.jei.JEI.addDescription(driedPlantFiber, "Small strands of dried fiber. Can be tied together for some string or better quality fiber.");
mods.jei.JEI.addDescription(plantFiber, "Various high-quality plant material found by breaking different kinds of grass.");
mods.jei.JEI.addDescription(hempFiber,"High quality fiber used in advanced recipes where string falls short; can be made by interlacing some plants.");
mods.jei.JEI.addDescription(twine, "A twine with roughly the same resistance as string from wool or spider-silk.");
mods.jei.JEI.addDescription(durableTwine, "By soaking twine in wood tar, it can achieve roughly the same durability and strength of higher quality hemp fibers.");
mods.jei.JEI.addDescription(pulp, "Obtained either by macerating wood and sugar cane or by beating the pulp out of bark, this is an efficient resource for making paper.");
mods.jei.JEI.addDescription(coade, "An homogenous magma of varied stone that is easy to manipulate. Its name comes from its association with a certain earthenware material that was said to be truly easily moldable into any shape; although not clay, that name stuck with it over time.");
mods.jei.JEI.addDescription(denseRedstone, "The purest variety of redstone, it pulsates frantically and shines with fiery energy when it is moved around too much. It would seem as if countless restless souls were trapped inside a mineral cage for all eternity... is this source of power really without a cost?");
mods.jei.JEI.addDescription(<rustic:rope>, "Used for supporting various plants so that they can grow. Used with Crop Stakes. Refer to your Almanac for details.");
mods.jei.JEI.addDescription(<rustic:crop_stake>, "Used for supporting various plants so that they can grow. Used with Agricultural Rope. Refer to your Almanac for details.");

mods.jei.JEI.addDescription(<dungeontactics:engineers_wrench_iron>,"Used to rotate blocks, such as pistons or fans, and to reset triggered traps. Good for picking up redstone stuff and rails. Sneak & use on a trap plate to hide it.");
mods.jei.JEI.removeAndHide(<base:wrench>);

/* Multiblock Kilns, Refractory Structures, Pit Burning and Camping */
val refractoryClayBall = <pyrotech:material:4>;
val refractoryBrick = <pyrotech:material:5>;
val slag = <pyrotech:material:8>;

mods.jei.JEI.addDescription(<minecraft:brick_block>,["Other than the regular uses it has as a material or building block, bricks are useful to build huge and slow cooking kilns; to build a slow cooking kiln, make a frame consisting of four brick blocks with a space in the middle in which to place the block you wish to cook, then light the block below the structure.","","These structures can never achieve the level of high temperature a carefully crafted kiln or a refractory structure could achieve, since too much air flows between gaps and the heat source is too far away."]);
mods.jei.JEI.addDescription(<pyrotech:material>, "Ashy remains of pit burning. With a little care, a lot of pure ash can be extracted from this pile.");

mods.jei.JEI.addDescription(refractoryClayBall, "This muddy, limy ball contains a great concentration of particular elements which makes it practically impervious to heat once processed. An excellent material to make a heat-resistant burning station.");
mods.jei.JEI.addDescription(slag, "Leftovers of certain materials containing precious components such as silica, aluminum, calcium and magnesium.");
mods.jei.JEI.addDescription([<pyrotech:refractory_brick_block>,refractoryBrick], "Refractory materials enable the construction of structures for burning certain materials at high temperatures. Build a room made entirely of refractory materials, place the resource to be burned inside (filling any spaces), ignite it, then quickly cover or enclose the space. If done correctly, the material will burn and output the refined material, as well as depositing any resulting liquid if a collector is present.");
mods.jei.JEI.addDescription(<pyrotech:refractory_door>, "A refractory burning structure works by burning without actually starting a fire, thus, it is of tremendous importance than no air gap is present between the walls of the structure and the material being burned; that includes the door...");
// mods.jei.JEI.addDescription(<pyrotech:living_tar>, 'Burning slowly, this tarry meat substance is in the words of its inventor, "A strong candidate for the most loathsome of fuels."');
mods.jei.JEI.addDescription(<pyrotech:tinder>, "Placing it on the ground and directly adding some logs, then lighting it up, will create a functional campfire for primitive cooking and outdoors camping.");

/* Plants */
mods.jei.JEI.addDescription(<rustic:wildberries>,"A strong-flavored pome-like fruit that can be prepared or distilled. Carminberries have a highly staining red pigment which make them a perfect red dye.");
mods.jei.JEI.addDescription(<rustic:wildberry_bush>,"Carminberry bushes are a harmless source of food and they can be multiplied using bone meal. Carminberry bushes grow naturally in most warm and not dry biomes.");
mods.jei.JEI.addDescription(<rustic:mooncap_mushroom>, "Found in Jungle biomes and caves.");
mods.jei.JEI.addDescription(<rustic:cloudsbluff>,"This puffy white flower is only found in mountainous biomes.");
mods.jei.JEI.addDescription(<betterwithaddons:thorn_rose>, "A mysterious plant that rapidly grows on sand and will wander towards structures like walls. Causes significant damage and can be harvested for Midori and Thorny Roses.");
mods.jei.JEI.addDescription(<biomesoplenty:berries>, "A berry extracted from an unwilling hawthorn. Although they are unfulfilling and sour, some animals like them, but they are too hard to get. Horses, especially, may surprise their owners when presented with a prepared hawthorn dish.");
mods.jei.JEI.addDescription(<biomesoplenty:plant_0:5>, "The common hawthorn bush produces a sour berry and has soft leaves. When under stress or pressure from an external force trying to grab its fruit, its branches will harden and poke any unwanted visitors. The berry itself presents particular properties when prepared and fed to horses.");
mods.jei.JEI.addDescription(<minecraft:cactus>,"Can be used to fill a bottle with water. Drink it in a hot and arid biome to receive a small buff.");
mods.jei.JEI.addDescription(<pyrotech:mulch>, "The smart gardener knows that with some nitrogen and potash, one gets mulch! Applying it to farmland will protect the block from being trampled and will help crops grow a little faster.");

mods.jei.JEI.addDescription(<harvestcraft:juteitem>, "Durable, but needs to be dried and macerated first to get any value out of it. This effort pays off with a higher yield of fiber.");
mods.jei.JEI.addDescription(<harvestcraft:flaxitem>, "Flax is versatile when it comes to textiles, though it is not as durable as hemp. Flax is also useful in making light blue dye.");
mods.jei.JEI.addDescription(<harvestcraft:kenafitem>, "Contains a good amount of fiber... but this fiber is mostly useful for paper, not textiles.");
mods.jei.JEI.addDescription(<harvestcraft:sisalitem>, "Also known as henequen, a very durable 'palm-like' plant native to dry biomes. This plant is a decent source of fiber and string since its leaves are thick and strong.");
mods.jei.JEI.addDescription(<harvestcraft:cottonitem>, "Cotton can be used in various textiles, but it is not the most naturally resilient fiber.  When used to make clothing or padding, however, it's very comfortable.");
mods.jei.JEI.addDescription(<betterwithmods:hemp>,"An extremely useful plant, hemp can make very high quality and durable fibers with a variety of uses. It's easily made into sails and different kinds of textiles. Grows two blocks high like Sugar Cane - be sure to only harvest the top one!");

/* Food */
mods.jei.JEI.addDescription(<animania:friesian_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
mods.jei.JEI.addDescription(<animania:holstein_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
mods.jei.JEI.addDescription(<animania:jersey_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
mods.jei.JEI.addDescription(<animania:goat_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");
mods.jei.JEI.addDescription(<animania:sheep_cheese_wheel>,"To form a cheese wheel, place milk from a goat, a sheep, or from certain breeds of cow in a cheese mold and wait several minutes for it to curdle.");

mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_jersey", Amount: 1000}),"Jersey Milk is obtained from Jersey Cows.");
mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_friesian", Amount: 1000}),"Friesian Milk is obtained from Friesian Cows.");
mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_holstein", Amount: 1000}),"Holstein Milk is obtained from Holstein Cows.");
mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_goat", Amount: 1000}),"Goat Milk is obtained from goats.");
mods.jei.JEI.addDescription(<forge:bucketfilled>.withTag({FluidName: "milk_sheep", Amount: 1000}),"Sheep Milk is obtained from sheep.");

mods.jei.JEI.addDescription(<minecraft:poisonous_potato>, "Turned rotten through an infectious disease. If fed to certain baby animals, their growth will be stunted forever.");

/* Mobs and Drops */
val dung = <betterwithmods:material:5>;

mods.jei.JEI.addDescription(<quark:parrot_egg:*>, "Much like other birds, parrots love the taste of veggies and seeds. Beetroot seeds, in particular, are their favorite snack during the mating season: some time after eating beetroot seeds, a parrot will lay an egg.");
mods.jei.JEI.addDescription(<minecraft:gunpowder>, "The central ingredient of most explosives. It can also be placed on the ground and ignited as a fuse.");
mods.jei.JEI.addDescription(<minecraft:skull:3>, "An old village legend claims that a golem named after a specific person carries a sliver of that person's soul… and those who practice forbidden arts can bring forth an echo of that soul to the physical realm. Named Snow Golems equipped with a pumpkin will drop a copy of that person's head if killed by a witch.");
mods.jei.JEI.addDescription(<minecraft:dragon_breath>, "Acidic breath of the accursed beast, infused with the energy of a plane outside all else. Its lingering aura can even affect stone.");
mods.jei.JEI.addDescription(<minecraft:blaze_rod>, "These stabilizing rods are used to neutralize the explosive elemental energy of a blaze. Even after being separated from their constructs, blaze rods are warm to the touch and make for a bizarre decoration if placed.");
mods.jei.JEI.addDescription(<quark:tallow>,"Used for making candles or repairing gear in an iron anvil. Pigs are a good source of tallow, or you can melt down rotten flesh for a crude source.");
mods.jei.JEI.addDescription(<mod_lavacow:moltenbeef>,"Young Netherdrakes' first instinct is always to run, in order to keep out of their predators' reach. Adult Netherdrakes have no such instinct... because nothing messes with them.");
mods.jei.JEI.addDescription(<mowziesmobs:glowing_jelly>,"Puffbulbs are particularly fragile creatures that sustain themselves by absorbing energy from a living mineral, surviving against all odds amidst the horrors of the Beneath.");
mods.jei.JEI.addDescription(<mod_lavacow:dreamcatcher>,"If you sleep through the night with a dreamcatcher equipped or in your hand, there's a chance that a physical manifestation of your nightmares will be summoned when you awaken.");
mods.jei.JEI.addDescription(<primitivemobs:wonder_sap>,"A marvelous material produced by grove sprites. It can turn other species of wood into the type of wood the grove sprite originated from. Most interestingly, when combined with certain dense liquids, it makes for an extremely strong glue.");
mods.jei.JEI.addDescription(<biomesoplenty:flesh>, "It's surprisingly warm to the touch.");

mods.jei.JEI.addDescription(<betteranimalsplus:wolfhead_1>,"Direwolves would only ever submit to something they considered an apex predator. They accept no meat from strangers, but may accept the bones of terrifying creatures as treats.");
mods.jei.JEI.addDescription(<betteranimalsplus:wolfhead_1>,"To even attempt to tame a direwolf, one must need the head of a very powerful beast. One may be very obvious (it is a vanilla head) and the other is much less obvious.");
mods.jei.JEI.addDescription([<betteranimalsplus:coyotehead_1>, <betteranimalsplus:coyotehead_1>],"Coyotes will eat almost any common meat, as well as many kinds of fruit. They aren't picky eaters.");
mods.jei.JEI.addDescription([<betteranimalsplus:foxhead_1>, <betteranimalsplus:foxhead_1>, <betteranimalsplus:foxhead_2>, <betteranimalsplus:foxhead_3>, <betteranimalsplus:foxhead_4>],"Foxes usually hunt animals smaller than them, such as chickens, frogs, pheasants, and rabbits. They're also fond of berries.");
mods.jei.JEI.addDescription([<betteranimalsplus:hirschgeistskull>, <betteranimalsplus:hirschgeistskull_1>],"Cursed skull of a powerful forest spirit.");
mods.jei.JEI.addDescription(<betteranimalsplus:hirschgeistskullwearable>,"Cursed skull of a powerful forest spirit, prepared for use as ritual head armor. Wearing this artifact commands respect from even the fiercest woodland creatures.");

mods.jei.JEI.addDescription(dung,"Gross? No, it's nature being useful! Obtained by feeding tamed wolves and waiting a fair amount of time. Triggers a fermentative process to make tanned leather.");
mods.jei.JEI.addDescription(<betterwithmods:breeding_harness>, "...");

mods.jei.JEI.addDescription(<netherex:frost_rod>, "Stabilizing rod for a chilling elemental construct, favored as a guardian by users of ice magic.");
mods.jei.JEI.addDescription(<netherex:frost_powder>, "The remains of crushed frost rods are still cold enough to cause frostbite if handled improperly.");
mods.jei.JEI.addDescription(<netherex:coolmar_spider_fang>, "Coolmar scuttlers are not true spiders, but unholy constructs of bone and ice. Many folk legends claim that these monstrosities will emerge before the end times.");

mods.jei.JEI.addDescription(<betterwithmods:material:54>, "Unlike most spiders, the notorious Jungle Spiders are cooperative hunters. Jungle spider venom can cause severe vomiting and loss of appetite, but their prey rarely lives long enough to experience these effects.");
mods.jei.JEI.addDescription(<mod_lavacow:poisonstinger>, "Honeybees die after stinging once. Vespas keep stinging until you're dead.");

mods.jei.JEI.addDescription(<mod_lavacow:scythe_claw>, "Dreadful claw of the Ithaqua, a fiend of visceral hunger and fury.");

mods.jei.JEI.addDescription(<defiledlands:black_heart>, "A powerful heart. Fueled by incomprehensible evils...");
mods.jei.JEI.addDescription(<defiledlands:scuronotte>, "Scuronotte catches, condenses and feed off the natural magic present in defiled ecosystems.");
mods.jei.JEI.addDescription(<mod_lavacow:undyingheart>, "A powerful heart. Fueled by a terrible curse...");

/* Decorative Blocks */
mods.jei.JEI.addDescription(<minecraft:bed:*>, ["With some bits of padding and a little carpentry, one can create a place to lay their head, finding peaceful sleep until the glorious dawn."]);

mods.jei.JEI.addDescription(<minecraft:purpur_block>, ["One of the most distinctive types of Ender architecture, favored for endermites as burrows to pupate into shulkers.","Long ago, the shulkers were easily controlled… but now, what remains of the Ender empire cannot prevent the pests from infesting their cities."]);
mods.jei.JEI.addDescription(<betterwithaddons:elytra_magma>, "A mysterious block that creates a magical updrift if one flies over it with an elytra!");
mods.jei.JEI.addDescription(<minecraft:end_stone>,"Some have seen this para-dimensional stone floating around in the Overworld. Legends claim this stone to be the most common soil in the home of the Enderpeople, although it was described as covered with vibrant purple grass and flora.");

mods.jei.JEI.addDescription(<chutes:chute_wood>, "The benefit of 4 full blocks in 1. Especially useful to access underwater areas quickly.");
mods.jei.JEI.addDescription(<chutes:chute_entry_wood>, "The benefit of 4 full blocks in 1. Especially useful to access underwater areas quickly. This one acts as an entry point.");

mods.jei.JEI.addDescription(<quark:sugar_block>, "Thoughtless farmers will lose their precious sugar deposits if left near water – the blocks will dissolve outright.");
mods.jei.JEI.addDescription(<charm:gunpowder_block>, "Inert storage for an explosive element. Falls like sand and gravel. Like its item counterpart, it will dissolve in lava.");
mods.jei.JEI.addDescription(<contenttweaker:halite>,"A huge chunk of raw sodium chloride... salty!");
mods.jei.JEI.addDescription(<charm:rotten_flesh_block>, "Similar to the flesh found in the Nether, yet different - it twitches once in a while. If buried long enough, the rotten essence will seep out of the block...");

mods.jei.JEI.addDescription(<quark:black_ash>, "Foul essence! Decay can be felt being constantly expelled from these remains. A single layer of this dust under a solid material will prevent any living creature from appearing on top of that surface.");
mods.jei.JEI.addDescription(<ore:blockCandle>, "An aesthetic alternative to torches. Will fall if their support is removed.");
mods.jei.JEI.addDescription(<minecraft:torch>, "An adventurer's best friend. Most will rather delve into caves looking for mineral coal than assemble a charcoal production operation, especially those in dire situations. Other more powerful light sources include Glaretorches, Hanging Lights or Lanterns.");
mods.jei.JEI.addDescription(<arcanearchives:quartz_sliver>, "A cheap alternative to torches obtained by punching blocks with radiant quartz.");

/* Redstone and Automation */
mods.jei.JEI.addDescription(<quark:ender_watcher>, "Redstone technology combined with the unblinking will of an Eye of Ender. Emits a redstone signal when looked at.");
mods.jei.JEI.addDescription(<quark:gravisand>, "A peculiar substance with properties not even heard in tales of the fabled Aether. Will only fall when activated with redstone. If it is already in contact with the ground, the sand will instead float as if falling up.");
mods.jei.JEI.addDescription(<quark:gold_button>, "Emits a signal for 2 ticks.");
mods.jei.JEI.addDescription(<quark:iron_button>, "Emits a signal for 6 seconds.");
mods.jei.JEI.addDescription(<quark:obsidian_pressure_plate>, "Will only trigger if a human walks over it. Perhaps humanity indeed carries the heaviest burden.");
mods.jei.JEI.addDescription(<quark:redstone_inductor>, "Outputs a signal equal to the sum of its inputs. Can be locked with a comparator.");
mods.jei.JEI.addDescription(<quark:redstone_randomizer>, "Outputs a signal to either the left or right.");
mods.jei.JEI.addDescription(<minecraft:compass>, "Sneak and right-click on a bed, beacon, or banner to make the compass point to it. Create multiple compasses for different waypoints.");
mods.jei.JEI.addDescription(<betterwithmods:rope>, "A tough cord used in the construction of various components, or for pulling up Platforms in conjunction with a Pulley.");

mods.jei.JEI.addDescription(<projectred-core:resource_item:0>, "Circuit plates are used as the base for all logic components.");
mods.jei.JEI.addDescription(<projectred-core:resource_item:4>, "Platformed plates are used as elevated circuit plates, for when wires are able to cross over each other without intersecting.");
mods.jei.JEI.addDescription(<projectred-core:resource_item:103>, "Red alloy ingots are an upgraded form of redstone that allow advanced circuitry and processing. Having several times more capability than its primitive counterpart, it's used to design several elegant and compact electrical solutions.");
mods.jei.JEI.addDescription(<projectred-core:resource_item:251>, "A shoddy mush of iron, redstone, and copper. Useless on its own.");
mods.jei.JEI.addDescription(<projectred-core:screwdriver>, "A mechanical tool used to configure several advanced contraptions. Right-click on any component to rotate it; most components will also utilize shift-right-clicking to configure it.");
mods.jei.JEI.addDescription(<projectred-core:multimeter>, "A tool used to measure the power of a wire. Right-click on any wire to display the client- and server-side power levels.");
mods.jei.JEI.addDescription(<projectred-integration:gate:0>, "A simple component that outputs a signal if any of its inputs are on. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:1>, "A simple component that outputs a signal if all of its inputs are off. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:2>, "A simple component that outputs a signal if its input is off. It has 1 input and 3 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:3>, "A simple component that outputs a signal if all of its inputs are on. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:4>, "A simple component that outputs a signal if any of its inputs are off. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:5>, "A simple component that outputs a signal if either of its inputs are on, but not both. It has 2 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:6>, "A simple component that outputs a signal if both of its inputs are on or both are off. It has 2 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:7>, "A component that reroutes a signal in configurable directions. It has 1 input and a maximum of 3 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:8>, "A component that emits a signal according to the state of the back input, which acts as a toggle between the right and left sides, respectively. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:9>, "A component that emits a short pulse any time the input turns on. It has 1 input and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:10>, "A component similar to a vanilla repeater in that it repeats signals back to full strength and has a tick delay. However, it has a max tick delay of 128 ticks and cannot be locked. It has 1 input and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:11>, "A component similar to the simple randomizer. However, it randomizes each output individually, which is ideal for pulses with random length. Turning on the input allows randomization to occur, and turning off the input locks each output. It has 1 input and 3 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:12>, "A component that switches between two states. One input will set the latch, and the other will reset it. Consecutive pulses to the same input will not change the state of the latch. It has 2 inputs and 2 or 4 outputs, depending on the configuration.");
mods.jei.JEI.addDescription(<projectred-integration:gate:14>, "A component similar to a vanilla repeater in that it allows signals to be locked. When the back input is turned on, the outputs are set to the left input; when the back input is turned off, the outputs are locked. It has 2 inputs and 2 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:17>, "A component used to create second-long delays. When the input is off, the timer waits for the specified time before pulsing its outputs; when the input is on, the timer stops and resets back to 0. Right-click it to open the configuration GUI. It has 1 input and 3 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:19>, "A component that retains an internal count, which cannot go below 0. When the count is at 0, the back output turns on; when the count is at the configurable maximum, the front output turns on. The left and right control the count by subtracting and adding respectively, or it can be flipped by shift-right-clicking the component with a screwdriver. The component can be configured via a GUI. It has 2 inputs and 2 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:20>, "A component similar to a timer in that it has a configurable time. The timer can be reset using either the back or right inputs, and the back input can start the timer. While the timer is running, the left output is on; when the timer ends, the front output pulses. Right-click it to open the configuration GUI. It has 2 inputs and 2 outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:21>, "A component that acts as an intermittent AND gate. Either of the inputs have to be on at any point for the output to pulse on and then reset the internal state. However, the back input can be turned on to reset the internal state. It has 3 inputs and 1 output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:23>, "A stacking component that allows wires to cross over each other without intersecting. Null cells can be stacked in the same block, meaning up to four wires can pass through the same block. It has a total of 4 inputs and outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:24>, "A stacking component that allows wires to cross over each other. The top wire is controlled by the bottom wire - if the bottom wire is off, the top wire is on, and vice versa. Invert cells cannot be stacked in the same block. It has a total of 4 inputs and outputs.");
mods.jei.JEI.addDescription(<projectred-integration:gate:31>, "A stacking component that allows wires to cross over each other. The top wire controls the bottom wire in that it acts as the back input of a transparent latch. The latch's input is the back input, and the latch's output is the front output. Stacking latches can be stacked in the same block. It has a total of 4 inputs and outputs, with at least one input and one output.");
mods.jei.JEI.addDescription(<projectred-integration:gate:33>, "A component similar to the enhanced randomizer in that it has three random outputs. However, the component switches between the three outputs exclusively, meaning only one output is selected at any given moment. When the input is on, the randomization occurs; when the input is off, the outputs are locked. It has 1 input and 3 outputs.");
mods.jei.JEI.addDescription(<projectred-transmission:wire:0>, "A simple wire made out of red alloy. This wire can hold up to 256 power and provide resources for many other recipes. It can connect to any insulated wire.");
mods.jei.JEI.addDescription(<projectred-transmission:framed_wire:0>, "A framed wire that does not require a wall to adhere to. Similar to its unframed counterpart, it connects between all framed wires and holds up to 256 power. It can be connected to normal wires by placing a red alloy wire in the same block as the framed wire.");
mods.jei.JEI.addDescription(<microblockcbe:microblock:1>.withTag({mat: "minecraft:iron_block"}), "Covers allow for blocking between redstone signals that should not intersect. They are also used for creating one-block high bridges over other redstone.");
mods.jei.JEI.addDescription(<microblockcbe:microblock:1>.withTag({mat: "minecraft:diamond_block"}), "Covers allow for blocking between redstone signals that should not intersect. They are also used for creating one-block high bridges over other redstone.");

/* Mechanical, Defense, and Item Movement */
mods.jei.JEI.addDescription(<quark:rope>, "A useful tool for traversal. Right click on a rope with more rope to descend downward. It will also pull itself and blocks underneath it upwards if right-clicked while sneaking.");
mods.jei.JEI.addDescription(<quark:chain>, "A small chain such as this can be used to link a series of minecarts or boats, allowing for far more organized journeys.");
mods.jei.JEI.addDescription(<minecraft:lead>, "Besides leading creatures by hand, leads can be tied to a fence or even between two fences to create a connection. Some creatures will never submit to a lead - for that, the use of a refined chain is required.");

mods.jei.JEI.addDescription(<quark:chute>, "A glorified funnel. Items deposited in a chute by a hopper will be expelled directly beneath it.");
mods.jei.JEI.addDescription(<quark:grate>, "Most animals will never attempt to walk over the precarious-looking surface of a grate. Items, however, will fall right through.");

mods.jei.JEI.addDescription(<quark:iron_rod>, "Useful for structural support, but most prized as a powerful mining tool. When pushed by a piston, it can pierce through almost anything.");
mods.jei.JEI.addDescription(<quark:iron_ladder>, "The tin ladder can effectively sustain its own weight without a supporting surface. Right-clicking it with another tin ladder will extend the ladder downwards.");

mods.jei.JEI.addDescription(<pyrotech:faucet_stone>,"When right-clicked, it will start to drain any liquid from one container to another container below itself. Right-click again to stop the faucet's flow. Can be powered with redstone.");
mods.jei.JEI.addDescription([<betterwithaddons:aqueduct>,<betterwithaddons:aqueduct:1>,<betterwithaddons:aqueduct:4>],"A smart solution to long-distance water transport. Aqueducts carry water exclusively from watery biomes, such as rivers, oceans, and wetlands - other sources won't suffice.");
mods.jei.JEI.addDescription(<betterwithaddons:aqueduct:4>,"The great desert empires relied on these constructions where wells fell short. Few aqueducts still remain standing today.");

mods.jei.JEI.addDescription(<contenttweaker:elevator>,"Roughly accurate reproduction of one of the most advanced machines — if it can be called a machine — ever created by the civilization that once inhabited The End. In its current state it is pretty much useless, but that does not mean that it is worthless...");
mods.jei.JEI.addDescription(<advancedliftingmethods:ultimate_ender_elevator>,"At the peak of their technological advancement, the now warped inhabitants of The End manipulated space so easily that they did not require to use their inhate abilities. While in a column of two or more Ender Elevators, jump to teleport to the one above or crouch to teleport to the one below.");
mods.jei.JEI.addDescription(<dungeontactics:fan_block>,"Pushes §lall entities and items§r, extinguishes fires, and blows away dust. Gives a stronger push if there is another fan behind. Because it has a less controlled wind flow than that of a fan elevator, it §lcannot make air flow through chutes.");
mods.jei.JEI.addDescription(<dungeontactics:flamer_block>,"Deals fire damage relative to distance to entities within range. Can light fires, heat furnaces, brewing stands, and cauldrons, and ignite explosives.");
mods.jei.JEI.addDescription(<advancedliftingmethods:blowing_elevator>,"Thanks to reverse-flow filter logic from stone pressure plates, it pushes only entities. Use the blowing elevator along with chutes to make chute elevators.");

mods.jei.JEI.addDescription(<malisisdoors:garage_door>, "Apply a redstone signal to lift the gate. All connected gates move as one block.");
mods.jei.JEI.addDescription(<malisisdoors:jail_door>, "Apply a redstone signal to open and close.");

/* Stars */
mods.jei.JEI.addDescription(<nyx:fallen_star>,"A piece of the heavens lies inside fallen stars. These will rarely fall from the sky, but are more common during a star shower.");


/* Hearts */
mods.jei.JEI.addDescription(<contenttweaker:heartofthefallen>,"The beating of this heart never stops. If you listen closely, you can hear faint cries of pain and sorrow echoing within.");
mods.jei.JEI.addDescription(<contenttweaker:heavensheart>,"Beating with the force of blessed fury from the heavens, this heart flows with a burning radiance and the searing power to cast away evil.");
mods.jei.JEI.addDescription(<quark:diamond_heart>,"A rare heart of living mineral ripped from the core of the world and restored to life with magic.");


/* Stat Modifiers (Enchanting, Reforging) */
mods.jei.JEI.addDescription(<quark:ancient_tome>,"Filled with arcane secrets from a long-dead civilization. Combine an Ancient Tome and a matching enchanted book in an anvil to increase the enchantment one level higher than its normal maximum level.");
mods.jei.JEI.addDescription(<qualitytools:reforging_station>,"Placing an item in the Reforging Station along with one piece of its primary material, such as an ingot, will change the item's quality. Many magical items can be reforged with Spectral Silt.");
mods.jei.JEI.addDescription(<minecraft:enchanting_table>,"Can be upgraded with an Enchanting Table Upgrade. Creating a block costs XP. This XP cost increases by 1 for every 3 blocks that you add. Put them in the grid to apply them. Don't get greedy!");
mods.jei.JEI.addDescription(<aether_legacy:enchanter>,"With a generous amount of time and fuel, it can infuse or repair rarer weapons and tools, changing the item's quality in the process. Using electrum instead of ambrosium proves to be much more efficient. A gravitite block underneath the capacitor allows it to infuse energy much quicker.");

/* Storage */
mods.jei.JEI.addDescription(<netherchest:nether_chest>,"When items are stored in a Nether Chest, their normal stack size limit is multiplied by 8, due to the way the Nether compresses space by a factor of 8. This stack size increase also applies to tools and any other items that aren't normally stackable. Despite their name, trying to open one in the Nether is a very bad idea.");
mods.jei.JEI.addDescription(<pyrotech:compacting_bin>, "A reinforced container that's useful to compact stuff into denser materials or blocks.");
mods.jei.JEI.addDescription(<pyrotech:shelf>,"Displays items much more visibly than a chest ever could.");
mods.jei.JEI.addDescription(<pyrotech:stash>,"When all you need is somewhere to stash items... without requiring an arcane trove. Can hold up to 32 stacks of the same item.");


/* Rats and the Plague */
mods.jei.JEI.addDescription(<rats:treacle>,"Supposedly, syrup aged for at least ten years can help ward off the plague. Unless you were preparing for the plague starting ten years ago, that won't help... unless you can find something to magically age the syrup or spark a strange fermentation reaction.");
mods.jei.JEI.addDescription(<rats:plague_essence>,"Calcified clump of plague energy. The plagues were thought to be sealed away for good, but now this strain, at least, has returned with a vengeance.");
mods.jei.JEI.addDescription(<rats:plague_doctor_mask>,"Protects the wearer from foul smells. The beak has just enough space to stuff a bundle of sweet herbs inside - ideal to distract from the stench of examining plagued or rotting flesh.");
mods.jei.JEI.addDescription(<rats:plague_doctorate>,"Contains vital knowledge for studying and treating plague. Plague doctors are often feared or even shunned within their own communities, due to the nature of their work.");
mods.jei.JEI.addDescription(<rats:rat_breeding_lantern>,"Use of accompanying jukebox and candles entirely optional.");
mods.jei.JEI.addDescription(<rats:plague_scythe>,"Instilled with the corrupting potential to destroy empires.");
mods.jei.JEI.addDescription(<rats:black_death_mask>,"Diseases are perfected through experimentation... what better laboratory than the blood-soaked battlefield?");
mods.jei.JEI.addDescription(<rats:block_of_cheese>,"This cheese has been crammed together roughly. Separating it into edible wedges is impossible, but it can still be used as a way to hoard food for rats... or used as decoration.");
mods.jei.JEI.addDescription(<rats:rattrap>,"Used to lure and kill wild rats. Must be baited with food and reset after each use.");
mods.jei.JEI.addDescription(<rats:rat_cage>,"Used to contain rats for breeding or keeping them out of trouble. Cages can be connected with rat tubes and outfitted with many cage decorations.");


/* Bees */
mods.jei.JEI.addDescription(<harvestcraft:queenbeeitem>, "Found by breaking Beehives in Forest biomes.");
mods.jei.JEI.addDescription(<harvestcraft:beeswaxitem>, "An extremely good fuel source, even better when compressed.");


/* Relics */
mods.jei.JEI.addDescription(<msmlegacy:relic_aqueous>,"Relic idea by DonMartn. Thanks for becoming a Dragonsteel supporter on our Patreon!");
mods.jei.JEI.addDescription(<msmlegacy:relic_candy>,"Relic idea by Just A BLU Toon. Thanks for becoming a Dragonsteel supporter on our Patreon!");


/* Lore */
val steelPlate = <betterwithmods:material:51>;

mods.jei.JEI.addDescription(<netherex:ghast_queen_tear>,"They say that every Ghast Queen weeps for their beloved in another dimension. Drop the tears into a 2x2 pool of water surrounded by flowers on top of grass to open the portal. DEV NOTE: Ghast Queen is currently disabled, so we provided a temporary recipe so you may still enter the Twilight Forest.");
mods.jei.JEI.addDescription(steelPlate,"Are they still there? Is there any trace of what remains? Wide dead eyes like amethyst, behold.");
mods.jei.JEI.addDescription(<minecraft:rotten_flesh>,"...and they will rise only to seek the surface again as each night falls...");
mods.jei.JEI.addDescription(<minecraft:rotten_flesh>,"Also known as RotN Flesh.");
mods.jei.JEI.addDescription(<betternether:pig_statue_01>,"Carved in the likeness of the Pigfolk. The inscriptions around the rim of the brazier are carved in unfamiliar languages... all except for one. You can make out the words 'VARKAAL...', 'LIFE FROM LIGHT...', and 'DUST...'");
////// mods.jei.JEI.addDescription(<minecraft:clay_ball>,"Such a malleable material, could they see us the same in the Void?"); -> should be put on a more fitting item
mods.jei.JEI.addDescription(<quark:soul_powder>,"Trapped somewhere within these cursed ashes are the memories of lost souls. Even in this state, they still seek out the dreaded sites of their deaths. Perhaps finding such a place would grant them peace.");
mods.jei.JEI.addDescription(<quark:soul_bead>,"Warped bead formed from the cursed core of a wraith. Ingesting it releases the trapped spirits within, at the cost of alerting all manner of dreadful creatures attracted to the use of rare magic.");
mods.jei.JEI.addDescription(<villagenames:codex>,"The codex was an ancient index of information used long time ago by advanced civilizations. Using it while holding a book in the off-hand will register data of the structure its holder is inside.");


/* Miscellaneous (and I mean TRUE miscellaneous) */
val arcaneBarrier = <dimstack:bedrock:0>;
val arcanePortal = <dimstack:portal>;
val dummy_fire = <contenttweaker:fire_block>;

mods.jei.JEI.addDescription(arcanePortal,"Getting past these will take you to places...");
mods.jei.JEI.addDescription(arcaneBarrier,"Getting past these will take you to dark places...");
mods.jei.JEI.addDescription(dummy_fire,"Fire! Once common knowledge, now there is no certainty that humanity was the first civilization to conquer this force of nature, but they are still as good making the most out of it. Ignite a surface using a bow drill, a flint and stone, a flint and steel, a firecharge or using more obscure methods. More often than not, fire is best used in controlled environments, like torches, campfires and furnaces.");


/* Runes and Magic */
mods.jei.JEI.addDescription(<quark:rune:*>, "An aesthetic rune used to color items. Combine with an enchanted item to change the item's glow color.");

mods.jei.JEI.addDescription(<dungeontactics:magic_scroll>,"Wands contain potent magic, ready to be released on a mage's command. A magical powder is required to power the wand. Scholars can find more knowledge in the 'Magic' section of the guidebook.");
mods.jei.JEI.addItem(<contenttweaker:spectral_shard>);
mods.jei.JEI.addItem(<contenttweaker:magic_orb>);


mods.jei.JEI.addDescription(<dungeontactics:magic_powder>, "Powder containing magic obtained from various sources. This magical material is needed cast powerful spells from wands.");
mods.jei.JEI.addDescription(<dungeontactics:magic_powder>, "Witch covens have a taste for forbidden and unusual arts. We can tap into that power too, using the §lCauldron§r. Add §llunar water§r to a Cauldron then toss in §lmagic blend§l, made from a §lmushroom§r, §lglowstone dust§r, §lvis specks§r, and §lquintessence§r.");

//mods.jei.JEI.addDescription(<ore:runeItem>,"Runes are symbols carved into stones and imbued with aspects of nature that grant them a specific and strong magic affinity for an element. Their primary use is to act as a catalyst for other magical items or creating single-use orbs.");
mods.jei.JEI.addItem(<contenttweaker:blank_rune>);
mods.jei.JEI.addDescription(<contenttweaker:blank_rune>,"Stone imbued with magic powder. Used as a base for all runes.");
mods.jei.JEI.addItem(<contenttweaker:disint_rune>);
mods.jei.JEI.addDescription(<contenttweaker:disint_rune>,"Craft with magical items to disintegrate them into Spectral Silt. Spectral Silt is used for creating more powerful magical items.");


mods.jei.JEI.addItem(<contenttweaker:sol_rune>);
mods.jei.JEI.addItem(<contenttweaker:luna_rune>);
mods.jei.JEI.addItem(<contenttweaker:air_rune>);
mods.jei.JEI.addItem(<contenttweaker:fire_rune>);
mods.jei.JEI.addItem(<contenttweaker:earth_rune>);
mods.jei.JEI.addItem(<contenttweaker:water_rune>);
mods.jei.JEI.addItem(<contenttweaker:balance_rune>);
mods.jei.JEI.addItem(<contenttweaker:chaos_rune>);
mods.jei.JEI.addItem(<contenttweaker:creation_rune>);
mods.jei.JEI.addItem(<contenttweaker:death_rune>);
mods.jei.JEI.addItem(<contenttweaker:energy_rune>);
mods.jei.JEI.addItem(<contenttweaker:illusion_rune>);
mods.jei.JEI.addItem(<contenttweaker:knowledge_rune>);
mods.jei.JEI.addItem(<contenttweaker:life_rune>);
mods.jei.JEI.addItem(<contenttweaker:mind_rune>);
mods.jei.JEI.addItem(<contenttweaker:nature_rune>);
mods.jei.JEI.addItem(<contenttweaker:order_rune>);
mods.jei.JEI.addItem(<contenttweaker:poison_rune>);
mods.jei.JEI.addItem(<contenttweaker:soul_rune>);
mods.jei.JEI.addItem(<contenttweaker:strength_rune>);
mods.jei.JEI.addItem(<contenttweaker:trans_rune>);
mods.jei.JEI.addItem(<contenttweaker:holding_rune>);
mods.jei.JEI.addItem(<contenttweaker:nether_rune>);
mods.jei.JEI.addItem(<contenttweaker:plague_rune>);
mods.jei.JEI.addItem(<contenttweaker:time_rune>);
mods.jei.JEI.addItem(<contenttweaker:aether_rune>);
mods.jei.JEI.addItem(<contenttweaker:arcane_rune>);
mods.jei.JEI.addItem(<contenttweaker:draconic_rune>);
mods.jei.JEI.addItem(<contenttweaker:fae_rune>);

mods.jei.JEI.addItem(<contenttweaker:sol_orb>);
mods.jei.JEI.addItem(<contenttweaker:luna_orb>);
mods.jei.JEI.addItem(<contenttweaker:air_orb>);
mods.jei.JEI.addItem(<contenttweaker:fire_orb>);
mods.jei.JEI.addItem(<contenttweaker:earth_orb>);
mods.jei.JEI.addItem(<contenttweaker:water_orb>);
mods.jei.JEI.addItem(<contenttweaker:balance_orb>);
mods.jei.JEI.addItem(<contenttweaker:chaos_orb>);
mods.jei.JEI.addItem(<contenttweaker:creation_orb>);
mods.jei.JEI.addItem(<contenttweaker:death_orb>);
mods.jei.JEI.addItem(<contenttweaker:energy_orb>);
mods.jei.JEI.addItem(<contenttweaker:illusion_orb>);
mods.jei.JEI.addItem(<contenttweaker:knowledge_orb>);
mods.jei.JEI.addItem(<contenttweaker:life_orb>);
mods.jei.JEI.addItem(<contenttweaker:mind_orb>);
mods.jei.JEI.addItem(<contenttweaker:nature_orb>);
mods.jei.JEI.addItem(<contenttweaker:order_orb>);
mods.jei.JEI.addItem(<contenttweaker:poison_orb>);
mods.jei.JEI.addItem(<contenttweaker:soul_orb>);
mods.jei.JEI.addItem(<contenttweaker:strength_orb>);
mods.jei.JEI.addItem(<contenttweaker:trans_orb>);
mods.jei.JEI.addItem(<contenttweaker:holding_orb>);
mods.jei.JEI.addItem(<contenttweaker:nether_orb>);
mods.jei.JEI.addItem(<contenttweaker:plague_orb>);
mods.jei.JEI.addItem(<contenttweaker:time_orb>);
mods.jei.JEI.addItem(<contenttweaker:aether_orb>);
mods.jei.JEI.addItem(<contenttweaker:arcane_orb>);
mods.jei.JEI.addItem(<contenttweaker:draconic_orb>);
mods.jei.JEI.addItem(<contenttweaker:fae_orb>);
