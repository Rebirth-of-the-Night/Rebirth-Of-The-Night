#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IRayTraceResult;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;

val slider_eye = VanillaFactory.createItem("slider_eye");
slider_eye.register();

val unattuned_focus = VanillaFactory.createItem("unattuned_focus");
unattuned_focus.register();

val arcane_focus = VanillaFactory.createItem("arcane_focus");
arcane_focus.maxStackSize = 1;
arcane_focus.maxDamage = 16;
arcane_focus.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    if (world.getBlockState(pos).getBlock().definition.id == "dimstack:bedrock" && player.getHeldItem(hand).damage > 0) {
        if (!world.remote) {
            world.setBlockState(<block:minecraft:air>, pos);
            player.getHeldItem(hand).damage(-1, player);
        }
        return ActionResult.success();
    }
    return ActionResult.pass();
};
arcane_focus.register();

/* WIP FANCY ANIMATION VERSION
val arcane_eye_u = VanillaFactory.createItem("arcane_eye_unattuned");
arcane_eye_u.maxStackSize = 8;
arcane_eye_u.maxDamage = 64;
arcane_eye_u.itemUseAction = "BOW";
arcane_eye_u.onItemUse = function(player, world, pos, hand, facing, blockHit) {
    };
arcane_eye_u.onItemUseFinish = function(stack, notWorld, entity) {
    if !(entity instanceof IPlayer) {
        return stack;
    }
    var player as IPlayer = entity;
    val rayget as IRayTraceResult = player.getRayTrace(5, 1, true, true, false) as IRayTraceResult; // Get a ray trace of reach distance
    if (!isNull(rayget.blockPos) && rayget.isBlock && player.world.getBlock(rayget.blockPos) has <block:dimstack:bedrock:0>.getBlock()) { // Check if block at blockPos is dimstack
        // Have to use player.world instead of passed world because CoT and CrT IWorlds are different and raytrace's block pos is CrT's BlockPos, but passed world is CoT's IWorld
        player.world.setBlockState(<blockstate:minecraft:dirt>, rayget.blockPos); // Setting to dirt
        stack.damageItem(-1, player); // Adding one to durability
        print("rayget");
    }
    return stack;
};
arcane_eye_u.register();
*/
