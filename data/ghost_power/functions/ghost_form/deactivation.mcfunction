##
 # deactivation.mcfunction
 # 
 #
 # Created by .
##


execute as @e[tag=ghost] at @s run gamemode survival @a[tag=surv,limit=1]
execute as @e[tag=ghost] at @s run gamemode creative @a[tag=crea,limit=1]
execute as @e[tag=ghost] at @s run gamemode adventure @a[tag=adv,limit=1]


tag @a[tag=ghost] remove crea
tag @a[tag=ghost] remove surv
tag @a[tag=ghost] remove adv
tag @a[tag=ghost] remove ghost
