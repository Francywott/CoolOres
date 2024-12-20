#built using mc-build (https://github.com/mc-build/mc-build)

advancement revoke @s only wasd.apple:eat/2
tag @s add wasd.ate_custom_apple
schedule function wasd.apple:remove_effects 1t
tag @s add wasd.spectator_apple_player
execute as @s[gamemode=survival] run tag @s add wasd.survival
execute as @s[gamemode=adventure] run tag @s add wasd.adventure
execute as @s[gamemode=creative] run tag @s add wasd.creative
gamemode spectator @s
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 10 0
particle dust 0.271 1.000 0.161 3 ~ ~1 ~ 0.2 0.4 0.2 1 10 normal
particle dust 0.729 1.000 0.380 3 ~ ~1 ~ 0.2 0.4 0.2 1 10 normal