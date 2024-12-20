#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[tag=wasd.poisoned,scores={wasd.appl_damage=1..}] run function wasd.apple:apple/poison/deal_damage
execute as @s[tag=wasd.crying_obsidian_apple] run function wasd.apple:apple_tick/crying_obsidian
execute as @s[tag=wasd.dance_apple] run function wasd.apple:apple_tick/dance
execute as @s[tag=wasd.egg_apple] run function wasd.apple:apple_tick/egg
execute as @s[tag=wasd.flare_apple] run function wasd.apple:apple_tick/flare
execute as @s[tag=wasd.glowstone_apple] run function wasd.apple:apple_tick/glowstone
execute as @s[tag=wasd.nether_apple] run function wasd.apple:apple_tick/nether
execute as @s[tag=wasd.slime_apple] run function wasd.apple:apple_tick/slime