##
 # fin_possession.mcfunction
 # 
 #
 # Created by Antogone.
##
execute as @a[tag=pos] run function ghost_power:item_store/normal


damage @e[tag=possessed,limit=1] 4 minecraft:magic by @p[tag=spectral]
data modify entity @e[tag=possessed,limit=1,sort=nearest] NoAI set value 0
execute as @e[tag=possessed] run tag @s remove possessed

tag @a[tag=pos] remove w_pos
tag @a[tag=pos] remove n_pos
tag @a[tag=pos] remove f_pos
tag @a[tag=pos] remove fly_pos

tag @a[tag=pos] remove valide_possession
tag @a[tag=pos] remove pos

execute as @a[tag=spectral] run team leave @s

team leave Possession
team join cooldown Possession
scoreboard players set @a[tag=spectral] cloud4 4
scoreboard players set @a[tag=spectral] nuage4 400
