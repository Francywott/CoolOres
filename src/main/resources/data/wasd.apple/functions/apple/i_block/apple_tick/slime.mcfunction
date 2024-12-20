#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s w.slime_timer 1
effect give @s minecraft:jump_boost 1 255 true
particle minecraft:sneeze ~ ~0.2 ~ 0.2 0.2 0.2 0 2
execute as @s[scores={w.slime_timer=600..}] run function wasd.apple:apple/i_block/apple_tick/__generated__/block/16