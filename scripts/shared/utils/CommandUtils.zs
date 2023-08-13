
#loader crafttweaker reloadable
#priority 100003
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;

/**
 * Plays sound on the position of a given player.
 */
function playsound(sound as string, source as string, player as IPlayer) as void {
    server.commandManager.executeCommandSilent(player, "playsound "+ sound +" "+ source +" @a[r=16] "+ player.x +" "+ player.y +" "+ player.z);
}
