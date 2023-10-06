##
 # haunt3.mcfunction
 # 
 #
 # Created by .
##
execute at @s run particle elder_guardian ~ ~ ~
execute as @s at @s run damage @s 8 lightning_bolt by @a[tag=spectral,limit=1]

effect give @s weakness 30 3 true
effect give @s mining_fatigue 60 2 true
effect give @s slowness 30 3 true
effect give @s darkness 10 2 true
effect give @s wither 10 2 true
effect give @s hunger 10 2 true

tag @s remove haunted
scoreboard players set @s timehunt -1