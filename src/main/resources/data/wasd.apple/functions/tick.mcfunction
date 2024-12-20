#built using mc-build (https://github.com/mc-build/mc-build)

execute as @a at @s run function wasd.apple:as_players
execute if score recipes w.apple_settings matches 1 as @e[tag=wasd.custom_crafter,tag=wasd.crafter.has_items,tag=wasd.crafter_change] at @s run function wasd.apple:recipes
execute if score wasd.global_1 wasd.timer matches 1 as @a at @s run function wasd.apple:slow_tick
execute if score wasd.global_1 wasd.timer matches 1 as @e[tag=wasd.spectator_apple_location] at @s run function wasd.apple:apple/spectator/timer
execute if score wasd.global_10 wasd.timer matches 1 as @e[tag=wasd.poisoned] at @s run effect give @s minecraft:wither 1 1 true
execute if score wasd.global_5 wasd.timer matches 1 as @e[type=item,tag=!wasd.not_rotten] at @s if entity @e[type=minecraft:horse,distance=..2] run function wasd.apple:apple/rotten/check
execute as @e[tag=wasd.apple_entity] at @s run function wasd.apple:as_apple_entities