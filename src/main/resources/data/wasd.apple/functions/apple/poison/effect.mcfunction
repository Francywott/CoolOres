#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[scores={wasd.p_death=1..}] run function wasd.apple:apple/poison/__generated__/block/3
execute as @s[scores={wasd.do_damage=1..},tag=!wasd.poisoned_transferred] positioned ^ ^ ^3 run function wasd.apple:apple/poison/__generated__/block/4
scoreboard players reset @s[scores={wasd.do_damage=1..}] wasd.do_damage