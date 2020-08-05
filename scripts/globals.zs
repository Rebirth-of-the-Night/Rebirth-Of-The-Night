#priority 1000

import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;

global addModifier as function(IItemStack, string)IItemStack = function(item as IItemStack, modifier as string) as IItemStack {
    return item.transformNew(function(i){
        if (modifier == "mega") {
            var nbt as IData = {
                Quality: {
                    Slots: [
                        "mainhand"
                    ], 
                    Color: "blue", 
                    AttributeModifiers: [
                        {
                            UUIDMost: -4565837600944668273 as long, 
                            UUIDLeast: -6086027989472745958 as long, 
                            Amount: 0.03500000014901161, 
                            AttributeName: "potioncore.projectileDamage", 
                            Operation: 2, 
                            Name: "qualitytools"
                        }, 
                        {
                            UUIDMost: 7118365469792355673 as long, 
                            UUIDLeast: -4923207783686083347 as long, 
                            Amount: 0.03500000014901161, 
                            AttributeName: "generic.attackDamage", 
                            Operation: 2,
                            Name: "qualitytools"
                        }, 
                        {
                            UUIDMost: -690028470162866148 as long, 
                            UUIDLeast: -8031160826101973244 as long, 
                            Amount: 0.03500000014901161, 
                            AttributeName: "potioncore.magicDamage", 
                            Operation: 2, 
                            Name: "qualitytools"
                        }
                    ], 
                    Name: "MegaZapper2000tm"
                }
            };
            return i.withTag(i.tag + nbt);
        }
        return i;
    });
};