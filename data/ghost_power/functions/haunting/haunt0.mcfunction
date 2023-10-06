##
 # haunt0.mcfunction
 # 
 #
 # Created by .
##
execute as @s at @s run particle elder_guardian ~ ~ ~
damage @s 8 lightning_bolt by @a[tag=spectral,limit=1]
effect give @s weakness 30 2 true
effect give @s mining_fatigue 30 2 true
effect give @s slowness 30 2 true
effect give @s nausea 10 2 true
effect give @s darkness 10 2 true
effect give @s hunger 10 2 true
effect give @s bad_omen infinite 2 true