# Move forward according to step size
tp @s ^ ^ ^0.5

# TEST
# particle minecraft:dust 0.8 0.808 0.796 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force
particle end_rod ^ ^ ^ 0.2 0.2 0.2 0.001 10 force

execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!spectral,type=!#dontharm,distance=..2,sort=nearest] run damage @s 4 minecraft:magic by @p[tag=spectral]
execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!spectral,type=!#dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true


# Check for collisions with Creepers
execute if entity @e[tag=!ray,tag=!spectral,type=!#dontharm,distance=..1.5] run tag @s add hit

# Check for collisions with blocks
execute unless block ~ ~ ~ #minecraft:ray_permeable run tag @s add hitBlock

# Decrease the number of steps remaining
scoreboard players remove @s steps 1

# Recurse until we hit something or run out of steps
execute as @s[tag=!hit,tag=!hitBlock,scores={steps=1..}] at @s run function ghost_power:ectoplasmic_ray/move