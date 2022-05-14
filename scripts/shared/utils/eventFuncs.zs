#priority 9999
import crafttweaker.player.IPlayer;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.item.IItemStack;

	// functions for use in dealing with events

static armorSlots as IEntityEquipmentSlot[] = [IEntityEquipmentSlot.head(), IEntityEquipmentSlot.chest(), IEntityEquipmentSlot.legs(), IEntityEquipmentSlot.feet()];

	// checks all the blocks that the player is currently touching
function nearbyBlockCheck(p as IPlayer, it as string) as bool {
	if (p.world.getBlock(p.x+-1, p.y, p.z+-1).definition.id == it | // should maybe see if i can combine these two conditions
	p.world.getBlock(p.x+-1, p.y+1, p.z+-1).definition.id == it) {
		return true;
	}
	return false;
}

	// goes through armor arrays that contain armor that the player may be currently wearing
