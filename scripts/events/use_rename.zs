
#loader crafttweaker reloadable

import crafttweaker.item.IItemStack;
import crafttweaker.events.IEventManager;
import crafttweaker.player.IPlayer;
import crafttweaker.event.PlayerRightClickItemEvent;
import crafttweaker.entity.IEntityEquipmentSlot;

/*
events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    var mainItem as IItemStack = event.player.mainHandHeldItem;
    if ((mainItem).matches(<mod:item>)) {
        <mod:item>.displayName = "newName";
}
});
*/

events.onPlayerRightClickItem(function(event as PlayerRightClickItemEvent){
    var mainItem as IItemStack = event.player.mainHandHeldItem;
    if ((mainItem).matches(<villagenames:codex>)) {
        game.setLocalization("item.netherex:wither_dust.name","Still a secret lmaoooo");
}
});