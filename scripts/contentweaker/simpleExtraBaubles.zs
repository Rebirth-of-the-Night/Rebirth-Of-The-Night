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


var clockwork_heart = VanillaFactory.createBaubleItem("clockwork_heart");
clockwork_heart.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        if (!player.world.isRemote() && player.world.getWorldTime() % 10 == 0 as long) {
            // First parameter is time in ticks, second is strength, can duplicate this line for any number of potions
            player.removePotionEffect(<potion:minecraft:haste>);
            player.removePotionEffect(<potion:minecraft:speed>);
        } 
    }
};
clockwork_heart.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("kill @p");
    }
};
clockwork_heart.baubleType = "BODY";
clockwork_heart.register();

var doll_heart = VanillaFactory.createBaubleItem("doll_heart");
doll_heart.onWornTick = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        if (!player.world.isRemote() && player.world.getWorldTime() % 10 == 0 as long) {
            // First parameter is time in ticks, second is strength, can duplicate this line for any number of potions
            player.removePotionEffect(<potion:minecraft:haste>);
            player.removePotionEffect(<potion:minecraft:speed>);
            player.removePotionEffect(<potion:minecraft:mining_fatigue>);
            player.removePotionEffect(<potion:minecraft:slowness>);
        } 
    }
};
doll_heart.onUnequipped = function(bauble, wearer) {
    if(wearer instanceof IPlayer) {
        var player as IPlayer = wearer;
        player.executeCommand("kill @p");
    }
};
doll_heart.baubleType = "BODY";
doll_heart.register();