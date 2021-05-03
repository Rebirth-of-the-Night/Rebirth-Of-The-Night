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

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.player.IPlayer;

import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import crafttweaker.util.Position3f;

import mods.ctutils.utils.Math;

import mods.hungertweaker.events.HungerEvents;

HungerEvents.onFoodEaten(function(event as mods.hungertweaker.events.FoodEatenEvent) {
	if (event.player.world.isRemote()) {
		return;
	}
	
	// Mushroom stew bowl fix
	if (event.food.definition.id == <minecraft:mushroom_stew>.definition.id) {
		event.player.give(<minecraft:bowl>);
		return;
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
	
	// Fix flimsy bucket on hc well
	if (event.block.definition.id == "harvestcraft:well") {
		var mhItem = event.player.mainHandHeldItem;
		var ohItem = event.player.offHandHeldItem;
		
		if (!isNull(mhItem) && <pyrotech:bucket_stone>.matches(mhItem)) {
			event.player.setItemToSlot(IEntityEquipmentSlot.mainHand(), mhItem.amount == 1 ? null : mhItem.withAmount(mhItem.amount - 1));
			event.player.give(mhItem.withAmount(1).updateTag({fluids: {FluidName: "water", Amount: 1000}}));
			event.cancel();
		} else {
			if (!isNull(ohItem) && <pyrotech:bucket_stone>.matches(ohItem)) {
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
	
	// Harvester scythe enchantment
	if (event.entityLivingBase.definition.id == "harvestersnight:harvester") {
		var drops = event.drops as IEntityItem[];
		if (drops.length == 0) {
			return;
		}
		for i in 0 to drops.length {
			if (drops[i].item.definition.id == <harvestersnight:harvester_scythe>.definition.id) {
				val enchantments1 as IEnchantmentDefinition[] = [<enchantment:nyx:lunar_edge>, <enchantment:minecraft:smite>, <enchantment:dungeontactics:runed>];
				
				var enchantmentMap1 as IData = {};
				
				enchantmentMap1 += enchantments1[0].makeEnchantment(2).makeTag();
				enchantmentMap1 += enchantments1[1].makeEnchantment(1).makeTag();
				enchantmentMap1 += enchantments1[2].makeEnchantment(1).makeTag();
				
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
});

events.onPlayerSleepInBed(function(event as crafttweaker.event.PlayerSleepInBedEvent) {
	// Prevent player from sleeping if your hunger is too low
	if (event.player.foodStats.foodLevel <= 19) {
		event.player.sendChat("You're too hungry and can't sleep well.");
		event.result = "OTHER_PROBLEM";
	}
});
