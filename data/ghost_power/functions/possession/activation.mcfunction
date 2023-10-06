##
 # activation.mcfunction
 # 
 #
 # Created by .
##
execute at @a[tag=spectral] as @a[tag=spectral] run execute if entity @e[tag=!spectral,type=!player,type=!#dontharm,distance=..6,sort=nearest,limit=1] run tag @s add valide_possession
execute unless entity @a[tag=valide_possession] run return 0



execute as @a[scores={energy=..19},tag=spectral,tag=valide_possession] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..19},tag=spectral,tag=valide_possession] run return 0
execute as @a[scores={energy=20..},tag=spectral,tag=valide_possession] run scoreboard players remove @p[tag=spectral] energy 20


execute as @a[tag=valide_possession,tag=inv] at @s run function ghost_power:invisibility/normal

execute as @a[tag=spectral,limit=1] at @s positioned ^ ^ ^6 run execute as @e[distance=..6,type=!player,type=!#dontharm,tag=!spectral,tag=!haunted,limit=1,sort=nearest] at @s run tag @s add possessed
tag @a[tag=valide_possession] add pos

execute as @a[tag=pos] run function ghost_power:item_store/recup



data modify entity @e[tag=possessed,limit=1,sort=nearest] NoAI set value 1
team join possession @a[tag=pos]




execute if entity @e[tag=possessed,type=#minecraft:fire_mob] run tag @e[tag=spectral] add f_pos
execute if entity @e[tag=possessed,type=#minecraft:water_mob] run tag @e[tag=spectral] add w_pos
execute if entity @e[tag=possessed,type=!#minecraft:fire_mob,type=!#minecraft:water_mob,type=!#dontharm] run tag @e[tag=spectral] add n_pos

tag @a[tag=valide_possession] remove valide_possession

team leave Possession
team join cooldown Possession
scoreboard players set @a[tag=spectral] cloud4 4
scoreboard players set @a[tag=spectral] nuage4 780
scoreboard players set @p[tag=spectral] sneak 0


