##
 # deactivate.mcfunction
 # 
 #
 # Created by .
##
execute as @a[tag=spectral,limit=1] at @s run tag @s remove hybrid
execute as @a[tag=spectral] run function ghost_power:item_store/normal

team leave Haunting
team join cooldown Haunting
scoreboard players set @p[tag=spectral] cloud3 4
scoreboard players set @p[tag=spectral] nuage3 180
