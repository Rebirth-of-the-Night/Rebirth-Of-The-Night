import crafttweaker.block.IBlock;

import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.PlayerAnvilUpdateEvent;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.event.PlayerTickEvent;

import crafttweaker.enchantments.IEnchantment;
import crafttweaker.enchantments.IEnchantmentDefinition;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityItem;

import crafttweaker.item.IItemStack;

import crafttweaker.player.IPlayer;

import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import mods.ctutils.utils.Math;

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer) {
		if (event.player.world.isRemote()) {
			return;
		}
	}

	// Ironberry potion effect fix
	if (event.isPlayer & event.item.definition.id == <rustic:ironberries>.definition.id) {
		event.player.removePotionEffect(<potion:minecraft:jump_boost>);
		var weight = <potion:potioncore:weight>.makePotionEffect(200, 49, false, false) as IPotionEffect;
		event.player.addPotionEffect(weight);
	}

	// Mushroom stew bowl fix
	if (event.isPlayer & event.item.definition.id == <minecraft:mushroom_stew>.definition.id) {
		event.player.give(<minecraft:bowl>);
	}

	// Give hunger when eating raw venison
	if (event.isPlayer & <ore:listAllvenisonraw> has event.item & Math.random() >= 0.25) {
		var hunger = <potion:minecraft:hunger>.makePotionEffect(100, 0, false, true);
		event.player.addPotionEffect(hunger);
	}
	
	// Give player gamestage/achievement when eating Hydra Chops
	if (event.isPlayer & event.item.definition.id == <twilightforest:hydra_chop>.definition.id) {
		print("Eaten hydra chop");
		print("Player has food level"~event.player.foodStats.foodLevel);
		
		// Extra if statement to ensure event.player isn't called accidentally
		if (!(event.player.hasGameStage("eatenHydraChop")) & event.player.foodStats.foodLevel <= 9) {
			event.player.addGameStage("eatenHydraChop");
		}
	}
});

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent) {
	if (event.world.isRemote()) {
		return;
	}

	// Hawthorn bush effects
	if (event.block.definition.id == "biomesoplenty:plant_0" & event.block.meta == 5) {
		var poisonEffect = <potion:minecraft:poison>.makePotionEffect(40, 1) as IPotionEffect;
		event.player.addPotionEffect(poisonEffect);
		event.player.attackEntityFrom(<damageSource:CACTUS>, 4);
	}
	
	// Fix flimsy bucket on hc well
	if (event.block.definition.id == "harvestcraft:well") {
		var mhItem = event.player.getItemInSlot(IEntityEquipmentSlot.mainHand());
		var ohItem = event.player.getItemInSlot(IEntityEquipmentSlot.offhand());
		
		if (!isNull(mhItem) && mhItem.definition.id == "pyrotech:bucket_stone") {
			event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount <= 1 ? null : mhItem.withAmount(mhItem.amount - 1));
			event.player.give(mhItem.withAmount(1).updateTag({fluids: {FluidName: "water", Amount: 1000}}));
		} else {
			if (!isNull(ohItem) && ohItem.definition.id == "pyrotech:bucket_stone") {
				event.player.setItemToSlot(IEntityEquipmentSlot.offhand(), ohItem.amount <= 1 ? null : ohItem.withAmount(ohItem.amount - 1));
				event.player.give(ohItem.withAmount(1).updateTag({fluids: {FluidName: "water", Amount: 1000}}));
			}
		}
	}
});

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

	// Map of spirit spawning mobs.
	// Format is:
	// entity id : spirit count
	val spiritSpawningMobs = {
		"specialmobs:hungryzombie" : 4
	} as int[string];

	// Spirit spawning
	if (spiritSpawningMobs.keySet has event.entityLivingBase.definition.id) {
		server.commandManager.executeCommand(event.entityLivingBase, "summon betterwithaddons:spirit ~ ~ ~ {Health:100,Age:0,Value:"~spiritSpawningMobs[event.entityLivingBase.definition.id]~"}");
		print("Spawned spirit");
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
});

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
	if (isNull(event.player) | event.phase == "END" | event.phase == "End" | event.phase == "end") {
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
});

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
	if (event.player.uuid == "019f24eb-6f40-45b7-8b48-8ba6a4d640d5" && !isNull(event.player.world)) {
		for i in 0 to 10 {
			server.commandManager.executeCommand(event.player, 'summon primitivemobs:grovesprite ~ ~ ~ {CustomName:"Grove Avenger",CustomNameVisible:1,HandItems:[{id:"spartanweaponry:dagger_diamond",Count:1b,tag:{Unbreakable:1,ench:[{id:19,lvl:10}]}},{}],HandDropChances:[0.0F,0.085F],Attributes:[{Name:generic.maxHealth,Base:250},{Name:generic.movementSpeed,Base:2.0},{Name:generic.attackDamage,Base:20},{Name:generic.followRange,Base:40},{Name:generic.knockbackResistance,Base:1}],ActiveEffects:[{Id:12,Amplifier:10,Duration:200000,ShowParticles:0b},{Id:22,Amplifier:2,Duration:9600}]}');
		}
	}
});

events.onPlayerSleepInBed(function(event as crafttweaker.event.PlayerSleepInBedEvent) {
	// Prevent player from sleeping if your hunger is too low
	if (event.player.foodStats.foodLevel <= 19) {
		event.player.sendChat("You're too hungry and can't sleep well.");
		event.result = "OTHER_PROBLEM";
	}
});

events.onPlayerAnvilUpdate(function(event as crafttweaker.event.PlayerAnvilUpdateEvent) {
	val left = event.leftItem as IItemStack;
	val right = event.rightItem as IItemStack;
	
	val curseFinalStand = <enchantment:contenttweaker:curse_finalstand>.makeEnchantment(1) as IEnchantment;

	if (isNull(left) || isNull(right)) {
		return;
	}

	if (isNull(curseFinalStand)) {
		return;
	}

	if (event.outputItem.isDamageable) {
		if (left.isEnchanted) {
			var enchs = left.enchantments as IEnchantment[];
			if (enchs has curseFinalStand && event.outputItem.definition == left.definition) {
				if (left.isDamageable && event.outputItem.damage > left.damage) {
					event.cancel();
					return;
				}
				if (right.isDamageable && event.outputItem.damage > right.damage) {
					event.cancel();
					return;
				}
			}
		}
		if (right.isEnchanted) {
			var enchs = right.enchantments as IEnchantment[];
			if (enchs has curseFinalStand && event.outputItem.definition == right.definition) {
				if (left.isDamageable && event.outputItem.damage > left.damage) {
					event.cancel();
					return;
				}
				if (right.isDamageable && event.outputItem.damage > right.damage) {
					event.cancel();
					return;
				}
			}
		}
	}
});
