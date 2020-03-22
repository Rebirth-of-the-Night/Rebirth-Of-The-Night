import mods.dropt.Dropt;

Dropt.list("phosphophyllite")

  .add(Dropt.rule()
      .matchBlocks(["simpleores:onyx_ore"])
	  .addDrop(Dropt.drop()
          .force()
		  .items([<simpleores:onyx_gem>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(91)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(9))
          .items([<contenttweaker:phosphophyllite>])
      )
  );