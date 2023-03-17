
#loader crafttweaker reloadableevents

import crafttweaker.events.IEventManager;
import crafttweaker.entity.IEntityDefinition;
import crafttweaker.entity.IEntityItem;
import crafttweaker.entity.IEntity;
import crafttweaker.item.IItemStack;

/**
 * Pigs => Piglet(Baby), Sow(Female), Hog(Male)
 */
val pigs as IItemStack[][IEntityDefinition] = {
    <entity:animania:sow_duroc>             : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_hampshire>         : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_large_black>       : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_large_white>       : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_old_spot>          : [<minecraft:bone> * 3, <pyrotech:hide_pig>],
    <entity:animania:sow_yorkshire>         : [<minecraft:bone> * 3, <pyrotech:hide_pig>],

    <entity:animania:hog_duroc>             : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_hampshire>         : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_large_black>       : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_large_white>       : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_old_spot>          : [<minecraft:bone> * 4, <pyrotech:hide_pig>],
    <entity:animania:hog_yorkshire>         : [<minecraft:bone> * 4, <pyrotech:hide_pig>]
};

/**
 * Goats => Kid(Baby), Doe(Female), Buck(Male)
 */
val goats as IItemStack[][IEntityDefinition] = {
    <entity:animania:doe_alpine>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_angora>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_fainting>          : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:doe_kiko>              : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:doe_kinder>            : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:doe_nigerian_dwarf>    : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_gray>         ],
    <entity:animania:doe_pygmy>             : [<minecraft:bone> * 2, <pyrotech:pelt_sheep_gray_light>   ],

    <entity:animania:buck_alpine>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_angora>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_fainting>         : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_white>        ],
    <entity:animania:buck_kiko>             : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:buck_kinder>           : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_brown>        ],
    <entity:animania:buck_nigerian_dwarf>   : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_gray>         ],
    <entity:animania:buck_pygmy>            : [<minecraft:bone> * 3, <pyrotech:pelt_sheep_gray_light>   ]
};

/**
 * Cows => Calf(Baby), Cow(Female), Bull(Male)
 */
val cows as IItemStack[][IEntityDefinition] = {
    <entity:animania:cow_angus>             : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_friesian>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_hereford>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_highland>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_holstein>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_jersey>            : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_longhorn>          : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],
    <entity:animania:cow_mooshroom>         : [<minecraft:bone> * 5, <pyrotech:pelt_cow>],

    <entity:animania:bull_angus>            : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_friesian>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_hereford>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_highland>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_holstein>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_jersey>           : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_longhorn>         : [<minecraft:bone> * 6, <pyrotech:pelt_cow>],
    <entity:animania:bull_mooshroom>        : [<minecraft:bone> * 6, <pyrotech:pelt_cow>]
};

/**
 * Sheeps => Lamb(Baby), Ewe(Female), Ram(Male)
 */
val sheeps as IItemStack[][IEntityDefinition] = {
    <entity:animania:ewe_dorper>            : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],
    <entity:animania:ewe_dorset>            : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],
    <entity:animania:ewe_friesian>          : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],
    <entity:animania:ewe_jacob>             : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],
    <entity:animania:ewe_merino>            : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],
    <entity:animania:ewe_suffolk>           : [<minecraft:bone> * 3, <animania:raw_prime_mutton> * 3],

    <entity:animania:ram_dorper>            : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4],
    <entity:animania:ram_dorset>            : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4],
    <entity:animania:ram_friesian>          : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4],
    <entity:animania:ram_jacob>             : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4],
    <entity:animania:ram_merino>            : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4],
    <entity:animania:ram_suffolk>           : [<minecraft:bone> * 4, <animania:raw_prime_mutton> * 4]
};

/**
 * Chickens => Chick(Baby), Hen(Female), Rooster(Male)
 */
val chickens as IItemStack[][IEntityDefinition] = {
    <entity:animania:hen_leghorn>               : [<minecraft:bone> * 1],
    <entity:animania:hen_orpington>             : [<minecraft:bone> * 1],
    <entity:animania:hen_plymouth_rock>         : [<minecraft:bone> * 1],
    <entity:animania:hen_rhode_island_red>      : [<minecraft:bone> * 1],
    <entity:animania:hen_wyandotte>             : [<minecraft:bone> * 1],

    <entity:animania:rooster_leghorn>           : [<minecraft:bone> * 2],
    <entity:animania:rooster_orpington>         : [<minecraft:bone> * 2],
    <entity:animania:rooster_plymouth_rock>     : [<minecraft:bone> * 2],
    <entity:animania:rooster_rhode_island_red>  : [<minecraft:bone> * 2],
    <entity:animania:rooster_wyandotte>         : [<minecraft:bone> * 2]
};

/**
 * Others => Wolf, Polar Bear, Llama, Horse, Bat
 */
val others as IItemStack[][IEntityDefinition] = {
    <entity:minecraft:wolf>                     : [<minecraft:bone> * 3, <pyrotech:pelt_wolf>],
    <entity:minecraft:polar_bear>               : [<minecraft:bone> * 6, <pyrotech:pelt_polar_bear>],
    <entity:minecraft:llama>                    : [<minecraft:bone> * 3, <pyrotech:pelt_llama_white>],
    <entity:minecraft:bat>                      : [<pyrotech:pelt_bat>],
};

val sheepPelts as IItemStack[IItemStack] = {
    <minecraft:wool>    : <pyrotech:pelt_sheep_white>           ,
    <minecraft:wool:1>  : <pyrotech:pelt_sheep_orange>          ,
    <minecraft:wool:2>  : <pyrotech:pelt_sheep_magenta>         ,
    <minecraft:wool:3>  : <pyrotech:pelt_sheep_blue_light>      ,
    <minecraft:wool:4>  : <pyrotech:pelt_sheep_yellow>          ,
    <minecraft:wool:5>  : <pyrotech:pelt_sheep_lime>            ,
    <minecraft:wool:6>  : <pyrotech:pelt_sheep_pink>            ,
    <minecraft:wool:7>  : <pyrotech:pelt_sheep_gray>            ,
    <minecraft:wool:8>  : <pyrotech:pelt_sheep_gray_light>      ,
    <minecraft:wool:9>  : <pyrotech:pelt_sheep_cyan>            ,
    <minecraft:wool:10> : <pyrotech:pelt_sheep_purple>          ,
    <minecraft:wool:11> : <pyrotech:pelt_sheep_blue>            ,
    <minecraft:wool:12> : <pyrotech:pelt_sheep_brown>           ,
    <minecraft:wool:13> : <pyrotech:pelt_sheep_green>           ,
    <minecraft:wool:14> : <pyrotech:pelt_sheep_red>             ,
    <minecraft:wool:15> : <pyrotech:pelt_sheep_black>           ,

    <animania:wool>     : <pyrotech:pelt_sheep_brown>           ,
    <animania:wool:1>   : <pyrotech:pelt_sheep_black>           ,
    <animania:wool:2>   : <pyrotech:pelt_sheep_brown>           ,
    <animania:wool:3>   : <pyrotech:pelt_sheep_white>           ,
    <animania:wool:4>   : <pyrotech:pelt_sheep_brown>           ,
    <animania:wool:5>   : <pyrotech:pelt_sheep_white>           ,
    <animania:wool:6>   : <pyrotech:pelt_sheep_brown>
};

function addDrops(entities as IItemStack[][IEntityDefinition], event as crafttweaker.event.EntityLivingDeathDropsEvent, removeDrops as bool) as void {
    for entity, items in entities {
        if (!isNull(event.entity.definition) && event.entity.definition.name == entity.name) {
            if (removeDrops) event.drops = [];

            // Do not drop anything when killed by a mob.
            if (event.damageSource.damageType == "mob") {
                event.drops = [];
                return;
            }

            for item in items event.addItem(item);
        }
        entity.removeDrop(<minecraft:leather>);
    }
}

function dropColoredPelt(pelts as IItemStack[IItemStack], drop as IItemStack, event as crafttweaker.event.EntityLivingDeathDropsEvent) as void {
    for wool, pelt in pelts {
        if (wool.name == drop.name) {
            event.drops = [];
            event.addItem(pelt);
            break;
        }
    }
}

function addDropsSheep(entities as IItemStack[][IEntityDefinition], pelts as IItemStack[IItemStack], event as crafttweaker.event.EntityLivingDeathDropsEvent) as void {
    for entity, items in entities {
        if (!isNull(event.entity.definition) && event.entity.definition.name == entity.name) {

	    // Do not drop anything when killed by a mob.
            if (event.damageSource.damageType == "mob") {
                event.drops = [];
                return;
            }

            // Store drops for later use.
            val storedDrops = event.drops;

            // Remove all drops and add sheared hide.
            event.drops = [];
            event.addItem(<pyrotech:hide_sheep_sheared>);

            // Replace wool with the correct types of pelt.
            // If successful, remove all drops again.
            for drop in storedDrops dropColoredPelt(pelts, drop.item, event);

            // Add remaining items.
            for item in items event.addItem(item);
        }
    }
}


events.onEntityLivingDeathDrops(function(event as crafttweaker.event.EntityLivingDeathDropsEvent) {
    if (isNull(event.entity.world) || event.entity.world.isRemote()) {
        return;
	}

    addDrops(pigs, event, false);
    addDrops(goats, event, false);
    addDrops(cows, event, false);
    addDropsSheep(sheeps, sheepPelts, event);
    addDrops(chickens, event, false);
    addDrops(others, event, true);

});
