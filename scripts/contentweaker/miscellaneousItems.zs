#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.ItemFood;
import mods.contenttweaker.Item;

//misc.
val phos = mods.contenttweaker.VanillaFactory.createItem("phosphophyllite");
phos.register();
val coin1 = mods.contenttweaker.VanillaFactory.createItem("coinT1");
coin1.register();
val coin2 = mods.contenttweaker.VanillaFactory.createItem("coinT2");
coin2.register();
val coin3 = mods.contenttweaker.VanillaFactory.createItem("coinT3");
coin3.register();
val coin4 = mods.contenttweaker.VanillaFactory.createItem("coinT4");
coin4.register();
val pcoin = mods.contenttweaker.VanillaFactory.createItem("nethercoin");
pcoin.register();

//food
//val rat = mods.contenttweaker.VanillaFactory.createItemFood("ratatouille", 10);
//rat.saturation(6)
//rat.register();