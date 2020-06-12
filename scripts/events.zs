import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingUseItemEvent.Finish;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;

events.onEntityLivingUseItemFinish(function(event as crafttweaker.event.EntityLivingUseItemEvent.Finish) {
	if (event.isPlayer & event.item.matches(<rustic:ironberries>)) {
		var potion = <potion:potioncore:weight> as IPotion;
		var potEffect = potion.makePotionEffect(10, 50) as IPotionEffect;
		potEffect.performEffect(event.player);
	}
});
