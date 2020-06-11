import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.potions.IPotionEffect;

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer & event.item.matches(<rustic:ironberries>)) {
		val potion = itemUtils.createPotion([[<potion:potioncore:weight>, 50, 10]]);
		val potEffect = potion.makePotionEffect(10, 50);
		potEffect.performEffect(event.player);
	}
});
