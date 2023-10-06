##
 # normal.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=spectral,tag=inv] add no_inv 
execute as @a[tag=spectral] run function ghost_power:item_store/normal
tag @p[tag=spectral] remove inv 

effect clear @p[tag=spectral,tag=no_inv] invisibility
execute at @p[tag=spectral] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force


team leave Invisibility
team join cooldown Invisibility

scoreboard players set @p[tag=spectral] cloud1 4
scoreboard players set @p[tag=spectral] nuage1 90
scoreboard players set @p[tag=spectral] sneak 0
