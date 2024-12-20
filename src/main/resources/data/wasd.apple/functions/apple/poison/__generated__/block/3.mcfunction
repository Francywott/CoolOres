#built using mc-build (https://github.com/mc-build/mc-build)

tag @s remove wasd.poisoned
tag @s remove wasd.poisoned_transferred
tag @s[tag=!wasd.slime_apple,tag=!wasd.nether_apple,tag=!wasd.flare_apple,tag=!wasd.egg_apple,tag=!wasd.dance_apple,tag=!wasd.crying_obsidian_apple,tag=!wasd.poisoned] remove wasd.apple_effect
scoreboard players reset @s wasd.poison_time
scoreboard players reset @s wasd.p_death