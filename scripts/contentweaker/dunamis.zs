#loader contenttweaker

import mods.contenttweaker.CreativeTab;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Color;

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

var lifeblood = VanillaFactory.createFluid("lifeblood", Color.fromHex("1b1e23"));
lifeblood.density = 1500;
lifeblood.gaseous = true;
lifeblood.luminosity = 4;
lifeblood.temperature = 500;
lifeblood.viscosity = 800;
lifeblood.stillLocation = "contenttweaker:fluids/fluid_still";
lifeblood.flowingLocation = "contenttweaker:fluids/fluid_flow";
lifeblood.colorize= false;
lifeblood.register();