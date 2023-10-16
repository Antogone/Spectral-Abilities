##
 # timer.mcfunction
 # 
 #
 # Created by .
##
scoreboard players add @a[tag=ghost] timer 1
bossbar set minecraft:timer players @a[tag=ghost]
bossbar set minecraft:timer max 160
bossbar set minecraft:timer value 0

execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ghost,limit=1] timer

execute unless entity @a[tag=ghost] run bossbar set minecraft:timer players