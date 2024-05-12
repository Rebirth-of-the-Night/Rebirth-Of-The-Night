#loader contenttweaker

import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.world.IRayTraceResult;

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ActionResult;

val calamarigold = VanillaFactory.createItem("calamarigold");
calamarigold.maxStackSize = 1;
calamarigold.register();
