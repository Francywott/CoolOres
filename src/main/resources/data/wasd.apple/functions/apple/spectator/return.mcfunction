#built using mc-build (https://github.com/mc-build/mc-build)

execute at @a if score @s wasd.uuid1 = @p wasd.uuid1 if score @s wasd.uuid2 = @p wasd.uuid2 if score @s wasd.uuid3 = @p wasd.uuid3 if score @s wasd.uuid4 = @p wasd.uuid4 run tp @p @s
execute as @p at @s run function wasd.apple:apple/spectator/reset
kill @s