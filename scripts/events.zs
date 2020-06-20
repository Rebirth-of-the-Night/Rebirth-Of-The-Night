import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer & event.item.definition.id == <rustic:ironberries>.definition.id) {
		print("Detected ironberries");
		var potion = <potion:potioncore:weight> as IPotion;
		var potEffect = potion.makePotionEffect(10, 50) as IPotionEffect;
		potEffect.performEffect(event.player);
	}
	if (event.isPlayer & event.item.matches(<minecraft:mushroom_stew>)) {
		event.player.give(<minecraft:bowl>);
	}
	if (event.isPlayer) {
		print("Player "~event.player.name~" has finished using item with name "~event.item.name~" and id "~event.item.definition.id);
	}
});
