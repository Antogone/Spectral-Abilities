# By Bomerie
scoreboard players set @a[tag=spectral] sneak 0


execute as @a[scores={energy=..9},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..9},tag=spectral] run return 0
scoreboard players remove @e[tag=spectral,scores={energy=10..}] energy 10


execute as @e[tag=spectral] at @s run summon marker ~ ~ ~ {Tags:[ecto_ray]}
tp @e[tag=ecto_ray,limit=1,sort=nearest] @p[tag=spectral]
tp @e[tag=ecto_ray,limit=1,sort=nearest] ~ ~1.5 ~
execute as @e[tag=ecto_ray,limit=1,sort=nearest] at @s run function ghost_power:ectoplasmic_ray/loop

execute at @e[tag=spectral] run kill @e[tag=ecto_ray,distance=51..]


team leave Ghost_Parade
team join cooldown Ghost_Parade
scoreboard players set @a[tag=spectral] cloud3 4
scoreboard players set @a[tag=spectral] nuage3 1
scoreboard players set @p[tag=spectral] sneak 0
