#built using mc-build (https://github.com/mc-build/mc-build)


execute as @s[tag=wasd.north] run summon minecraft:item ~ ~-0.7 ~-0.7 {Motion:[0.0,0.1,-0.15],Item:{id:"minecraft:golden_apple",Count:1b,tag:{display:{Name:'{"text":"Flare Apple","italic":false}',Lore:['{"text":"Shoot a bunch of fireworks into the sky.","color":"white","italic":false}']},CustomModelData:6370008,wasd_apple:1b,wasd_apple_type:9b}}}
execute as @s[tag=wasd.south] run summon minecraft:item ~ ~-0.7 ~0.7 {Motion:[0.0,0.1,0.15],Item:{id:"minecraft:golden_apple",Count:1b,tag:  {display:{Name:'{"text":"Flare Apple","italic":false}',Lore:['{"text":"Shoot a bunch of fireworks into the sky.","color":"white","italic":false}']},CustomModelData:6370008,wasd_apple:1b,wasd_apple_type:9b}}}
execute as @s[tag=wasd.east] run summon minecraft:item ~0.7 ~-0.7 ~ {Motion:[0.15,0.1,0.0],Item:{id:"minecraft:golden_apple",Count:1b,tag:   {display:{Name:'{"text":"Flare Apple","italic":false}',Lore:['{"text":"Shoot a bunch of fireworks into the sky.","color":"white","italic":false}']},CustomModelData:6370008,wasd_apple:1b,wasd_apple_type:9b}}}
execute as @s[tag=wasd.west] run summon minecraft:item ~-0.7 ~-0.7 ~ {Motion:[-0.15,0.1,0.0],Item:{id:"minecraft:golden_apple",Count:1b,tag: {display:{Name:'{"text":"Flare Apple","italic":false}',Lore:['{"text":"Shoot a bunch of fireworks into the sky.","color":"white","italic":false}']},CustomModelData:6370008,wasd_apple:1b,wasd_apple_type:9b}}}

playsound block.anvil.use player @a[distance=..10] ~ ~ ~ 1 1
particle smoke ~ ~ ~ 0 0 0 0.1 10 force
execute positioned ~ ~-0.1 ~ run function wasd.lib:crafter/remove_items
execute store result score @s wasd.temp run data get block ~ ~-0.1 ~ Items
execute if score @s wasd.temp matches 1.. run function wasd.apple:recipes