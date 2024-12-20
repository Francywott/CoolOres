#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[tag=wasd.spectator_apple_player] run function wasd.apple:apple/spectator/timer_player
execute as @s[tag=wasd.poisoned,scores={wasd.p_death=1..}] run function wasd.apple:apple/poison/reset