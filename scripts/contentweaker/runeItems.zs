#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

val blankRune = mods.contenttweaker.VanillaFactory.createItem("blank_rune");
blankRune.setCreativeTab(<creativetab:materials.base>);
blankRune.register();

val disintRune = mods.contenttweaker.VanillaFactory.createItem("disint_rune");
disintRune.setCreativeTab(<creativetab:materials.base>);
disintRune.register();