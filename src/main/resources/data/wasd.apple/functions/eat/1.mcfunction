#built using mc-build (https://github.com/mc-build/mc-build)

advancement revoke @s only wasd.apple:eat/1
tag @s add wasd.ate_custom_apple
schedule function wasd.apple:remove_effects 1t
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:300,Tags:["wasd.spectator_apple_location"]}
function wasd.lib:util/store_uuid
scoreboard players operation @e[type=area_effect_cloud,tag=wasd.spectator_apple_location,limit=1,distance=..1,sort=nearest] wasd.uuid1 = @s wasd.uuid1
scoreboard players operation @e[type=area_effect_cloud,tag=wasd.spectator_apple_location,limit=1,distance=..1,sort=nearest] wasd.uuid2 = @s wasd.uuid2
scoreboard players operation @e[type=area_effect_cloud,tag=wasd.spectator_apple_location,limit=1,distance=..1,sort=nearest] wasd.uuid3 = @s wasd.uuid3
scoreboard players operation @e[type=area_effect_cloud,tag=wasd.spectator_apple_location,limit=1,distance=..1,sort=nearest] wasd.uuid4 = @s wasd.uuid4
tp @e[type=area_effect_cloud,tag=wasd.spectator_apple_location,limit=1,distance=..1,sort=nearest] @s
execute as @s[gamemode=survival] run tag @s add wasd.survival
execute as @s[gamemode=adventure] run tag @s add wasd.adventure
execute as @s[gamemode=creative] run tag @s add wasd.creative
gamemode spectator @s
playsound minecraft:block.enchantment_table.use player @s ~ ~ ~ 10 0
particle dust 0.271 1.000 0.161 3 ~ ~1 ~ 0.2 0.4 0.2 1 10 normal
particle dust 0.729 1.000 0.380 3 ~ ~1 ~ 0.2 0.4 0.2 1 10 normal