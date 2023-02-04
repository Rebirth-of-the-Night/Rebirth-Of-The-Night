#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemRightClick;
import crafttweaker.world.IWorld;
import crafttweaker.util.IRandom;

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

import crafttweaker.item.IItemStack;
import crafttweaker.item.WeightedItemStack;

import crafttweaker.player.IPlayer;

import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

import crafttweaker.util.Position3f;

import mods.ctutils.utils.Math;

import mods.hungertweaker.events.HungerEvents;

import mods.ctintegration.baubles.IBaubleInventory;

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

// Overworld anchor
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

//wings of reflex
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

//underarmor 
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