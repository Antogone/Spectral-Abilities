##
 # timer.mcfunction
 # 
 #
 # Created by .
##
execute if entity @a[tag=ghost] run scoreboard players add @a[tag=ghost] timer 1
execute if entity @a[tag=ghost] run bossbar set minecraft:timer players @a[tag=ghost]
execute if entity @a[tag=ghost] run bossbar set minecraft:timer max 160
execute if entity @a[tag=ghost] run bossbar set minecraft:timer value 0

execute if entity @a[tag=ghost] run execute store result bossbar minecraft:timer value run scoreboard players get @a[tag=ghost,limit=1] timer

execute unless entity @a[tag=ghost] run bossbar set minecraft:timer players