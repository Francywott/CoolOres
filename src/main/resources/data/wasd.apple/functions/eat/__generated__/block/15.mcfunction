#built using mc-build (https://github.com/mc-build/mc-build)

playsound minecraft:entity.firework_rocket.launch block @a ~ ~ ~ 1 1
summon firework_rocket ~ ~ ~ {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~0.1 ~ ~ {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~-0.1 ~ ~ {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~ ~ ~0.1 {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~ ~ ~-0.1 {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~0.2 ~ ~ {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~-0.2 ~ ~ {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~ ~ ~0.2 {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
summon firework_rocket ~ ~ ~-0.2 {Tags:["wasd.random_firework"],LifeTime:40,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Flicker:0b,Trail:0b,Colors:[I;16711680]}]}}}}
execute as @e[type=firework_rocket,tag=wasd.random_firework,sort=nearest,limit=9,tag=!wasd.randomized] at @s run function wasd.apple:eat/__generated__/block/16