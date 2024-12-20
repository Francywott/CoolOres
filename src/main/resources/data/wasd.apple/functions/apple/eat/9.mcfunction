#built using mc-build (https://github.com/mc-build/mc-build)

advancement revoke @s only wasd.apple:eat/9
tag @s add wasd.ate_custom_apple
schedule function wasd.apple:remove_effects 1t
summon firework_rocket ~ ~ ~ {LifeTime:100,Tags:["wasd.apple_entity","wasd.firework"]}