#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s wasd.timer 1
execute if block ~ ~ ~ lava[level=0] as @s[scores={wasd.timer=1}] run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ obsidian as @s[scores={wasd.timer=300..}] run setblock ~ ~ ~ minecraft:lava
execute unless block ~ ~ ~ minecraft:obsidian run kill @s
kill @s[scores={wasd.timer=300..}]