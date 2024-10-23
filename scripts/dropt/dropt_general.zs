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

Dropt.list("planarspsp2")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:planarspsp2"])
      .addDrop(Dropt.drop()
          .force() // Always drop nothing
      )
  );

Dropt.list("codex_junk")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:codex_junk"])
      .addDrop(Dropt.drop()
          .items([<villagenames:codex>])
      )
  );
  
Dropt.list("halolite")

  .add(Dropt.rule()
      .matchBlocks(["primal:ore_salt:1"])
	  .dropStrategy("UNIQUE")
      .addDrop(Dropt.drop()
	      .force()
          .items([<animania:salt>], Dropt.range(1))
      )
	  .addDrop(Dropt.drop()
	      .force()
          .items([<contenttweaker:halolite_shard>], Dropt.range(3))
      )
  );

Dropt.list("cattail")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:double_plant:1"])
      .addDrop(Dropt.drop()
          .items([<contenttweaker:cattail_root_raw>], Dropt.range(1, 2))
      )
  );

Dropt.list("bop_honey_block")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:honey_block"])
      .addDrop(Dropt.drop()
          .items([<rustic:honeycomb>])
      )
  );

Dropt.list("bop_honeycomb_block")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:hive:1", "biomesoplenty:hive:2"])
      .addDrop(Dropt.drop()
          .items([<rustic:honeycomb>], Dropt.range(1, 3))
      )
  );

/*Dropt.list("bop_filled_honeycomb_block")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:hive:3"])
      .addDrop(Dropt.drop()
          .items([<rustic:honeycomb>], Dropt.range(4, 6))
      )
  );
*/
Dropt.list("magic_lantern")

  .add(Dropt.rule()
      .matchBlocks(["dungeontactics:lantern_magic:*"])
      .addDrop(Dropt.drop()
          .force() // Always drop nothing
      )
  );

Dropt.list("brambles")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:bramble_plant"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "EXCLUDED") // Drop nothing without silk touch
      )
  );

Dropt.list("dimstack_bedrock")

  .add(Dropt.rule()
      .matchBlocks(["dimstack:bedrock:0"])
      .addDrop(Dropt.drop()
          .force() // Always drop nothing
      )
  );

Dropt.list("sun_altar")

  .add(Dropt.rule()
      .matchBlocks(["aether_legacy:sun_altar"])
      .addDrop(Dropt.drop()
          .force() // Disabled, drop nothing
      )
  );


Dropt.list("dormant_onyx")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:dormant_onyx"])
      .addDrop(Dropt.drop()
          .force() // Disabled, drop nothing
      )
  );

Dropt.list("dormant_arcidite_onyx")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:dormant_ardicite_onyx"])
      .addDrop(Dropt.drop()
          .force() // Disabled, drop nothing
      )
  );

Dropt.list("botanic_glass")

  .add(Dropt.rule()
      .matchBlocks(["sereneseasons:greenhouse_glass"])
      .addDrop(Dropt.drop()
          .items([<sereneseasons:greenhouse_glass>])
      )
  );


Dropt.list("exorite")

  .add(Dropt.rule()
      .matchBlocks(["osv:biomesoplenty_amethyst_ore_end_stone","osv:biomesoplenty_amethyst_ore_obsidian","biomesoplenty:gem_block:0"])
      .addDrop(Dropt.drop()
          .items([<rotn_blocks:exorite_crystal>])
      )
  );

/*
Dropt.list("wither_skull")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:skull:1"])
	  .addDrop(Dropt.drop()
		  .items([<minecraft:skull:3>.withTag({SkullOwner: {Id: "7ed571a5-9fb8-416c-8b9d-fb2f446ab5b2", Properties: {textures: [{Signature: "JuCYjSGTk/FIIKsw7dxZN3DzPbhbL4ql0TZsCm+QWC8raqiHs3Ae9OEP/wgA+12MPqrhOd3AqQu4dbX6TKMr479bgH/OUt7sjjj8mNFCOmRTbbGXkmgBd0wKBPAH7xe9YKyse8vcflkcQo4cw7TEOnv0blu19Z7fSNSPrFF4hTyMcyE1t+ZT4RKOfFEAHD4pX+4eoHOFI8aARk4VzFAAsSHOnOV4DH8XTAgVt/wHVP+ocrEvp5cYvuGgyCezeoio174Y3EdFkyL8v/cFrsEABnMCmN5OYhJ0E3i3DrSBkdV5JEBWYWwfItUMELXVJrI9UIRdgnJ+2nP/Cg0a8SDfNJsXb19kXx+aYTUFB4VMlF1L9/etqbjusLx4r6yLMdHlm+i0YAvued13PdBoZTZDjhEscAt0rtfu2QEKXyv4ton0Ot1aK1fntcOV0aJ5WKJJKyfDMOS2k/6Ree37lZ4kmJP0IVu2xnYHPTQ4fX0NHBEDoMnCH3sLHQKI5DAaLqcylY7p+5zMNJK5JSlYOabpgbgXwLjGafWU0qkrMKTCGdk0dUWPGqRD4H7hxR3pbl45GVNC/lCoX3TCti+lWxcFSHfsGA4S487ejonynoOMnEhd7ESM10f0wbLiYgWN1dePEY4vBD0R7LWMSorUJpw5XL5mGpTl0XaOjwgH8dusE/w=", Value: "ewogICJ0aW1lc3RhbXAiIDogMTYwMjE4MTQyNzE0MSwKICAicHJvZmlsZUlkIiA6ICI3ZWQ1NzFhNTlmYjg0MTZjOGI5ZGZiMmY0NDZhYjViMiIsCiAgInByb2ZpbGVOYW1lIiA6ICJNSEZfV1NrZWxldG9uIiwKICAic2lnbmF0dXJlUmVxdWlyZWQiIDogdHJ1ZSwKICAidGV4dHVyZXMiIDogewogICAgIlNLSU4iIDogewogICAgICAidXJsIiA6ICJodHRwOi8vdGV4dHVyZXMubWluZWNyYWZ0Lm5ldC90ZXh0dXJlL2JhOTZlOWQ3NmJlZDMwMDkwY2U2ZTJkODQyNTk5NjU5NGVlYzZkNjhhYzg4Y2YwNzM1NmU5ODE0ODM0MjQzZWMiCiAgICB9CiAgfQp9"}]}, Name: "MHF_WSkeleton"}})])
      )	
  );
  */

Dropt.list("bed")
  .add(Dropt.rule()
      .matchBlocks(["minecraft:bed:*"])
      .addDrop(Dropt.drop()
        .force()
        .items([<minecraft:planks:0>], Dropt.range(2)) // always drop a couple planks
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(50)) // drop nothing else 50% of time  
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(50))
        .items([<minecraft:wool:0>], Dropt.range(2)) // drop 2 wool 50% of the time
      )
  );

Dropt.list("light_essence")
  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:biome_block"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "EXCLUDED", 0)
          .items([<biomesoplenty:biome_essence>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "EXCLUDED", 1)
          .items([<biomesoplenty:biome_essence>], Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "EXCLUDED", 2)
          .items([<biomesoplenty:biome_essence>], Dropt.range(1, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "EXCLUDED", 3)
          .items([<biomesoplenty:biome_essence>], Dropt.range(2, 3))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED", 0)
          .items([<biomesoplenty:biome_block>])
      )
  );

Dropt.list("native_copper")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:n_copper_sandstone"])
      .addDrop(Dropt.drop()
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(4, 9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(7, 9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(9, 12))
      )
  );
  
Dropt.list("native_copper_red")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:n_copper_sandstone_red"])
      .addDrop(Dropt.drop()
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(4, 9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "ANY", 1)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(7, 9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100), "ANY", 2)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(9))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000), "ANY", 3)
          .items([<ore:nuggetCopper>.firstItem], Dropt.range(9, 12))
      )
  );

Dropt.list("Well_Worth")

  .add(Dropt.rule()
      .matchBlocks(["well:well", "well:white_well", "well:orange_well", "well:magenta_well", "well:light_blue_well", "well:yellow_well", "well:lime_well", "well:pink_well", "well:gray_well", "well:silver_well", "well:cyan_well", "well:purple_well", "well:blue_well", "well:brown_well", "well:green_well", "well:red_well", "well:black_well"])
      .dropStrategy("UNIQUE")
      .dropCount(Dropt.range(2))
	  .addDrop(Dropt.drop()
          .force()
          .items([<dungeontactics:steel_ingot>], Dropt.range(2))
      )	
      .addDrop(Dropt.drop()
          .force()
          .items([<pyrotech:rock:7>], Dropt.range(2, 4))
      )
      .addDrop(Dropt.drop()
          .force()
          .items([<betterwithmods:bucket>])
      )
      .addDrop(Dropt.drop()
          .force()
          .items([<betterwithmods:material:24>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
          .items([<contenttweaker:masonry_brick>], Dropt.range(1, 2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
          .items([<betterwithmods:rope>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
          .items([<betterwithmods:material>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(3))
          .items([<dungeontactics:steel_ingot>])
      )
  );

Dropt.list("masonry_brick_two")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:masonry_brick_two"])
      .addDrop(Dropt.drop()
          .items([<contenttweaker:masonry_brick>], Dropt.range(2))
      )
  );
  
Dropt.list("godrage")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:double_plant:2"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED")
          .items([<contenttweaker:godrage_eye>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(30), "EXCLUDED", 0)
          .items([<minecraft:stick>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(15), "EXCLUDED", 0)
          .items([<minecraft:stick>], Dropt.range(2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "EXCLUDED", 0)
          .items([<betterwithmods:material:15>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "EXCLUDED", 0)
          .items([<rats:little_black_worm>])
      )
  )
  .add(Dropt.rule()
      .matchBlocks(["rustic:wildberry_bush:1"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .force()
          .items([<rustic:wildberries>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "REQUIRED")
          .items([<rustic:wildberry_bush>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(15), "EXCLUDED", 0)
          .items([<minecraft:stick>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10), "EXCLUDED", 0)
          .items([<minecraft:stick>], Dropt.range(2))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1), "EXCLUDED", 0)
          .items([<rats:little_black_worm>])
      )
  );

Dropt.list("mud")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:mud"])
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .items([<biomesoplenty:mudball>], Dropt.range(4))
      )
  );

Dropt.list("sludge")

  .add(Dropt.rule()
      .matchBlocks(["mod_lavacow:pileofsludge"])
      .addDrop(Dropt.drop())
  );
  
Dropt.list("non-resource_drops")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:dolomite_straws","rotn_blocks:verribyne_0","rotn_blocks:verribyne_1"])
      .addDrop(Dropt.drop())
  );
  
Dropt.list("radiant_extra_quartz")

	.add(Dropt.rule()
		.matchBlocks(["arcanearchives:raw_quartz_cluster"])
		.replaceStrategy("ADD")
		.addDrop(Dropt.drop()
			.selector(Dropt.weight(1))
			.items([<pyrotech_compat:rock_metamorphic:3>], Dropt.range(3, 5))
		)
		.addDrop(Dropt.drop()
			.selector(Dropt.weight(1))
			.items([<minecraft:quartz>], Dropt.range(3, 5))
		)
	);

Dropt.list("bee_nest")

  .add(Dropt.rule()
      .matchBlocks(["futuremc:bee_nest"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // bee
          .items([<rustic:bee>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // honeycomb
          .items([<rustic:honeycomb>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(80)) // bee and honeycomb
          .items([<rustic:bee>, <rustic:honeycomb>])
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(50)) // alright double prizes
          .items([<rustic:bee>, <rustic:bee>])
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(5)) // spoils of war 1
       	   .items([<mod_lavacow:poisonstinger>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1)) // spoils of war 2
       	   .items([<betteranimalsplus:bearhead_1>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // sweetest prize
       	   .items([<aether_legacy:ambrosium_shard>])
      )
  );   

  
Dropt.list("decayed_scaffolding")	

  .add(Dropt.rule()	
      .matchBlocks(["cyclicmagic:block_fragile"])	
      .matchDrops([<cyclicmagic:block_fragile>])	
      .replaceStrategy("REPLACE_ITEMS")	
      .addDrop(Dropt.drop())	
  );

Dropt.list("cobweb_silt")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:web"])
      .addDrop(Dropt.drop()
      	  .selector(Dropt.weight(1))
	  .items([<contenttweaker:spider_silk>], Dropt.range(2, 4))
      )
  );

Dropt.list("cave_grass_shears")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cave_grass"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("WHITELIST", [<minecraft:shears:*>, <ceramics:clay_shears:*>, <cyclicmagic:shears_obsidian:*>, <simpleores:adamantium_shears:*>, <simpleores:mythril_shears:*>, <simpleores:onyx_shears:*>])
	  )
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .items([<contenttweaker:cave_grass>])
      )
  );

Dropt.list("cave_bramble_shears")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cave_bramble"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [<minecraft:shears:*>, <ceramics:clay_shears:*>, <cyclicmagic:shears_obsidian:*>, <simpleores:adamantium_shears:*>, <simpleores:mythril_shears:*>, <simpleores:onyx_shears:*>])
      )
      .addDrop(Dropt.drop())
  );

Dropt.list("cave_moss_carpet_shears")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:moss_patch"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
          .mainHand("BLACKLIST", [<minecraft:shears:*>, <ceramics:clay_shears:*>, <cyclicmagic:shears_obsidian:*>, <simpleores:adamantium_shears:*>, <simpleores:mythril_shears:*>, <simpleores:onyx_shears:*>])
      )
      .addDrop(Dropt.drop())
  );

Dropt.list("cave_grass_drops")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cave_grass"])
      .replaceStrategy("REPLACE_ALL")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(40))
          .items([<harvestcraft:ediblerootitem>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
          .items([<pyrotech:strange_tuber>])
      )
  );
  
Dropt.list("cave_root_drops")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cave_grass:8"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(20)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
          .items([<quark:root>])
      )
  );

Dropt.list("nether_grass")

  .add(Dropt.rule()
      .matchBlocks(["betternether:nether_grass"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180))
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10))
          .items([<pyrotech:tinder>])
      )
  );

//unique plants

Dropt.list("mulberry")

  .add(Dropt.rule()
      .matchBlocks(["defiledlands:vilespine"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180))
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1)) // Magic VD berry
          .items([<betterwithaddons:food_mulberry>])
      )
  );

Dropt.list("clovers")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:10"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // lucky clover
          .items([<contenttweaker:4leaf_clover>])
      )
      .addDrop(Dropt.drop()
           .selector(Dropt.weight(1)) // Magic MC clover
           .items([<contenttweaker:5leaf_clover>])
      )
  );

Dropt.list("koru")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:9"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // lucky clover
          .items([<contenttweaker:4leaf_clover>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1)) // MAGIC SF snail shell
          .items([<rats:little_black_worm>])
      )
  );

/*  
Dropt.list("sprout_seeds") INSERT FITTING CROP SEEDS HERE

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:3"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(10)) // 
          .items([<contenttweaker:4leaf_clover>])
      )
      .addDrop(Dropt.drop()
           .selector(Dropt.weight(1)) // Magic MC clover
           .items([<contenttweaker:5leaf_clover>])
      )
  );
*/

Dropt.list("plants_basic_dry")

  .add(Dropt.rule()
      .matchBiomes(["minecraft:desert","minecraft:desert_hills","minecraft:mutated_desert","minecraft:savanna","minecraft:savanna_rock","minecraft:mesa","minecraft:mesa_rock","minecraft:mesa_clear_rock"])
      .matchBlocks(["biomesoplenty:plant_0:0","biomesoplenty:plant_0:1","biomesoplenty:plant_0:2","biomesoplenty:plant_0:3","biomesoplenty:plant_0:4","biomesoplenty:plant_0:5","biomesoplenty:plant_0:6","biomesoplenty:plant_0:7","biomesoplenty:plant_0:8","biomesoplenty:plant_0:9","biomesoplenty:plant_1:0","biomesoplenty:plant_1:1","biomesoplenty:plant_1:7","biomesoplenty:plant_1:11","biomesoplenty:double_plant:0","biomesoplenty:double_plant:1","biomesoplenty:ivy","biomesoplenty:willow_vine"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(35))
          .items([<pyrotech:tinder>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(30))
          .items([<pyrotech:material:11>])
      )
  );

Dropt.list("plants_basic_dead")

  .add(Dropt.rule()
      .matchBiomes(["biomesoplenty:wasteland","biomesoplenty:xeric_shrubland"])
      .matchBlocks(["biomesoplenty:plant_0:0","biomesoplenty:plant_0:1","biomesoplenty:plant_0:2","biomesoplenty:plant_0:3","biomesoplenty:plant_0:4","biomesoplenty:plant_0:5","biomesoplenty:plant_0:6","biomesoplenty:plant_0:7","biomesoplenty:plant_0:8","biomesoplenty:plant_0:9","biomesoplenty:plant_1:0","biomesoplenty:plant_1:1","biomesoplenty:plant_1:2","biomesoplenty:plant_1:7","biomesoplenty:plant_1:11","biomesoplenty:double_plant:0","biomesoplenty:double_plant:1","biomesoplenty:ivy","biomesoplenty:willow_vine"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(35))
          .items([<pyrotech:tinder>])
      )
  );

Dropt.list("tall_grass_base_drops")

  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_0:0","biomesoplenty:plant_0:1","biomesoplenty:plant_0:2","biomesoplenty:plant_0:3","biomesoplenty:plant_0:4","biomesoplenty:plant_0:5","biomesoplenty:plant_0:6","biomesoplenty:plant_0:7","biomesoplenty:plant_0:8","biomesoplenty:plant_0:9","biomesoplenty:plant_1:0","biomesoplenty:plant_1:1","biomesoplenty:plant_1:2","biomesoplenty:plant_1:7","biomesoplenty:plant_1:11","minecraft:tallgrass:1","minecraft:tallgrass:2","aether_legacy:aether_grass","aether_legacy:enchanted_aether_grass"])
      .matchHarvester(Dropt.harvester()
          .type("PLAYER")
	  )
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(180)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(50)) // plant fiber
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(28))
          .items([<pyrotech:tinder>]) // dried plant fiber
      )
  );

Dropt.list("double_tall_grass_base_drops")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:double_plant:2","minecraft:double_plant:3"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(4200)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(840)) // plant fiber
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(420))
          .items([<pyrotech:tinder>]) // dried plant fiber
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(8)) // Strange flower
          .items([<dungeontactics:flower_ailment>])
	  )
  );

Dropt.list("wild_flax_base_drops")
  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:double_plant:0"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(500)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000)) // plant fiber
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(2000)) // flax
          .items([<harvestcraft:flaxitem>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(500))
          .items([<pyrotech:tinder>]) // dried plant fiber
      )
  );

Dropt.list("wild_rice_base_drops")
  .add(Dropt.rule()
      .matchBlocks(["biomesoplenty:plant_1:3"])
      .replaceStrategy("ADD")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(500)) // drops nothing if selected
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1000)) // plant fiber
          .items([<pyrotech:material:12>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(2000)) // rice
          .items([<growthcraft_rice:rice>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(500))
          .items([<pyrotech:tinder>]) // dried plant fiber
      )
  );

Dropt.list("slaked_lime")
	.add(Dropt.rule()
	  .matchBiomes(["minecraft:ocean","minecraft:deep_ocean","minecraft:river","minecraft:frozen_ocean","biomesoplenty:coral_reef","biomesoplenty:kelp_forest"])
      .matchBlocks(["minecraft:clay","minecraft:gravel","undergroundbiomes:igneous_gravel:*","undergroundbiomes:sedimentary_gravel:*","undergroundbiomes:metamorphic_gravel:*"])
      .replaceStrategy("REPLACE_ALL_IF_SELECTED")
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(24000)) // drops nothing if selected
      )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(1600)) // slaked lime (rich slag)
          .items([<pyrotech:material:8>], Dropt.range(4))
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(200)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(300)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:1>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:6>])
	  )
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100)) // fossil_piece
          .items([<undergroundbiomes:fossil_piece:7>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(70)) // nugget
          .items([<minecraft:iron_nugget>])
	  )	  
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60)) // nugget
          .items([<minecraft:gold_nugget>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(50)) // nugget
          .items([<ore:nuggetBronze>.firstItem])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(40)) // nugget
          .items([<iceandfire:silver_nugget>])
	  )	 
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(5)) // nugget
          .items([<netherex:amethyst_crystal>])
	  )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(3)) // ???
          .items([<rats:ancient_sawblade>])
	  )	 	
  );

Dropt.list("desert_varnish")

  .add(Dropt.rule()
      .matchBlocks(["pyrotech:limestone"])
      .addDrop(Dropt.drop()
          .force()
          .items("ALL", [<minecraft:sandstone>, <minecraft:clay_ball>])
      )
	  .addDrop(Dropt.drop()
		  .selector(Dropt.weight(3)) // drop nothing addtl
      )
	  .addDrop(Dropt.drop()
		  .selector(Dropt.weight(1))
		  .items([<minecraft:clay_ball>])
      )	
  );

Dropt.list("wonder_geode")

  .add(Dropt.rule()
      .matchBlocks(["rotn_blocks:wonder_geode"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<minecraft:gold_nugget>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(100))
		  .items([<minecraft:iron_nugget>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<ore:nuggetCopper>.firstItem])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(5))
		  .items([<dungeontactics:diamond_nugget>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<iceandfire:silver_nugget>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<ore:nuggetTin>.firstItem])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<pyrotech:material:8>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
		  .items([<pyrotech:material:36>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(20))
		  .items([<contenttweaker:vis_speck>])
      )
  );
  
Dropt.list("marmatite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:marmatite"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(100))
		  .items([<contenttweaker:material_part:36>], Dropt.range(1, 2)) // zinc dust
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(60))
		  .items([<contenttweaker:material_part:28>,<contenttweaker:material_part:36>], Dropt.range(1)) // iron and zinc dust
      )
  );

Dropt.list("ardicite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:ardicite"])
      .addDrop(Dropt.drop()
          .selector(Dropt.weight(9)) // drops nothing if selected
      )
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(2)) // ground netherrack
       	   .items([<betterwithmods:material:15>])
      )
	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(3)) // ground fiery netherrack
       	   .items([<contenttweaker:ground_fiery_netherrack>])
      )
  );

Dropt.list("fiery_sludge_block")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:fiery_nether_sludge"])
      .addDrop(Dropt.drop()
      	  .selector(Dropt.weight(1))
	  .items([<contenttweaker:fiery_sludge>], Dropt.range(4))
      )
  );

Dropt.list("lodestone")
  .add(Dropt.rule()
      .matchBlocks(["dungeontactics:mithril_block"])
  	  .addDrop(Dropt.drop()
	    .force()
       	.items([<minecraft:stonebrick:3>]) // always drop chiseled coade brick
	  )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(1)) // drop nothing else 50% of time  
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(1))
        .items([<biomesoplenty:terrestrial_artifact>]) // drops terrestrial artifact 50%
      )
  ); 

Dropt.list("lignite")

  .add(Dropt.rule()
      .matchBlocks(["undergroundbiomes:sedimentary_stone:4"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<contenttweaker:lignite_cobble>])
      )
  ); 

Dropt.list("fruit_silk")

  .add(Dropt.rule()
      .matchBlocks(["dynamictreesphc:fruitspiderweb:3"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<contenttweaker:spider_silk>])
      )
  ); 

// Cobbled Path blocks
Dropt.list("cobblestone_path_quartzite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_quartzite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<minecraft:cobblestone>])
      )
  ); 
Dropt.list("cobblestone_path_red_granite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_red_granite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble>])
      )
  ); 
Dropt.list("cobblestone_path_black_granite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_black_granite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:1>])
      )
  ); 
Dropt.list("cobblestone_path_rhyolite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_rhyolite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:2>])
      )
  ); 
Dropt.list("cobblestone_path_andesite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_andesite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:3>])
      )
  ); 
Dropt.list("cobblestone_path_gabbro")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_gabbro"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:4>])
      )
  ); 
Dropt.list("cobblestone_path_basalt")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_basalt"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:5>])
      )
  ); 
Dropt.list("cobblestone_path_komatiite")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:cobblestone_path_komatiite"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<undergroundbiomes:igneous_cobble:6>])
      )
  ); 

//Yeast
Dropt.list("yeast_flour")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:yeast_flour"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<betterwithmods:raw_pastry:3>])
      )
  );  
Dropt.list("yeast")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:yeast"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<exsartagine:yeast>])
      )
  );  

Dropt.list("animania_seeds")

  .add(Dropt.rule()
      .matchBlocks(["animania:block_seeds"])
      .matchDrops([<minecraft:wheat_seeds>])
      .replaceStrategy("REPLACE_ITEMS")
        .addDrop(Dropt.drop())
      );

Dropt.list("grape_seed_begone")

  .add(Dropt.rule()
      .matchBlocks(["minecraft:vine"])
      .matchDrops([<rustic:grape_stem>])
      .replaceStrategy("REPLACE_ITEMS")
        .addDrop(Dropt.drop())
  );

Dropt.list("bonfire")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:bonfire"])
      .addDrop(Dropt.drop()
          .force() // drop nothing
      )
  );

Dropt.list("soul_bonfire")

  .add(Dropt.rule()
      .matchBlocks(["contenttweaker:soul_bonfire"])
      .addDrop(Dropt.drop()
          .force() // drop nothing
      )
  );

// Duplicate blocks unification

Dropt.list("charm_to_futuremc_lamp")

  .add(Dropt.rule()
      .matchBlocks(["charm:iron_lantern"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<futuremc:lantern>])
      )
  ); 

Dropt.list("charm_to_futuremc_lamp_hanging")

  .add(Dropt.rule()
      .matchBlocks(["charm:iron_lantern:1"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<futuremc:lantern>])
      )
  ); 

Dropt.list("futuremc_to_quark_sandstone")

  .add(Dropt.rule()
      .matchBlocks(["futuremc:smooth_sandstone"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<quark:sandstone_new>])
      )
  ); 

Dropt.list("futuremc_to_quark_redsandstone")

  .add(Dropt.rule()
      .matchBlocks(["futuremc:smooth_red_sandstone"])
  	  .addDrop(Dropt.drop()
          .selector(Dropt.weight(1))
       	   .items([<quark:sandstone_new:2>])
      )
  ); 

Dropt.list("well")
  .add(Dropt.rule()
      .matchBlocks(["well:well:*", "well:white_well:*","well:orange_well:*","well:magenta_well:*","well:light_blue_well:*","well:yellow_well:*","well:lime_well:*","well:pink_well:*","well:gray_well:*","well:silver_well:*","well:cyan_well:*","well:purple_well:*","well:blue_well:*","well:brown_well:*","well:green_well:*","well:red_well:*","well:black_well:*"])
      .addDrop(Dropt.drop()
        .force()
        .items([<minecraft:brick>], Dropt.range(2)) // always drop a couple bricks
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(34)) // drop nothing else 33% of time  
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(33))
        .items([<contenttweaker:masonry_brick>], Dropt.range(2)) // drop 2 masonry brick 33% of the time
      )
      .addDrop(Dropt.drop()
        .selector(Dropt.weight(33))
        .items([<pyrotech:bucket_stone>]) // drop bucket 33% of the time
      )
  );