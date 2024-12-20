#built using mc-build (https://github.com/mc-build/mc-build)

effect clear @s jump_boost
tag @s remove wasd.slime_apple
tag @s[tag=!wasd.slime_apple,tag=!wasd.nether_apple,tag=!wasd.flare_apple,tag=!wasd.egg_apple,tag=!wasd.dance_apple,tag=!wasd.crying_obsidian_apple,tag=!wasd.poisoned] remove wasd.apple_effect
scoreboard players reset @s w.slime_timer