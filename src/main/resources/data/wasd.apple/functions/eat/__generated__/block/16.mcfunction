#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players set @s wasd.temp 20
tag @s add wasd.randomized

function wasd.lib:rng/1-20
scoreboard players operation @s wasd.temp += @s wasd.rng

execute store result entity @s LifeTime int 1 run scoreboard players get @s wasd.temp

function wasd.lib:rng/1-5
execute as @s[scores={wasd.rng=2}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Type set value 1
execute as @s[scores={wasd.rng=3}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Type set value 2
execute as @s[scores={wasd.rng=4}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Type set value 3
execute as @s[scores={wasd.rng=5}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Type set value 4


function wasd.lib:rng/1-4
execute as @s[scores={wasd.rng=2}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Flicker set value 1
execute as @s[scores={wasd.rng=3..4}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Trail set value 1
execute as @s[scores={wasd.rng=4}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Flicker set value 1


function wasd.lib:rng/1-30

execute as @s[scores={wasd.rng=1}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16711680
execute as @s[scores={wasd.rng=2}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16724736
execute as @s[scores={wasd.rng=3}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16737792
execute as @s[scores={wasd.rng=4}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16776960
execute as @s[scores={wasd.rng=5}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 10092288
execute as @s[scores={wasd.rng=6}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 3997440
execute as @s[scores={wasd.rng=7}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 65348
execute as @s[scores={wasd.rng=8}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 65442
execute as @s[scores={wasd.rng=9}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 65518
execute as @s[scores={wasd.rng=10}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 54783
execute as @s[scores={wasd.rng=11}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 33023
execute as @s[scores={wasd.rng=12}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 19967
execute as @s[scores={wasd.rng=13}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 2818303
execute as @s[scores={wasd.rng=14}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 8388863
execute as @s[scores={wasd.rng=15}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 11731967
execute as @s[scores={wasd.rng=16}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 15073535
execute as @s[scores={wasd.rng=17}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16711867
execute as @s[scores={wasd.rng=18}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16711808
execute as @s[scores={wasd.rng=19}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16711705
execute as @s[scores={wasd.rng=20}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16761538
execute as @s[scores={wasd.rng=21}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16741375
execute as @s[scores={wasd.rng=22}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 9232639
execute as @s[scores={wasd.rng=23}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 8781713
execute as @s[scores={wasd.rng=24}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 16775861
execute as @s[scores={wasd.rng=25}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 9699328
execute as @s[scores={wasd.rng=26}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 9718272
execute as @s[scores={wasd.rng=27}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 2331648
execute as @s[scores={wasd.rng=28}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 2708
execute as @s[scores={wasd.rng=29}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 9699476
execute as @s[scores={wasd.rng=30}] run data modify entity @s FireworksItem.tag.Fireworks.Explosions[0].Colors[0] set value 196610

function wasd.lib:rng/rotation_data
execute rotated as @s positioned ^ ^ ^0.1 run function wasd.lib:math/apply_motion
