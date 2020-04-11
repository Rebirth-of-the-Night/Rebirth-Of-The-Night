import mods.dropt.Dropt;

  
/* 
Dropt.list("fortune_essence")

  .add(Dropt.rule()
      .matchBlocks(["endreborn:block_essence_ore"])
      .addDrop(Dropt.drop()
          .items([<endreborn:item_end_essence>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items([<endreborn:item_end_essence>], Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items([<endreborn:item_end_essence>], Dropt.range(2, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items([<endreborn:item_end_essence>], Dropt.range(2, 3))
      )
		  .replaceStrategy("ADD")
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(1),1)
			  .items([<quark:biotite>], Dropt.range(0, 1))
		  )
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(100),2)
			  .items([<quark:biotite>], Dropt.range(0, 2))
		  )
		  .addDrop(Dropt.drop()
			  .selector(Dropt.weight(500),3)
			  .items([<quark:biotite>], Dropt.range(1, 2))
		  )	 
  );



Dropt.list("fortune_essence_biotite")

  .add(Dropt.rule()
      .matchBlocks(["endreborn:block_essence_ore"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1),1)
          .items([<quark:biotite>], Dropt.range(0, 1))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100),2)
          .items([<quark:biotite>], Dropt.range(0, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(500),3)
          .items([<quark:biotite>], Dropt.range(1, 2))
      )	  
  );
  

Dropt.list("blood_tainted_gold")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:redstone_ore","undergroundbiomes:igneous_stone_redstone_ore","undergroundbiomes:metamorphic_stone_redstone_ore","undergroundbiomes:sedimentary_stone_redstone_ore"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<minecraft:gold_nugget>], Dropt.range(0, 1))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(900),1)
          .items([<minecraft:gold_nugget>], Dropt.range(0, 2))
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(9000),3)
          .items([<minecraft:gold_nugget>], Dropt.range(1, 2))  
      )	  
  );
*/ 

Dropt.list("Well_Worth")

  .add(Dropt.rule()
      .matchBlocks(["harvestcraft:well"])
	  .addDrop(Dropt.drop()
		  .items("ALL", [<dungeontactics:steel_ingot>*3,<pyrotech:rock:7>*4,<minecraft:bucket>,<betterwithmods:material:24>])
      )	
  );
  
Dropt.list("plants_basic")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(120)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(35))
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(18))
          .items([<pyrotech:material:13>])
	  )
  );
  
Dropt.list("plants_custom")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:*","biomesoplenty:plant_1:*","minecraft:tallgrass:1","minecraft:tallgrass:2"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(700)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20)) // Hemp crop
          .items([<betterwithmods:material:2>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // Maggot
          .items([<mod_lavacow:parasite_item>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(2)) // Lottery!
          .items([<scalinghealth:heartdust>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(22)) // Truffle
          .items([<animania:truffle>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(20)) // Bathroom Truffle
          .items([<betterwithaddons:food_mulberry>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(15)) // sap
       	   .items([<primitivemobs:wonder_sap>])
      )
  );
  
Dropt.list("tallplants_custom")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(2500)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(150)) // Hemp crop
          .items([<betterwithmods:material:2>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // Strange flower
          .items([<dungeontactics:flower_ailment>])
	  )
  );