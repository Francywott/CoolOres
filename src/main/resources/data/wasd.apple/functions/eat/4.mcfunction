#built using mc-build (https://github.com/mc-build/mc-build)

advancement revoke @s only wasd.apple:eat/4
tag @s add wasd.ate_custom_apple
schedule function wasd.apple:remove_effects 1t
tag @s add wasd.poisoned
tag @s add wasd.apple_effect