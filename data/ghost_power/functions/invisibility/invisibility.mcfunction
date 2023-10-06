##
 # invisibility.mcfunction
 # 
 #
 # Created by .
##
execute as @a[scores={energy=..14},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..14},tag=spectral] run return 0
execute as @a[scores={energy=15..},tag=spectral] run scoreboard players remove @p[tag=spectral] energy 15

tag @p[tag=spectral,tag=no_inv] add inv 
tag @p[tag=spectral,tag=no_inv] remove no_inv

execute as @a[tag=pos,limit=1] at @s run function ghost_power:possession/fin_possession


effect give @p[tag=spectral,tag=inv] invisibility 5 5 true
execute as @a[tag=spectral] run function ghost_power:item_store/recup

execute at @p[tag=spectral] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force

team leave Invisibility
team join cooldown Invisibility
scoreboard players set @a[tag=spectral] cloud1 4
scoreboard players set @a[tag=spectral] nuage1 90
scoreboard players set @p[tag=spectral] sneak 0
