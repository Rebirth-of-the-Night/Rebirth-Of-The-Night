
#loader crafttweaker reloadable

import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;

import crafttweaker.data.IData;

import crafttweaker.enchantments.IEnchantmentDefinition;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityItem;

import crafttweaker.events.IEventManager;
import crafttweaker.event.BlockHarvestDropsEvent;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.PlayerAnvilUpdateEvent;
import crafttweaker.event.PlayerFillBucketEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerInteractEntityEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.PlayerTickEvent;
import crafttweaker.command.ICommandManager;
import crafttweaker.command.ICommand;
import crafttweaker.command.ICommandSender;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ActionResult;
import crafttweaker.world.IWorld;

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.player.IPlayer;

import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import crafttweaker.util.Position3f;

import mods.ctutils.utils.Math;

import mods.hungertweaker.events.HungerEvents;

import scripts.shared.sharedArrays.stoneArray;
import scripts.shared.utils.eventFuncs.nearbyBlockCheck;

	// ~~~~~~~~~~~~ EVENT MAPS ~~~~~~~~~~~~
	// initializing them here because making large maps like this
	// every time an event fires is a very bad idea!!

// INTERACTABLE
	// Map of quickly-dissapearing-spirit spawning mobs. (These live for 200 ticks)
	// Format is:
	// entity id : spirit count
static flashSpiritSpawningMobs as int[string] = {
	"minecraft:wither_skeleton" : 1,
	"minecraft:skeleton" : 1,
	"betterslimes:spectral_slime" : 1,
	"mod_lavacow:mimic" : 4,
	"primitivemobs:skeleton_warrior" : 1,
	"twilightforest:skeleton_druid" : 1,
	"mod_lavacow:skeletonking" : 1,
	"mod_lavacow:scarecrow" : 1,
	"trumpetskeleton:trumpet_skeleton" : 1,
	"specialmobs:specialskeleton" : 1,
	"specialmobs:bruteskeleton" : 1,
	"specialmobs:fireskeleton" : 1,
	"specialmobs:gatlingskeleton" : 1,
	"specialmobs:giantskeleton" : 1,
	"specialmobs:knightskeleton" : 1,
	"specialmobs:ninjaskeleton" : 1,
	"specialmobs:poisonskeleton" : 1,
	"specialmobs:sniperskeleton" : 1,
	"specialmobs:spitfireskeleton" : 1,
	"specialmobs:strayskeleton" : 1,
	"specialmobs:specialwitherskelet" : 1,
	"specialmobs:brutewitherskeleton" : 1,
	"specialmobs:gatlingwitherskeleton" : 1,
	"specialmobs:giantwitherskeleton" : 1,
	"specialmobs:knightwitherskeleton" : 1,
	"specialmobs:ninjawitherskeleton" : 1,
	"specialmobs:sniperwitherskeleton" : 1,
	"specialmobs:spitfirewitherskeleton" : 1
};

// INTERACTABLE
	// Map of blocks to be transformed upon breaking them
	// Format is:
	// broken state : replacing state
static blockBreakTransforms as IBlockState[IBlockState] = {
	<blockstate:osv:magma_deposits_hardened_clay:dense=false> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_hardened_clay:dense=true> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_pyrotech_limestone:dense=false> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_pyrotech_limestone:dense=true> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_red_sandstone:dense=false> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_red_sandstone:dense=true> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_sandstone:dense=false> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_sandstone:dense=true> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_stained_hardened_clay:dense=false> : <blockstate:minecraft:lava:level=11>,
	<blockstate:osv:magma_deposits_stained_hardened_clay:dense=true> : <blockstate:minecraft:lava:level=11>,
};

addBlockTransformSet(stoneArray, <blockstate:minecraft:lava:level=11>);

HungerEvents.onFoodEaten(function(event as mods.hungertweaker.events.FoodEatenEvent) {
	if (event.player.world.isRemote()) {
		return;
	}
	
	// Mushroom stew bowl fix
	/*if (event.food.definition.id == <minecraft:mushroom_stew>.definition.id) {
		event.player.give(<minecraft:bowl>);
		return;
	}*/
});

/* events.onEntityLivingUseItemStart(function(event as crafttweaker.event.EntityLivingUseItemEvent.Start) {
    if (event.item.matches(<mowziesmobs:ice_crystal> || event.item.matches(<iceandfire:cockatrice_scepter>)) && 
        event.player.isPotionActive(<potion:extraalchemy:effect.leech>)) {
        event.cancel();
    }
}); */

HungerEvents.onFoodEaten(function(event as mods.hungertweaker.events.FoodEatenEvent) {
	if (event.player.world.isRemote()) {
		return;
	}
	
	//  Gives nausea and poison on eating inventory expander
	if (event.food.definition.id == <cyclicmagic:inventory_food>.definition.id) {
		var poison = <potion:minecraft:poison>.makePotionEffect(200, 2, false, true);
		event.player.addPotionEffect(poison);
		var nausea = <potion:minecraft:nausea>.makePotionEffect(400, 0, false, true);
		event.player.addPotionEffect(nausea);
		var blind = <potion:minecraft:blindness>.makePotionEffect(400, 0, false, true);
		event.player.addPotionEffect(blind);
	}

	if (event.food.definition.id == <iceandfire:pixie_dust>.definition.id) {
		var nausea = <potion:minecraft:nausea>.makePotionEffect(100, 0, false, true);
		event.player.addPotionEffect(nausea);
	}
});

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer) {
		if (event.player.world.isRemote()) {
			return;
		}
	}

	// Ironberry potion effect fix
	if (event.isPlayer && event.item.definition.id == <rustic:ironberries>.definition.id) {
		event.player.removePotionEffect(<potion:minecraft:jump_boost>);
		var weight = <potion:potioncore:weight>.makePotionEffect(200, 49, false, false) as IPotionEffect;
		event.player.addPotionEffect(weight);
	}

	// Give hunger when eating raw venison
	if (event.isPlayer && <ore:listAllvenisonraw> has event.item & Math.random() >= 0.25) {
		var hunger = <potion:minecraft:hunger>.makePotionEffect(100, 0, false, true);
		event.player.addPotionEffect(hunger);
	}
	
	// Give player gamestage/achievement when eating Hydra Chops
	if (event.isPlayer && event.item.definition.id == <twilightforest:hydra_chop>.definition.id) {
		print("Eaten hydra chop");
		print("Player has food level"~event.player.foodStats.foodLevel);
		
		// Extra if statement to ensure event.player isnt called accidentally
		if (!(event.player.hasGameStage("eatenHydraChop")) & event.player.foodStats.foodLevel <= 9) {
			event.player.addGameStage("eatenHydraChop");
		}
	}
});

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	var stopDefiledBlocks as string[] = [
        "minecraft:coal_ore",
		"minecraft:coal_ore",
		"minecraft:coal_block",
		"minecraft:iron_ore",
		"minecraft:iron_block",
		"minecraft:diamond_ore",
		"minecraft:diamond_block"
    ] as string[];

    if (!isNull(event.item) && event.item.matches(<defiledlands:defilement_powder>) && 
        stopDefiledBlocks has event.block.definition.id) {
        event.cancel();
    }
	
	if (event.world.isRemote()) {
		return;
	}

	// Hawthorn bush effects
	if (event.block.definition.id == "biomesoplenty:plant_0" & event.block.meta == 5) {
		var poisonEffect = <potion:minecraft:poison>.makePotionEffect(40, 1) as IPotionEffect;
		event.player.addPotionEffect(poisonEffect);
		event.player.attackEntityFrom(<damageSource:CACTUS>, 4);
		return;
	}
	
	// zombie siege invasion
	/*if (event.block.definition.id == "minecraft:fire" || event.block.definition.id == "minecraft:grass") {
		var mhItem = event.player.getEntityEquipmentSlot(IEntityEquipmentSlot.mainHand());
		var ohItem = event.player.getEntityEquipmentSlot(IEntityEquipmentSlot.offhand());

		if (!isNull(mhItem) && mhItem.matches(<minecraft:fireworks>.withTag({display: {Name: "Animated Brain Dispersion Rocket"}, Fireworks: {Flight: 3, Explosions: [{Type: 1, Trail: 1 as byte, Colors: [14188952] as int[], Flicker: 1 as byte, FadeColors: [11743532] as int[]}]}}))) {
			event.player.addGameStage("siegeevent");
			event.player.sendChat("The rancid smell of burnt gray matter rains down on you; the next invasion is gonna be rough...");
		} else {
			if (!isNull(ohItem) && ohItem.matches(<minecraft:fireworks>.withTag({display: {Name: "Animated Brain Dispersion Rocket"}, Fireworks: {Flight: 3, Explosions: [{Type: 1, Trail: 1 as byte, Colors: [14188952] as int[], Flicker: 1 as byte, FadeColors: [11743532] as int[]}]}}))) {
				event.player.addGameStage("siegeevent");
				event.player.sendChat("The rancid smell of burnt gray matter rains down on you; the next invasion is gonna be rough...");
			}
		}
	}*/

	// Fix flimsy bucket on hc well
	if (event.block.definition.id == "harvestcraft:well") {
		var mhItem = event.player.mainHandHeldItem;
		var ohItem = event.player.offHandHeldItem;
		
		if (!isNull(mhItem) && (<pyrotech:bucket_stone>.matches(mhItem) || <pyrotech:bucket_wood>.matches(mhItem) || <pyrotech:bucket_clay>.matches(mhItem) || <aether_legacy:skyroot_bucket>.matches(mhItem))) {
			event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
			event.player.give(mhItem.withAmount(1).updateTag({fluids: {FluidName: "water", Amount: 1000}}));
			event.cancel();
		} else {
			if (!isNull(ohItem) && (<pyrotech:bucket_stone>.matches(ohItem) || <pyrotech:bucket_wood>.matches(ohItem) || <pyrotech:bucket_clay>.matches(ohItem) || <aether_legacy:skyroot_bucket>.matches(ohItem))) {
				event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount == 1 ? null : ohItem.withAmount(ohItem.amount - 1));
				event.player.give(ohItem.withAmount(1).updateTag({fluids: {FluidName: "water", Amount: 1000}}));
				event.cancel();
			}
		}
		return;
	}


	// Wet pastry
	if (event.block.definition.id == "betterwithmods:raw_pastry" && event.block.meta == 3) {
		if (!isNull(event.item) && event.item.matches(<minecraft:potion>.withTag({Potion: "minecraft:water"}))) {
			event.world.setBlockState(<blockstate:contenttweaker:yeast_flour>, Position3f.create(event.x, event.y, event.z).asBlockPos());

			var mhItem = event.player.getItemInSlot(IEntityEquipmentSlot.mainHand());
			var ohItem = event.player.getItemInSlot(IEntityEquipmentSlot.offhand());

			if (!isNull(mhItem) && mhItem.matches(event.item)) {
				event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount <= 1 ? null : mhItem.withAmount(mhItem.amount - 1));
			} else {
				event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount <= 1 ? null : ohItem.withAmount(ohItem.amount - 1));
			}
			
			event.player.give(<minecraft:glass_bottle>);
			event.cancel();
		}
	}

	// Disable wrought axe 
	if (!isNull(event.item) && event.item.matches(<mowziesmobs:wrought_axe>)) {
		event.cancel();
	}
});
/*
events.onPlayerInteractEntity(function(event as crafttweaker.event.PlayerInteractEntityEvent) {
	if (event.player.world.isRemote() || isNull(event.target) || event.target instanceof IPlayer || isNull(event.target.definition)) {
		return;
	}

	if (event.target.definition.id == "minecraft:villager" || event.target.definition.id == "toroquest:toroquest_toro_villager") {
		server.commandManager.executeCommand(event.player, "advancement grant @p only triumph:advancements/progression/guidebook/village");
	} else if (event.target.definition.id == "rats:plague_doctor") {
		server.commandManager.executeCommand(event.player, "advancement grant @p only triumph:advancements/progression/guidebook/plague_doctor");
	}
});*/

events.onEntityLivingDeath(function(event as crafttweaker.event.EntityLivingDeathEvent) {
	if (event.entityLivingBase.world.isRemote()) {
		return;
	}

	// Avoid nres on player death
	if (event.entityLivingBase instanceof IPlayer) {
		return;
	}
	if (isNull(event.entityLivingBase.definition)) {
		return;
	}

	{ // INTERACTABLE
		// Map of spirit spawning mobs. (These live for 10600 ticks)
		// Format is:
		// entity id : spirit count
		val spiritSpawningMobs as int[string] = {
			"quark:wraith" : 1,
			"twilightforest:wraith" : 1,
			"mod_lavacow:banshee" : 1,
			"mod_lavacow:avaton" : 1
		} as int[string];

		// Strong spirit spawning
		if (spiritSpawningMobs.keySet has event.entityLivingBase.definition.id) {
			server.commandManager.executeCommand(event.entityLivingBase, "summon betterwithaddons:spirit ~ ~ ~ {Health:100,Age:0,Value:"~spiritSpawningMobs[event.entityLivingBase.definition.id]~"}");
			print("Spawned strong spirit");
		}
	}
	
	{	// calls back to the "flashSpiritSpawningMobs" map established earlier
		// Weak spirit spawning
		if (flashSpiritSpawningMobs.keySet has event.entityLivingBase.definition.id) {
			server.commandManager.executeCommand(event.entityLivingBase, "summon betterwithaddons:spirit ~ ~ ~ {Health:100,Age:10400,Value:"~flashSpiritSpawningMobs[event.entityLivingBase.definition.id]~"}");
			print("Spawned weak spirit");
		}
	}
});

events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
	// Plague rotten drop
	if (event.entityLivingBase.isPotionActive(<potion:rats:plague>)) {
		var drops = event.drops as IEntityItem[];
		if (drops.length == 0) {
			return;
		}
		for i in 0 to drops.length {
			if (<ore:listAllmeat> has drops[i].item) {
				if (drops[i].item.definition.id != "mod_lavacow:plagued_porkchop") {
					drops[i] = <minecraft:rotten_flesh>.createEntityItem(drops[i].world, drops[i].position);
				}
			} else {
				if (drops[i].item.isFood & drops[i].item.definition.id != "mod_lavacow:plagued_porkchop") {
					drops[i] = <betterwithaddons:rotten_food>.createEntityItem(drops[i].world, drops[i].position);
				}
			}
		}
		event.drops = drops;
	}
	
	// Prevent player npe
	if (event.entityLivingBase instanceof IPlayer || isNull(event.entityLivingBase.definition) || isNull(event.entityLivingBase.definition.id)) {
		return;
	}

	// Mimic drops skyroot chest
	if (event.entityLivingBase.definition.id == "aether_legacy:mimic") {
		var drops = event.drops as IEntityItem[];
		if (drops.length == 0) {
			return;
		}
		for i in 0 to drops.length {
			if (drops[i].item.definition.id == <minecraft:chest>.definition.id) {
				drops[i] = <aether_legacy:skyroot_chest>.createEntityItem(drops[i].world, drops[i].position);
			}
		}
		event.drops = drops;
	}

	// Toroquest bandit accessory_1 (Belt of Strength)
	if (event.entityLivingBase.definition.id == "toroquest:toroquest_sentry") {
		var drops = event.drops as [IEntityItem];
		if (Math.random() <= 0.1) {
			drops += <behgameon:accessory_1>.createEntityItem(event.entityLivingBase.world, event.entityLivingBase.position);
		}
		event.drops = drops as IEntityItem[];
	}

	// Ice and Fire Troll accessory_1 (Belt of Strength)
	if (event.entityLivingBase.definition.id == "iceandfire:if_troll") {
		var drops = event.drops as [IEntityItem];
		if (Math.random() <= 0.5) {
			drops += <behgameon:accessory_1>.createEntityItem(event.entityLivingBase.world, event.entityLivingBase.position);
		}
		event.drops = drops as IEntityItem[];
	}
	
	// Harvester scythe enchantment
	if (event.entityLivingBase.definition.id == "harvestersnight:harvester") {
		var drops = event.drops as IEntityItem[];
		if (drops.length == 0) {
			return;
		}
		for i in 0 to drops.length {
			if (drops[i].item.definition.id == <harvestersnight:harvester_scythe>.definition.id) {
				val enchantments1 as IEnchantmentDefinition[] = [<enchantment:nyx:lunar_edge>, <enchantment:minecraft:smite>];
				
				var enchantmentMap1 as IData = {};
				
				enchantmentMap1 += enchantments1[0].makeEnchantment(2).makeTag();
				enchantmentMap1 += enchantments1[1].makeEnchantment(2).makeTag();
				
				drops[i] = <harvestersnight:harvester_scythe>.withTag(enchantmentMap1).createEntityItem(drops[i].world, drops[i].position);
			}
		}
		event.drops = drops;
	}

	// Wither skull replacement
	var drops = event.drops as IEntityItem[];
	if (drops.length == 0) {
		return;
	}
	for i in 0 to drops.length {
		if (<minecraft:skull:1>.matches(drops[i].item) && drops[i].item.name has "Wither Skeleton Skull") {
			drops[i] = <minecraft:skull:3>.withTag({SkullOwner: {Id: "7ed571a5-9fb8-416c-8b9d-fb2f446ab5b2", Properties: {textures: [{Signature: "JuCYjSGTk/FIIKsw7dxZN3DzPbhbL4ql0TZsCm+QWC8raqiHs3Ae9OEP/wgA+12MPqrhOd3AqQu4dbX6TKMr479bgH/OUt7sjjj8mNFCOmRTbbGXkmgBd0wKBPAH7xe9YKyse8vcflkcQo4cw7TEOnv0blu19Z7fSNSPrFF4hTyMcyE1t+ZT4RKOfFEAHD4pX+4eoHOFI8aARk4VzFAAsSHOnOV4DH8XTAgVt/wHVP+ocrEvp5cYvuGgyCezeoio174Y3EdFkyL8v/cFrsEABnMCmN5OYhJ0E3i3DrSBkdV5JEBWYWwfItUMELXVJrI9UIRdgnJ+2nP/Cg0a8SDfNJsXb19kXx+aYTUFB4VMlF1L9/etqbjusLx4r6yLMdHlm+i0YAvued13PdBoZTZDjhEscAt0rtfu2QEKXyv4ton0Ot1aK1fntcOV0aJ5WKJJKyfDMOS2k/6Ree37lZ4kmJP0IVu2xnYHPTQ4fX0NHBEDoMnCH3sLHQKI5DAaLqcylY7p+5zMNJK5JSlYOabpgbgXwLjGafWU0qkrMKTCGdk0dUWPGqRD4H7hxR3pbl45GVNC/lCoX3TCti+lWxcFSHfsGA4S487ejonynoOMnEhd7ESM10f0wbLiYgWN1dePEY4vBD0R7LWMSorUJpw5XL5mGpTl0XaOjwgH8dusE/w=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwMjE4MTQyNzE0MSwKICAicHJvZmlsZUlkIiA6ICI3ZWQ1NzFhNTlmYjg0MTZjOGI5ZGZiMmY0NDZhYjViMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfV1NrZWxldG9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JhOTZlOWQ3NmJlZDMwMDkwY2U2ZTJkODQyNTk5NjU5NGVlYzZkNjhhYzg4Y2YwNzM1NmU5ODE0ODM0MjQzZWMiCiAgICB9CiAgfQp9"}]}, Name: "Test_MHF_WSkeleton"}}).createEntityItem(event.entityLivingBase.world, event.entityLivingBase.position);
			print("Replacing wither skull entity drop");
		}
	}
	event.drops = drops as IEntityItem[];
	
});

events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}

	{
		// Checking block
		if (blockBreakTransforms.keySet has event.blockState) {
			event.world.setBlockState(blockBreakTransforms[event.blockState], event.position);
			print("Replaced block");
		}
	}
});

events.onBlockHarvestDrops(function(event as crafttweaker.event.BlockHarvestDropsEvent) {
	if (isNull(event.world) || event.world.isRemote()) {
		return;
	}
/*
	if (event.blockState has <blockstate:minecraft:skull> && !isNull(event.drops)) {
		var drops = event.drops as [WeightedItemStack];
		if (drops.length == 0) {
			return;
		}
		print(drops.length);
		for i in 0 to drops.length {
			print(i);
			print(drops[i].stack.name);
			if (<minecraft:skull:1>.matches(drops[i].stack) && drops[i].stack.name has "Wither Skeleton Skull") {
				drops[i] = <minecraft:skull:3>.withTag({SkullOwner: {Id: "7ed571a5-9fb8-416c-8b9d-fb2f446ab5b2", Properties: {textures: [{Signature: "JuCYjSGTk/FIIKsw7dxZN3DzPbhbL4ql0TZsCm+QWC8raqiHs3Ae9OEP/wgA+12MPqrhOd3AqQu4dbX6TKMr479bgH/OUt7sjjj8mNFCOmRTbbGXkmgBd0wKBPAH7xe9YKyse8vcflkcQo4cw7TEOnv0blu19Z7fSNSPrFF4hTyMcyE1t+ZT4RKOfFEAHD4pX+4eoHOFI8aARk4VzFAAsSHOnOV4DH8XTAgVt/wHVP+ocrEvp5cYvuGgyCezeoio174Y3EdFkyL8v/cFrsEABnMCmN5OYhJ0E3i3DrSBkdV5JEBWYWwfItUMELXVJrI9UIRdgnJ+2nP/Cg0a8SDfNJsXb19kXx+aYTUFB4VMlF1L9/etqbjusLx4r6yLMdHlm+i0YAvued13PdBoZTZDjhEscAt0rtfu2QEKXyv4ton0Ot1aK1fntcOV0aJ5WKJJKyfDMOS2k/6Ree37lZ4kmJP0IVu2xnYHPTQ4fX0NHBEDoMnCH3sLHQKI5DAaLqcylY7p+5zMNJK5JSlYOabpgbgXwLjGafWU0qkrMKTCGdk0dUWPGqRD4H7hxR3pbl45GVNC/lCoX3TCti+lWxcFSHfsGA4S487ejonynoOMnEhd7ESM10f0wbLiYgWN1dePEY4vBD0R7LWMSorUJpw5XL5mGpTl0XaOjwgH8dusE/w=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwMjE4MTQyNzE0MSwKICAicHJvZmlsZUlkIiA6ICI3ZWQ1NzFhNTlmYjg0MTZjOGI5ZGZiMmY0NDZhYjViMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfV1NrZWxldG9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JhOTZlOWQ3NmJlZDMwMDkwY2U2ZTJkODQyNTk5NjU5NGVlYzZkNjhhYzg4Y2YwNzM1NmU5ODE0ODM0MjQzZWMiCiAgICB9CiAgfQp9"}]}, Name: "Test_MHF_WSkeleton"}}).weight(drops[i].chance);
				print("Replacing wither skull block drop");
			}
		}
		event.drops = drops;
	}*/
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
	if (isNull(event.player) || event.phase == "END" || event.phase == "End" || event.phase == "end" || isNull(event.player.world)) {
		return;
	}

	// Average num of seconds between spirit spawns
	var avgSpiritSpawn = 10 as int;

	// Max num of blocks the spirit can spawn away
	var maxDistance = 20 as int;

	// Min num of spirits that can spawn at once
	var minSpawn = 1 as int;

	// Max num of spirits that can spawn at once
	var maxSpawn = 1 as int;

	// Min num of spirits the spirit can contain
	var minSpiritCount = 1 as int;

	// Max num of spirits the spirit can contain
	var maxSpiritCount = 3 as int;

	// Whether spirits should only spawn at night
	var spawnAtNightOnly = true as bool;

	// Spirit spawning
	if (Math.random() <= (1 / (20 * avgSpiritSpawn))) {
		if (!spawnAtNightOnly | (spawnAtNightOnly & (!(event.player.world.isDayTime())))) {
			var spawnCount = minSpawn + (Math.random() * (maxSpawn - minSpawn + 1)) as int;
			
			for i in 0 to spawnCount {
				var x = (-1 * maxDistance) + (Math.random() * maxDistance * 2) as double;
				var y = -1 + (Math.random() * 2) as double;
				var z = (-1 * maxDistance) + (Math.random() * maxDistance * 2) as double;

				var spiritCount = minSpiritCount + (Math.random() * (maxSpiritCount - minSpiritCount + 1)) as int;

				server.commandManager.executeCommand(event.player, "summon betterwithaddons:spirit ~"~x~" ~"~y~" ~"~z~" {Health:100,Age:0,Value:"~spiritCount~"}");
			}
		}
	}

	var player = event.player;
		// the actual bit that checks for conditions
		// i fucking hate this entire block of code, you can barely even read this shit
	if (nearbyBlockCheck(player, "contenttweaker:unstable_spiritfire")) {
		player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 1));
		player.addPotionEffect(<potion:potioncore:fire>.makePotionEffect(10, 1));
	} 
	else if (nearbyBlockCheck(player, "contenttweaker:dread_cold")) {
		player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 1));
		player.addPotionEffect(<potion:twilightforest:frosted>.makePotionEffect(10, 1));
	} 
	else if (nearbyBlockCheck(player, "contenttweaker:concentrated_bioflow")) {
		player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 1));
		player.addPotionEffect(<potion:minecraft:nausea>.makePotionEffect(10, 1));
	} 
	/*
	var saber = <spartanweaponry:saber_electrum>;
	var halberd = <spartanweaponry:halberd_electrum>;
	var throwingknife = <spartanweaponry:throwing_knife_electrum>;
	var warhammer = <spartanweaponry:warhammer_electrum>;
	var warmallet = <spartanweaponry:hammer_electrum>;
	var lance = <spartanweaponry:lance_electrum>;
	var rapier = <spartanweaponry:rapier_electrum>;
	var greatsword = <spartanweaponry:greatsword_electrum>;
	var longsword = <spartanweaponry:longsword_electrum>;
	var staff = <spartanweaponry:staff_electrum>;

	var mhItem = event.player.getItemInSlot(IEntityEquipmentSlot.mainHand());
	var ohItem = event.player.getItemInSlot(IEntityEquipmentSlot.offhand());
	if (!isNull(mhItem) && (mhItem.matches(saber) || mhItem.matches(halberd) || mhItem.matches(throwingknife) || mhItem.matches(warhammer) || mhItem.matches(warmallet) || mhItem.matches(lance) || mhItem.matches(rapier) || mhItem.matches(greatsword) || mhItem.matches(longsword) || mhItem.matches(staff))) {
		server.commandManager.executeCommand(event.player, "playsound arcanearchives:resonator.complete ambient "~event.player.uuid~" ~ ~ ~ 0.25 0.25");
	} */
});

events.onPlayerFillBucket(function(event as crafttweaker.event.PlayerFillBucketEvent) {
	if (isNull(event.block) || isNull(event.block.fluid)) {
		return;
	}
	
	if (event.block.fluid.name == <liquid:honey>.definition.name) {
		event.cancel();
		return;
	}

	if (event.world.isRemote()) {
		return;
	}
});

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	var betrayers = [
		"019f24eb-6f40-45b7-8b48-8ba6a4d640d5",
		"18d968ff-c123-4853-b576-24db66113d07",
		"e50c578f-317d-4f60-9a2e-5056a7809937"
	] as string[];
	
	if (betrayers has event.player.uuid && !isNull(event.player.world)) {
		for i in 0 to 10 {
			server.commandManager.executeCommand(event.player, 'summon primitivemobs:grovesprite ~ ~ ~ {CustomName:"Grove Avenger",CustomNameVisible:1,HandItems:[{id:"spartanweaponry:dagger_diamond",Count:1b,tag:{Unbreakable:1,ench:[{id:19,lvl:10}]}},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:250},{Name:generic.movementSpeed,Base:2.0},{Name:generic.attackDamage,Base:20},{Name:generic.followRange,Base:40},{Name:generic.knockbackResistance,Base:1}],ActiveEffects:[{Id:12,Amplifier:10,Duration:200000,ShowParticles:0b},{Id:22,Amplifier:2,Duration:9600}]}');
		}
	}
	
	if ("490a8ee7-ae3e-40b0-a9c7-653024832c67" == event.player.uuid) {
		event.player.sendChat("you have to be ready for it");
	}

	/*if ("5c9db434-4d18-495f-be46-8b39c00b685f" == event.player.uuid) {
		server.commandManager.executeCommand(event.player, "playsound customdisc:sussy ambient @p ~ ~ ~");
		event.player.sendChat("there are goblins living in my walls");
	}*/
});

events.onPlayerSleepInBed(function(event as crafttweaker.event.PlayerSleepInBedEvent) {
	// Prevent player from sleeping if your hunger is too low
	if (event.player.foodStats.foodLevel <= 19) {
		event.player.sendChat("You're too hungry and can't sleep well.");
		event.result = "OTHER_PROBLEM";
	}
});
/*
events.onPlayerInteract(function(event as crafttweaker.event.PlayerInteractEvent) {
    var player as IPlayer = event.player as IPlayer;
    if (player.activePotionEffects.length != 0){
        for p in player.activePotionEffects {
            if (p.effectName.matches("extraalchemy:effect.leech")) {
				var mhItem = event.player.getItemInSlot(IEntityEquipmentSlot.mainHand());
				var ohItem = event.player.getItemInSlot(IEntityEquipmentSlot.offhand());
				if (!isNull(mhItem) && <mowziesmobs:ice_crystal:*>.matches(mhItem)) {
					player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 1));
    				return "Pass";
				} else {
					if (!isNull(ohItem) && <mowziesmobs:ice_crystal:*>.matches(ohItem)) {
						player.addPotionEffect(<potion:minecraft:instant_damage>.makePotionEffect(1, 1));
						return "Pass";
					}
				}
            }
        }
    }
}); 
*/

function addBlockTransformSet(ar as string[], bState as IBlockState) {
	var ibsAr = [] as IBlockState[]; // heh, ibs
	
	for i in 0 to ar.length {
		if(ar[i] != "osv:magma_deposits_undergroundbiomes_sedimentary_stone_4") {
			var dense = getBlockState(ar[i], "dense=true") as IBlockState;
			var notDense = getBlockState(ar[i], "dense=false") as IBlockState;
			ibsAr += dense;
			ibsAr += notDense;
		}
	}
	
	for i in 0 to ibsAr.length {
		var bs = ibsAr[i] as IBlockState;
		blockBreakTransforms[bs] = bState;
	}
}

// Xp tomes
// Gives the player variable amounts of XP
static xp_tome_mundane as IItemStack = <contenttweaker:xp_tome_mundane>;
static xp_tome_arcane as IItemStack = <contenttweaker:xp_tome_arcane>;
events.onPlayerRightClickItem(function(event as crafttweaker.event.PlayerRightClickItemEvent){
    if(!event.world.isRemote()){
        val itemStack1 = event.item as IItemStack;
		if(!isNull(itemStack1)){
			if ((itemStack1.definition.id).matches(xp_tome_mundane.definition.id)) {
				Commands.call("playsound dsurround:wind player @p", event.player, event.world, true, true);
				Commands.call("xp 500 @p", event.player, event.world, true, true);
				itemStack1.mutable().shrink(1);
			}
		}
		if(!isNull(itemStack1)){
			if ((itemStack1.definition.id).matches(xp_tome_arcane.definition.id)) {
				Commands.call("playsound dsurround:wind player @p", event.player, event.world, true, true);
				Commands.call("xp 5L @p", event.player, event.world, true, true);
				itemStack1.mutable().shrink(1);
			}
		}
    }
});

// Spine bud light
// Breaking the dark fruit on the bottom of the structure replaces the block above with a glaretorch illuminating the area
events.onBlockBreak(function(event as crafttweaker.event.BlockBreakEvent){
    if event.world.remote{
        return;
    }
	
	var flagCheck = crafttweaker.util.Position3f.create(event.position.x, event.position.y + 3, event.position.z).asBlockPos();

    var blockToReplace_e1 = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_w1 = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_s1 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z + 7).asBlockPos();
    var blockToReplace_n1 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z - 7).asBlockPos();
	
	var blockToReplace_e2 = crafttweaker.util.Position3f.create(event.position.x + 14, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_w2 = crafttweaker.util.Position3f.create(event.position.x - 14, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_s2 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z + 14).asBlockPos();
    var blockToReplace_n2 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z - 14).asBlockPos();
	
	var blockToReplace_e3 = crafttweaker.util.Position3f.create(event.position.x + 21, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_w3 = crafttweaker.util.Position3f.create(event.position.x - 21, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_s3 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z + 21).asBlockPos();
    var blockToReplace_n3 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z - 21).asBlockPos();
	
	var blockToReplace_e4 = crafttweaker.util.Position3f.create(event.position.x + 28, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_w4 = crafttweaker.util.Position3f.create(event.position.x - 28, event.position.y, event.position.z).asBlockPos();
    var blockToReplace_s4 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z + 28).asBlockPos();
    var blockToReplace_n4 = crafttweaker.util.Position3f.create(event.position.x, event.position.y, event.position.z - 28).asBlockPos();
		
	var blockToReplace_e1up = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y + 6, event.position.z).asBlockPos();
    var blockToReplace_w1up = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y + 6, event.position.z).asBlockPos();
    var blockToReplace_s1up = crafttweaker.util.Position3f.create(event.position.x, event.position.y + 6, event.position.z + 7).asBlockPos();
    var blockToReplace_n1up = crafttweaker.util.Position3f.create(event.position.x, event.position.y + 6, event.position.z - 7).asBlockPos();
	
	var blockToReplace_e1down = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y - 6, event.position.z).asBlockPos();
    var blockToReplace_w1down = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y - 6, event.position.z).asBlockPos();
    var blockToReplace_s1down = crafttweaker.util.Position3f.create(event.position.x, event.position.y - 6, event.position.z + 7).asBlockPos();
    var blockToReplace_n1down = crafttweaker.util.Position3f.create(event.position.x, event.position.y - 6, event.position.z - 7).asBlockPos();
	
	var blockToReplace_ne = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y, event.position.z + 7).asBlockPos();
    var blockToReplace_se = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y, event.position.z - 7).asBlockPos();
    var blockToReplace_nw = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y, event.position.z + 7).asBlockPos();
    var blockToReplace_sw = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y, event.position.z - 7).asBlockPos();
	
	var blockToReplace_nne = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y, event.position.z + 14).asBlockPos();
    var blockToReplace_sse = crafttweaker.util.Position3f.create(event.position.x + 7, event.position.y, event.position.z - 14).asBlockPos();
    var blockToReplace_nnw = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y, event.position.z + 14).asBlockPos();
    var blockToReplace_ssw = crafttweaker.util.Position3f.create(event.position.x - 7, event.position.y, event.position.z - 14).asBlockPos();
	
	var blockToReplace_nee = crafttweaker.util.Position3f.create(event.position.x + 14, event.position.y, event.position.z + 7).asBlockPos();
    var blockToReplace_see = crafttweaker.util.Position3f.create(event.position.x + 14, event.position.y, event.position.z - 7).asBlockPos();
    var blockToReplace_nww = crafttweaker.util.Position3f.create(event.position.x - 14, event.position.y, event.position.z + 7).asBlockPos();
    var blockToReplace_sww = crafttweaker.util.Position3f.create(event.position.x - 14, event.position.y, event.position.z - 7).asBlockPos();

    if (event.block.definition.id.matches("contenttweaker:dark_fruit")){
	
		if (event.world.getBlock(flagCheck).definition.id.matches("endreborn:block_wolframium")){

			if (event.world.getBlock(blockToReplace_e1).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e1);
			}
			if (event.world.getBlock(blockToReplace_w1).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w1);
			}
			if (event.world.getBlock(blockToReplace_s1).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s1);
			}
			if (event.world.getBlock(blockToReplace_n1).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n1);
			}
			
			if (event.world.getBlock(blockToReplace_e2).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e2);
			}
			if (event.world.getBlock(blockToReplace_w2).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w2);
			}
			if (event.world.getBlock(blockToReplace_s2).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s2);
			}
			if (event.world.getBlock(blockToReplace_n2).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n2);
			}
			
			if (event.world.getBlock(blockToReplace_e3).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e3);
			}
			if (event.world.getBlock(blockToReplace_w3).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w3);
			}
			if (event.world.getBlock(blockToReplace_s3).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s3);
			}
			if (event.world.getBlock(blockToReplace_n3).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n3);
			}
			
			if (event.world.getBlock(blockToReplace_e4).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e4);
			}
			if (event.world.getBlock(blockToReplace_w4).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w4);
			}
			if (event.world.getBlock(blockToReplace_s4).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s4);
			}
			if (event.world.getBlock(blockToReplace_n4).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n4);
			}
			
			if (event.world.getBlock(blockToReplace_e1up).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e1up);
			}
			if (event.world.getBlock(blockToReplace_w1up).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w1up);
			}
			if (event.world.getBlock(blockToReplace_s1up).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s1up);
			}
			if (event.world.getBlock(blockToReplace_n1up).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n1up);
			}
			
			if (event.world.getBlock(blockToReplace_e1down).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_e1down);
			}
			if (event.world.getBlock(blockToReplace_w1down).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_w1down);
			}
			if (event.world.getBlock(blockToReplace_s1down).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_s1down);
			}
			if (event.world.getBlock(blockToReplace_n1down).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_n1down);
			}
			
			if (event.world.getBlock(blockToReplace_ne).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_ne);
			}
			if (event.world.getBlock(blockToReplace_se).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_se);
			}
			if (event.world.getBlock(blockToReplace_nw).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_nw);
			}
			if (event.world.getBlock(blockToReplace_sw).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_sw);
			}
			
			if (event.world.getBlock(blockToReplace_nne).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_nne);
			}
			if (event.world.getBlock(blockToReplace_sse).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_sse);
			}
			if (event.world.getBlock(blockToReplace_nnw).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_nnw);
			}
			if (event.world.getBlock(blockToReplace_ssw).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_ssw);
			}
			
			if (event.world.getBlock(blockToReplace_nee).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_nee);
			}
			if (event.world.getBlock(blockToReplace_see).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_see);
			}
			if (event.world.getBlock(blockToReplace_nww).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_nww);
			}
			if (event.world.getBlock(blockToReplace_sww).definition.id.matches("minecraft:air")){
				event.world.setBlockState(<blockstate:glaretorch:blocklight>, blockToReplace_sww);
			}
		}
    }
});