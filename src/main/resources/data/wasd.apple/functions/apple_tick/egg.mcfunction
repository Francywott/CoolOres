#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s w.egg_timer 1
execute if score wasd.global_5 wasd.timer matches 1 run function wasd.apple:apple_tick/__generated__/block/9
execute as @s[scores={w.egg_timer=1200..}] run function wasd.apple:apple_tick/__generated__/block/10