val oreDictEnt = <ore:fireDragonScale>;

//oreDictEnt.add(IItemStack... item_items);
oreDictEnt.add([<iceandfire:dragonscales_red>, <iceandfire:dragonscales_green>, <iceandfire:dragonscales_bronze>, <iceandfire:dragonscales_gray>]);

//Fire Scales
brewing.addBrew(<ore:fireDragonScale>, [<ore:dyeRed>], <iceandfire:dragonscales_red>);
brewing.addBrew(<ore:fireDragonScale>, [<ore:dyeGreen>], <iceandfire:dragonscales_green>);
brewing.addBrew(<ore:fireDragonScale>, [<ore:dyeBrown>], <iceandfire:dragonscales_bronze>);
brewing.addBrew(<ore:fireDragonScale>, [<ore:dyeGray>], <iceandfire:dragonscales_gray>);