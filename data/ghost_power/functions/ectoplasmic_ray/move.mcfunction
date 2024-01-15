# Move forward according to step size
tp @s ^ ^ ^0.5

particle minecraft:dust 0.8 0.808 0.796 1 ^ ^ ^ 0.2 0.2 0.2 10 10 force
particle glow ^ ^ ^ 0.2 0.2 0.2 0.0001 10 force

execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!spectral,type=!#minecraft:dontharm,distance=..2,sort=nearest] run damage @s 10 minecraft:magic by @p[tag=spectral]
execute as @e[tag=ray,limit=1] run execute as @e[tag=!ray,tag=!spectral,type=!#minecraft:dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true


execute if entity @e[tag=!ray,tag=!spectral,type=!#minecraft:dontharm,distance=..1.5] run tag @s add hit

execute unless block ~ ~ ~ #minecraft:ray_permeable run tag @s add hitBlock

scoreboard players remove @s steps 1

execute as @s[tag=!hit,tag=!hitBlock,scores={steps=1..}] at @s run function ghost_power:ectoplasmic_ray/move
