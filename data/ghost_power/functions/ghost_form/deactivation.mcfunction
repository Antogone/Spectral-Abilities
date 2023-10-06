##
 # deactivation.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set @p[tag=spectral] sneak 0

execute as @e[tag=spectral] at @s run gamemode survival @a[tag=surv,limit=1]
execute as @e[tag=spectral] at @s run gamemode creative @a[tag=crea,limit=1]
execute as @e[tag=spectral] at @s run gamemode adventure @a[tag=adv,limit=1]


tag @a[tag=spectral] remove crea
tag @a[tag=spectral] remove surv
tag @a[tag=spectral] remove adv
tag @a[tag=spectral] remove ghost
