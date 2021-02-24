#loader contenttweaker

import crafttweaker.item.IItemStack;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;
import mods.contenttweaker.Commands;

val volatile_core = VanillaFactory.createItem("volatile_core");
volatile_core.register();

val volatile_powder = VanillaFactory.createItem("volatile_powder");
volatile_powder.register();

val volatile_magic = VanillaFactory.createItem("volatile_magic");
volatile_magic.register();

val magicbomb = VanillaFactory.createItem("magic_bomb");
magicbomb.maxStackSize = 8;
magicbomb.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos).getBlock().definition.id == "dimstack:bedrock") {
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
