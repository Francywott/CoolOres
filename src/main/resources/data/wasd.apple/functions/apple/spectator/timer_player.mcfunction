#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s wasd.apple_timer 1
execute as @s[scores={wasd.apple_timer=10..}] run function wasd.apple:apple/spectator/reset