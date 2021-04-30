val oreDictEnt = <ore:iceDragonScale>;

//oreDictEnt.add(IItemStack... item_items);
oreDictEnt.add([<iceandfire:dragonscales_blue>, <iceandfire:dragonscales_white>, <iceandfire:dragonscales_sapphire>, <iceandfire:dragonscales_silver>]);

//Ice Scales
brewing.addBrew(<ore:iceDragonScale>, [<ore:dyeLightBlue>], <iceandfire:dragonscales_blue>);
brewing.addBrew(<ore:iceDragonScale>, [<ore:dyeWhite>], <iceandfire:dragonscales_white>);
brewing.addBrew(<ore:iceDragonScale>, [<ore:dyeBlue>], <iceandfire:dragonscales_sapphire>);
brewing.addBrew(<ore:iceDragonScale>, [<ore:dyeLightGray>], <iceandfire:dragonscales_silver>);