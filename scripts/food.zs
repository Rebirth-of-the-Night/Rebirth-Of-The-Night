//Nyagi - The food items will be split by mod and by relatedness, i.e. Sandwiches, Burgers, Soups, ect...
//Food values are determined by adding together input values. 
//Saturation values are calculated by adding input values multiplied by 1.05^n, where n is number of input items with saturation values.
//Higher tier foods contrubute less to the multiplication, 1.025^n, 1.0125^n, ect.. (Bread, Pasta, Dough, Batter, Cheese is counted as primary)
//Stock increases saturation by 0.2, counts towards n, 0.5 on food
//Pumpkin is treated as 0.5 food, 0.6 saturation
//Rice is treated as 0.5 food, 0.6 saturation
//Seeds are treated as no food but 2n, 0.2 saturation
//Ground meats increase food by 0.5 and count for 2n's as primary (1.05)
//Non edible mushrooms in recipes count for 0.5 on hunger and 0.6 on saturation and count towards n
//Non hunger increasing ingredients also count towards n, i.e. Mayo, Cooking Oil, ect
//Hunger value x2 to get a value the script understands
//Raw Meats that go through cooking stations are to be treated as cooked meats value-wise
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
    
    //Meat-related

        <mod_lavacow:mousse>.foodValues.hunger = 0;
        <mod_lavacow:mousse>.foodValues.saturationModifier = 0.1;

        <mod_lavacow:meatball>.foodValues.hunger = 0;
        <mod_lavacow:meatball>.foodValues.saturationModifier = 0.1;

        <harvestcraft:bakedhamitem>.foodValues.hunger = 3;
            //Porkchop 1 + Apple 0.5 = 1.5
        <harvestcraft:bakedhamitem>.foodValues.saturationModifier = 0.47;
            //(Porkchop 0.6 + Apple 0.6 + Sugar)(1.05^3) = 1.38915
            //3x = 1.4, x ~= 0.47
 
        <harvestcraft:fishsticksitem>.foodValues.hunger = 4;
            //Batter 1 + Fish 1 = 2
        <harvestcraft:fishsticksitem>.foodValues.saturationModifier = 0.25;
            //(Batter 0.6 + Fish 0.3)(1.05^2) = 0.99225
            //4x = 1, x = 0.25
   
        <harvestcraft:fishandchipsitem>.foodValues.hunger = 6;
            //FishStick 2 + Fries 1 = 3
        <harvestcraft:fishandchipsitem>.foodValues.saturationModifier = 0.28;
            //(Fishstick 0.99225 + Fries 0.6615)(1.025^2) = 1.73747109
            //6x = 1.7, x ~= 0.28
    
        <harvestcraft:scrambledeggitem>.foodValues.hunger = 3;
            //3Egg 0.5 = 1.5
        <harvestcraft:scrambledeggitem>.foodValues.saturationModifier = 0.23;
            //(3Egg 0.2)(1.05^3) = 0.694575
            //3x = 0.7, x ~= 0.23
    
        <harvestcraft:eggsaladitem>.foodValues.hunger = 1;
            //Egg 0.5 
        <harvestcraft:eggsaladitem>.foodValues.saturationModifier = 0.2;
            //(Egg 0.2 + Mayo)(1.05) = 0.2205
            //1x = 0.2, x = 0.2
   
        <harvestcraft:chickenparmasanitem>.foodValues.hunger = 6;
            //Chicken 1 + Cheese 1.5 + Tomato 0.5 = 3
        <harvestcraft:chickenparmasanitem>.foodValues.saturationModifier = 0.72;
            //(Chicken 0.6 + Tomato 0.6 + Cheese 2.5)(1.05^3) = 4.2832125
            //6x = 4.3, x ~= 0.72
   
        <harvestcraft:porklettucewrapitem>.foodValues.hunger = 3;
            //Pork 1 + Lettuce 0.5= 1.5
        <harvestcraft:porklettucewrapitem>.foodValues.saturationModifier = 0.43;
            //(Pork 0.6 + Lettuce 0.6)(1.05^2) = 1.323
            //3x = 1.3, x = 0.43
   
        <harvestcraft:fishlettucewrapitem>.foodValues.hunger = 3;
            //Fish 1 + Lettuce 0.5= 1.5
        <harvestcraft:fishlettucewrapitem>.foodValues.saturationModifier = 0.43;
            //(Fish 0.6 + Lettuce 0.6)(1.05^2) = 1.323
            //3x = 1.3, x = 0.43
     
        <harvestcraft:hotwingsitem>.foodValues.hunger = 1;
        <harvestcraft:hotwingsitem>.foodValues.saturationModifier = 1;
   
        <harvestcraft:fishdinneritem>.foodValues.hunger = 6;
            //Fish 1 + Lemon 0.5 + Batter 1.5 = 3
        <harvestcraft:fishdinneritem>.foodValues.saturationModifier = 0.23;
            //(Fish 0.6 + Lemon 0.6 + Batter)(1.05^2) = 1.38915
            //6x = 1.4, x ~= 0.23
   
        <harvestcraft:lemonchickenitem>.foodValues.hunger = 3;
            //Chicken 1 + Lemon 0.5 = 1.5
        <harvestcraft:lemonchickenitem>.foodValues.saturationModifier = 0.46;
            //(Chicken 0.6 + Lemon 0.6 + Butter)(1.05^3) = 1.38915
            //3x = 1.4, x ~= 0.46
   
        <harvestcraft:pineapplehamitem>.foodValues.hunger = 4;
            //Pork 1 + Pineapple 0.5 + Cherry 0.5 = 2
        <harvestcraft:pineapplehamitem>.foodValues.saturationModifier = 0.55;
            //(Pork 0.6 + Pineapple 0.6 + Cherry 0.6 + Sugar)(1.05^4) = 2.18791125
            //4x = 2.2, x = 0.55
   
        <harvestcraft:spicymustardporkitem>.foodValues.hunger = 3;
            //Pork 1 + Spice 0.5 = 1.5
        <harvestcraft:spicymustardporkitem>.foodValues.saturationModifier = 0.5;
            //(Pork 0.6 + Spice 0.6 + Mustard + Salt)(1.05^4) = 1.4586075
            //3x = 1.5, x = 0.5
    
        <harvestcraft:garlicchickenitem>.foodValues.hunger = 5;
            //Chicken 1 + (3(garlic 0.5)) = 2.5
        <harvestcraft:garlicchickenitem>.foodValues.saturationModifier = 0.62;
            //(Chicken 0.6 + 3(garlic 0.6) + CookingOil)(1.05^5) = 3.06307575
            //5x = 3.1, x = 0.62
 
    //Breaded Meats treat batter, as 1 hunger and 1n

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
 
        <harvestcraft:breadedporkchopitem>.foodValues.hunger = 4;
            //(Pork 1 + Batter 1) = 2
        <harvestcraft:breadedporkchopitem>.foodValues.saturationModifier = 0.18;
            //(Pork 0.6 + Batter)(1.05^2) = 0.6615
            //4x = 0.7, x ~= 0.18

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

    //Fruit-related

        <harvestcraft:raisinsitem>.foodValues.hunger = 1;
        <harvestcraft:raisinsitem>.foodValues.saturationModifier = 0.6;
            //(Grape 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <harvestcraft:applesauceitem>.foodValues.hunger = 1;
        <harvestcraft:applesauceitem>.foodValues.saturationModifier = 0.6;
            //(Apple 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6
 
        <harvestcraft:caramelappleitem>.foodValues.hunger = 2;
            //(Apple 0.5 + Caramel 0.5) = 1
        <harvestcraft:caramelappleitem>.foodValues.saturationModifier = 0.7;
            //(Apple 0.6 + Caramel 0.6 + Stick)(1.05^3)= 1.38915
            //2x = 1.4, x = 0.7 

        <harvestcraft:popcornitem>.foodValues.hunger = 1;
        <harvestcraft:popcornitem>.foodValues.saturationModifier = 0.6;
            //(Corn 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <harvestcraft:toastedcoconutitem>.foodValues.hunger = 1;
        <harvestcraft:toastedcoconutitem>.foodValues.saturationModifier = 0.6;
            //(Coconut 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6
 
        <harvestcraft:fruitsaladitem>.foodValues.hunger = 2;
            //(2Fruit 0.5) = 1
        <harvestcraft:fruitsaladitem>.foodValues.saturationModifier = 0.65;
            //(2Apple 0.6)(1.05^2)= 1.323
            //2x = 1.3, x = 0.65
 
        <harvestcraft:cornonthecobitem>.foodValues.hunger = 1;
            //(Corn 0.5) = 0.5
        <harvestcraft:cornonthecobitem>.foodValues.saturationModifier = 0.7;
            //(Corn 0.6)(1.05^2)= 0.6615
            //1x = 0.7, x = 0.7
 
        <harvestcraft:creamedcornitem>.foodValues.hunger = 2;
            //(Corn 0.5 + Onion 0.5) = 1
        <harvestcraft:creamedcornitem>.foodValues.saturationModifier = 0.65;
            //(Corn 0.6 + Onion 0.6)(1.05^2)= 1.323
            //2x = 1.3, x = 0.65
 
        <harvestcraft:strawberrysaladitem>.foodValues.hunger = 3;
            //(FruitSalad 1 + Strawberry 0.5) = 1.5
        <harvestcraft:strawberrysaladitem>.foodValues.saturationModifier = 0.67;
            //(Strawberry 0.6)(1.05) + (FruitSalad 1.323)(1.025) = 1.986075
            //3x = 2.0, x ~= 0.67
 
        <harvestcraft:chocolatestrawberryitem>.foodValues.hunger = 2;
            //(Chocolate 0.5 + Strawberry 0.5) = 1
        <harvestcraft:chocolatestrawberryitem>.foodValues.saturationModifier = 0.45;
            //(Strawberry 0.6)(1.05) + (Chocolate 0.3)(1.025) = 0.9375
            //2x = 0.9, x = 0.45
 
        <harvestcraft:trailmixitem>.foodValues.hunger = 3;
            //(Chocolate 0.5 + Raisin 0.5 + Seed 0.5) = 1.5
        <harvestcraft:trailmixitem>.foodValues.saturationModifier = 0.53;
            //(Seed 0.6)(1.05) + (Chocolate 0.3 + Raisin 0.63)(1.025^2) = 1.60708125
            //3x = 1.6, x ~= 0.53
 
        <harvestcraft:grapesaladitem>.foodValues.hunger = 3;
            //(FruitSalad 1 + Grape 0.5) = 1.5
        <harvestcraft:grapesaladitem>.foodValues.saturationModifier = 0.67;
            //(Grape 0.6)(1.05) + (FruitSalad 1.323)(1.025) = 1.986075
            //3x = 2.0, x ~= 0.67

    //Vegetable-related

        <harvestcraft:bakedsweetpotatoitem>.foodValues.hunger = 1;
        <harvestcraft:bakedsweetpotatoitem>.foodValues.saturationModifier = 0.6;
            //(SweetPotato 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <betterwithaddons:food_carrot_baked>.foodValues.hunger = 1;
        <betterwithaddons:food_carrot_baked>.foodValues.saturationModifier = 0.6;
            //(SweetPotato 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <harvestcraft:grilledeggplantitem>.foodValues.hunger = 1;
        <harvestcraft:grilledeggplantitem>.foodValues.saturationModifier = 0.6;
            //(Eggplant 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6
 
        <harvestcraft:glazedcarrotsitem>.foodValues.hunger = 1;
            //(Carrot 0.5) = 0.5
        <harvestcraft:glazedcarrotsitem>.foodValues.saturationModifier = 0.69;
            //(Carrot 0.6 + Sugar + Butter )(1.05^3)= 0.694575
            //1x = 0.69, x = 0.69
 
        <harvestcraft:butteredpotatoitem>.foodValues.hunger = 2;
            //(BakedPotato 1) = 2
        <harvestcraft:butteredpotatoitem>.foodValues.saturationModifier = 0.33;
            //(BakedPotato 0.6 + Butter )(1.05^2)= 0.6615
            //2x = 0.66, x = 0.33
 
        <harvestcraft:loadedbakedpotatoitem>.foodValues.hunger = 7;
            //(ButteredPotato 1 + Porkchop 1 + CheeseWedge 1.5) = 3.5
        <harvestcraft:loadedbakedpotatoitem>.foodValues.saturationModifier = 0.53;
            //(Porkchop 0.2 + Cheese 2.5)(1.05^2) + (ButteredPotato 0.6615)(1.025)= 3.6547875
            //7x = 3.7, x ~= 0.53
 
        <harvestcraft:mashedpotatoesitem>.foodValues.hunger = 2;
        <harvestcraft:mashedpotatoesitem>.foodValues.saturationModifier = 0.66;
            //(Potato 0.6 + Salt)(1.05^2)= 0.6615
            //1x = 0.66, x = 0.66
  
        <harvestcraft:garlicmashedpotatoesitem>.foodValues.hunger = 3;
            //(MashedPotato 1 + Garlic 0.5) = 1.5
        <harvestcraft:garlicmashedpotatoesitem>.foodValues.saturationModifier = 0.43;
            //(Garlic 0.6)(1.05) + (MashedPotato 0.6615)(1.025)= 1.3080375
            //3x = 1.3, x ~= 0.43
 
        <harvestcraft:mashedpotatoesitem>.foodValues.hunger = 1;
        <harvestcraft:mashedpotatoesitem>.foodValues.saturationModifier = 0.66;
            //(Potato 0.6 + Salt)(1.05^2)= 0.6615
            //1x = 0.66, x = 0.66
    
        <harvestcraft:potatosaladitem>.foodValues.hunger = 1;
        <harvestcraft:potatosaladitem>.foodValues.saturationModifier = 0.66;
            //(Potato 0.6 + Mayo)(1.05^2)= 0.6615
            //1x = 0.66, x = 0.66
 
        <harvestcraft:friesitem>.foodValues.hunger = 1;
        <harvestcraft:friesitem>.foodValues.saturationModifier = 0.66;
            //(Potato 0.6 + Salt)(1.05^2)= 0.6615
            //1x = 0.66, x = 0.66
  
        <harvestcraft:grilledmushroomitem>.foodValues.hunger = 1;
        <harvestcraft:grilledmushroomitem>.foodValues.saturationModifier = 0.63;
            //(Potato 0.6 + Salt)(1.05^2)= 0.63
            //1x = 0.63, x = 0.63
  
        <harvestcraft:stuffedmushroomitem>.foodValues.hunger = 7;
            //(Toast 1.5 + CheeseWedge 1.5 + Mushroom .5) = 3.5
        <harvestcraft:stuffedmushroomitem>.foodValues.saturationModifier = 0.59;
            //(CHeese 2.5 + Mushroom 0.63)(1.05^2) + (Toast 0.6615)(1.025)= 4.1288625
            //7x = 4.1, x ~= 0.59
   
        <harvestcraft:springsaladitem>.foodValues.hunger = 2;
            //(2Veggie 0.5) = 1
        <harvestcraft:springsaladitem>.foodValues.saturationModifier = 0.65;
            //(2Veggie 0.6)(1.05^2) = 1.323
            //2x = 1.3, x = 0.65
   
        <harvestcraft:potatocakesitem>.foodValues.hunger = 3;
            //(Onion 0.5 + Potato 1) = 1.5
        <harvestcraft:potatocakesitem>.foodValues.saturationModifier = 0.47;
            //(Onion 0.6 + Potato 0.6)(1.05^3) = 1.38915
            //3x = 1.4, x ~= 0.47
   
        <harvestcraft:hashitem>.foodValues.hunger = 5;
            //(Onion 0.5 + Potato 1 + Ground Beef 1) = 2.5
        <harvestcraft:hashitem>.foodValues.saturationModifier = 0.42;
            //(Onion 0.6 + Potato 0.6 + Beef 0.6)(1.05^3) = 2.083725
            //5x = 2.1, x = 0.42
   
        <harvestcraft:braisedonionsitem>.foodValues.hunger = 2;
            //(Onion 0.5 + Stock 0.5 ) = 1
        <harvestcraft:braisedonionsitem>.foodValues.saturationModifier = 0.45;
            //(Onion 0.6 + Stock 0.2 + Butter)(1.05^3) = 0.9261
            //2x = 0.9, x = 0.45
   
        <harvestcraft:cucumbersaladitem>.foodValues.hunger = 3;
            //(Cucumber 0.5 + SpringSalad 1 ) = 1.5
        <harvestcraft:cucumbersaladitem>.foodValues.saturationModifier = 0.67;
            //(Cucumber 0.6)(1.05) + (SpringSalad 1.323)(1.025) = 1.986075
            //3x = 2.0, x ~= 0.67
   
        <harvestcraft:stuffedpepperitem>.foodValues.hunger = 3;
            //(Bellpepper 0.5 + Tomato 0.5 + Rice 0.5 ) = 1.5
        <harvestcraft:stuffedpepperitem>.foodValues.saturationModifier = 0.7;
            //(Cucumber 0.6 + Tomato 0.6 + Rice 0.6)(1.05^3) = 2.083725
            //3x = 2.1, x = 0.7
   
        <harvestcraft:veggiestirfryitem>.foodValues.hunger = 5;
            //(5(veggie 0.5)) = 2.5
        <harvestcraft:veggiestirfryitem>.foodValues.saturationModifier = 0.76;
            //(5(veggie 0.6))(1.05^5) = 3.82884468
            //5x = 3.8, x = 0.76
   
        <harvestcraft:grilledskewersitem>.foodValues.hunger = 3;
            //(3(veggie 0.5)) = 1.5
        <harvestcraft:grilledskewersitem>.foodValues.saturationModifier = 0.67;
            //(3(veggie 0.6))(1.05^3) = 2.083725
            //3x = 2.0, x ~= 0.67
   
        <harvestcraft:omeletitem>.foodValues.hunger = 3;
            //(3(veggie 0.5)) = 1.5
        <harvestcraft:omeletitem>.foodValues.saturationModifier = 0.67;
            //(3(veggie 0.6))(1.05^3) = 2.083725
            //3x = 2.0, x ~= 0.67
   
        <harvestcraft:chilipoppersitem>.foodValues.hunger = 5;
            //( Chili 1 + Cheese 1.5) = 2.5
        <harvestcraft:chilipoppersitem>.foodValues.saturationModifier = 0.72;
            //( Chili 0.6 + Cheese 2.5 + Batter)(1.05^3) = 3.5886375
            //5x = 3.6, x = 0.72
   
        <harvestcraft:stuffedeggplantitem>.foodValues.hunger = 3;
            //( Eggplant 0.5 + Onion 0.5 + Bellpepper 0.5) = 1.5
        <harvestcraft:stuffedeggplantitem>.foodValues.saturationModifier = 0.77;
            //( Eggplant 0.6 + Bellpepper 0.6 + Onion 0.6 + Egg + Butter)(1.05^5) = 2.29730681
            //3x = 2.3, x ~= 0.77
   
        <harvestcraft:bakedbeetsitem>.foodValues.hunger = 1;
            //( Beet 0.5) = 0.5
        <harvestcraft:bakedbeetsitem>.foodValues.saturationModifier = 0.7;
            //( Beet 0.6 + Butter + Pepper)(1.05^3) = 0.694575
            //1x = 0.7, x = 0.7
   
        <harvestcraft:bakedbeetsitem>.foodValues.hunger = 1;
            //( Beet 0.5) = 0.5
        <harvestcraft:bakedbeetsitem>.foodValues.saturationModifier = 0.7;
            //( Beet 0.6 + Butter + Pepper)(1.05^3) = 0.694575
            //1x = 0.7, x = 0.7
   
        <harvestcraft:broccolindipitem>.foodValues.hunger = 2;
            //(Broccoli 0.5 + Onion 0.5 ) = 1
        <harvestcraft:broccolindipitem>.foodValues.saturationModifier = 0.7;
            //( Broccoli 0.6 + Onion 0.6 + HEavyCream)(1.05^3) = 1.38915
            //2x = 1.4, x = 0.7

        <harvestcraft:mashedsweetpotatoesitem>.foodValues.hunger = 1;
        <harvestcraft:mashedsweetpotatoesitem>.foodValues.saturationModifier = 0.7;

        <harvestcraft:steamedpeasitem>.foodValues.hunger = 1;
        <harvestcraft:steamedpeasitem>.foodValues.saturationModifier = 0.7;
   
        <harvestcraft:roastedrootveggiemedleyitem>.foodValues.hunger = 4;
            //(4(veggie 0.5)) = 2
        <harvestcraft:roastedrootveggiemedleyitem>.foodValues.saturationModifier = 0.73;
            //(4(veggie 0.6))(1.05^4) = 2.917215
            //4x = 2.9, x ~= 0.73
   
        <harvestcraft:bakedturnipsitem>.foodValues.hunger = 1;
            //( Beet 0.5) = 0.5
        <harvestcraft:bakedturnipsitem>.foodValues.saturationModifier = 0.7;
            //( Beet 0.6 + Butter + Pepper)(1.05^3) = 0.694575
            //1x = 0.7, x = 0.7
   
        <harvestcraft:spicygreensitem>.foodValues.hunger = 3;
            //(3(veggie 0.5)) = 1.5
        <harvestcraft:spicygreensitem>.foodValues.saturationModifier = 0.77;
            //(3(veggie 0.6) + Mustard + Cooking Oil)(1.05^5) = 2.29730681
            //3x = 2.3, x ~= 0.77

    //Grain-related

        <harvestcraft:ricecakeitem>.foodValues.hunger = 1;
        <harvestcraft:ricecakeitem>.foodValues.saturationModifier = 0.6;
            //(Rice 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <harvestcraft:toastedsesameseedsitem>.foodValues.hunger = 1;
        <harvestcraft:toastedsesameseedsitem>.foodValues.saturationModifier = 0.6;
            //(sesameseeds 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6
  
        <harvestcraft:stuffedmushroomitem>.foodValues.hunger = 7;
            //(Toast 1.5 + CheeseWedge 1.5 + Mushroom .5) = 3.5
        <harvestcraft:stuffedmushroomitem>.foodValues.saturationModifier = 0.59;
            //(CHeese 2.5 + Mushroom 0.63)(1.05^2) + (Toast 0.6615)(1.025)= 4.1288625
            //7x = 4.1, x ~= 0.59

        <harvestcraft:spagettiitem>.foodValues.hunger = 4;
            //(Tomato 0.5 + 2Pasta 0.5 + Spice 0.5) = 2
        <harvestcraft:spagettiitem>.foodValues.saturationModifier = 0.55;
            //(Tomato 0.6 + Spices 0.6 + 2Pasta 0.3)(1.05^4)= 2.18791125
            //4x = 2.2, x = 0.55
  
        <harvestcraft:spagettiandmeatballsitem>.foodValues.hunger = 6;
            //(Tomato 0.5 + 2Pasta 0.5 + Spice 0.5 + Meatballs 1) = 3
        <harvestcraft:spagettiandmeatballsitem>.foodValues.saturationModifier = 0.53;
            //(Tomato 0.6 + Spices 0.6 + 2Pasta 0.3 + Meatballs 0.6)(1.05^6)= 3.21622953
            //6x = 3.2, x ~= 0.53
  
        <harvestcraft:friedriceitem>.foodValues.hunger = 3;
            //(Rice 0.5 + Carrot 0.5 + Onion 0.5) = 1.5
        <harvestcraft:friedriceitem>.foodValues.saturationModifier = 0.73;
            //(Rice 0.6 + Carrot 0.6 + Onion 0.6 + Egg)(1.05^4)= 2.18791125
            //3x = 2.2, x ~= 0.73
  
        <harvestcraft:curryitem>.foodValues.hunger = 5;
            //(Rice 0.5 + ChilliPepper 1 + Spices 0.5 + CocoMilk 0.5) = 2.5
        <harvestcraft:curryitem>.foodValues.saturationModifier = 0.62;
            //(Rice 0.6 + ChilliPepper 0.6 + Spices 0.6 + CocoMilk 0.6 + Salt)(1.05^5)= 3.06307575
            //5x = 3.1, x = 0.62
  
        <harvestcraft:refriedbeansitem>.foodValues.hunger = 2;
            //(Beans 0.5 + Onion 0.5) = 1
        <harvestcraft:refriedbeansitem>.foodValues.saturationModifier = 0.7;
            //(Beans 0.6 + Onion 0.6 + Butter)(1.05^3)= 1.38915
            //2x = 1.4, x = 0.7
  
        <harvestcraft:bakedbeansitem>.foodValues.hunger = 2;
            //(Beans 0.5 + Pork 1) = 1.5
        <harvestcraft:bakedbeansitem>.foodValues.saturationModifier = 0.7;
            //(Beans 0.6 + Onion 0.6 + Butter)(1.05^3)= 1.38915
            //2x = 1.4, x = 0.7
    
        <harvestcraft:beansandriceitem>.foodValues.hunger = 5;
            //(Beans 0.5 + Pork 1 + Rice 0.5 + Onion 0.5) = 2.5
        <harvestcraft:beansandriceitem>.foodValues.saturationModifier = 0.58;
            //(Beans 0.6 + Onion 0.6 + Pork 0.6 + Rice 0.6)(1.05^4)= 2.917215
            //5x = 2.9, x = 0.58
     
        <harvestcraft:chiliitem>.foodValues.hunger = 6;
            //(Beans 0.5 + Pork 1 + Corn 0.5 + Pepper 1) = 3
        <harvestcraft:chiliitem>.foodValues.saturationModifier = 0.48;
            //(Beans 0.6 + Corn 0.6 + Pork 0.6 + Pepper 0.6)(1.05^4)= 2.917215
            //6x = 2.9, x ~= 0.48
    
        <harvestcraft:extremechiliitem>.foodValues.hunger = 8;
            //( ChiliItem 3 + Chili 1) = 4
        <harvestcraft:extremechiliitem>.foodValues.saturationModifier = 0.49;
            //( Chili 0.6 + 8(Hellfiredust))(1.05^9) + (ChiliItem 2.917215) = 3.9209423
            //8x = 3.9, x ~= 0.49 
    
        <harvestcraft:eggplantparmitem>.foodValues.hunger = 6;
            //( Eggplant 0.5 + Tomato 0.5 + Cheese 1.5 + Pasta 0.5) = 3
        <harvestcraft:eggplantparmitem>.foodValues.saturationModifier = 0.78;
            //( Eggplant 0.6 + Tomato 0.6 + Cheese 2.5 + Pasta 0.2)(1.05^4) = 4.74047437
            //6x = 4.7, x ~= 0.78 
    
        <harvestcraft:broccolimacitem>.foodValues.hunger = 5;
            //( Broccoli 0.5 + Cheese 1.5 + Pasta 0.5) = 2.5
        <harvestcraft:broccolimacitem>.foodValues.saturationModifier = 0.46;
            //( Broccoli 0.6 + Cheese 2.5 + Pasta 0.2)(1.05^3) = 2.31525
            //5x = 2.3, x = 0.46

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

        <harvestcraft:teaitem>.foodValues.hunger = 1;
        <harvestcraft:teaitem>.foodValues.saturationModifier = 0.6;
            //(Tea 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

        <harvestcraft:coffeeitem>.foodValues.hunger = 1;
        <harvestcraft:coffeeitem>.foodValues.saturationModifier = 0.6;
            //(Tea 0.6)(1.05)= 0.63
            //1x = 0.6, x = 0.6

    //Candies

        <harvestcraft:taffyitem>.foodValues.hunger = 1;
        <harvestcraft:taffyitem>.foodValues.saturationModifier = 0.2;

        <harvestcraft:candiedlemonitem>.foodValues.hunger = 1;
        <harvestcraft:candiedlemonitem>.foodValues.saturationModifier = 0.2;
        
        <harvestcraft:marshmellowsitem>.foodValues.hunger = 0.1;
        <harvestcraft:marshmellowsitem>.foodValues.saturationModifier = 0.1;

        <harvestcraft:gingersnapsitem>.foodValues.hunger = 1;
        <harvestcraft:gingersnapsitem>.foodValues.saturationModifier = 0.7;
            //(SweetPotato 0.6 + Sugar + Cinnamon)(1.05^3)= 0.694575
            //1x = 0.7, x = 0.7

        <harvestcraft:candiedsweetpotatoesitem>.foodValues.hunger = 1;
        <harvestcraft:candiedsweetpotatoesitem>.foodValues.saturationModifier = 0.7;
            //(Ginger 0.6 + Sugar + Flour)(1.05^3)= 0.694575
            //1x = 0.7, x = 0.7

        <harvestcraft:candiedgingeritem>.foodValues.hunger = 1;
        <harvestcraft:candiedgingeritem>.foodValues.saturationModifier = 0.7;

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
    
    //Ice-creams

        <harvestcraft:icecreamitem>.foodValues.hunger = 1;
            //(3 Milk 2 / 3) = 2
        <harvestcraft:icecreamitem>.foodValues.saturationModifier = 1.15;
            //(3(Milk 0.6) + Snowball + Salt)(1.05^5) = 2.29730681
            //2x = 2.3, x = 1.15

        <harvestcraft:chocolateicecreamitem>.foodValues.hunger = 1;
            //(Icecream 2 + Cocoa) = 2
        <harvestcraft:chocolateicecreamitem>.foodValues.saturationModifier = 1.2;
            //(Icecream 2.29730681)(1.025) = 2.35473948
            //2x = 2.4, x = 1.2

    //Milk-related

        <animania:friesian_cheese_wedge>.foodValues.hunger = 3;
        <animania:friesian_cheese_wedge>.foodValues.saturationModifier = 2.5;

        <animania:holstein_cheese_wedge>.foodValues.hunger = 3;
        <animania:holstein_cheese_wedge>.foodValues.saturationModifier = 2.5;

        <animania:jersey_cheese_wedge>.foodValues.hunger = 3;
        <animania:jersey_cheese_wedge>.foodValues.saturationModifier = 2.5;

        <animania:goat_cheese_wedge>.foodValues.hunger = 3;
        <animania:goat_cheese_wedge>.foodValues.saturationModifier = 2.5;

        <animania:sheep_cheese_wedge>.foodValues.hunger = 3;
        <animania:sheep_cheese_wedge>.foodValues.saturationModifier = 2.5;

        <harvestcraft:chocolatebaritem>.foodValues.hunger = 1;
        <harvestcraft:chocolatebaritem>.foodValues.saturationModifier = 0.3;

        <harvestcraft:coconutmilkitem>.foodValues.hunger = 1;
        <harvestcraft:coconutmilkitem>.foodValues.saturationModifier = 0.6;

        <harvestcraft:chilichocolateitem>.foodValues.hunger = 3;
            //(Chocolate 0.5 + Chili 1) = 1.5
        <harvestcraft:chilichocolateitem>.foodValues.saturationModifier = 0.3;
            //(Chili 0.6)(1.05) + (Chocolate 0.3)(1.025) = 0.9375
            //3x = 0.9, x = 0.3

    //Breads
        //Breads that use dough instead of bread have values treated as bread
        //Batter is also to be treated as bread with 2n
        //Cornmeal is treated as 1 hunger and 0.6 Saturation
        //Milk is treated as 3n (Due to difficulty)
        <harvestcraft:toastitem>.foodValues.hunger = 3;
        <harvestcraft:toastitem>.foodValues.saturationModifier = 0.23;
            //(Bread 0.6 + Butter)(1.05^2) = 0.6615
            //3x = 0.7, x ~= 0.23

        <harvestcraft:pumpkinbreaditem>.foodValues.hunger = 4;
            //(Bread 1.5 + Pumpkin 0.5) = 2
        <harvestcraft:pumpkinbreaditem>.foodValues.saturationModifier = 0.23;
            //(Bread 0.6 + Pumpkin 0.2 + Sugar)(1.05^3) = 0.9261
            //4x = 0.9, x ~= 0.23

        <harvestcraft:cornbreaditem>.foodValues.hunger = 4;
            //(CornMeal 1 + Milk 1) = 2
        <harvestcraft:cornbreaditem>.foodValues.saturationModifier = 0.38;
            //(CornMeal 0.6 + Egg + Milk 0.6)(1.05^5) = 1.53153787
            //4x = 1.5, x ~= 0.38

        <harvestcraft:gingerbreaditem>.foodValues.hunger = 4;
            //(Ginger 0.5 + Batter 1.5) = 2
        <harvestcraft:gingerbreaditem>.foodValues.saturationModifier = 0.38;
            //(Ginger 0.6 + Batter 0.6 + Butter + Cinnamon)(1.05^5) = 1.53153787
            //4x = 1.5, x ~= 0.38

        <harvestcraft:garlicbreaditem>.foodValues.hunger = 4;
            //(Toast 1.5 + Garlic 0.5) = 2
        <harvestcraft:garlicbreaditem>.foodValues.saturationModifier = 0.33;
            //(Garlic 0.6 + Butter)(1.05^2)+(Toast 0.6615)(1.025) = 1.3395375
            //4x = 1.3, x ~= 0.33

        <harvestcraft:zucchinibreaditem>.foodValues.hunger = 5;
            //(Dough 1.5 + Zucchini 0.5 + Walnut 0.5) = 2.5
        <harvestcraft:zucchinibreaditem>.foodValues.saturationModifier = 0.33;
            //(Dough 0.6 + Zucchini 0.6 + Walnut 0.6 + Cinnamon)(1.05^4) = 2.18791125
            //5x = 2.2, x ~= 0.44

        <harvestcraft:walnutraisinbreaditem>.foodValues.hunger = 5;
            //(Dough 1.5 + Raisin 0.5 + Walnut 0.5) = 2.5
        <harvestcraft:walnutraisinbreaditem>.foodValues.saturationModifier = 0.4;
            //(Dough 0.6 + Walnut 0.6 + Cinnamon)(1.05^3) + (Raisin 0.63)(1.025) = 2.0349
            //5x = 2.0, x = 0.4

        <harvestcraft:banananutbreaditem>.foodValues.hunger = 7;
            //(Flour 1.5 + Banana 0.5 + Walnut 0.5 + Milk 1) = 3.5
        <harvestcraft:banananutbreaditem>.foodValues.saturationModifier = 0.46;
            //(Flour 0.6 + Banana 0.6 + Walnut 0.6 + Milk 0.6)(1.05^6) = 3.21622953
            //7x = 3.2, x ~= 0.46

        <harvestcraft:datenutbreaditem>.foodValues.hunger = 5;
            //(Dough 1.5 + Date 0.5 + Nut 0.5) = 2.5
        <harvestcraft:datenutbreaditem>.foodValues.saturationModifier = 0.42;
            //(Dough 0.6 + Date 0.6 + Nut 0.6)(1.05^3) = 2.083725
            //5x = 2.1, x = 0.42

        <harvestcraft:lavendershortbreaditem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:lavendershortbreaditem>.foodValues.saturationModifier = 0.22;
            //(Dough 0.6 + Lavebder Dye)(1.05^2) = 0.6615
            //3x = 0.67, x ~= 0.22

        <harvestcraft:fairybreaditem>.foodValues.hunger = 11;
            //(Bread 1.5 + 2(Pixie Dust 2)(rare item bonus)) = 5.5
        <harvestcraft:fairybreaditem>.foodValues.saturationModifier = 0.35;
            //(Bread 0.6 + 2(Pixie Dust 1.25)(rare item bonus) + Butter)(1.05^4) = 3.76806937
            //11x = 3.8, x ~= 0.35

        <harvestcraft:honeybreaditem>.foodValues.hunger = 3;
            //(Bread 1.5) = 1.5
        <harvestcraft:honeybreaditem>.foodValues.saturationModifier = 0.22;
            //(Bread 0.6 + Honey)(1.05^2) = 0.6615
            //3x = 0.67, x ~= 0.22

        <harvestcraft:festivalbreaditem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:festivalbreaditem>.foodValues.saturationModifier = 0.23;
            //(Dough 0.6 + Sugar + Cooking Oil)(1.05^3) = 0.694575
            //3x = 0.69, x = 0.23

        <harvestcraft:fruitcreamfestivalbreaditem>.foodValues.hunger = 4;
            //(FestivalBread 1.5 + Cherry 0.5) = 2
        <harvestcraft:fruitcreamfestivalbreaditem>.foodValues.saturationModifier = 0.35;
            //(Cherry 0.6 + Heavy Cream)(1.05^2) + (FestivalBread 0.694575)(1.025) = 1.37343937
            //4x = 1.4, x = 0.35

        <harvestcraft:vanillaconchasbreaditem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:vanillaconchasbreaditem>.foodValues.saturationModifier = 0.24;
            //(Dough 0.6 + Sugar + Egg + Vanilla)(1.05^4) = 0.72930375
            //3x = 0.73, x ~= 0.24

        <harvestcraft:cinnamonbreaditem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:cinnamonbreaditem>.foodValues.saturationModifier = 0.23;
            //(Dough 0.6 + Cinnamon + Butter)(1.05^3) = 0.694575
            //3x = 0.69, x = 0.23

        <harvestcraft:cinnamonbreaditem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:cinnamonbreaditem>.foodValues.saturationModifier = 0.23;
            //(Dough 0.6 + Cinnamon + Butter)(1.05^3) = 0.694575
            //3x = 0.69, x = 0.23
 
        <harvestcraft:cornbreaditem>.foodValues.hunger = 5;
            //(Cornmeal 1.5 + Milk 1) = 2.5
        <harvestcraft:cornbreaditem>.foodValues.saturationModifier = 0.28;
            //(Cornmeal 0.6 + Milk 0.6 + Egg)(1.05^3) = 1.38915
            //5x = 1.4, x = 0.28
 
        <harvestcraft:nachoesitem>.foodValues.hunger = 6;
            //(Tortilla 1.5 + CheeseWedge 1.5) = 3
        <harvestcraft:nachoesitem>.foodValues.saturationModifier = 0.57;
            //(Tortilla 0.6 + Cheese 2.5)(1.05^2) = 3.41775
            //6x = 3.4, x ~= 0.57
 
        <harvestcraft:tacoitem>.foodValues.hunger = 9;
            //(Tortilla 1.5 + CheeseWedge 1.5 + Steak 1 + Lettuce 0.5) = 4.5
        <harvestcraft:tacoitem>.foodValues.saturationModifier = 0.57;
            //(Tortilla 0.6 + Cheese 2.5 + Steak 0.6 + Lettuce 0.6)(1.05^4) = 5.22667687
            //9x = 5.2, x ~= 0.57
 
        <harvestcraft:fishtacoitem>.foodValues.hunger = 9;
            //(Tortilla 1.5 + CheeseWedge 1.5 + Steak 1 + Lettuce 0.5) = 4.5
        <harvestcraft:fishtacoitem>.foodValues.saturationModifier = 0.57;
            //(Tortilla 0.6 + Cheese 2.5 + Steak 0.6 + Lettuce 0.6)(1.05^4) = 5.22667687
            //9x = 5.2, x ~= 0.57
  
        <harvestcraft:lemonbaritem>.foodValues.hunger = 4;
            //(Dough 1.5 + Lemon 0.5) = 2
        <harvestcraft:lemonbaritem>.foodValues.saturationModifier = 0.35;
            //(Dough 0.6 + Lemon 0.6 + Sugar)(1.05^3) = 1.38915
            //4x = 1.4, x = 0.35
  
        <harvestcraft:blueberrymuffinitem>.foodValues.hunger = 4;
            //(Batter 1.5 + Blueberry 0.5) = 2
        <harvestcraft:blueberrymuffinitem>.foodValues.saturationModifier = 0.33;
            //(Batter 0.6 + Blueberry 0.6)(1.05^2) = 1.323
            //4x = 1.3, x ~= 0.33
  
        <harvestcraft:pancakesitem>.foodValues.hunger = 5;
            //(Batter 1.5 + Milk 1) = 2.5
        <harvestcraft:pancakesitem>.foodValues.saturationModifier = 0.28;
            //(Batter 0.6 + Milk 0.6 + Water)(1.05^3) = 1.38915
            //5x = 1.4, x = 0.28
  
        <harvestcraft:pancakesitem>.foodValues.hunger = 6;
            //(Pancake 2.5 + Blueberry 0.5) = 3
        <harvestcraft:pancakesitem>.foodValues.saturationModifier = 0.35;
            //(Blueberry 0.6)(1.05) + (Pancake 1.38915)(1.025) = 2.05387875
            //6x = 2.1, x = 0.35
   
        <harvestcraft:softpretzelitem>.foodValues.hunger = 3;
            //(Dough 1.5) = 1.5
        <harvestcraft:softpretzelitem>.foodValues.saturationModifier = 0.23;
            //(Dough 0.6 + water + salt + butter)(1.05^4) = 0.72930375
            //3x = 0.7, x ~= 0.23
    
        <harvestcraft:softpretzelandmustarditem>.foodValues.hunger = 3;
        <harvestcraft:softpretzelandmustarditem>.foodValues.saturationModifier = 0.4;

    //Cookies
 
        <harvestcraft:peanutbuttercookiesitem>.foodValues.hunger = 1;
        <harvestcraft:peanutbuttercookiesitem>.foodValues.saturationModifier = 1;
  
        <harvestcraft:raisincookiesitem>.foodValues.hunger = 1;
        <harvestcraft:raisincookiesitem>.foodValues.saturationModifier = 0.8;
 
    //Pies
 
        <harvestcraft:applepieitem>.foodValues.hunger = 5;
            //(Apple 0.5 + Sugar 0.5 + Dough 1.5) = 2.5
        <harvestcraft:applepieitem>.foodValues.saturationModifier = 0.42;
            //(Apple 0.6 + Caramel 0.6 + Dough 0.6)(1.05^3)= 2.083725
            //5x = 2.1, x = 0.42 
 
        <harvestcraft:chickenpotpieitem>.foodValues.hunger = 8;
            //(Chicken 1 + Dough 1.5 + Carrot 0.5 + Potato 1) = 4
        <harvestcraft:chickenpotpieitem>.foodValues.saturationModifier = 0.36;
            //(Carrot 0.6 + Potato 0.6 + Chicken 0.6 + Dough 0.6)(1.05^4)= 2.917215
            //8x = 2.9, x = 0.36
 
        <harvestcraft:strawberrypieitem>.foodValues.hunger = 4;
            //(Strawberry 0.5 + Dough 1.5) = 2
        <harvestcraft:strawberrypieitem>.foodValues.saturationModifier = 0.38;
            //(Strawberry 0.6 + Dough 0.6)(1.05^4)= 1.4586075
            //4x = 1.5, x ~= 0.38
 
        <harvestcraft:lemonmeringueitem>.foodValues.hunger = 4;
            //(Lemon 0.5 + Dough 1.5) = 2
        <harvestcraft:lemonmeringueitem>.foodValues.saturationModifier = 0.38;
            //(Lemon 0.6 + Dough 0.6 + Sugar + Meringue)(1.05^4)= 1.4586075
            //4x = 1.5, x ~= 0.38
 
        <harvestcraft:blueberrypieitem>.foodValues.hunger = 4;
            //(Blueberry 0.5 + Dough 1.5) = 2
        <harvestcraft:blueberrypieitem>.foodValues.saturationModifier = 0.35;
            //(Blueberry 0.6 + Dough 0.6 + Sugar)(1.05^3)= 1.38915
            //4x = 1.4, x = 0.35
 
        <harvestcraft:cherrypieitem>.foodValues.hunger = 4;
            //(cherry 0.5 + Dough 1.5) = 2
        <harvestcraft:cherrypieitem>.foodValues.saturationModifier = 0.35;
            //(cherry 0.6 + Dough 0.6 + Sugar)(1.05^3)= 1.38915
            //4x = 1.4, x = 0.35
 
        <harvestcraft:sweetpotatopieitem>.foodValues.hunger = 4;
            //(SweetPotato 0.5 + Dough 1.5) = 2
        <harvestcraft:sweetpotatopieitem>.foodValues.saturationModifier = 0.38;
            //(SweetPotato 0.6 + Dough 0.6 + Marshmallow + Cinnamon)(1.05^4)= 1.4586075            //4x = 1.4, x = 0.35
            //4x = 1.5, x ~= 0.38

    //Sandwiches

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

        <harvestcraft:hotdogitem>.foodValues.hunger = 6;
            //Bread 1.5 + Weiner 1.5 = 3
        <harvestcraft:hotdogitem>.foodValues.saturationModifier = 0.22;
            //(Bread 0.6 + Weiner 0.6))(1.05^2) = 1.323
            //6x = 1.32, x = 0.22

        <harvestcraft:hamburgeritem>.foodValues.hunger = 6;
            //Bread 1.5 + Patty 1.5 = 3
        <harvestcraft:hamburgeritem>.foodValues.saturationModifier = 0.22;
            //(Bread 0.6 + Patty 0.6))(1.05^2) = 1.323
            //6x = 1.32, x = 0.22

        <harvestcraft:cheeseburgeritem>.foodValues.hunger = 9;
            //Hamburger 3 + Cheese 1.5 = 4.5
        <harvestcraft:cheeseburgeritem>.foodValues.saturationModifier = 0.44;
            //(Cheese 2.5)(1.05) + (Hamburger 1.323)(1.025) = 3.981075
            //9x = 4.0, x ~= 0.44

        <harvestcraft:bltitem>.foodValues.hunger = 7;
            //Toast 1.5 + Pork 1 + Lettuce 0.5 + Tomato 0.5 = 3.5
        <harvestcraft:bltitem>.foodValues.saturationModifier = 0.44;
            //(Pork 0.6 + Lettuce 0.6 + Tomato 0.6)(1.05^3) + (Toast 0.6)(1.025) = 2.698725
            //9x = 4.0, x ~= 0.44

        <harvestcraft:beanburritoitem>.foodValues.hunger = 8;
            //Beans 0.5 + Tortilla 1.5 + Rice 0.5 + Cheese 1.5 = 4
        <harvestcraft:beanburritoitem>.foodValues.saturationModifier = 0.65;
            //(Beans 0.6 + Tortilla 0.6 + Rice 0.6 + Cheese 2.5)(1.05^4) = 5.22667687
            //8x = 5.2, x = 0.65

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

        <harvestcraft:chickennoodlesoupitem>.foodValues.hunger = 4;
            //Chicken 1 + Stock 0.5 + Carrot 0.5= 2;
        <harvestcraft:chickennoodlesoupitem>.foodValues.saturationModifier = 0.33;
            //(Carrot 0.3 + Chicken 0.6 + Stock 0.2 + Pasta)(1.05^4) = 1.33705687
            //4x = 1.3, x ~= 0.33

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

        <harvestcraft:beetsoupitem>.foodValues.hunger = 4;
            //Onion 0.5 + Beet 0.5 + Milk 1 = 2;
        <harvestcraft:beetsoupitem>.foodValues.saturationModifier = 0.6;
            //(Onion 0.6 + Beet 0.6 + Milk 0.6 + Pepper)(1.05^6) = 2.41217215
            //4x = 2.4, x = 0.6

        <harvestcraft:creamedbroccolisoupitem>.foodValues.hunger = 3;
            //Carrot 0.5 + Broccoli 0.5 + Stock 0.5 = 1.5;
        <harvestcraft:creamedbroccolisoupitem>.foodValues.saturationModifier = 0.47;
            //(Carrot 0.3 + Broccoli 0.6 + Stock 0.2 + Pepper + Flour)(1.05^5) = 1.40390971
            //3x = 1.4, x ~= 0.47

        <harvestcraft:splitpeasoupitem>.foodValues.hunger = 4;
            //Peas 0.5 + Pork 1 + Stock 0.5 = 2.0;
        <harvestcraft:splitpeasoupitem>.foodValues.saturationModifier = 0.43;
            //(Peas 0.6 + Pork 0.6 + Stock 0.2 + Pepper)(1.05^4) = 1.70170875
            //4x = 1.7, x ~= 0.43

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

        <harvestcraft:lambbarleysoupitem>.foodValues.hunger = 6;
            //Veggie 0.5 + Veggie 0.5 + Stock 0.5 + Barley 0.5 + Mutton 1 = 3;
        <harvestcraft:lambbarleysoupitem>.foodValues.saturationModifier = 0.55;
            //(Veggie 0.6 + Veggie 0.6 + Barley 0.6 + Stock 0.2 + Mutton 0.6)(1.05^5) = 3.31833206
            //6x = 3.3, x = 0.55

        <harvestcraft:leekbaconsoupitem>.foodValues.hunger = 4;
            //Leek 0.5 + Veggie 0.5 + Pork 1 = 2;
        <harvestcraft:leekbaconsoupitem>.foodValues.saturationModifier = 0.55;
            //(Leek 0.6 + Veggie 0.6 + Pork 0.6 + Cream)(1.05^4) = 2.18791125
            //4x = 2.2, x = 0.55

        <harvestcraft:peaandhamsoupitem>.foodValues.hunger = 7;
            //Peas 0.5 + 4(Veggie 0.5) + Pork 1 = 3.5;
        <harvestcraft:peaandhamsoupitem>.foodValues.saturationModifier = 0.69; //nice
            //(Peas 0.6 + 4(Veggie 0.6) + RawPork 0.6)(1.05^6) = 4.8243443
            //7x = 4.8, ~= 0.69 

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

        <harvestcraft:potroastitem>.foodValues.hunger = 5;
            //Stock 0.5 + 2(Veggie 0.5) + Beef 1 = 2.5;
        <harvestcraft:potroastitem>.foodValues.saturationModifier = 0.6;
            //(Stock 0.2 + 2(Veggie 0.6) + Beef 0.6)(1.05^4)= 2.4310125
            //4x = 2.4, x = 0.6

        <harvestcraft:mushroomrisottoitem>.foodValues.hunger = 6;
            //Rice 0.5 + Mushroom 0.5 + Onion 0.5 + Cheese 1.5 = 3;
        <harvestcraft:mushroomrisottoitem>.foodValues.saturationModifier = 0.87;
            //(Rice 0.6 + Mushroom 0.6 + Onion 0.6 + Cheese 2.5)(1.05^4)= 5.22667687
            //6x = 5.2, x ~= 0.87

        <harvestcraft:creamedbroccolisoupitem>.foodValues.hunger = 4;
            //Broccoli 0.5 + Carrot 0.5 + Flour 0.5 + Stock 0.5 = 2;
        <harvestcraft:creamedbroccolisoupitem>.foodValues.saturationModifier = 0.6;
            //(Broccoli 0.6 + Carrot 0.6 + Flour 0.6 + Stock 0.2)(1.05^4)= 2.4310125
            //4x = 2.4, x = 0.6

        <harvestcraft:plainyogurtitem>.foodValues.hunger = 1;
        <harvestcraft:plainyogurtitem>.foodValues.saturationModifier = 0.1;

        <harvestcraft:pineappleyogurtitem>.foodValues.hunger = 2;
            //Yogurt 0.5 + Pineapple 0.5= 1;
        <harvestcraft:pineappleyogurtitem>.foodValues.saturationModifier = 0.45;
            //(Yongurt 0.2 + Pineapple 0.6)(1.05^2)= 0.882
            //2x = 0.9, x = 0.45

// Copy Paste
/*
.foodValues.hunger = ;
.foodValues.saturationModifier = ;
*/
