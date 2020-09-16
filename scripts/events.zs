import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathEvent;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.event.PlayerTickEvent;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityItem;

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
		event.player.clearActivePotions();
		var weight = <potion:potioncore:weight>.makePotionEffect(200, 49, false, false) as IPotionEffect;
		var resist = <potion:minecraft:resistance>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var fireres = <potion:minecraft:fire_resistance>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var slow = <potion:minecraft:slowness>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var minfat = <potion:minecraft:mining_fatigue>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		var weak = <potion:minecraft:weakness>.makePotionEffect(200, 15, false, false) as IPotionEffect;
		event.player.addPotionEffect(weight);
		event.player.addPotionEffect(resist);
		event.player.addPotionEffect(fireres);
		event.player.addPotionEffect(slow);
		event.player.addPotionEffect(minfat);
		event.player.addPotionEffect(weak);
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
	if (event.player.name == "OoHoOo" && !isNull(event.player.world)) {
		for i in 0 to 10 {
			server.commandManager.executeCommand(event.player, 'summon primitivemobs:grovesprite ~ ~ ~ {Attributes:[{Name:"generic.attackDamage",Base:999},{Name:"generic.movementSpeed",Base:2},{Name:"generic.maxHealth",Base:1024},{Name:"generic.followRange",Base:10}],Health:1024.0f}');
		}
	}
});
