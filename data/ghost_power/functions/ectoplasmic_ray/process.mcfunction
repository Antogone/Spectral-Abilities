# Initialize steps
scoreboard players set @s steps 128

# Move the ray
execute at @s run function ghost_power:ectoplasmic_ray/move

# Check if the ray hit 
execute as @s[tag=hit] at @s run function ghost_power:ectoplasmic_ray/hit

kill @s
