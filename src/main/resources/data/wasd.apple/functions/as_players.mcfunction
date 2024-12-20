#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[tag=wasd.apple_effect] run function wasd.apple:apple_effect
execute as @s[scores={wasd.apple_click=1..}] run function wasd.apple:apple/i_block/on_click
scoreboard players reset @s wasd.shift_apple
scoreboard players reset @s wasd.appl_damage