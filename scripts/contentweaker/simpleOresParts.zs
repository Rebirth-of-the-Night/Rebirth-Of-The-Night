#priority 500
#loader contenttweaker

import mods.contenttweaker.Color;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;

// addMaterial(name as string, color as string, parts as string[], moltenStats as int[], ignoreTint as string[]);

addMaterial("Copper", "D98D3F", ["nugget", "molten", "dust"], [1350, 8000, 7, 4000], [""]);
addMaterial("Tin", "D0D0D0", ["nugget", "molten", "dust"], [500, 6980, 5, 1900], [""]);
addMaterial("Mythril", "4390F5", ["nugget", "molten", "dust"], [2500, 4750, 10, 5500], [""]);
addMaterial("Viridium", "4CEF5A", ["nugget", "molten", "dust"], [2500, 3860, 9, 3200], [""]);
addMaterial("Soulforged Steel", "535052", ["molten", "dust"], [2350, 8050, 10, 1800], [""]);
addMaterial("Onyx Alloy", "280606", ["molten"], [2650, 6125, 9, 5700], [""]);
addMaterial("Coade Stone", "301807", ["molten"], [1375, 3100, 8, 4900], [""]);
addMaterial("Endorium", "219484", ["dust"], [0], [""]);
addMaterial("Crucible Steel", "3E3E3E", ["dust"], [0], [""]);
addMaterial("Iron", "E5DADA", ["dust"], [0], [""]);
addMaterial("Gold", "F0CA2F", ["dust"], [0], [""]);
addMaterial("Silver", "D2DCE8", ["dust"], [0], [""]);
addMaterial("Zinc", "E3EAE8", ["ore", "ingot", "block", "nugget", "molten", "dust"], [500, 3100, 7, 1900], [""]);
addMaterial("Ambrosium", "FFE666", ["molten", "dust"], [195, 1125, 12, 6050], [""]);
addMaterial("Gravitite", "F468D6", ["ingot","nugget","molten", "dust"], [20, 1000, 0, 20], ["ingot"]);

// Add new materials using this function!
// New materials are automatically oredicted.
// Parameters:
// - name: a string for the name of the material
// - color: a string for the hex code of the color of the material
// - parts: a string array for the parts to use
// - moltenStats: an int array for the stats of the molten form of the material. ignored if the molten form doesn't exist
//     stats in order:
//      - temperature
//      - density
//      - luminosity
//      - viscosity
// - ignoreTint: a string array containing the parts that shouldn't have tints
function addMaterial(name as string, color as string, parts as string[], moltenStats as int[], ignoreTint as string[]) {
    var acolor = Color.fromHex(color) as Color;
    var mat = MaterialSystem.getMaterialBuilder().setName(name).setColor(acolor).build();
    
    for part in parts {
        var p = mat.registerPart(part);
        
        if (part has "molten" && moltenStats.length >= 4) {
            var d = p.getData();
            d.addDataValue("temperature", moltenStats[0]);
            d.addDataValue("density", moltenStats[1]);
            d.addDataValue("luminosity", moltenStats[2]);
            d.addDataValue("viscosity", moltenStats[3]);
        }
        
        if (ignoreTint has part) {
            p.setColorized(false);
        }
    }
}