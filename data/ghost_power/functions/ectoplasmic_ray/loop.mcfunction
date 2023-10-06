# by Bomerie
#ghost_power:ectoplasmic_ray/loop.mcfunction

execute at @e[tag=ecto_ray,limit=1] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.15 0.15 0.15 10 1 force

execute as @e[tag=ecto_ray,limit=1] run execute as @e[tag=!ecto_ray,tag=!spectral,type=!#dontharm,distance=..2,sort=nearest] run damage @s 4 minecraft:magic by @p[tag=spectral]
execute as @e[tag=ecto_ray,limit=1] run execute as @e[tag=!ecto_ray,tag=!spectral,type=!#dontharm,distance=..2,sort=nearest] run effect give @s weakness 10 0 true


execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ air run tp @s ^ ^ ^0.01
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ cave_air run tp @s ^ ^ ^0.01
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ water run tp @s ^ ^ ^0.01
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ barrier run tp @s ^ ^ ^0.01


execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ air run function ghost_power:ectoplasmic_ray/loop
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ cave_air run function ghost_power:ectoplasmic_ray/loop
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ water run function ghost_power:ectoplasmic_ray/loop
execute as @e[tag=ecto_ray,limit=1] at @s if block ~ ~ ~ barrier run function ghost_power:ectoplasmic_ray/loop

kill @e[tag=ecto_ray,nbt={OnGround:1b}]

  