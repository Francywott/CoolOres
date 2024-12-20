#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[scores={wasd.shift_apple=1..}] at @s run scoreboard players add @s wasd.song_id 1
stopsound @s record
stopsound @s music
execute as @s unless score @s wasd.song_id matches 1.. run scoreboard players set @s wasd.song_id 1
execute if score @s wasd.song_id matches 17.. run scoreboard players set @s wasd.song_id 1
execute if score @s wasd.song_id matches 1 run title @s actionbar {"text":"Now playing: C418 - 13","color":"dark_purple"}
execute if score @s wasd.song_id matches 1 run playsound minecraft:music_disc.13 record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 2 run title @s actionbar {"text":"Now playing: C418 - cat","color":"dark_purple"}
execute if score @s wasd.song_id matches 2 run playsound minecraft:music_disc.cat record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 3 run title @s actionbar {"text":"Now playing: C418 - blocks","color":"dark_purple"}
execute if score @s wasd.song_id matches 3 run playsound minecraft:music_disc.blocks record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 4 run title @s actionbar {"text":"Now playing: C418 - chirp","color":"dark_purple"}
execute if score @s wasd.song_id matches 4 run playsound minecraft:music_disc.chirp record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 5 run title @s actionbar {"text":"Now playing: C418 - far","color":"dark_purple"}
execute if score @s wasd.song_id matches 5 run playsound minecraft:music_disc.far record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 6 run title @s actionbar {"text":"Now playing: C418 - mall","color":"dark_purple"}
execute if score @s wasd.song_id matches 6 run playsound minecraft:music_disc.mall record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 7 run title @s actionbar {"text":"Now playing: C418 - mellohi","color":"dark_purple"}
execute if score @s wasd.song_id matches 7 run playsound minecraft:music_disc.mellohi record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 8 run title @s actionbar {"text":"Now playing: C418 - stal","color":"dark_purple"}
execute if score @s wasd.song_id matches 8 run playsound minecraft:music_disc.stal record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 9 run title @s actionbar {"text":"Now playing: C418 - strad","color":"dark_purple"}
execute if score @s wasd.song_id matches 9 run playsound minecraft:music_disc.strad record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 10 run title @s actionbar {"text":"Now playing: C418 - ward","color":"dark_purple"}
execute if score @s wasd.song_id matches 10 run playsound minecraft:music_disc.ward record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 11 run title @s actionbar {"text":"Now playing: C418 - 11","color":"dark_purple"}
execute if score @s wasd.song_id matches 11 run playsound minecraft:music_disc.11 record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 12 run title @s actionbar {"text":"Now playing: C418 - wait","color":"dark_purple"}
execute if score @s wasd.song_id matches 12 run playsound minecraft:music_disc.wait record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 13 run title @s actionbar {"text":"Now playing: Lena Raine - Pigstep","color":"dark_purple"}
execute if score @s wasd.song_id matches 13 run playsound minecraft:music_disc.pigstep record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 14 run playsound minecraft:music_disc.otherside record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 14 run title @s actionbar {"text":"Now playing: Lena Raine - otherside","color":"dark_purple"}
execute if score @s wasd.song_id matches 15 run playsound minecraft:music_disc.5 record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 15 run title @s actionbar {"text":"Now playing: Samuel Aberg - 5","color":"dark_purple"}
execute if score @s wasd.song_id matches 16 run playsound minecraft:music_disc.relic record @s ~ ~ ~ 1000000 1
execute if score @s wasd.song_id matches 16 run title @s actionbar {"text":"Now playing: Aaron Cherof - Relic","color":"dark_purple"}