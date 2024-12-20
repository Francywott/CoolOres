#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[tag=!wasd.poisoned_transferred] positioned ^ ^ ^3 run function wasd.apple:apple/poison/__generated__/block/5
scoreboard players reset @s[scores={wasd.do_damage=1..}] wasd.do_damage