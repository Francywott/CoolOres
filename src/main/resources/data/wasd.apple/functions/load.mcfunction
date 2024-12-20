#built using mc-build (https://github.com/mc-build/mc-build)

scoreboard objectives add wasd_data_packs dummy
scoreboard players set wasd_apples wasd_data_packs 1
scoreboard objectives add wasd.song_id dummy
scoreboard objectives add wasd.eat_apple minecraft.used:minecraft.golden_apple
scoreboard objectives add wasd.hold_apple dummy
scoreboard objectives add wasd.apple_timer dummy
scoreboard objectives add wasd.poison_time dummy
scoreboard objectives add wasd.appl_damage minecraft.custom:minecraft.damage_dealt
scoreboard objectives add wasd.p_death deathCount
scoreboard objectives add wasd.shift_apple minecraft.custom:minecraft.sneak_time
scoreboard objectives add wasd.apple_click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add w.crying_timer dummy
scoreboard objectives add w.dance_timer dummy
scoreboard objectives add w.egg_timer dummy
scoreboard objectives add w.flare_timer dummy
scoreboard objectives add w.glowstone_time dummy
scoreboard objectives add w.nether_timer dummy
scoreboard objectives add w.slime_timer dummy
scoreboard objectives add w.apple_settings dummy
scoreboard objectives add wasd.lib_setting dummy
scoreboard players set wasd.crafter wasd.lib_setting 1
schedule function wasd.apple:outdated_lib 1t
function wasd.lib:on_load/text
function wasd.apple:config