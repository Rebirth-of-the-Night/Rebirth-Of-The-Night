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
  
Dropt.list("slacked_lime")
	.add(Dropt.rule()
	  .matchBiomes(["minecraft:ocean","minecraft:deep_ocean","minecraft:river","minecraft:frozen_ocean","biomesoplenty:coral_reef","biomesoplenty:kelp_forest"])
      .matchBlocks(["minecraft:clay","minecraft:gravel","undergroundbiomes:igneous_gravel:*","undergroundbiomes:sedimentary_gravel:*","undergroundbiomes:metamorphic_gravel:*"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10000)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(2000)) // slaked lime
          .items([<pyrotech:material:4>*4])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(300)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(400)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:1>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:6>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:7>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(90)) // nugget
          .items([<minecraft:iron_nugget>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(90)) // nugget
          .items([<minecraft:gold_nugget>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60)) // nugget
          .items([<contenttweaker:material_part:1>])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60)) // nugget
          .items([<iceandfire:silver_nugget>])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // nugget
          .items([<netherex:amethyst_crystal>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // ???
          .items([<rats:ancient_sawblade>])
	  )	 	
  );