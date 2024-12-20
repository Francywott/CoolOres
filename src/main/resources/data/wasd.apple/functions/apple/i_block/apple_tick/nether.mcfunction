#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s w.nether_timer 1
setblock ~ ~ ~ fire keep
execute as @s[scores={w.nether_timer=300..}] run function wasd.apple:apple/i_block/apple_tick/__generated__/block/15