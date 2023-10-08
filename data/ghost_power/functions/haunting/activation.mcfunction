##
 # activation.mcfunction
 # 
 #
 # Created by .
##

execute at @a[tag=spectral] as @a[tag=spectral] run execute if entity @e[tag=!spectral,type=!#minecraft:dontharm,distance=..6,sort=nearest] run tag @s add valide_haunt

execute unless entity @a[tag=valide_haunt] run return 0

execute as @a[scores={energy=..9},tag=spectral,tag=valide_haunt] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..9},tag=spectral,tag=valide_haunt] run return 0
execute as @a[scores={energy=10..},tag=spectral,tag=valide_haunt] run scoreboard players remove @p[tag=spectral] energy 10

execute as @a[tag=pos,limit=1] at @s run function ghost_power:possession/fin_possession

execute as @a[tag=spectral,limit=1] at @s positioned ^ ^ ^6 run execute as @e[distance=..6,type=!#minecraft:dontharm,tag=!spectral,tag=!haunted] at @s run scoreboard players set @s timehunt 1
execute as @a[tag=spectral,limit=1] at @s positioned ^ ^ ^6 run execute as @e[distance=..6,type=!#minecraft:dontharm,tag=!spectral,tag=!haunted] at @s run tag @s add haunted

team leave Haunting
team join cooldown Haunting
scoreboard players set @a[tag=spectral] cloud3 4
scoreboard players set @a[tag=spectral] nuage3 1
scoreboard players set @p[tag=spectral] sneak 0
tag @a[tag=valide_haunt] remove valide_haunt