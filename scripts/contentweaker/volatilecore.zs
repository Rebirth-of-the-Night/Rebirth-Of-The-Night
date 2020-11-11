#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.BlockState;
import mods.contenttweaker.IItemDestroyedBlock;
import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Item;
import mods.contenttweaker.Facing;
import mods.contenttweaker.MutableItemStack;
import mods.contenttweaker.Commands;
import mods.contenttweaker.IItemUse;
import mods.contenttweaker.World;
import crafttweaker.world.IWorld;
import mods.contenttweaker.Player;
import mods.contenttweaker.Random;
import mods.contenttweaker.Hand;
import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import mods.contenttweaker.DropHandler;
import crafttweaker.item.IItemStack;

val volatile_core = mods.contenttweaker.VanillaFactory.createItem("volatile_core");
volatile_core.register();

val volatile_powder = mods.contenttweaker.VanillaFactory.createItem("volatile_powder");
volatile_powder.register();

val volatile_magic = mods.contenttweaker.VanillaFactory.createItem("volatile_magic");
volatile_magic.register();

val magicbomb = VanillaFactory.createItem("magic_bomb");
magicbomb.maxStackSize = 8;
magicbomb.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos) == <block:dimstack:bedrock:0>) {
        if (!world.remote) {
            Commands.call("explosion ~ ~1 ~1 2 false false", player, world);
            world.setBlockState(<block:minecraft:air>, pos);
            player.getHeldItem(hand).shrink(1);
            if (world.getRandom().nextInt(100) < 10) {
                player.world.spawnEntity(<item:contenttweaker:arcane_quintessence>.createEntityItem(player.world, pos.x, pos.y, pos.z));
            }
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
magicbomb.register();
