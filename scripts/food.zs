//Nyagi - The food items will be split by mod and by relatedness, i.e. Sandwiches, Burgers, Soups, ect...
//Food values are determined by adding together input values. 
//Saturation values are calculated by adding input values multiplied by 1.05^n, where n is number of input items with saturation values.
//Higher tier foods contrubute less to the multiplication, 1.025^n, 1.0125^n, ect.. (Bread, Pasta, Dough, Cheese is counted as primary)
//Stock increases saturation by 0.2, counts towards n, 0.5 on food
//Pumpkin is treated as 0.5 food, 0.6 saturation
//Rice is treated as 0.5 food, 0.6 saturation
//Seeds are treated as no food but 2n, 0.2 saturation
//Ground meats increase food by 0.5 and count for 2n's as primary (1.05)
//Non edible mushrooms in recipes count for 0.5 on hunger and 0.6 on saturation and count towards n
//Non hunger increasing ingredients also count towards n, i.e. Mayo, Cooking Oil, ect
//Hunger value x2 to get a value the script understands
/*
Saturation value is x where; 
[hunger value]x = desired saturation value, 
i.e "Bread Saturation 0.6 --> 3x = 0.6 --> saturationModifier = 0.2"
*/

//Vanilla MC
        <minecraft:bread>.foodValues.hunger = 3;
        <minecraft:bread>.foodValues.saturationModifier = 0.2;
            //3x = 0.6, x = 0.2

        <minecraft:carrot>.foodValues.hunger = 1;
        <minecraft:carrot>.foodValues.saturationModifier = 0.3;
            //1x = 0.3, x = 0.3

        <minecraft:baked_potato>.foodValues.hunger = 2;
        <minecraft:baked_potato>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <minecraft:potato>.foodValues.hunger = 1;
            <minecraft:potato>.foodValues.saturationModifier = 0.3;
                //1x = 0.3, x = 0.3

        <minecraft:cooked_chicken>.foodValues.hunger = 2;
        <minecraft:cooked_chicken>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <minecraft:chicken>.foodValues.hunger = 1;
            <minecraft:chicken>.foodValues.saturationModifier = 0.3;
                //1x = 0.3, x = 0.3

        <minecraft:cooked_porkchop>.foodValues.hunger = 2;
        <minecraft:cooked_porkchop>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <minecraft:porkchop>.foodValues.hunger = 1;
            <minecraft:porkchop>.foodValues.saturationModifier = 0.3;
                //1x = 0.3, x = 0.3

        <minecraft:cooked_mutton>.foodValues.hunger = 2;
        <minecraft:cooked_mutton>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <minecraft:mutton>.foodValues.hunger = 1;
            <minecraft:mutton>.foodValues.saturationModifier = 0.3;
                //1x = 0.3, x = 0.3

        <minecraft:cooked_beef>.foodValues.hunger = 2;
        <minecraft:cooked_beef>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <minecraft:beef>.foodValues.hunger = 1;
            <minecraft:beef>.foodValues.saturationModifier = 0.3;

        <minecraft:rotten_flesh>.foodValues.hunger = 1;
        <minecraft:rotten_flesh>.foodValues.saturationModifier = 0.1;
            //1x = 0.1, x = 0.1

        <minecraft:spider_eye>.foodValues.hunger = 1;
        <minecraft:spider_eye>.foodValues.saturationModifier = 0.1;
            //1x = 0.1, x = 0.1

        <minecraft:beetroot_soup>.foodValues.hunger = 6;
            //(Beetroot 0.5) x 6 = 3
        <minecraft:beetroot_soup>.foodValues.saturationModifier = 0.13;
            //(Beetroot 0.6)(1.05^6) = 0.80405738
            //6x = 0.8, x = 0.13

        <minecraft:chorus_fruit>.foodValues.hunger = 1;
        <minecraft:chorus_fruit>.foodValues.saturationModifier = 0.3;
            //1x = 0.3, x = 0.3
//Animania

        <animania:truffle>.foodValues.hunger = 6;
        <animania:truffle>.foodValues.saturationModifier = 0.42;
           //6x = 2.5, x ~= 0.42

        <animania:truffle_soup>.foodValues.hunger = 12;
            //(Truffle 3) x 2 = 6
        <animania:truffle_soup>.foodValues.saturationModifier = 0.46;
            //(Truffle 2.5 + Truffle 2.5)(1.05^2) = 5.5125
            //12x = 5.5, x ~= 0.46        

//BetterNether
 
        <betternether:stalagnate_bowl_wart>.foodValues.hunger = 2;
        <betternether:stalagnate_bowl_wart>.foodValues.saturationModifier = 0.3;
            //2x = 0.6, x = 0.3
 
        <betternether:stalagnate_bowl_mushroom>.foodValues.hunger = 2;
        <betternether:stalagnate_bowl_mushroom>.foodValues.saturationModifier = 0.65;
            //(mushroom 0.6 + mushroom 0.6)(1.05^2) = 1.323
            //2x = 1.3, x = 0.65

//Inspirations

        <inspirations:potato_soup>.foodValues.hunger = 6;
            //Mushroom 0.5 + Mushroom 0.5 + BakedPotato 1 + BakedPotato 1 = 3
        <inspirations:potato_soup>.foodValues.saturationModifier = 0.46;
            //(Mushroom 0.6 + Mushroom 0.6 + BakedPotato 0.6 + BakedPotato 0.6)(1.05^4) = 2.917215
            //12x = 5.5, x ~= 0.46

//Pam's Food Items
    
    //Meats

        <betteranimalsplus:turkey_leg_cooked>.foodValues.hunger = 2;
        <betteranimalsplus:turkey_leg_cooked>.foodValues.saturationModifier = 0.2;
            //2x = 0.6, x = 0.2 
            <betteranimalsplus:turkey_leg_raw>.foodValues.hunger = 1;
            <betteranimalsplus:turkey_leg_raw>.foodValues.saturationModifier = 0.3;
                //1x = 0.3, x = 0.3

        //Values divided by 3 to match yield
        <harvestcraft:bolognaitem>.foodValues.hunger = 1;
            //(GroundBeef 0.5 + GroundPork 0.5 + Garlic 0.5 + Onion 0.5) / 3 = 0.67 --> 0.6
        <harvestcraft:bolognaitem>.foodValues.saturationModifier = 0.5;
            //(GroundBeef + GroundPork + Garlic 0.6 + Onion 0.6 + Salt + Sugar/Honey)(1.05^8) / 3 = 0.59098217
            //1x = 0.6, x = 0.6

        <harvestcraft:meatloafitem>.foodValues.hunger = 6;
            //(RawBeef 0.5 + Bread 1.5 + Onion 0.5 + Garlic 0.5) = 3
        <harvestcraft:meatloafitem>.foodValues.saturationModifier = 0.87;
            //(RawBeef 0.3 + Bread 0.6 + Onion 0.6 + Garlic 0.6)(1.05^4)= 2.55256312
            //3x = 2.6, x ~= 0.87

    //Vegie-related

        <harvestcraft:sweetpickleitem>.foodValues.hunger = 1;
        <harvestcraft:sweetpickleitem>.foodValues.saturationModifier = 0.69; //nice
            //(Cucumber 0.6 + Sugar/Honey + Vinegar)(1.05^3)= 0.694575
            //1x = 0.69, x = 0.69

        <harvestcraft:picklesitem>.foodValues.hunger = 1;
        <harvestcraft:picklesitem>.foodValues.saturationModifier = 0.69; //nice
            //(Cucumber 0.6 + Salt + Vinegar)(1.05^3)= 0.694575
            //1x = 0.69, x = 0.69

        <harvestcraft:vegemiteitem>.foodValues.hunger = 2;
        <harvestcraft:vegemiteitem>.foodValues.saturationModifier = 0.7;
            //(Barely 0.6 + Ginger/Spice/Mustard 0.6 + Salt)(1.05^3)= 1.38915
            //2x = 1.4, x = 0.7

        <harvestcraft:firmtofuitem>.foodValues.hunger = 1;
        <harvestcraft:firmtofuitem>.foodValues.saturationModifier = 0.6;
                <harvestcraft:silkentofuitem>.foodValues.hunger = 1;
                <harvestcraft:silkentofuitem>.foodValues.saturationModifier = 0.3;  

    //Butters
        <harvestcraft:peanutbutteritem>.foodValues.hunger = 1;
        <harvestcraft:peanutbutteritem>.foodValues.saturationModifier = 0.7;
            //(Peanut 0.6 + Cooking Oil)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7

        <harvestcraft:almondbutteritem>.foodValues.hunger = 1;
        <harvestcraft:almondbutteritem>.foodValues.saturationModifier = 0.7;
            //(Almond 0.6 + Cooking Oil)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7

        <harvestcraft:pistachiobutteritem>.foodValues.hunger = 1;
        <harvestcraft:pistachiobutteritem>.foodValues.saturationModifier = 0.7;
            //(Pistachio 0.6 + Cooking Oil)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7

        <harvestcraft:chestnutbutteritem>.foodValues.hunger = 1;
        <harvestcraft:chestnutbutteritem>.foodValues.saturationModifier = 0.7;
            //(Chestnut 0.6 + Cooking Oil)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7

        <harvestcraft:cashewbutteritem>.foodValues.hunger = 1;
        <harvestcraft:cashewbutteritem>.foodValues.saturationModifier = 0.7;
            //(Cashew 0.6 + Cooking Oil)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7
    //Juices
        //Excemption to food rule, kept as is valuewise
    //Smoothies
        //Values are all the same, generic "fruit" listed for all
        //Excemption to food rule, food set to 1.5 to be in line with upgrade from Juice

        <harvestcraft:melonsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:melonsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:strawberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:strawberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:lemonsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:lemonsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:blueberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:blueberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:cherrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:cherrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:papayasmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:papayasmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:starfruitsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:starfruitsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:bananasmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:bananasmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:orangesmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:orangesmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:peachsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:peachsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:limesmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:limesmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:pomegranatesmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:pomegranatesmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:blackberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:blackberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:raspberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:raspberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:kiwismoothieitem>.foodValues.hunger = 3;
        <harvestcraft:kiwismoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53  

        <harvestcraft:apricotsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:apricotsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:figsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:figsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:grapefruitsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:grapefruitsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:persimmonsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:persimmonsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:gooseberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:gooseberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:applesmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:applesmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:coconutsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:coconutsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:cranberrysmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:cranberrysmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:grapesmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:grapesmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:pearsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:pearsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 

        <harvestcraft:plumsmoothieitem>.foodValues.hunger = 3;
        <harvestcraft:plumsmoothieitem>.foodValues.saturationModifier = 0.53;
            //(Fruit 0.6 + Fruit 0.6 + 2(sugar) + snow + water)(1.05^6) = 1.60811476
            //3x = 1.6, x ~= 0.53 



    //Jellies
        <harvestcraft:grapejellyitem>.foodValues.hunger = 1;
        <harvestcraft:grapejellyitem>.foodValues.saturationModifier = 0.7;
            //(Grape 0.6 + Sugar/Honey)(1.05^2) = 0.6615
            //1x = 0.7, x = 0.7           

        <harvestcraft:applejellyitem>.foodValues.hunger = 1;
        <harvestcraft:applejellyitem>.foodValues.saturationModifier = 0.33;
            //(Apple 0.3 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.33, x = 0.33

        <harvestcraft:blackberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:blackberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(BlackBerry 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:blueberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:blueberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(BlueBerry 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:cherryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:cherryjellyitem>.foodValues.saturationModifier = 0.7;
            //(Cherry 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:cranberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:cranberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(Cranberry 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7
 
        <harvestcraft:kiwijellyitem>.foodValues.hunger = 1;
        <harvestcraft:kiwijellyitem>.foodValues.saturationModifier = 0.7;
            //(Kiwi 0.6 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.7, x = 0.7

        <harvestcraft:lemonjellyitem>.foodValues.hunger = 1;
        <harvestcraft:lemonjellyitem>.foodValues.saturationModifier = 0.7;
            //(Lemon 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:limejellyitem>.foodValues.hunger = 1;
        <harvestcraft:limejellyitem>.foodValues.saturationModifier = 0.7;
            //(Lime 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:mangojellyitem>.foodValues.hunger = 1;
        <harvestcraft:mangojellyitem>.foodValues.saturationModifier = 0.7;
            //(Mango 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7
 
        <harvestcraft:orangejellyitem>.foodValues.hunger = 1;
        <harvestcraft:orangejellyitem>.foodValues.saturationModifier = 0.7;
            //(Orange 0.6 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.7, x = 0.7

        <harvestcraft:papayajellyitem>.foodValues.hunger = 1;
        <harvestcraft:papayajellyitem>.foodValues.saturationModifier = 0.7;
            //(Papaya 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:peachjellyitem>.foodValues.hunger = 1;
        <harvestcraft:peachjellyitem>.foodValues.saturationModifier = 0.7;
            //(Peach 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:pomegranatejellyitem>.foodValues.hunger = 1;
        <harvestcraft:pomegranatejellyitem>.foodValues.saturationModifier = 0.7;
            //(Pomegranate 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:raspberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:raspberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(Raspberry 0.6 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.7, x = 0.7

        <harvestcraft:starfruitjellyitem>.foodValues.hunger = 1;
        <harvestcraft:starfruitjellyitem>.foodValues.saturationModifier = 0.7;
            //(Starfruit 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:strawberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:strawberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(Strawberry 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:watermelonjellyitem>.foodValues.hunger = 1;
        <harvestcraft:watermelonjellyitem>.foodValues.saturationModifier = 0.7;
            //(Watermelon 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:apricotjellyitem>.foodValues.hunger = 1;
        <harvestcraft:apricotjellyitem>.foodValues.saturationModifier = 0.7;
            //(Apricot 0.6 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.7, x = 0.7

        <harvestcraft:figjellyitem>.foodValues.hunger = 1;
        <harvestcraft:figjellyitem>.foodValues.saturationModifier = 0.7;
            //(Fig 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:grapefruitjellyitem>.foodValues.hunger = 1;
        <harvestcraft:grapefruitjellyitem>.foodValues.saturationModifier = 0.7;
            //(GrapeFruit 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:persimmonjellyitem>.foodValues.hunger = 1;
        <harvestcraft:persimmonjellyitem>.foodValues.saturationModifier = 0.7;
            //(Persimmon 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:gooseberryjellyitem>.foodValues.hunger = 1;
        <harvestcraft:gooseberryjellyitem>.foodValues.saturationModifier = 0.7;
            //(Gooseberry 0.6 + Sugar/Honey)(1.05^2) = 0.33075
            //1x = 0.7, x = 0.7

        <harvestcraft:pearjellyitem>.foodValues.hunger = 1;
        <harvestcraft:pearjellyitem>.foodValues.saturationModifier = 0.7;
            //(Pear 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

        <harvestcraft:plumjellyitem>.foodValues.hunger = 1;
        <harvestcraft:plumjellyitem>.foodValues.saturationModifier = 0.7;
            //(Plum 0.6 + Sugar/Honey)(1.05^2) = 0.6615  
            //1x = 0.7, x = 0.7

    //Sandwiches

        <harvestcraft:toastitem>.foodValues.hunger = 3;
        <harvestcraft:toastitem>.foodValues.saturationModifier = 0.47;
            //(Bread 0.6 + Butter)(1.05^2) = 0.6615
            //1.5x = 0.7, x ~= 0.47
            <harvestcraft:toastsandwichitem>.foodValues.hunger = 7;
                //(Toast 1.5 + Toast 1.5 + pepper 0.5) = 3.5
            <harvestcraft:toastsandwichitem>.foodValues.saturationModifier = 0.29;
                //(Toast 0.6615 + Toast 0.6615)(1.025^2) + (Pepper 0.6)(1.05) = 2.01997687
                //7x = 2, x ~= 0.29

        <harvestcraft:chickensandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + Chicken (default) 1 = 2.5
        <harvestcraft:chickensandwichitem>.foodValues.saturationModifier = 0.28;
            //(Bread 0.6 + Chicken (default) (0.6) + Mayo)(1.05^3) = 1.38915
            //5x = 1.4, x = 0.28
            <harvestcraft:leafychickensandwichitem>.foodValues.hunger = 6;
                //Chicken sandwich 2.5 + Lettuce 0.5 = 3.0
            <harvestcraft:leafychickensandwichitem>.foodValues.saturationModifier = 0.35;
                //(Chicken sandwich 1.38915)(1.025) + (Lettuce 0.6)(1.05) = 2.05387875
                //6x = 2.1, x = 0.35
        
        <harvestcraft:fishsandwichitem>.foodValues.hunger = 4;
            //Bread 1.5 + Raw Fish (default) 0.5 = 2
        <harvestcraft:fishsandwichitem>.foodValues.saturationModifier = 0.2;
            //(Bread 0.6 + Raw Fish (default) (0.1) + Mayo)(1.05^3) = 0.8103375
            //4x = 0.8, x = 0.2
            <harvestcraft:leafyfishsandwichitem>.foodValues.hunger = 5;
                //Fish sandwich 2 + Lettuce 0.5 = 2.5
            <harvestcraft:leafyfishsandwichitem>.foodValues.saturationModifier = 0.3;
                //(Fish sandwich 0.8103375)(1.025) + (Lettuce 0.6)(1.05) = 1.4605953
                //5x = 1.5, x = 0.3

        <harvestcraft:pbandjitem>.foodValues.hunger = 5;
            //Bread 1.5 + GrapeJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:pbandjitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (GrapeJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687
            //5x = 2, x = 0.4

        <harvestcraft:applejellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + AppleJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:applejellysandwichitem>.foodValues.saturationModifier = 0.34;
            //(Bread 0.6)(1.05) + (AppleJelly 0.33075 + NutButter 0.6615)(1.025^2) = 1.67248265    
            //5x = 1.7, x = 0.34    

        <harvestcraft:blackberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + BlackBerryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:blackberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (BlackBerryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:blueberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + BlueBerryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:blueberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (BlueBerryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:cherryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + CherryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:cherryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (CherryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:cranberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + CranberryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:cranberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (CranberryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:kiwijellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + KiwiJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:kiwijellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (KiwiJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:lemonjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + LemonJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:lemonjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (LemonJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:limejellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + LimeJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:limejellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (LimeJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:mangojellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + MangoJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:mangojellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (MangoJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:orangejellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + OrangeJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:orangejellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (OrangeJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:papayajellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PapayaJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:papayajellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PapayaJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:peachjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PeachJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:peachjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PeachJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:pomegranatejellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PomegranateJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:pomegranatejellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PomegranateJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:raspberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + RaspberryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:raspberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (RaspberryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:starfruitjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + StarfruitJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:starfruitjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (StarfruitJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:strawberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + StrawberryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:strawberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (StrawberryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:watermelonjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + WatermelonJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:watermelonjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (WatermelonJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:apricotjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + ApricotJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:apricotjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (ApricotJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:figjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + FigJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:figjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (FigJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:grapefruitjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + GrapefruitJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:grapefruitjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (GrapefruitJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:persimmonjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PermissonJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:persimmonjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PermissonJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:gooseberryjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + GooseBerryJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:gooseberryjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (GooseBerryJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:pearjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PearJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:pearjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PearJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:plumjellysandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + PlumJelly 0.5 + NutButter 0.5 = 2.5
        <harvestcraft:plumjellysandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6)(1.05) + (PlumJelly 0.6615 + NutButter 0.6615)(1.025^2) = 2.01997687 
            //5x = 2, x = 0.4

        <harvestcraft:honeysandwichitem>.foodValues.hunger = 4;
            //Bread 1.5 + NutButter 0.5 + Honey = 2
        <harvestcraft:honeysandwichitem>.foodValues.saturationModifier = 0.33;
            //(Bread 0.6 + Honey)(1.05^2) + (NutButter 0.6615)(1.025) = 1.3395375 
            //4x = 1.3, x = 0.325

        <harvestcraft:hamandcheesesandwichitem>.foodValues.hunger = 8;
            //Bread 1.5 + Porkchop 1 + CheeseWedge 1.5 = 4
        <harvestcraft:hamandcheesesandwichitem>.foodValues.saturationModifier = 0.54;
            //(Bread 0.6 + Porkchop 0.6 + Cheese 2.5)(1.05^3) = 4.2832125
            //8x = 4.3, x ~= 0.54

        <harvestcraft:peanutbutterbananasandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + NutButter 0.5 + Banana 0.5 = 2.5
        <harvestcraft:peanutbutterbananasandwichitem>.foodValues.saturationModifier = 0.4;
            //(Bread 0.6 + Banana 0.6)(1.05^2) + (NutButter 0.6615)(1.025) = 2.0010375
            //5x = 2, x = 0.4

        <harvestcraft:cucumbersandwichitem>.foodValues.hunger = 7;
            //Bread 1.5 + CheeseWedge 1.5 + Cucumber 0.5 = 3.5
        <harvestcraft:cucumbersandwichitem>.foodValues.saturationModifier = 0.64;
            //(Bread 0.6 + Cucumber 0.6 + CheeseWedge 2.5 + Cream)(1.05^4)= 4.49737312
            //7x = 4.5, x ~= 0.64

        <harvestcraft:friedbolognasandwichitem>.foodValues.hunger = 7;
            //Bread 1.5 + CheeseWedge 1.5 + Balogna 0.5 = 3.5
        <harvestcraft:friedbolognasandwichitem>.foodValues.saturationModifier = 0.57;
            //(Bread 0.6 + CheeseWedge 2.5)(1.05^2) + (Balogna 0.59098217)(1.025)= 4.02350672
            //7x = 4.0, x ~= 0.57

        <harvestcraft:bolognasandwichitem>.foodValues.hunger = 6;
            //Bread 1.5 + Balogna 0.5 + Lettuce 0.5 + Tomato 0.5 = 3
        <harvestcraft:bolognasandwichitem>.foodValues.saturationModifier = 0.47;
            //(Bread 0.6 + Lettuce 0.6 + Tomato 0.6 + Mayo)(1.05^4) + (Balogna 0.59098217)(1.025)= 2.79366797
            //6x = 2.8, x ~= 0.47

        <harvestcraft:tunafishsandwichitem>.foodValues.hunger = 5;
            //Bread 1.5 + Tuna 0.5 + Pickle 0.5 = 2.5
        <harvestcraft:tunafishsandwichitem>.foodValues.saturationModifier = 0.42;
            //(Bread 0.6 + Tuna 0.6 + Mayo)(1.05^3) + (Pickle 0.694575)(1.025)= 2.10108937
            //5x = 2.1, x = 0.42

        <harvestcraft:groiledcheesesandwichitem>.foodValues.hunger = 8;
            //Bread 1.5 + Vegemite 1 + CheeseWedge 1.5 = 4
        <harvestcraft:groiledcheesesandwichitem>.foodValues.saturationModifier = 0.63;
            //(Bread 0.6 + CheeseWedge 2.5 + CookingOil)(1.05^3) + (Vegemite 1.38915)(1.025)= 5.01251625
            //8x = 5.0, x ~= 0.63

        <harvestcraft:montecristosandwichitem>.foodValues.hunger = 10;
            //Bread 1.5 + Turkey 1 + CheeseWedge 1.5 + Porkchop 1 = 5
        <harvestcraft:montecristosandwichitem>.foodValues.saturationModifier = 0.61;
            //(Bread 0.6 + CheeseWedge 2.5 + Turkey 0.6 + Porkchop 0.6 + Mustard + Milk + Egg)(1.05^7) = 6.05053181
            //10x = 6.1, x = 0.61

        <harvestcraft:hamsweetpicklesandwichitem>.foodValues.hunger = 6;
            //Bread 1.5 + Pickle 0.5 + Porkchop 1 = 3
        <harvestcraft:hamsweetpicklesandwichitem>.foodValues.saturationModifier = 0.35;
            //(Bread 0.6 + Porkchop 0.6 + Mayo)(1.05^3) + (Pickle 0.694575)(1.025) = 2.10108937
            //6x = 2.1, x = 0.35

        <harvestcraft:meatloafsandwichitem>.foodValues.hunger = 9;
            //Bread 1.5 + Meatloaf 3 = 4.5
        <harvestcraft:meatloafsandwichitem>.foodValues.saturationModifier = 0.47;
            //(Bread 0.6 + Ketchup)(1.05^2) + (Meatloaf 2.55256312)(1.025) = 3.27787719
            //7x = 3.3, x ~= 0.47

        <harvestcraft:grilledcheeseitem>.foodValues.hunger = 6;
            //Bread 1.5 + CheeseWedge 1.5 = 3
        <harvestcraft:grilledcheeseitem>.foodValues.saturationModifier = 0.63;
            //(Bread 0.6 + CheeseWedge 2.5 + Butter + Butter)(1.05^4) = 3.76806937
            //6x = 3.8, x ~= 0.63

        <harvestcraft:grilledcheesevegemitetoastitem>.foodValues.hunger = 8;
            //GrilledCheese 3 + Vegemite 1 = 4
        <harvestcraft:grilledcheesevegemitetoastitem>.foodValues.saturationModifier = 0.68;
            //GrilledCheese 3.76806937 + Vegemite 1.38915)(1.025^2) = 5.4183036
            //8x = 5.4, x ~= 0.68

        //Soups

        <harvestcraft:stockitem>.foodValues.hunger = 0;
        <harvestcraft:stockitem>.foodValues.saturationModifier = 1;

        <harvestcraft:carrotsoupitem>.foodValues.hunger = 2;
            //Carrot 0.5 + Stock 0.5 = 1;
        <harvestcraft:carrotsoupitem>.foodValues.saturationModifier = 0.3;
            //(Carrot 0.3 + Stock 0.2 + Cream)(1.05^3) = 0.5788125
            //2x = 0.6, x = 0.3
 
        <harvestcraft:pumpkinsoupitem>.foodValues.hunger = 2;
            //Pumpkin 0.5 + Stock 0.5 = 1;
        <harvestcraft:pumpkinsoupitem>.foodValues.saturationModifier = 0.3;
            //(Pumpkin 0.3 + Stock 0.2 + Cream)(1.05^3) = 0.5788125
            //2x = 0.6, x = 0.3

        <harvestcraft:chickennoodlesoupitem>.foodValues.hunger = 3;
            //RawChicken 0.5 + Stock 0.5 + Carrot 0.5= 1.5;
        <harvestcraft:chickennoodlesoupitem>.foodValues.saturationModifier = 0.33;
            //(Carrot 0.3 + RawChicken 0.3 + Stock 0.2 + Pasta)(1.05^4) = 0.972405
            //3x = 1.0, x ~= 0.33

        <harvestcraft:vegetablesoupitem>.foodValues.hunger = 4;
            //Stock 0.5 + RawPotato 0.5 + Carrot 0.5 + Mushroom 0.5 = 2;
        <harvestcraft:vegetablesoupitem>.foodValues.saturationModifier = 0.43;
            //(Stock 0.2 + RawPotato 0.3 + Carrot 0.3 + Mushroom 0.6)(1.05^4) = 1.70170875
            //4x = 1.7, x ~= 0.43

        <harvestcraft:tomatosoupitem>.foodValues.hunger = 2;
            //Stock 0.5 + Tomato 0.5 = 1;
        <harvestcraft:tomatosoupitem>.foodValues.saturationModifier = 0.45;
            //(Stock 0.2 + Tomato 0.6)(1.05^2) = 0.882
            //2x = 0.9, x = 0.45

        <harvestcraft:cucumbersoupitem>.foodValues.hunger = 2;
            //Stock 0.5 + Cucumber 0.5 = 1;
        <harvestcraft:cucumbersoupitem>.foodValues.saturationModifier = 0.5;
            //(Stock 0.2 + Cucumber 0.6 + Cream)(1.05^3) = 0.9261 (rounding to 1, should be 0.9 but too similar in value to tomato soup for being more expensive)
            //2x = 1, x = 0.5

        <harvestcraft:ricesoupitem>.foodValues.hunger = 2;
            //Stock 0.5 + Rice 0.5 = 1;
        <harvestcraft:ricesoupitem>.foodValues.saturationModifier = 0.45;
            //(Stock 0.2 + Rice 0.6)(1.05^2) = 0.882
            //2x = 0.9, x = 0.45

        <harvestcraft:beetsoupitem>.foodValues.hunger = 2;
            //Onion 0.5 + Beet 0.5 = 1;
        <harvestcraft:beetsoupitem>.foodValues.saturationModifier = 0.75;
            //(Onion 0.6 + Beet 0.6 + Milk + Pepper)(1.05^4) = 1.4586075
            //2x = 1.5, x = 0.75

        <harvestcraft:creamedbroccolisoupitem>.foodValues.hunger = 3;
            //Carrot 0.5 + Broccoli 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:creamedbroccolisoupitem>.foodValues.saturationModifier = 0.47;
            //(Carrot 0.3 + Broccoli 0.6 + Stock 0.2 + Pepper + Flour)(1.05^5) = 1.40390971
            //3x = 1.4, x ~= 0.47

        <harvestcraft:splitpeasoupitem>.foodValues.hunger = 3;
            //Peas 0.5 + RawPork 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:splitpeasoupitem>.foodValues.saturationModifier = 0.43;
            //(Peas 0.6 + RawPork 0.3 + Stock 0.2 + Pepper)(1.05^4) = 1.33705687
            //3x = 1.3, x ~= 0.43

        <harvestcraft:turnipsoupitem>.foodValues.hunger = 3;
            //Turnip 0.5 + Pumpkin 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:turnipsoupitem>.foodValues.saturationModifier = 0.57;
            //(Turnip 0.6 + Pumpkin 0.6 + Stock 0.2 + Pepper)(1.05^4) = 1.70170875
            //3x = 1.7, x ~= 0.57

        <harvestcraft:celerysoupitem>.foodValues.hunger = 4;
            //Celery 0.5 + Onion 0.5 + StewVeg 0.5 + Stock 0.5 = 2;
        <harvestcraft:celerysoupitem>.foodValues.saturationModifier = 0.6;
            //(Celery 0.6 + Onion 0.6 + StewVeg 0.6 + Stock 0.2)(1.05^4) = 2.4310125
            //4x = 2.4, x = 0.6

        <harvestcraft:asparagussoupitem>.foodValues.hunger = 3;
            //Asparagus 0.5 + Onion 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:asparagussoupitem>.foodValues.saturationModifier = 0.57;
            //(Asparagus 0.6 + Onion 0.6 + Stock 0.2 + Butter)(1.05^4) = 1.70170875
            //3x = 1.7, x ~= 0.57

        <harvestcraft:creamofavocadosoupitem>.foodValues.hunger = 4;
            //Avocado 0.5 + Lime 0.5 + Stock 0.5 + Ginger/Spice/Mustard 0.5 = 2;
        <harvestcraft:creamofavocadosoupitem>.foodValues.saturationModifier = 0.68;
            //(Avocado 0.6 + Lime 0.6 + Stock 0.2 + Ginger/Spice/Mustard 0.6 + Cream + Vanilla)(1.05^6) = 2.68019128
            //4x = 2.7, x ~= 0.68

        <harvestcraft:cactussoupitem>.foodValues.hunger = 2;
        <harvestcraft:cactussoupitem>.foodValues.saturationModifier = 0.68;
            //(Stock 0.2)(1.05) = 0.21, no bonus lol
            //2x = 0.2, x = 0.1

        <harvestcraft:seedsoupitem>.foodValues.hunger = 1;
        <harvestcraft:seedsoupitem>.foodValues.saturationModifier = 1.1;
            //(Stock 0.2 + 3*Seed 0.2)(1.05^7) = 1.12568033
            //1x = 1.1, x = 1.1

        <harvestcraft:gardensoupitem>.foodValues.hunger = 3;
            //Veggie 0.5 + Veggie 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:gardensoupitem>.foodValues.saturationModifier = 0.53;
            //(Veggie 0.6 + Veggie 0.6 + Stock 0.2)(1.05^3) = 1.620675
            //3x = 1.6, x ~= 0.53

        <harvestcraft:gardensoupitem>.foodValues.hunger = 4;
            //Veggie 0.5 + Veggie 0.5 + Stock 0.5 + Barley 0.5 = 2;
        <harvestcraft:gardensoupitem>.foodValues.saturationModifier = 0.6;
            //(Veggie 0.6 + Veggie 0.6 + Barley 0.6 + Stock 0.2)(1.05^4) = 2.4310125
            //4x = 2.4, x = 0.6

        <harvestcraft:lambbarleysoupitem>.foodValues.hunger = 5;
            //Veggie 0.5 + Veggie 0.5 + Stock 0.5 + Barley 0.5 + RawMutton 0.5 = 2.5;
        <harvestcraft:lambbarleysoupitem>.foodValues.saturationModifier = 0.58;
            //(Veggie 0.6 + Veggie 0.6 + Barley 0.6 + Stock 0.2 + RawMutton 0.3)(1.05^5) = 2.93544759
            //5x = 2.9, x = 0.58

        <harvestcraft:leekbaconsoupitem>.foodValues.hunger = 3;
            //Leek 0.5 + Veggie 0.5 + RawPork 0.5 = 1.5;
        <harvestcraft:leekbaconsoupitem>.foodValues.saturationModifier = 0.6;
            //(Leek 0.6 + Veggie 0.6 + RawPork 0.3 + Cream)(1.05^4) = 1.82325937
            //3x = 1.8, x = 0.6

        <harvestcraft:peaandhamsoupitem>.foodValues.hunger = 6;
            //Peas 0.5 + 4(Veggie 0.5) + RawPork 0.5 = 3;
        <harvestcraft:peaandhamsoupitem>.foodValues.saturationModifier = 0.73;
            //(Peas 0.6 + 4(Veggie 0.6) + RawPork 0.3)(1.05^6) = 4.42231561
            //6x = 4.4, ~= 0.73

        <harvestcraft:potatoandleeksoupitem>.foodValues.hunger = 5;
            //RawPotato 0.5 + 2(Veggie 0.5) + Stock 0.5 + Ginger/Spice/Mustard 0.5 = 2.5;
        <harvestcraft:potatoandleeksoupitem>.foodValues.saturationModifier = 0.62;
            //(RawPotato 0.3 + 2(Veggie 0.6) + Stock 0.2 + Ginger/Spice/Mustard 0.6 + Cream)(1.05^6) = 3.08221997
            //5x = 3.1, x = 0.62

        <harvestcraft:pizzasoupitem>.foodValues.hunger = 11;
            //TomatoSoup 2 + 3(Veggie 0.5) + Mushroom 0.5 + CheeseWedge 1.5 = 5.5;
        <harvestcraft:pizzasoupitem>.foodValues.saturationModifier = 0.65;
            //(3(Veggie 0.6) + Murhsoom 0.6 + CheeseWedge 2.5)(1.05^5) + (TomatoSoup 0.882)(1.025)= 7.15782965
            //11x = 7.2, x ~= 0.65

        <harvestcraft:wontonsoupitem>.foodValues.hunger = 3;
            //Stock 0.5 + Scallion 0.5 + Ginger 0.5 = 1.5;
        <harvestcraft:wontonsoupitem>.foodValues.saturationModifier = 0.6;
            //(Ginger 0.6 + Scallion 0.6 + Stock 0.2 + Dough + SoySauce)(1.05^5)= 1.78679418
            //3x = 1.8, x = 0.6

        <harvestcraft:chorusfruitsoupitem>.foodValues.hunger = 4;
            //ChorusFruit 0.5 special privilages (difficuly bonus) x2
        <harvestcraft:chorusfruitsoupitem>.foodValues.saturationModifier = 0.5;

        <harvestcraft:wontonsoupitem>.foodValues.hunger = 5;
            //Stock 0.5 + Blaze 2 (difficulty bonus) = 2.5;
        <harvestcraft:wontonsoupitem>.foodValues.saturationModifier = 0.25;

        <harvestcraft:peanutsoupitem>.foodValues.hunger = 5;
            //NutButter 0.5 + Onion 0.5 + Pepper 0.5 + Tomato 0.5 + Stock 0.5 = 2.5;
        <harvestcraft:peanutsoupitem>.foodValues.saturationModifier = 0.62;
            //(Onion 0.6 + Stock 0.2 + Pepper 0.6 + Tomato 0.6)(1.05^4) + (NutButter 0.6615)(1.025)= 3.10905
            //5x = 3.1, x = 0.62

        <harvestcraft:hotandsoursoupitem>.foodValues.hunger = 5;
            //RawPorkchop 0.5 + Mushroom 0.5 + BambooShoot 0.5 = 1.5;
        <harvestcraft:hotandsoursoupitem>.foodValues.saturationModifier = 0.42;
            //(RawPorkchop 0.3 + Mushroom 0.6 + BambooShoot 0.6 + Pepper + Egg + SesameOil + Vinager)(1.05^7) = 2.11065063
            //5x = 2.1, x = 0.42

        <harvestcraft:onionsoupitem>.foodValues.hunger = 8;
            //GrilledCheese 3 + Onion 0.5 + Stock 0.5 = 4;
        <harvestcraft:onionsoupitem>.foodValues.saturationModifier = 0.59;
            //(Onion 0.6 + Stock 0.2)(1.05^2) + (GrilledCheese 3.76806937)(1.025)= 4.7442711
            //8x = 4.7, x ~= 0.59

        <harvestcraft:mobsoupitem>.foodValues.hunger = 4;
            //Bundle of Herbs 0.5 + SpiderEye 0.5 + Stock 0.5 + RottenFlesh = 2;
        <harvestcraft:mobsoupitem>.foodValues.saturationModifier = 0.15;
            //(SpiderEye 0.1 + Stock 0.2 + RottenFlesh 0.1 + Slime/Glue + CrystalSalt)(1.05^5) + (Bundle'O'Herbs 0.1)(1.025)= 0.61301262
            //4x = 0.6, x = 0.15

        <harvestcraft:misosoupitem>.foodValues.hunger = 3;
            //Scallion 0.5 + FirmTofu 1 = 1.5;
        <harvestcraft:misosoupitem>.foodValues.saturationModifier = 0.47;
            //(Scallion 0.6 +  FirmTofu 0.6 + Stick)(1.05^3)= 1.38915
            //3x = 1.4, x ~= 0.47

        <harvestcraft:blazingsoupitem>.foodValues.hunger = 6;
            //Stock 0.5 + Netherrwart 0.5 + Blazepowder 2.0 (rare item bonus) = 3;
        <harvestcraft:blazingsoupitem>.foodValues.saturationModifier = 0.48;
            //(Stock 0.2 + Netherrward 0.3 + Blazepowder 2 (rare item bonus))(1.05^3)= 2.8940625
            //6x = 2.9, x ~= -.48

        <harvestcraft:oldworldveggiesoupitem>.foodValues.hunger = 4;
            //Stock 0.5 + 2(Veggie 0.5) + Barley 0.5 = 2;
        <harvestcraft:oldworldveggiesoupitem>.foodValues.saturationModifier = 0.6;
            //(Stock 0.2 + 2(Veggie 0.6) + Barley 0.6)(1.05^4)= 2.4310125
            //4x = 2.4, x = 0.6



// Copy Paste
/*
.foodValues.hunger = ;
.foodValues.saturationModifier = ;
*/
