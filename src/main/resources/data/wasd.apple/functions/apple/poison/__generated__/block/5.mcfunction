#built using mc-build (https://github.com/mc-build/mc-build)

execute as @e[distance=..10,nbt={HurtTime:10s}] run tag @s add wasd.poisoned
execute as @e[distance=..10,nbt={HurtTime:10s}] run tag @s add wasd.poisoned_transferred
execute if entity @e[distance=..10,nbt={HurtTime:10s}] run tag @s remove wasd.poisoned
execute if entity @e[distance=..10,nbt={HurtTime:10s}] run scoreboard players reset @s wasd.poison_time