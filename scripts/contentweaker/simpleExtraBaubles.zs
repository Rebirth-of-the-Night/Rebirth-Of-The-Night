#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemRightClick;
import crafttweaker.util.IRandom;

import crafttweaker.world.IWorld;
import crafttweaker.world.IBlockPos;
import crafttweaker.block.IBlock;
import crafttweaker.block.IBlockState;
import crafttweaker.block.IBlockStateMatcher;

import crafttweaker.data.IData;
import crafttweaker.command.ICommand;
import crafttweaker.command.ICommandSender;
import crafttweaker.command.ICommandManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;

import crafttweaker.entity.IEntity;
import crafttweaker.entity.IEntityLivingBase;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.entity.IEntityItem;

import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

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


import crafttweaker.util.Position3f;

import mods.ctutils.utils.Math;

import mods.hungertweaker.events.HungerEvents;

import mods.ctintegration.baubles.IBaubleInventory;

// Expier (Infinite XP, as long as you can tank it)
var expier = VanillaFactory.createBaubleItem("expier");
expier.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.addExperience(10);
    }
};
expier.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.removeExperience(100);
    }
};
expier.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.addExperience(10);
    }
};
expier.baubleType = "TRINKET";
expier.register();

/// Stream crown (Enables super fast traveling while on blossoming leaves)
var stream_crown = VanillaFactory.createBaubleItem("stream_crown");
stream_crown.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        if (!player.world.isRemote() && player.world.getWorldTime() % 8 == 0 as long) {
            var x = player.x;
            var y = player.y - 3;
            var z = player.z - 1; // necessary
            val block = player.world.getBlock(x as int, y as int, z as int) as IBlock;
            if (block.definition.id in "quark:variant_leaves" && (block.meta == 1 as int || block.meta == 9 as int)) {
                // First parameter is time in ticks, second is strength, can duplicate this line for any number of potions
                player.addPotionEffect(<potion:cyclicmagic:potion.bounce>.makePotionEffect(300, 1));
                player.addPotionEffect(<potion:minecraft:speed>.makePotionEffect(200, 2));
                player.addPotionEffect(<potion:minecraft:jump_boost>.makePotionEffect(200, 2));
                player.addPotionEffect(<potion:potioncore:step_up>.makePotionEffect(200, 1));
            }
        }
    }
};
stream_crown.baubleType = "HEAD";
stream_crown.register();

// Horizontal anchor (On equipping it, it wil teleport the player to the same coordinates in the Overworld)
var ow_acnhor = VanillaFactory.createBaubleItem("ow_anchor");
ow_acnhor.rarity = "epic";
ow_acnhor.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("dimteleport 0 ~ ~ ~");
    }
};
ow_acnhor.baubleType = "AMULET";
ow_acnhor.register();

// Wings of reflex (Enables midair dodging)
var reflex_wings = VanillaFactory.createBaubleItem("reflex_wings");
reflex_wings.rarity = "rare";
reflex_wings.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("elenaidodge disable_airborne @a");
    }
};
reflex_wings.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("elenaidodge enable_airborne @a");
    }
};
reflex_wings.baubleType = "TRINKET";
reflex_wings.register();

// Underarmor (provides extra armor)
var leather_armor = VanillaFactory.createBaubleItem("leather_armor");
leather_armor.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.removeExperience(100);
    }
};
leather_armor.onEquipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.addExperience(10);
    }
};
leather_armor.baubleType = "BODY";
leather_armor.register();

// Rabbit's Foot (gives perma luck)
var rabbit_foot = VanillaFactory.createBaubleItem("rabbit_foot");
rabbit_foot.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.removeExperience(100);
    }
};
rabbit_foot.baubleType = "TRINKET";
rabbit_foot.register();