import mods.dropt.Dropt;

Dropt.list("phosphophyllite")
	.add(Dropt.rule()
      .matchBlocks(["simpleores:onyx_ore"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(4))
          .items([<contenttweaker:phosphophyllite>])
      )
 );