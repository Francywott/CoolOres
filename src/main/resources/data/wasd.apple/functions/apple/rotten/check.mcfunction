#built using mc-build (https://github.com/mc-build/mc-build)

execute as @s[nbt={Item:{tag:{wasd_apple_type:3b}}}] run function wasd.apple:apple/rotten/replace
execute as @s[nbt={Item:{tag:{wasd_apple_type:5b}}}] run function wasd.apple:apple/bone_replace
tag @s add wasd.not_rotten