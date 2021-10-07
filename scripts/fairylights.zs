import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import mods.jei.JEI;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.data.IData;

JEI.removeAndHide(<fairylights:ladder>);

// Replaces fairy light recipes to use oredicts

val iron = <minecraft:iron_ingot>;
val pane = <minecraft:glass_pane>;
val paper = <minecraft:paper>;
val stick = <ore:stickWood>;
val paneStained = <minecraft:stained_glass_pane:0>;

val dyeArray = [<ore:dyeBlack>,<ore:dyeRed>,<ore:dyeGreen>,<ore:dyeBrown>,<ore:dyeBlue>,<ore:dyePurple>,<ore:dyeCyan>,<ore:dyeLightGray>,<ore:dyeGray>,<ore:dyePink>,<ore:dyeLime>,<ore:dyeYellow>,<ore:dyeLightBlue>,<ore:dyeMagenta>,<ore:dyeOrange>,<ore:dyeWhite>] as IIngredient[];

for i in 0 to 240{
    recipes.remove(<fairylights:light>.definition.makeStack(i));
    if(i / 16 < 1){ //fairy light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [iron,dyeArray[i % 16],iron],
            [null,pane,null]
        ]); // tinsel garland
        recipes.remove(<fairylights:tinsel:0>);
        recipes.addShaped(<fairylights:tinsel:0>.withTag({"color": i as byte}),[
            [null,paper,null],
            [iron,<minecraft:string>,iron],
            [null,dyeArray[i % 16],null]
        ]); // pennant
        recipes.remove(<fairylights:pennant>.definition.makeStack(i));
        recipes.addShaped(<fairylights:pennant>.definition.makeStack(i),[
            [<minecraft:string>,null,<minecraft:string>],
            [paper,dyeArray[i % 16],paper],
            [null,paper,null]
        ]);
    }
    if(i / 16 >= 1 & i / 16 < 2){ //paper lantern
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [paper,dyeArray[i % 16],paper],
            [paper,paper,paper]
        ]);
    }
    if(i / 16 >= 2 & i / 16 < 3){ //orb lantern
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:string>,dyeArray[i % 16],<minecraft:string>],
            [null,<ore:wool>,null]
        ]);
    }
    if(i / 16 >= 3 & i / 16 < 4){ //flower light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<ore:flower>,dyeArray[i % 16],<ore:flower>],
            [null,<ore:flower>,null]
        ]);
    }
    if(i / 16 >= 4 & i / 16 < 5){ //ornate lantern
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:gold_nugget>,dyeArray[i % 16],<minecraft:gold_nugget>],
            [iron,<minecraft:gold_nugget>,iron]
        ]);
    }
    if(i / 16 >= 5 & i / 16 < 6){ //oil lantern
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [stick,dyeArray[i % 16],stick],
            [iron,pane,iron]
        ]);
    }
    if(i / 16 >= 7 & i / 16 < 8){ //jack o'lantern
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<ore:slabWood>,dyeArray[i % 16],<ore:slabWood>],
            [<ore:torch>,<minecraft:pumpkin>,<ore:torch>]
        ]);
    }
    if(i / 16 >= 8 & i / 16 < 9){ //skull light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [iron,dyeArray[i % 16],iron],
            [null,<minecraft:bone>|<minecraft:skull:0>,null]
        ]);
    }
    if(i / 16 >= 9 & i / 16 < 10){ //ghost light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [paper,dyeArray[i % 16],paper],
            [iron,paneStained,iron]
        ]);
    }
    if(i / 16 >= 10 & i / 16 < 11){ //spider light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:web>,dyeArray[i % 16],<minecraft:web>],
            [<minecraft:string>,<minecraft:spider_eye>,<minecraft:string>]
        ]);
    }
    if(i / 16 >= 11 & i / 16 < 12){ //witch light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:glass_bottle>,dyeArray[i % 16],<minecraft:wheat>],
            [null,stick,null]
        ]);
    }
    if(i / 16 >= 12 & i / 16 < 13){ //snowflake light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:snowball>,dyeArray[i % 16],<minecraft:snowball>],
            [null,paneStained,null]
        ]);
    }
    if(i / 16 >= 13 & i / 16 < 14){ //icicle lights
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [pane,dyeArray[i % 16],pane],
            [null,<minecraft:water_bucket>|<minecraft:ice>|<minecraft:packed_ice>|<biomesoplenty:hard_ice:0>|<futuremc:blue_ice>|<iceandfire:dragon_ice>,null]
        ]);
    }
    if(i / 16 >= 14){ //meteor light
        recipes.addShaped(<fairylights:light>.definition.makeStack(i),[
            [null,iron,null],
            [<minecraft:glowstone_dust>,dyeArray[i % 16],<minecraft:glowstone_dust>],
            [iron,paper,iron]
        ]);
    }
    
}