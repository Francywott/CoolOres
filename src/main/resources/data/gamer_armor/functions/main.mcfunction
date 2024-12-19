schedule function gamer_armor:main 2t

execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}}]}] run function gamer_armor:gamer_boots
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:101b,tag:{RGB:1b}}]}] run function gamer_armor:gamer_leggings
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:102b,tag:{RGB:1b}}]}] run function gamer_armor:gamer_chestplate
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:103b,tag:{RGB:1b}}]}] run function gamer_armor:gamer_helmet

execute as @a if entity @s[nbt={Inventory:[{tag:{RGB:1b}}]}] run scoreboard players add @s gamer_armor 1

execute as @a if entity @s[nbt={Inventory:[{tag:{RGB:1b}}]}] if score @s gamer_armor matches 7.. run scoreboard players set @s gamer_armor 0

execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s speed 1 24 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s haste 1 255 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s strength 1 255 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s jump_boost 1 24 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s resistance 1 255 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s fire_resistance 1 0 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s water_breathing 1 0 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s night_vision 11 0 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s dolphins_grace 1 24 true
execute as @a at @s if entity @s[nbt={Inventory:[{Slot:100b,tag:{RGB:1b}},{Slot:101b,tag:{RGB:1b}},{Slot:102b,tag:{RGB:1b}},{Slot:103b,tag:{RGB:1b}}]}] run effect give @s saturation 1 255 true