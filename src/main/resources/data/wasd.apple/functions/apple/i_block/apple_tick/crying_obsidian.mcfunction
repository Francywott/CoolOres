#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard players add @s w.crying_timer 1
particle minecraft:falling_obsidian_tear ~ ~0.2 ~ 0.2 0.2 0.2 0 2
execute if block ~1 ~-0.5 ~1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~1 ~-0.5 ~1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~1 ~-0.5 ~0 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~1 ~-0.5 ~0 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~1 ~-0.5 ~-1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~1 ~-0.5 ~-1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~0 ~-0.5 ~1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~0 ~-0.5 ~1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~0 ~-0.5 ~0 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~0 ~-0.5 ~0 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~0 ~-0.5 ~-1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~0 ~-0.5 ~-1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~-1 ~-0.5 ~1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~-1 ~-0.5 ~1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~-1 ~-0.5 ~0 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~-1 ~-0.5 ~0 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute if block ~-1 ~-0.5 ~-1 lava[level=0] align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=wasd.crying_obsidian_apple,distance=..0.3] run summon minecraft:marker ~-1 ~-0.5 ~-1 {Tags:["wasd.apple_entity","wasd.crying_obsidian_apple"]}
execute as @s[scores={w.crying_timer=600..}] run function wasd.apple:apple/i_block/apple_tick/__generated__/block/10