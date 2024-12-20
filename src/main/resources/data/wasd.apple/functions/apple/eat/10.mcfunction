#built using mc-build (https://github.com/mc-build/mc-build)

advancement revoke @s only wasd.apple:eat/10
tag @s add wasd.ate_custom_apple
schedule function wasd.apple:remove_effects 1t
effect give @s glowing 120 0 true
playsound block.beacon.activate player @a ~ ~ ~ 1 1