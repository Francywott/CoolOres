#built using mc-build (https://github.com/mc-build/mc-build)

execute at @e[type=minecraft:horse,sort=nearest,limit=1] run summon minecraft:skeleton_horse
execute as @e[type=minecraft:skeleton_horse,limit=1,sort=nearest] run function wasd.apple:apple/__generated__/block/2
summon minecraft:item ~ ~ ~ {PickupDelay:20,Tags:["horse_armor"],Item:{id:"minecraft:barrier",Count:1b}}
data modify entity @e[type=item,sort=nearest,limit=1,tag=horse_armor,nbt={Item:{id:"minecraft:barrier",Count:1b}}] Item set from entity @e[type=minecraft:horse,sort=nearest,limit=1] ArmorItems[2]
kill @e[type=item,sort=nearest,limit=1,tag=horse_armor,nbt={Item:{id:"minecraft:barrier",Count:1b}}]
tp @e[type=minecraft:horse,sort=nearest,limit=1] ~ -1000 ~
kill @s