#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val dunamisTab = VanillaFactory.createCreativeTab("Dunamis", <item:contenttweaker:blank_rune>);
dunamisTab.register();

val visSpeck = mods.contenttweaker.VanillaFactory.createItem("vis_speck");
visSpeck.setCreativeTab(<creativetab:Dunamis>);
visSpeck.register();

val visSliver = mods.contenttweaker.VanillaFactory.createItem("vis_sliver");
visSliver.setCreativeTab(<creativetab:Dunamis>);
visSliver.register();

val visShard = mods.contenttweaker.VanillaFactory.createItem("vis_shard");
visShard.setCreativeTab(<creativetab:Dunamis>);
visShard.register();

