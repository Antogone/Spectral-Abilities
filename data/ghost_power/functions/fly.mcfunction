##
 # fly.mcfunction
 # 
 #
 # Created by .
##

execute as @a[tag=spectral,x_rotation=-90,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing if block ^ ^ ^0.1 #minecraft:phasing run tp @s ^ ^ ^1.6
execute as @a[tag=spectral,x_rotation=90,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing if block ^ ^ ^0.1 #minecraft:phasing run tp @s ^ ^ ^1.6

execute as @a[tag=spectral,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing if block ^ ^ ^1 #minecraft:phasing run tp @s ^ ^ ^1


execute as @a[tag=spectral,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^ ^ #minecraft:phasing run tp @s ^ ^ ^
execute as @a[tag=spectral,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^1 ^ #minecraft:phasing run tp @s ^ ^ ^
execute as @a[tag=spectral,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^-1 ^ #minecraft:phasing run tp @s ^ ^ ^


execute as @a[tag=spectral,gamemode=!spectator] at @s anchored eyes if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^ ^0.6 #minecraft:phasing run tp @s ^ ^ ^
execute as @a[tag=spectral,gamemode=!spectator] at @s anchored feet if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^ ^1 #minecraft:phasing run tp @s ^ ^ ^

execute as @a[tag=spectral,gamemode=!spectator] at @s anchored eyes if block ~ ~-1 ~ #minecraft:phasing unless block ^ ^ ^ #minecraft:phasing run tp @s ^ ^ ^


execute as @a[tag=spectral,gamemode=!spectator] at @s if block ~ ~-1 ~ #minecraft:phasing if block ^ ^ ^1 #minecraft:phasing run effect give @s levitation 1 0 true
execute as @a[tag=spectral,gamemode=!spectator] at @s unless block ~ ~-1 ~ #minecraft:phasing run effect give @s slow_falling 8 0 true
execute as @a[tag=spectral,gamemode=!spectator] at @s unless block ~ ~-1 ~ #minecraft:phasing run effect give @s jump_boost 1 1 true

