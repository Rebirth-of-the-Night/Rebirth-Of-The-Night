
#loader crafttweaker reloadable

import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.server.IServer;
import crafttweaker.block.IBlock;
import crafttweaker.block.IMaterial;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import mods.zenutils.Catenation;

import scripts.shared.utils.CommandUtils;

/**
 * Crafting Sounds
 *
 * Note: When querying the recipe output, the priority is the following: 1. Items, 2. Oredicts, 3. Materials
 * This is to ensure that item sounds don't get overridden by oredict sounds, etc.
 *
 * Get materials from here: https://docs.blamejared.com/1.12/en/Vanilla/Blocks/IMaterial#getting-vanilla-minecraft-materials
 */

// Items
val itemsAndSounds as string[IItemStack] = {
    <contenttweaker:broken_stick>   : "minecraft:block.wood.break"
};

// Oredicts
val oredictsAndSounds as string[IOreDictEntry] = {
    <ore:rock>                      : "futuremc:stonecutter_carve",
    <ore:stickWood>                 : "minecraft:block.wood.place",
    <ore:workbench>                 : "charm:wood_smash"
};

// Materials
val materialsAndSounds as string[IMaterial] = {
    IMaterial.iron()                : "futuremc:lantern_place",
    IMaterial.rock()                : "futuremc:stonecutter_carve",
    IMaterial.wood()                : "minecraft:block.wood.place",
    IMaterial.ground()              : "minecraft:block.grass.place",
    IMaterial.cloth()               : "minecraft:block.cloth.break",
    IMaterial.glass()               : "futuremc:coral_step",
    IMaterial.piston()              : "futuremc:iron_golem_repair",
};


val canPlay as bool[] = [true];
val doCatenation as bool[] = [true];

function playSounds(event as crafttweaker.event.PlayerCraftedEvent,canPlay as bool[], materials as string[IMaterial], oredicts as string[IOreDictEntry], items as string[IItemStack]) as void {
    for item, sound in items {
        if (item.name == event.output.name) {
            CommandUtils.playsound(sound, "player", event.player);
            canPlay[0] = false;
            return;
        }
    }

    for oredict, sound in oredicts {
        if (event.output.ores has oredict) {
            CommandUtils.playsound(sound, "player", event.player);
            canPlay[0] = false;
            return;
        }
    }

    if (event.output.isItemBlock) {
        val blockMaterial = event.output.asBlock().definition.defaultState.material;

        for material, sound in materials {
            if (blockMaterial.matches(material)) {
                CommandUtils.playsound(sound, "player", event.player);
                canPlay[0] = false;
                break;
            }
        }
    }
}

events.onPlayerCrafted(function(event as crafttweaker.event.PlayerCraftedEvent) {
    if (isNull(event.player.world) || event.player.world.isRemote() || isNull(event.output)) {
        return;
    }

    // Crafting sounds
    if (canPlay[0]) {
        playSounds(event, canPlay, materialsAndSounds, oredictsAndSounds, itemsAndSounds);
    }

    // Time offset
    if (!canPlay[0] && doCatenation[0]) {
        event.player.world.catenation()
            .sleep(1)
            .run(function(world) {
                canPlay[0] = true;
                doCatenation[0] = true;
            })
            .stopWhen(function(world) {
                return !event.player.alive;
            })
            .start();
        doCatenation[0] = false;
    }
});
