## Minecraft load time benchmark


---

<p align="center" style="font-size:160%;">
MC total load time:<br>
803.62 sec
<br>
<sup><sub>(
13:23 min
)</sub></sup>
</p>

<br>


<p align="center">
<img src="https://quickchart.io/chart?w=400&h=30&c={
  type: 'horizontalBar',
  data: {
    datasets: [
      {label:      'MODS:', data: [570.56]},
      {label: 'FML stuff:', data: [233.06]}
    ]
  },
  options: {
    scales: {
      xAxes: [{display: false,stacked: true}],
      yAxes: [{display: false,stacked: true}],
    },
    elements: {rectangle: {borderWidth: 2}},
    legend: {display: false,},
    plugins: {datalabels: {color: 'white',formatter: (value, context) =>
      [context.dataset.label, value].join(' ')
    }}
  }
}"/>
</p>

<br>

# Mods Loading Time
<p align="center">
<img src="https://quickchart.io/chart?w=400&h=300&c={
  type: 'outlabeledPie',
  options: {
    cutoutPercentage: 25,
    plugins: {
      legend: !1,
      outlabels: {
        stretch: 5,
        padding: 1,
        text: (v,i)=>[
          v.labels[v.dataIndex],' ',
          (v.percent*1000|0)/10,
          String.fromCharCode(37)].join('')
      }
    }
  },
  data: {...
`
3e76ba  33.84s Just Enough Items;
386AA7   8.38s Just Enough Items (Plugins);
386AA7  11.20s Just Enough Items (Ingredient Filter);
17666e  36.91s TextureFix;
5161a8  16.90s CraftTweaker2;
495797  10.61s CraftTweaker2 (Script Loading);
518ba8  22.32s Charset;
8f6c30  13.93s Dynamic Surroundings;
ba3eb8  13.60s Cyclic;
538f30  11.17s Animania;
308f7e  10.60s Quark: RotN Edition;
9e9c21  10.52s Biomes O' Plenty;
219e5e   9.71s Pollution of the Realms;
176e56   9.68s Better With Mods;
a88651   9.52s Multi Mob Core;
3e8160   9.44s The Twilight Forest;
214d9e   9.29s Minecraft Forge;
175c6e   9.27s Pyrotech;
4e2164   8.06s Sampling Performance Profiler;
cd2caa   8.04s Probe;
212164   7.89s Ice and Fire: RotN Edition;
51a857   7.37s Caliper;
a88251   7.05s Advanced Lifting Methods;
444444 187.51s 79 Other mods;
333333  87.47s 250 'Fast' mods (load 1.0s - 0.1s);
222222   0.30s 13 'Instant' mods (load %3C 0.1s)
`
    .split(';').reduce((a, l) => {
      l.match(/(\w{6}) *(\d*\.\d*)s (.*)/)
      .slice(1).map((a, i) => [[String.fromCharCode(35),a].join(''), parseFloat(a), a][i])
      .forEach((s, i) => 
        [a.datasets[0].backgroundColor, a.datasets[0].data, a.labels][i].push(s)
      );
      return a
    }, {
      labels: [],
      datasets: [{
        backgroundColor: [],
        data: [],
        borderColor: 'rgba(22,22,22,0.3)',
        borderWidth: 1
      }]
    })
  }
}"/>
</p>

<br>

# Top Mods Details (except JEI, FML and Forge)
<p align="center">
<img src="https://quickchart.io/chart?w=400&h=450&c={
  options: {
    scales: {
      xAxes: [{stacked: true}],
      yAxes: [{stacked: true}],
    },
    plugins: {
      datalabels: {
        anchor: 'end',
        align: 'top',
        color: 'white',
        backgroundColor: 'rgba(46, 140, 171, 0.6)',
        borderColor: 'rgba(41, 168, 194, 1.0)',
        borderWidth: 0.5,
        borderRadius: 3,
        padding: 0,
        font: {size:10},
        formatter: (v,ctx) => 
          ctx.datasetIndex!=ctx.chart.data.datasets.length-1 ? null
            : [((ctx.chart.data.datasets.reduce((a,b)=>a- -b.data[ctx.dataIndex],0)*10)|0)/10,'s'].join('')
      },
      colorschemes: {
        scheme: 'office.Damask6'
      }
    }
  },
  type: 'bar',
  data: {...(() => {
    let a = { labels: [], datasets: [] };
`
1: Construction;
2: Loading Resources;
3: PreInitialization;
4: Initialization;
5: InterModComms$IMC;
6: PostInitialization;
7: LoadComplete;
8: ModIdMapping
`
    .split(';')
      .map(l => l.match(/\d: (.*)/).slice(1))
      .forEach(([name]) => a.datasets.push({ label: name, data: [] }));
`
                            1      2      3      4      5      6      7      8  ;
TextureFix              |  0.05|  0.00|  0.02|  0.02|  0.00| 36.80|  0.03|  0.00;
CraftTweaker2           |  2.55|  0.02| 18.26|  0.61|  0.00|  6.02|  0.06|  0.00;
Charset                 |  0.09|  0.04|  2.79|  0.75|  0.00| 18.63|  0.02|  0.00;
Dynamic Surroundings    |  1.56|  0.04|  0.49|  0.62|  0.00|  0.12| 11.10|  0.00;
Cyclic                  |  0.28|  0.14| 11.37|  1.72|  0.00|  0.06|  0.03|  0.00;
Animania                |  0.42|  0.05|  9.48|  0.16|  0.00|  1.03|  0.02|  0.00;
Quark: RotN Edition     |  0.07|  0.05|  9.95|  0.26|  0.00|  0.26|  0.02|  0.00;
Biomes O' Plenty        |  0.10|  0.10| 10.22|  0.03|  0.00|  0.05|  0.02|  0.00;
Pollution of the Realms |  0.77|  0.01|  7.69|  0.09|  0.00|  1.14|  0.02|  0.00;
Better With Mods        |  0.96|  0.05|  5.19|  1.21|  0.02|  2.24|  0.02|  0.00;
Multi Mob Core          |  0.31|  0.00|  0.44|  0.05|  0.00|  8.69|  0.02|  0.00;
The Twilight Forest     |  3.10|  0.07|  4.29|  1.90|  0.01|  0.05|  0.02|  0.00
`
    .split(';').slice(1)
      .map(l => l.split('|').map(s => s.trim()))
      .forEach(([name, ...arr], i) => {
        a.labels.push(name);
        arr.forEach((v, j) => a.datasets[j].data[i] = v)
      }); return a
  })()}
}"/>
</p>

<br>

# TOP JEI Registered Plugis
<p align="center">
<img src="https://quickchart.io/chart?w=700&c={
  options: {
    elements: { rectangle: { borderWidth: 1 } },
    legend: false
  },
  type: 'horizontalBar',
    data: {...(() => {
      let a = {
        labels: [], datasets: [{
          backgroundColor: 'rgba(0, 99, 132, 0.5)',
          borderColor: 'rgb(0, 99, 132)',
          data: []
        }]
      };
`
  3.61: mezz.jei.plugins.vanilla.VanillaPlugin;
  1.03: com.codetaylor.mc.athenaeum.integration.jei.PluginDelegate;
  0.85: sandro.RedstonePlusPlus.Modules.ImprovedCraftingTables.JeiPlugin;
  0.31: exter.foundry.integration.jei.JEIFoundryPlugin;
  0.21: knightminer.inspirations.plugins.jei.JEIPlugin;
  0.21: rustic.compat.jei.RusticJEIPlugin;
  0.21: hellfirepvp.modularmachinery.common.integration.ModIntegrationJEI;
  0.17: betterwithmods.module.compat.jei.JEI;
  0.17: crafttweaker.mods.jei.JEIAddonPlugin;
  0.13: se.gory_moon.horsepower.jei.HorsePowerPlugin;
  0.13: betterwithaddons.interaction.jei.BWAJEIPlugin;
  0.12: com.lothrazar.cyclicmagic.compat.jei.JEIPlugin;
  0.11: net.pearx.jehc.jei.JehcPlugin;
  0.10: xt9.inworldcrafting.integrations.jei.Plugin;
  0.10: lumien.randomthings.handler.compability.jei.RandomThingsPlugin;
  0.92: Other 37 Plugins
`
        .split(';')
        .map(l => l.split(':'))
        .forEach(([time, name]) => {
          a.labels.push(name);
          a.datasets[0].data.push(time)
        })
        ; return a
    })()
  }
}"/>
</p>

<br>

# FML Stuff
<p align="center">
<img src="https://quickchart.io/chart?w=500&h=400&c={
  options: {
    rotation: Math.PI,
    cutoutPercentage: 55,
    plugins: {
      legend: !1,
      outlabels: {
        stretch: 5,
        padding: 1,
        text: (v)=>v.labels
      },
      doughnutlabel: {
        labels: [
          {
            text: 'FML stuff:',
            color: 'rgba(128, 128, 128, 0.5)',
            font: {size: 18}
          },
          {
            text: [233.06,'s'].join(''),
            color: 'rgba(128, 128, 128, 1)',
            font: {size: 22}
          }
        ]
      },
    }
  },
  type: 'outlabeledPie',
  data: {...(() => {
    let a = {
      labels: [],
      datasets: [{
        backgroundColor: [],
        data: [],
        borderColor: 'rgba(22,22,22,0.3)',
        borderWidth: 2
      }]
    };
`
993A00   4.77s Loading sounds;
994400   4.87s Loading Resource - SoundHandler;
994F00  34.41s ModelLoader: blocks;
995900  20.25s ModelLoader: items;
996300  14.20s ModelLoader: baking;
996D00   2.60s Applying remove recipe actions;
997700   0.19s Applying remove furnace recipe actions;
998200  11.05s Indexing ingredients;
444444 140.73s Other
`
    .split(';')
      .map(l => l.match(/(\w{6}) *(\d*\.\d*)s (.*)/))
      .forEach(([, col, time, name]) => {
        a.labels.push([name, ' ', time, 's'].join(''));
        a.datasets[0].data.push(parseFloat(time));
        a.datasets[0].backgroundColor.push([String.fromCharCode(35), col].join(''))
      })
      ; return a
  })()}
}"/>
</p>

<br>
