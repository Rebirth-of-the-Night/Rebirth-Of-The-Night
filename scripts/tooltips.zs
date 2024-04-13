import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

// Dummy items
// Removed any tooltip including ID to avoid confussion
<requious:interaction>.clearTooltip();
<requious:interaction:*>.addTooltip(format.white("In-World Interaction"));
<requious:growth_ferment>.clearTooltip();
<requious:growth_ferment:*>.addTooltip(format.white("Fermentation"));
<contenttweaker:rice_paddy_dummy>.clearTooltip();
<contenttweaker:rice_paddy_dummy:*>.addTooltip(format.white("Rice Paddy"));

// Floral Armor
<atop:tanzanite_helmet:*>.addTooltip(format.gold("Soft to the touch with a pleasant smell!"));
<atop:tanzanite_helmet:*>.addTooltip(format.white("Don't worry..."));
<atop:tanzanite_helmet:*>.addTooltip(format.white("Everything is going to be okay..."));

// Single item set bonuses
<minecraft:diamond_sword:*>.addTooltip(format.blue("+15% Attack Speed"));
<minecraft:diamond_sword:*>.addTooltip(format.blue("+1 Armor Toughness"));
<minecraft:diamond_sword:*>.addTooltip(format.blue("+10% Magic Shielding"));
<minecraft:diamond_pickaxe:*>.addTooltip(format.blue("+15% Attack Speed"));
<minecraft:diamond_pickaxe:*>.addTooltip(format.blue("+1 Armor Toughness"));
<minecraft:diamond_pickaxe:*>.addTooltip(format.blue("+10% Magic Shielding"));
<minecraft:diamond_axe:*>.addTooltip(format.blue("+15% Attack Speed"));
<minecraft:diamond_axe:*>.addTooltip(format.blue("+1 Armor Toughness"));
<minecraft:diamond_axe:*>.addTooltip(format.blue("+10% Magic Shielding"));
<minecraft:diamond_shovel:*>.addTooltip(format.blue("+15% Attack Speed"));
<minecraft:diamond_shovel:*>.addTooltip(format.blue("+1 Armor Toughness"));
<minecraft:diamond_shovel:*>.addTooltip(format.blue("+10% Magic Shielding"));
<minecraft:diamond_hoe:*>.addTooltip(format.blue("+15% Attack Speed"));
<minecraft:diamond_hoe:*>.addTooltip(format.blue("+1 Armor Toughness"));
<minecraft:diamond_hoe:*>.addTooltip(format.blue("+10% Magic Shielding"));
var diamondweps = [<spartanweaponry:halberd_diamond:*>,<spartanweaponry:saber_diamond:*>,<spartanweaponry:throwing_knife_diamond:*>] as IItemStack[];
for w, weapon in diamondweps{
    weapon.addTooltip(format.blue("+15% Attack Speed"));
    weapon.addTooltip(format.blue("+1 Armor Toughness"));
    weapon.addTooltip(format.blue("+10% Magic Shielding"));
}

<atop:ruby_sword:*>.addTooltip(format.darkRed("+2 Max Health"));
<atop:ruby_sword:*>.addTooltip(format.darkRed("+1 Attack Damage"));
<atop:ruby_sword:*>.addTooltip(format.darkRed("+1 Armor"));
<atop:ruby_pickaxe:*>.addTooltip(format.darkRed("+2 Max Health"));
<atop:ruby_pickaxe:*>.addTooltip(format.darkRed("+1 Attack Damage"));
<atop:ruby_pickaxe:*>.addTooltip(format.darkRed("+1 Armor"));
<atop:ruby_axe:*>.addTooltip(format.darkRed("+2 Max Health"));
<atop:ruby_axe:*>.addTooltip(format.darkRed("+1 Attack Damage"));
<atop:ruby_axe:*>.addTooltip(format.darkRed("+1 Armor"));
<atop:ruby_shovel:*>.addTooltip(format.darkRed("+2 Max Health"));
<atop:ruby_shovel:*>.addTooltip(format.darkRed("+1 Attack Damage"));
<atop:ruby_shovel:*>.addTooltip(format.darkRed("+1 Armor"));
<atop:ruby_hoe:*>.addTooltip(format.darkRed("+2 Max Health"));
<atop:ruby_hoe:*>.addTooltip(format.darkRed("+1 Attack Damage"));
<atop:ruby_hoe:*>.addTooltip(format.darkRed("+1 Armor"));
var rubyweps = [<spartanweaponry:greatsword_diamond:*>,<spartanweaponry:mace_diamond:*>,<spartanweaponry:throwing_axe_diamond:*>] as IItemStack[];
for w, weapon in rubyweps{
    weapon.addTooltip(format.darkRed("+2 Max Health"));
    weapon.addTooltip(format.darkRed("+1 Attack Damage"));
    weapon.addTooltip(format.darkRed("+1 Armor"));
}

<atop:peridot_sword:*>.addTooltip(format.darkGreen("+25% Dig Speed"));
<atop:peridot_sword:*>.addTooltip(format.darkGreen("+10% Move Speed"));
<atop:peridot_sword:*>.addTooltip(format.darkGreen("+5% Damage Resistance"));
<atop:peridot_pickaxe:*>.addTooltip(format.darkGreen("+25% Dig Speed"));
<atop:peridot_pickaxe:*>.addTooltip(format.darkGreen("+10% Move Speed"));
<atop:peridot_pickaxe:*>.addTooltip(format.darkGreen("+5% Damage Resistance"));
<atop:peridot_axe:*>.addTooltip(format.darkGreen("+25% Dig Speed"));
<atop:peridot_axe:*>.addTooltip(format.darkGreen("+10% Move Speed"));
<atop:peridot_axe:*>.addTooltip(format.darkGreen("+5% Damage Resistance"));
<atop:peridot_shovel:*>.addTooltip(format.darkGreen("+25% Dig Speed"));
<atop:peridot_shovel:*>.addTooltip(format.darkGreen("+10% Move Speed"));
<atop:peridot_shovel:*>.addTooltip(format.darkGreen("+5% Damage Resistance"));
<atop:peridot_hoe:*>.addTooltip(format.darkGreen("+25% Dig Speed"));
<atop:peridot_hoe:*>.addTooltip(format.darkGreen("+10% Move Speed"));
<atop:peridot_hoe:*>.addTooltip(format.darkGreen("+5% Damage Resistance"));
var peridotweps = [<spartanweaponry:boomerang_diamond:*>,<spartanweaponry:rapier_diamond:*>,<spartanweaponry:staff_diamond:*>] as IItemStack[];
for w, weapon in peridotweps{
    weapon.addTooltip(format.darkGreen("+25% Dig Speed"));
    weapon.addTooltip(format.darkGreen("+10% Move Speed"));
    weapon.addTooltip(format.darkGreen("+5% Damage Resistance"));
}

<atop:sapphire_sword:*>.addTooltip(format.darkAqua("+0.5 Step Height"));
<atop:sapphire_sword:*>.addTooltip(format.darkAqua("+1 Jump Height"));
<atop:sapphire_sword:*>.addTooltip(format.darkAqua("+1 Reach Distance"));
<atop:sapphire_pickaxe:*>.addTooltip(format.darkAqua("+0.5 Step Height"));
<atop:sapphire_pickaxe:*>.addTooltip(format.darkAqua("+1 Jump Height"));
<atop:sapphire_pickaxe:*>.addTooltip(format.darkAqua("+1 Reach Distance"));
<atop:sapphire_axe:*>.addTooltip(format.darkAqua("+0.5 Step Height"));
<atop:sapphire_axe:*>.addTooltip(format.darkAqua("+1 Jump Height"));
<atop:sapphire_axe:*>.addTooltip(format.darkAqua("+1 Reach Distance"));
<atop:sapphire_shovel:*>.addTooltip(format.darkAqua("+0.5 Step Height"));
<atop:sapphire_shovel:*>.addTooltip(format.darkAqua("+1 Jump Height"));
<atop:sapphire_shovel:*>.addTooltip(format.darkAqua("+1 Reach Distance"));
<atop:sapphire_hoe:*>.addTooltip(format.darkAqua("+0.5 Step Height"));
<atop:sapphire_hoe:*>.addTooltip(format.darkAqua("+1 Jump Height"));
<atop:sapphire_hoe:*>.addTooltip(format.darkAqua("+1 Reach Distance"));

var sapphireweps = [<spartanweaponry:hammer_diamond:*>,<spartanweaponry:javelin_diamond:*>,<spartanweaponry:longsword_diamond:*>] as IItemStack[];
for w, weapon in sapphireweps{
    weapon.addTooltip(format.darkAqua("+0.5 Step Height"));
    weapon.addTooltip(format.darkAqua("+1 Jump Height"));
    weapon.addTooltip(format.darkAqua("+1 Reach Distance"));
}

<behgameon:accessory_1:*>.addTooltip("+1 Max Health");
<behgameon:accessory_1:*>.addTooltip("+5% Attack Damage");

<msmlegacy:adminium_ark:*>.addTooltip(format.darkRed("-99% Attack Speed"));

<dungeontactics:silver_axe:*>.addTooltip("+1 Max Health");
<dungeontactics:silver_axe:*>.addTooltip("+5% Attack Damage");

<dungeontactics:mithril_sword:*>.addTooltip("+2 Max Health");
<dungeontactics:mithril_sword:*>.addTooltip("+10% Attack Damage");
<dungeontactics:mithril_sword:*>.addTooltip("+5% Damage Resistance");

#<dungeontactics:steel_sword:*>.addTooltip("§d+15% Attack Damage");
<dungeontactics:steel_sword:*>.addTooltip("§aReincarnation I for 10 seconds every 60 seconds");
<dungeontactics:steel_sword:*>.addTooltip("§eResilience I for 10 seconds every 30 seconds");

<behgameon:accessory_4:*>.addTooltip("+5% Movement Speed");
<behgameon:accessory_4:*>.addTooltip("+5% Damage Resistance");

<atop:topaz_sword:*>.addTooltip("+1 Reach Distance");
<atop:topaz_sword:*>.addTooltip("+5% Attack Speed");         

<atop:amethyst_sword:*>.addTooltip("+1 Reach Distance");
<atop:amethyst_sword:*>.addTooltip("+5% Attack Speed");

<iceandfire:troll_weapon.axe:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.column:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.column_forest:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.column_frost:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.hammer:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.trunk:*>.addTooltip(format.darkRed("+6 Attack Damage"));
<iceandfire:troll_weapon.trunk_frost:*>.addTooltip(format.darkRed("+6 Attack Damage"));

/*<mowziesmobs:ice_crystal:*>.addTooltip(format.darkRed("Using this while you have the Leech effect active will severely drain your health!"));*/


// Unsorted
<betterwithaddons:sapling_luretree:*>.addTooltip("Can be fed with rotten flesh to attract animals.");
<dungeontactics:flower_sanguine:*>.addTooltip("Gives regeneration when walking through it.");
<dungeontactics:golden_club:*>.addTooltip("Has a chance to disarm the enemy.");
<dungeontactics:golden_battleaxe:*>.addTooltip("Beheading weapon.");
<contenttweaker:fire_block:*>.addTooltip('"Huh, weird..."');
<minecraft:crafting_table:*>.addTooltip("Static version."); 
<minecraft:crafting_table>.addShiftTooltip(("A") + format.yellow(" Portable Crafting") + format.gray(" Mat is better for long journeys."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:trap_clamp:*>.addTooltip("Snaps and crushes its victim, inflicting great slowness.");
<dungeontactics:trap_clamp:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<dungeontactics:trap_piston:*>.addTooltip("Launches its victim into the air.");
<dungeontactics:trap_piston:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<dungeontactics:trap_fire:*>.addTooltip("Lights its victim ablaze.");
<dungeontactics:trap_fire:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<dungeontactics:trap_foul:*>.addTooltip("Nauseates its victim.");
<dungeontactics:trap_foul:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<dungeontactics:trap_ailment:*>.addTooltip("Blinds its victim.");
<dungeontactics:trap_ailment:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<dungeontactics:trap_spectral:*>.addTooltip("Makes its victim glow, allowing it to be seen through walls.");
<dungeontactics:trap_spectral:*>.addTooltip("Must be reset with an Engineer's Wrench after use.");
<iceandfire:pixie_dust:*>.addTooltip("What would happen if I had a taste...?");
<contenttweaker:xp_tome_mundane>.addTooltip("Grants 500 XP on use.");
<contenttweaker:xp_tome_arcane>.addTooltip("Grants 5 LEVELS on use.");

// Arcane Archives
<arcanearchives:raw_quartz:*>.addTooltip("Right-click on any chest to convert it to a Radiant Chest.");
<arcanearchives:radiant_resonator:*>.addTooltip("Grows raw radiant quartz from natural quintessence in the air.");
<arcanearchives:radiant_resonator:*>.addTooltip("Can be augmented with a special setup to grow quartz faster.");
<arcanearchives:radiant_resonator:*>.addTooltip("Only three resonators can be placed per person.");
<arcanearchives:radiant_resonator>.addShiftTooltip("Recipe consumes bucket.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));

// BWM BWA
<betterwithmods:material:12>.addTooltip("Just a crafting material.");
<betterwithmods:material:12>.addShiftTooltip('Can be eaten, but if it had a label, it would read "DO NOT EAT."', "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betterwithmods:hibachi:*>.addTooltip("Powered by redstone");
<betterwithaddons:ancestry_bottle:*>.addTooltip("Spirits found throughout the world can be bottled up or manually crafted");
<betterwithmods:material:29>.addTooltip(format.red("Extremely volatile."));
<betterwithmods:material:29>.addTooltip(format.red("Taking damage while transporting this will result in irreparable loss of life... and everything on you."));
<betterwithaddons:slat:*>.addTooltip("Perfect for being covered with tatami mats!");
<betterwithaddons:slat>.addShiftTooltip("Place a tatami mat on top, then use a hoe to fit it perfectly to floor level.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betterwithaddons:tatami>.addShiftTooltip('Tatami should not be arranged forming a "+" shape at the junctions, lest it bring an inauspicious future.');
<betterwithmods:single_machine>.addTooltip("Can grind and mill all sorts of items.");
<betterwithmods:single_machine>.addShiftTooltip("Operate with a Hand Crank (consumes food). Consider powering with a Windmill or a Water Wheel as soon as possible", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betterwithaddons:ancestry_infuser>.addShiftTooltip("Soulsand containing spirits must be placed below this block in a dark area. Soulsand and infuser must be floating and away from any block", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betterwithmods:steel_gearbox:*>.addTooltip("Won't break from weather!");
<betterwithmods:steel_axle:*>.addTooltip("Won't break from weather! Can also go up to 5 blocks, instead of the usual 3.");
<contenttweaker:mythril_masonpick:*>.addTooltip("Can instantly remove resistant blocks for 30 durability.");
<contenttweaker:sfs_masonpick:*>.addTooltip("Can instantly remove resistant blocks for 40 durability.");
<contenttweaker:steel_crowbar:*>.addTooltip("Can instantly remove resistant blocks for 60 durability.");
<betterwithmods:unfired_pottery:4>.addTooltip("Can be baked in a pit kiln.");
<contenttweaker:unfired_mud_brick:*>.addTooltip("Can be baked in a pit kiln.");
<contenttweaker:unfired_adobe_brick:*>.addTooltip("Can be baked in a pit kiln.");

<ore:listAllExplosives>.addTooltip("This feels a little too volatile for high temperatures...");

// Nyx
<nyx:lunar_water_bottle:*>.addTooltip("Removes most negative potion effects");
<nyx:scythe:*>.addTooltip("Destroys crops and plants in a 9x9x9 area");
<nyx:scythe:*>.addTooltip("Has a chance to double, triple, or quadruple crop and plant drops");
<nyx:meteor_finder:*>.addTooltip("Points to the closest meteor impact zone (if any)");
<nyx:meteor_hammer:*>.addTooltip("Mines in a 3x3 area (disable by sneaking)");
<nyx:meteor_hammer:*>.addTooltip("Hold right-click then let go while looking up to the sky to leap");
<nyx:meteor_hammer:*>.addTooltip("Creatures near the impact zone take damage");
<nyx:meteor_sword:*>.addTooltip("Stuns creatures on critical hits");
<nyx:crystal:*>.addTooltip("Passively boosts crop growth when placed near crops");
<nyx:meteor_pickaxe:*>.addTooltip("Mines obsidian and meteoric rock much faster");
<nyx:meteor_axe:*>.addTooltip("Deals extra damage to shields");
mods.jei.JEI.addDescription(<nyx:crystal>,"Loses energy over time. When at zero energy, it loses its crop growth ability. Recharges automatically during harvest moons.");

// Eplus
<eplus:decorative_book:*>.addTooltip("Outputs more power than bookshelves for the True Enchanting Table");

// Boat tooltips
<minecraft:boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<minecraft:spruce_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<minecraft:birch_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<minecraft:jungle_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<minecraft:acacia_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<minecraft:dark_oak_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_sacred_oak:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_cherry:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_umbran:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_fir:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_ethereal:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_magic:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_mangrove:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_palm:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_redwood:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_willow:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_pine:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_hellbark:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_jacaranda:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_mahogany:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_ebony:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<biomesoplenty:boat_eucalyptus:*>.addTooltip("Place a banner on the boat to increase sailing speed.");
<netherex:obsidian_boat:*>.addTooltip("Place a banner on the boat to increase sailing speed.");

// bed
<minecraft:bed:*>.addTooltip("Be sure to sleep in a secure and well-lit area, or your rest may be interrupted...");
<aether_legacy:skyroot_bed_item:*>.addTooltip("Be sure to sleep in a secure and well-lit area, or your rest may be interrupted...");

// lootbags
<dungeontactics:bag_food:*>.addTooltip("Some of the food inside still looks edible.");
<dungeontactics:bag_arbour:*>.addTooltip("Seems to contain a few assorted plants.");
<dungeontactics:bag_ore:*>.addTooltip("Looks like there's a chunk of ore inside.");
<dungeontactics:bag_tool:*>.addTooltip("Looks like there's a tool inside.");
<dungeontactics:bag_book:*>.addTooltip("Looks like there's a worn book tucked inside.");
<dungeontactics:bag_quiver:*>.addTooltip("Seems to contain a few weathered arrows.");
<dungeontactics:bag_magic:*>.addTooltip("The bag is stained with a faint purple powder. What could be inside?");
<dungeontactics:bag_potion:*>.addTooltip("Seems to contain some forgotten potion or reagent.");
<dungeontactics:bag_record:*>.addTooltip("Contains a music disc carefully wrapped for safe transport.");
<dungeontactics:trickortreat_bag:*>.addTooltip("The boundary of the spirit world grows thin. Take this opportunity to gorge yourself on sweets.");
<dungeontactics:solstice_gift:*>.addTooltip("Was this gift really meant for you? Well... finders' keepers!");

<sereneseasons:greenhouse_glass:*>.addTooltip("Lets crops grow out of their normal growing seasons. If the glass is placed more than 7 blocks above a crop, the crop won't gain this benefit.");
<netherex:ghast_meat_cooked:*>.addTooltip("Slimy, yet satisfying!");
<betterwithmods:raw_egg>.addTooltip("An effective medicine and stomach filler. That is what you tell yourself in order to tolerate the taste.");
<betterwithmods:raw_egg>.addShiftTooltip("Granny's remedy, directly from Causeperse (whose, you don't know). Heals for a few seconds but causes an upset stomach and leaves you vulnerable.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<harvestcraft:slimegummiesitem>.addTooltip("For years you have underestimated the power of slimes. With your intellect and these super cells, you are untouchable.");
<rustic:elixir>.withTag({display:{LocName:"Metabolic Whey"},ElixirEffects:[{Effect: "minecraft:regeneration", Duration: 160, Amplifier: 2},{Effect: "minecraft:hunger", Duration: 160, Amplifier: 29},{Effect: "minecraft:nausea", Duration: 160, Amplifier: 0}]}).addTooltip("Tastes awful, but it will accelerate the natural healing of the body threefold and make you very hungry.");

// Charm
//<charm:totem_of_returning:*>.addTooltip("§5Right-click a block while holding the totem to bind yourself to that point. Right click again to return to that point.");
//<charm:totem_of_shielding:*>.addTooltip("§5Absorbs all incoming damage when held in your offhand.");

// Quark
<quark:soul_bead:*>.addTooltip("Holding this softly shimmering bead makes you feel uneasy.");
<quark:horse_whistle:*>.addTooltip("Summons your trusty steed, even from a great distance away.");
<quark:grate:*>.addTooltip("Most animals are afraid of walking on metal grates.");
<quark:iron_ladder:*>.addTooltip("Right click on a tin ladder to place another ladder below which doesn't require a standing block.");
<quark:witch_hat:*>.addTooltip("Protects you from spectres.");

// Quark Hoes
<minecraft:stone_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<minecraft:iron_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<minecraft:diamond_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<minecraft:golden_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<twilightforest:ironwood_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<twilightforest:steeleaf_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<betterwithmods:steel_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<atop:mud_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<iceandfire:silver_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<iceandfire:dragonbone_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<iceandfire:myrmex_desert_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<iceandfire:myrmex_jungle_hoe:*>.addTooltip("Breaks grass and crops in a 3x3 area.");
<iceandfire:dragonsteel_fire_hoe:*>.addTooltip("Breaks grass and crops in a 9x9 area.");
<iceandfire:dragonsteel_ice_hoe:*>.addTooltip("Breaks grass and crops in a 9x9 area.");
<netherex:frosted_amedian_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<simpleores:mythril_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<simpleores:adamantium_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<simpleores:onyx_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<contenttweaker:mythril_mattock:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<atop:peridot_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<atop:ruby_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<atop:sapphire_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<dungeontactics:steel_hoe:*>.addTooltip("Breaks grass and crops in a 5x5 area.");
<nyx:meteor_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");
<atop:amethyst_hoe:*>.addTooltip("Breaks grass and crops in a 7x7 area.");

// Underground Biomes Construct (and other stone types). Based on the tooltips of the modpack Homestead for 1.10.2
// Igneous
<undergroundbiomes:igneous_stone:*>.addTooltip("Igneous stone formed from cooled magma.");
<undergroundbiomes:igneous_stone:*>.addTooltip("Very slow to break.");
<undergroundbiomes:igneous_cobble:*>.addTooltip("Igneous stone formed from cooled magma.");
<undergroundbiomes:igneous_cobble:*>.addTooltip("Very slow to break.");
<minecraft:stone:0>.addTooltip("Igneous stone formed from cooled down molten stone."); //vanilla (coade) stone
<minecraft:stone:0>.addTooltip("Slow to break.");
<minecraft:cobblestone:*>.addTooltip("Igneous stone formed from cooled down molten stone."); //vanilla (coade) cobblestone
<minecraft:cobblestone:*>.addTooltip("Slow to break.");
// Metamorphic
<undergroundbiomes:metamorphic_stone:*>.addTooltip("Metamorphic stone formed under high pressures.");
<undergroundbiomes:metamorphic_stone:*>.addTooltip("Slow to break.");
<undergroundbiomes:metamorphic_cobble:*>.addTooltip("Metamorphic stone formed under high pressures.");
<undergroundbiomes:metamorphic_cobble:*>.addTooltip("Slow to break.");
<contenttweaker:serpentinite:*>.addTooltip("Metamorphic stone formed as scar tissue.");
<contenttweaker:serpentinite:*>.addTooltip("Slow to break.");
<contenttweaker:serpentinite_cobblestone:*>.addTooltip("Metamorphic stone formed as scar tissue.");
<contenttweaker:serpentinite_cobblestone:*>.addTooltip("Slow to break.");
<betterwithmods:aesthetic:6>.addTooltip("Metamorphic stone formed from heated endstone."); //white stone
<betterwithmods:aesthetic:6>.addTooltip("Slow to break.");
<betterwithmods:aesthetic:7>.addTooltip("Metamorphic stone formed from heated endstone."); //white cobblestone
<betterwithmods:aesthetic:7>.addTooltip("Slow to break.");
<defiledlands:stone_defiled:*>.addTooltip("Metamorphic stone formed by defilement.");
<defiledlands:stone_defiled:*>.addTooltip("Slow to break.");
<iceandfire:chared_stone:*>.addTooltip("Metamorphic stone formed by sustained heat.");
<iceandfire:chared_stone:*>.addTooltip("Slow to break.");
<iceandfire:chared_cobblestone:*>.addTooltip("Metamorphic stone formed by sustained heat.");
<iceandfire:chared_cobblestone:*>.addTooltip("Slow to break.");
<iceandfire:frozen_stone:*>.addTooltip("Metamorphic stone formed by sustained cold.");
<iceandfire:frozen_stone:*>.addTooltip("Slow to break.");
<iceandfire:frozen_cobblestone:*>.addTooltip("Metamorphic stone formed by sustained cold.");
<iceandfire:frozen_cobblestone:*>.addTooltip("Slow to break.");
// Sedimentary
<contenttweaker:limestone_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:limestone_cobble:*>.addTooltip("Quick to break.");
<undergroundbiomes:sedimentary_stone:*>.addTooltip("Sedimentary stone formed by erosion.");
<undergroundbiomes:sedimentary_stone:*>.addTooltip("Quick to break.");
<contenttweaker:dolomite_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:dolomite_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:greywacke_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:greywacke_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:chalk_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:chalk_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:shale_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:shale_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:chert_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:chert_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:siltstone_cobble:*>.addTooltip("Sedimentary stone formed by erosion.");
<contenttweaker:siltstone_cobble:*>.addTooltip("Quick to break.");
<contenttweaker:lignite_cobble:*>.addTooltip("Sedimentary and combustible stone formed by naturally compressed peat.");
<contenttweaker:lignite_cobble:*>.addTooltip("Quick to break.");
<minecraft:end_stone:*>.addTooltip("Sedimentary stone formed by particulates suspended in the Void.");
<minecraft:end_stone:*>.addTooltip("Slow to break.");

// Pyrotech
<pyrotech:tinder:*>.addTooltip("Place on the ground and add logs to create a campfire.");
<pyrotech:matchstick:*>.addTooltip("Right-click to light. Can't light a kiln without fuel.");
<pyrotech:matchstick:*>.addTooltip("Single use. Not as practical as flint and steel.");
<pyrotech:stash:*>.addTooltip("When a barrel just won't do.");
<contenttweaker:refracotta:*>.addTooltip("Not as good at keeping heat. Invalid for refractory structure.");
<contenttweaker:modelingrefractory:*>.addTooltip("Malleable and homogeneous, ready for modeling.");
<pyrotech:cog_wood>.removeTooltip("Indestructible");
<pyrotech:cog_wood:*>.addTooltip("Can power a Mechanical Compactor");
<pyrotech:cog_bone>.removeTooltip("Indestructible");
<pyrotech:cog_bone:*>.addTooltip("Can power a Mechanical Compactor");

<pyrotech:bucket_stone>.removeTooltip("Uses:");
<pyrotech:bucket_stone>.removeTooltip("Can hold hot fluids.");
<pyrotech:coal_coke_block>.addShiftTooltip("Valid fuel for Burner Heater");
<contenttweaker:peat:*>.addTooltip("Can be used as fuel or to create Mossy Peat");
<contenttweaker:mossy_peat:*>.addTooltip("Place besides coalbed methane to create Mossthane");
<contenttweaker:charmpeat:*>.addTooltip("Valid fuel for Burner Heater");
<pyrotech:coal_coke_block>.removeTooltip("Efficiency:");
<pyrotech:coal_coke_block>.removeTooltip("Bloomery:");
<pyrotech:coal_coke_block>.removeTooltip("Wither Forge:");
<pyrotech:bucket_stone:*>.addTooltip(format.red("Hot fluids may burn the carrier; hotter may kill them..."));

<pyrotech:sawmill_blade_iron>.removeTooltip("Indestructible");
<pyrotech:sawmill_blade_iron:*>.addTooltip("Can power a Mechanical Compactor");

// End Reborn
<endreborn:catalyst>.removeTooltip("Materializer");
<endreborn:catalyst>.removeTooltip("catalyst");
<endreborn:catalyst:*>.addTooltip("§8endreborn:catalyst");
<endreborn:block_essence_ore>.removeTooltip("Substance");

// Salt Lamps
<salt_lamps:white_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:orange_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:magenta_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:light_blue_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:yellow_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:lime_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:pink_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:gray_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:light_gray_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:cyan_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:purple_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:blue_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:brown_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:green_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:red_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");
<salt_lamps:black_salt_lamp>.addTooltip("Right click with a potion to spread its effects for x5 times its duration");

<salt_lamps:passive_mob_salt_lamp>.addTooltip("Right click with a potion to spread its effects to passive mobs for x5 times its duration");
<salt_lamps:hostile_mob_salt_lamp>.addTooltip("Right click with a potion to spread its effects to hostile mobs for x5 times its duration");

// Progression
<netherex:ghast_queen_tear:*>.addTooltip("The tears reflect glimmers of a beautiful forest...");

// Doggy Talents
<doggytalents:training_treat:*>.addTooltip("Feed to a tamed wolf to begin training it. Used to advance a dog's initial training.");
<doggytalents:cape:*>.addTooltip("Dog accessory");
<doggytalents:cape_coloured:*>.addTooltip("Dog accessory");
<doggytalents:sunglasses:*>.addTooltip("Dog accessory");
<doggytalents:sunglasses:*>.addTooltip("Cool as they are, wolves refuse to wear them.");
<doggytalents:leather_jacket:*>.addTooltip("Dog accessory");

<mod_lavacow:ptera_wing_cooked:*>.addTooltip("Has a rough, leathery texture. Incredibly chewy.");

// Rustic
<rustic:vase:*>.addTooltip("Storage container. While in hand, sneak and scroll with mouse wheel to cycle between patterns.");
<rustic:apiary:*>.addTooltip("Place bees inside to produce honeycomb over time.");
<rustic:bee:*>.addTooltip("Place inside an apiary to produce honeycomb.");

// Weapons
<atop:amber_sword:*>.addTooltip("A fruit with an unstable relationship to reality. Its past existence is a mere memory... or is it?");

// Doors
<malisisdoors:jail_door>.addShiftTooltip("slidin into ur DMs");

// Particular Eatables (Wildly Eat)
<harvestcraft:teaitem:*>.addTooltip("Calming, but it gets you going.");
<harvestcraft:teaitem>.addShiftTooltip("Can be consumed for a speed boost", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<harvestcraft:raspberryicedteaitem:*>.addTooltip("Sweet, refreshing, and it gets you going.");
<harvestcraft:raspberryicedteaitem>.addShiftTooltip("Can be consumed for a speed boost", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<harvestcraft:chaiteaitem:*>.addTooltip("So aromatic it gets you going.");
<harvestcraft:chaiteaitem>.addShiftTooltip("Can be consumed for a speed boost", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<harvestcraft:coffeeitem:*>.addTooltip("Some good coffee; the stuff that gets you going.");
<harvestcraft:coffeeitem>.addShiftTooltip("Can be consumed for a speed boost", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<harvestcraft:coffeeconlecheitem:*>.addTooltip("Smooth, soft. This gets you going.");
<harvestcraft:coffeeconlecheitem>.addShiftTooltip("Can be consumed for a speed boost", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<growthcraft_rice:rice:*>.addTooltip("Staple of civilization; should be cooked first.");
<growthcraft_rice:rice>.addShiftTooltip("Plant on a Rice Paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));

<dungeontactics:toast:*>.addTooltip("Why did you make this?");
<contenttweaker:baguettebrick>.addShiftTooltip("'this shit look like ancient debris with poop smeared on it' -elite meats");

// Misc.
<antiqueatlas:empty_antique_atlas:*>.addTooltip("Antique Map");
<golems:golem_head:*>.addTooltip("Used for summoning Golems");
<ore:plankWood>.addShiftTooltip("Can only be crafted in a crafting table, saw, or by chopping logs with an axe", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<wards:enchanted_paper:*>.addTooltip("Used to power Wards.");
<aether_legacy:notch_hammer:*>.addTooltip("From the #1 princess in the world.");
<aether_legacy:healing_stone:*>.addTooltip("Restores max HP lost from dying to the Plague.");
<mowziesmobs:wrought_axe:*>.removeTooltip("Never breaks");
<mowziesmobs:wrought_axe:*>.addTooltip("Only damaged by dying");
<minecraft:enchanting_table:*>.addTooltip("Only usable at night.");
<minecraft:enchanting_table:*>.addTooltip("Untapped power lies within this table...");
<eplus:advanced_table:*>.addTooltip("Requires placing an Enchanting Table Upgrade on a regular Enchanting Table.");
<eplus:table_upgrade:*>.addTooltip("Shift + right-click on an Enchanting Table to upgrade.");
<scalinghealth:healingitem>.removeTooltip("Use for 5 seconds to apply.");
<scalinghealth:healingitem>.addShiftTooltip("Use and hold for 5 seconds to apply. Letting go before applying won't consume the item", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<scalinghealth:healingitem:1>.removeTooltip("Use for 5 seconds to apply.");
<scalinghealth:healingitem:1>.addShiftTooltip("Use and hold for 5 seconds to apply. Letting go before applying won't consume the item", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<foundry:machine:2>.removeTooltip("Requires RF, FE, or Tesla to operate.");
<foundry:machine:2>.addTooltip("Requires a Redstone signal to operate.");
<foundry:machine:3>.removeTooltip("Requires RF, FE, or Tesla to operate.");
<foundry:machine:3>.addTooltip("Requires a Redstone signal to operate.");
<harvestcraft:well:*>.addTooltip("Infinite water source.");
<harvestcraft:well>.addShiftTooltip("One-time installation. Breaking will result in some of the components being returned.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<minecraft:furnace>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<minecraft:furnace>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<minecraft:furnace>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 100%"));
<foundry:burner_heater>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" 4 stacks"), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<foundry:burner_heater>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" 4 stacks"));
<foundry:burner_heater>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 25% (1 stack) - 100% (4 stacks)"));
<foundry:burner_heater:*>.addTooltip("Burns all 4 fuel slots concurrently. Make sure all 4 slots are filled with at least 1 fuel item for maximum efficiency!");

<ironfurnaces:iron_furnace_idle>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info.")); // mud furnace
<ironfurnaces:iron_furnace_idle>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<ironfurnaces:iron_furnace_idle>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 100%"));

<ironfurnaces:gold_furnace_idle>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info.")); // clay brick furnace
<ironfurnaces:gold_furnace_idle>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<ironfurnaces:gold_furnace_idle>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 125%"));

<ironfurnaces:diamond_furnace_idle>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<ironfurnaces:diamond_furnace_idle>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<ironfurnaces:diamond_furnace_idle>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 175%"));

<betternether:netherrack_furnace>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betternether:netherrack_furnace>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<betternether:netherrack_furnace>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 100%"));

<betternether:cincinnasite_forge:*>.addTooltip("Smelts everything much faster than a regular furnace.");
<betternether:cincinnasite_forge:*>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betternether:cincinnasite_forge:*>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<betternether:cincinnasite_forge:*>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 200%"));

<futuremc:blast_furnace>.addTooltip("Smelts (raw) ores at twice the speed, but the same fuel efficiency.");
<futuremc:blast_furnace>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<futuremc:blast_furnace>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<futuremc:blast_furnace>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 100%; 2x cooking speed"));

<futuremc:smoker>.addTooltip("Cooks food at twice the speed, but the same fuel efficiency.");
<futuremc:smoker>.addShiftTooltip(format.gold("Input Capacity:") + "" + format.yellow(" full stack; 1 at a time."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<futuremc:smoker>.addShiftTooltip(format.gold("Fuel Capacity:") + format.yellow(" full stack; 1 at a time."));
<futuremc:smoker>.addShiftTooltip(format.gold("Fuel Modifier:") + format.yellow(" 100%; 2x cooking speed"));

<exsartagine:wok>.addShiftTooltip(format.white("Can be heated by:") + "" + format.yellow(" CAMPFIRE, FURNACE, SMOKER, BLAST FURNACE, STOVE, HEARTH, STOKED FLAME"), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<exsartagine:pot>.addShiftTooltip(format.white("Can be heated by:") + "" + format.yellow(" CAMPFIRE, FURNACE, SMOKER, BLAST FURNACE, STOVE, HEARTH, STOKED FLAME"), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<exsartagine:kettle>.addShiftTooltip(format.white("Can be heated by:") + "" + format.yellow(" CAMPFIRE, FURNACE, SMOKER, BLAST FURNACE, STOVE, HEARTH, STOKED FLAME"), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<exsartagine:range:*>.addTooltip("Efficiently heats cooking appliances for fuel.");
<exsartagine:range:*>.addShiftTooltip("Supports up to three total Stove Extensions on either side, offering four surfaces on which to place woks, pots and bake kettles.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<exsartagine:hearth:*>.addTooltip("Heats cooking appliances for fuel. Requires ignition");
<exsartagine:hearth:*>.addShiftTooltip("Supports one Hearth Extension to its side, offering two total surfaces on which to place woks, pots and bake kettles.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<exsartagine:range_extended>.addTooltip("An extension for the Stove. Up to three can be added to either side of a Stove. Can only be placed next to Stoves.");
<exsartagine:hearth_extended>.addTooltip("An extension for the Hearth. Only one can be added to the side of a Hearth. Can only be placed next to Hearths.");

<biomesoplenty:terrestrial_artifact>.addTooltip("Has a chance to be dropped from Ancient Lodestone.");
<dungeontactics:mithril_block>.addTooltip("Found in frozen and artic biomes.");

<advancedliftingmethods:blowing_elevator>.addShiftTooltip(format.gold("Pushes:") + "" + format.yellow(" Living entities."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<advancedliftingmethods:blowing_elevator>.addShiftTooltip(format.gold("Chute Compat.:") + format.green(" YES."));
<advancedliftingmethods:blowing_elevator>.addShiftTooltip(format.gold("Fueled:") + format.red(" NO"));
<advancedliftingmethods:blowing_elevator>.addShiftTooltip("Can't be rotated; Can descend by crouching.");
<dungeontactics:fan_block>.addShiftTooltip(format.gold("Pushes:") + "" + format.yellow(" Any entity or item."), "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:fan_block>.addShiftTooltip(format.gold("Chute Compat.:") + format.red(" NO."));
<dungeontactics:fan_block>.addShiftTooltip(format.gold("Fueled:") + format.red(" NO"));
<dungeontactics:fan_block>.addShiftTooltip("Can be rotated.");
<netherchest:nether_chest:*>.addTooltip("Multiplies stack size of items inside by 8, up to 512.");
<dungeontactics:flight_goggles:*>.addTooltip("Allows for more controllable flight when paired with the Rocket Pants.");
<dungeontactics:rocket_pants:*>.addTooltip("Rocket man burning out his fuse.");
<dungeontactics:bounce_boots:*>.addTooltip("Minimizes fall damage with bounciness!");
<dungeontactics:lantern_magic:*>.addTooltip("Outputs a magical aura that forces most creatures to steer away from it.");
<iceandfire:dragonbone_bow:*>.addTooltip("Only shoots Dragonbone Arrows.");
<dungeontactics:lantern_magic:*>.addTooltip("Light with a Flint and Steel to activate.");
<dungeontactics:lantern_magic:*>.addTooltip(format.red("DOES NOT DROP WHEN BROKEN!"));
<extraalchemy:potion_ring:*>.addTooltip("Consumes 5 or 8 xp every 30 seconds while active, depending on potion strength.");
<dungeontactics:magic_pouch:*>.addTooltip("Right-click to open.");
<pyrotech:material:12>.addTooltip("Used for dried fiber.");
<pyrotech:material:12>.addShiftTooltip("Obtained from breaking grass or as a byproduct of fibrous plants", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<pyrotech:refractory_door>.addShiftTooltip("Needs to be facing the inside of the structure.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<betterwithmods:dirt_pile:*>.addTooltip("Additive. Can create a rice paddy");
<betterwithmods:dirt_pile>.addShiftTooltip("Right click on farmland to create a rice paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<contenttweaker:silty_dirt_pile:*>.addTooltip("Additive. Can create a rice paddy");
<contenttweaker:silty_dirt_pile>.addShiftTooltip("Right click on farmland to create a rice paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<contenttweaker:loamy_dirt_pile:*>.addTooltip("Additive. Can create a rice paddy");
<contenttweaker:loamy_dirt_pile>.addShiftTooltip("Right click on farmland to create a rice paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<contenttweaker:sandy_dirt_pile:*>.addTooltip("Additive. Can create a rice paddy");
<contenttweaker:sandy_dirt_pile>.addShiftTooltip("Right click on farmland to create a rice paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<contenttweaker:defiled_dirt_pile:*>.addTooltip("Additive. Can defile other kinds of dirt and grass");
<contenttweaker:defiled_dirt_pile>.addShiftTooltip("Right click on dirt, grass, or farmland to turn it into its defiled version.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<contenttweaker:aether_dirt_pile:*>.addTooltip("Additive. Can create a rice paddy");
<contenttweaker:aether_dirt_pile>.addShiftTooltip("Right click on farmland to create a rice paddy.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<artisanworkstumps:workstump_potter:*>.addTooltip("Enables hand-building pottery.");
<exsartagine:yeast:*>.addTooltip("Can be used as Brewer's Yeast.");
<contenttweaker:steel_artifact:*>.addTooltip("Can be used to craft flint & steel");
<contenttweaker:steel_artifact>.addShiftTooltip('Relic of the olden days. Rarely drops from "older" undead.', "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<vials:vial_288>.addShiftTooltip("Pick those annoying drops of 1 mb liquid off your machines and into a tank.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<minecraft:chest>.addShiftTooltip("An old looking chest. It's been varnished to withstand the passage of time.");
<contenttweaker:ground_fiery_netherrack:*>.addTooltip("Turns into sludge if it touches water.");
<betterwithmods:material:15>.addTooltip("Turns into sludge if it touches water.");
<iceandfire:venerable_stump:*>.addTooltip("Can be used on a mysterious vessel.");
<betterwithmods:cooking_pot:2>.addTooltip("Can be used on a venerable stump.");
<globalxp:xp_block:*>.addTooltip("Shift + Right click to deposit all XP.");
<globalxp:xp_block:*>.addTooltip("Right click to retrieve a level.");
<aether_legacy:enchanted_blueberry:*>.addTooltip("Hippogryph treat.");
<minecraft:torch:*>.addTooltip("Visible light attracts monsters.");

<iceandfire:sapphire_gem>.addTooltip("This sapphire seems too polished to use in many recipes.");

<contenttweaker:ancient_cache:*>.addTooltip(format.darkRed("What, at long last, can be freed once more?"));

// Bombs
<dungeontactics:bomb_frag:*>.addTooltip("Explodes in an area");
<dungeontactics:bomb_frag>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_frag_cluster:*>.addTooltip("Explodes in an area");
<dungeontactics:bomb_frag_cluster>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_pyro:*>.addTooltip("Explodes and sets targets on fire.");
<dungeontactics:bomb_pyro>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_pyro_cluster:*>.addTooltip("Explodes and sets targets on fire.");
<dungeontactics:bomb_pyro_cluster>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_porting:*>.addTooltip("Explodes and teleports targets away.");
<dungeontactics:bomb_porting>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_porting_cluster:*>.addTooltip("Explodes and teleports targets away.");
<dungeontactics:bomb_porting_cluster>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_cryo:*>.addTooltip("Freezes and leaves targets open to damage.");
<dungeontactics:bomb_cryo>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));
<dungeontactics:bomb_cryo_cluster:*>.addTooltip("Freezes and leaves targets open to damage.");
<dungeontactics:bomb_cryo_cluster>.addShiftTooltip("Letting the fuse burn for a bit before throwing will reduce the amount of time before it explodes, so don't hold it for too long. Can be fired from dispensers.", "Hold" + format.gold(" <SHIFT>") + "" + format.gray(" for info."));

<minecraft:wooden_shovel>.addShiftTooltip('"Sorcery is the sauce fools spoon over failure to hide the flavor of their own incompetence." -G.R.R.M.');
<minecraft:wooden_shovel>.addShiftTooltip("Well, a wooden spoon can unlock a great deal of sorceries.");

<dungeontactics:ducttape:*>.addTooltip("Right click with a damaged item in your off-hand to restore some durability.");

// Category: ware
<minecraft:compass>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));
<naturescompass:naturescompass>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));
<quark:soul_compass>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));
<minecraft:clock>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));
<sereneseasons:season_clock>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));
<antiqueatlas:empty_antique_atlas>.addShiftTooltip(format.yellow("Item Category:") + format.gray(" Informational"));

// Plants
<betterwithmods:hemp:*>.addTooltip("Fertile Seasons:");
<betterwithmods:hemp:*>.addTooltip(format.lightPurple("Year-Round"));
<betterwithmods:hemp:*>.addTooltip('Only grows directly below the open sky or under a "Light Block".');
<rustic:tomato_seeds>.addTooltip("Fertile Seasons:");
<rustic:tomato_seeds>.addTooltip(format.yellow("Summer"));
<rustic:chili_pepper_seeds>.addTooltip("Fertile Seasons:");
<rustic:chili_pepper_seeds>.addTooltip(format.yellow("Summer"));
<rustic:tomato>.addTooltip("Fertile Seasons:");
<rustic:tomato>.addTooltip(format.yellow("Summer"));
<rustic:chili_pepper>.addTooltip("Fertile Seasons:");
<rustic:chili_pepper>.addTooltip(format.yellow("Summer"));

// Wands

<dungeontactics:magic_scroll>.removeTooltip("^Restoration( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Satiating( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Forging( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Cooking( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Freezing( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Uncovering( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Disarming( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Disorienting( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Punishment( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Withering( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Smiting( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Magic Missile( \\d+)?");
<defiledlands:tears_shulker:*>.addTooltip("Cast Cost = NONE");
<dungeontactics:magic_scroll>.removeTooltip("^Pin Missile( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Transportation( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Companion( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Sundering( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Enrage( \\d+)?");
<dungeontactics:magic_scroll>.removeTooltip("^Hold LSHIFT to see enchantments description");

// Satchel

<deadmanssatchel:deadmanssatchel>.removeTooltip("^Owner( \\d+)?");

// Scepters
<defiledlands:tears_flame>.removeTooltip("Shoots fireballs");

// Misc. Weapons
<twilightforest:giant_sword:*>.addTooltip(format.darkRed("+18 Attack Damage"));
<twilightforest:giant_sword:*>.addTooltip(format.green("- Knockback IV"));

<aether_legacy:valkyrie_lance:*>.addTooltip(format.darkRed("+4 Attack Damage"));

<aether_legacy:holy_sword:*>.addTooltip(format.green("- Arcanic Conversion III"));

<aether_legacy:flaming_sword:*>.addTooltip(format.green("- Smite IV"));
<aether_legacy:flaming_sword:*>.addTooltip(format.green("- 10% Attack Speed Buff"));

<aether_legacy:pig_slayer:*>.addTooltip(format.green("- Stealthy Strike I"));

<demonic_scythe:demonic_scythe:*>.addTooltip("You feel your lifeforce corrupt as you hold this horrible weapon. Right click to perform a special AOE attack!");
# <demonic_scythe:demonic_scythe:*>.addTooltip(format.red("RIGHT CLICK CURRENTLY BUGGED"));
<demonic_scythe:demonic_scythe:*>.addTooltip(format.darkPurple("Epic Weapon"));
<demonic_scythe:awakened_demonic_scythe:*>.addTooltip("You feel your lifeforce corrupt as you hold this dreadful weapon. Right click to perform a special AOE attack which heals you!");
# <demonic_scythe:awakened_demonic_scythe:*>.addTooltip(format.red("RIGHT CLICK CURRENTLY BUGGED"));
<demonic_scythe:awakened_demonic_scythe:*>.addTooltip(format.gold("Legendary Weapon"));

// Longbows
<spartanweaponry:longbow_wood:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.0"));
<spartanweaponry:longbow_leather:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.0"));
<spartancompat:longbow_zanite:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.1"));
<spartanweaponry:longbow_bronze:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.1"));
<spartanweaponry:longbow_iron:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.1"));
<spartanweaponry:longbow_silver:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.1"));
<spartanfire:longbow_dragonbone:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.1"));
<spartanweaponry:longbow_steel:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.2"));
<spartanfire:longbow_jungle:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.2"));
<spartanfire:longbow_desert:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.2"));
<spartanfire:longbow_jungle_venom:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.2"));
<spartanfire:longbow_desert_venom:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.2"));
<spartancompat:longbow_gravitite:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartanfire:longbow_fire_dragonbone:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartanfire:longbow_ice_dragonbone:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartantwilight:longbow_steeleaf:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartantwilight:longbow_ironwood:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartantwilight:longbow_fiery:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartantwilight:longbow_knightly:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<spartanfire:longbow_ice_dragonsteel:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.4"));
<spartanfire:longbow_fire_dragonsteel:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.4"));
<spartanweaponry:longbow_electrum:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.6"));
<simpleores:mythril_bow:*>.addTooltip(format.darkAqua("Ammo Type: ") + format.gray("Arrows"));
<simpleores:mythril_bow:*>.addTooltip(format.darkAqua("Draw Time: ") + format.gray("2s"));
<simpleores:mythril_bow:*>.addTooltip(format.darkAqua("Arrow Speed: ") + format.gray("x1"));
<simpleores:mythril_bow:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.7"));
<nyx:meteor_bow:*>.addTooltip(format.darkAqua("Ammo Type: ") + format.gray("Arrows"));
<nyx:meteor_bow:*>.addTooltip(format.darkAqua("Draw Time: ") + format.gray("1s"));
<nyx:meteor_bow:*>.addTooltip(format.darkAqua("Arrow Speed: ") + format.gray("x1.3"));
<nyx:meteor_bow:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x1.3"));
<betterwithaddons:greatbow:*>.addTooltip(format.darkAqua("Ammo Type: ") + format.gray("Great Arrows"));
<betterwithaddons:greatbow:*>.addTooltip(format.darkAqua("Draw Time: ") + format.gray("4s"));
<betterwithaddons:greatbow:*>.addTooltip(format.darkAqua("Arrow Speed: ") + format.gray("x1.7"));
<betterwithaddons:greatbow:*>.addTooltip(format.darkAqua("Damage Multiplier: ") + format.gray("x2.5"));


// BUGS
#<aether_legacy:enchanted_blueberry:*>.addTooltip(format.red("DO NOT FEED TO HYPPOGRYPHS; CURRENTLY BUGGED AND UNTAMABLE."));
<iceandfire:dragon_horn:*>.addTooltip(format.red("DO NOT USE ON YOUR DRAGONS, IT WILL DELETE THEM!"));

// MACHINES
<multiblocked:gale_chamber>.addTooltip(format.gold("Right click with two brass blocks to construct!"));
<multiblocked:biotic_incubator>.addTooltip(format.gold("Right click with two brass blocks to construct!"));
<multiblocked:pyro_reactor>.addTooltip(format.gold("WIP, do not use."));
<multiblocked:multiblock_builder>.addTooltip(format.gold("Right click on a controller to build the multiblock machine automatically!"));
<multiblocked:multiblock_builder>.removeTooltip("auto build");

// PIPES
<inspirations:pipe>.addTooltip(format.gold("Basic item pipe. Can only move items in one direction similar to a hopper."));
<quark:pipe>.addTooltip(format.gold("Advanced item pipe. Can move items in multiple directions and take dropped items from an open end."));