scoreboard players set @s steps 128
execute at @s run function ghost_power:ectoplasmic_ray/move
execute as @s[tag=hit] at @s run function ghost_power:ectoplasmic_ray/hit
kill @s
