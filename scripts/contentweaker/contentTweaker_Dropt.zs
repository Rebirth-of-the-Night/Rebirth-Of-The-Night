import mods.dropt.Dropt;

Dropt.list("phosphophyllite")

  .add(Dropt.rule()
      .matchBlocks(["simpleores:onyx_ore"])
	  .addDrop(Dropt.drop()
          .force()
		  .items([<simpleores:onyx_gem>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(8))
          .items([<contenttweaker:phosphophyllite>])
      )
  );