import crafttweaker.events.IEventManager;
import crafttweaker.item.IItemStack;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.block.IBlock;

	/* 
		in the words of nelston:
		"i need a script that gives a  player a certain effect (potioncore:dispel) when someone has a certain effect 
		(wards:effect_ducttaped) and is either standing in hot spring water (simplyhotsprings:hot_spring_water), 
		wearing any plague armor (<mod_lavacow:swinearmor_chestplate>), wearing any exorite armor (<atop:amethyst_chestplate>), 
		or holding a lunar water bottle (<nyx:lunar_water_bottle>)"
	*/

	// these variables being established outside the onPlayerTick event will go into a different file later on, so will isPlayerWearing()
static secondInTicks as long = 20;

val armorSets = {
	"swineArmor" : [null, <mod_lavacow:swinearmor_chestplate>, <mod_lavacow:swinearmor_leggings>, <mod_lavacow:swinearmor_boots>],
	"exoriteArmor" : [<atop:amethyst_helmet>, <atop:amethyst_chestplate>, <atop:amethyst_leggings>, <atop:amethyst_boots>]
} as IItemStack[][string];

val armorSlots = [IEntityEquipmentSlot.head(), IEntityEquipmentSlot.chest(), IEntityEquipmentSlot.legs(), IEntityEquipmentSlot.feet()] as IEntityEquipmentSlot[];


events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
	var player = event.player;
	var dispel = <potion:potioncore:dispel>;

		// checking if the worldtime is divisible by 20, so it only checks all the stuff below 
		// every second instead of every 20th of a second (to save on resources)
	if (player.world.getWorldTime() % secondInTicks != 0) {
		return;
	}
		// the actual bit that checks for conditions
		// i fucking hate this entire block of code, you can barely even read this shit
	else if (player.isPotionActive(<potion:wards:effect_vanishing_curse>) &&
		(isPlayerWearing(armorSets["swineArmor"], player, armorSlots) |
		isPlayerWearing(armorSets["exoriteArmor"], player, armorSlots) |
		player.world.getBlock(event.player.x, event.player.y, event.player.z).definition.id == "simplyhotsprings:hot_spring_water" |
		(player.hasItemInSlot(IEntityEquipmentSlot.mainHand()) &&
		player.currentItem.matches(<nyx:lunar_water_bottle>)))) {
			player.addPotionEffect(dispel.makePotionEffect(1, 1));
	} 
		// so the effect doesn't last forever after the above is no longer true
	else if (player.isPotionActive(dispel)) {
		player.removePotionEffect(dispel);
	}	
});

	// goes through the two arrays initialized earlier in order to save on code when armor is checked
function isPlayerWearing(sets as IItemStack[], player as IPlayer, slots as IEntityEquipmentSlot[]) as bool {
	for i, entry in sets {
		if (player.hasItemInSlot(slots[i]) && player.getItemInSlot(slots[i]).matches(entry)) {
			return true;
		}
	}
	return false;
}

// don't remove the two item slot boolean checks until after the modpack is finished, they're there so
// java doesn't have a heart attack and spam nullpointerexceptions in the chat