
scoreboard players set @p[tag=spectral] sneak 0
execute as @a[scores={energy=..9},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..9},tag=spectral] run return 0
scoreboard players remove @e[tag=spectral,scores={energy=10..}] energy 10

summon marker ~ ~ ~ {Tags: [ray]}
execute anchored eyes rotated as @s run tp @e[tag=ray,limit=1,sort=nearest] ^ ^ ^ ~ ~
execute as @e[tag=ray,limit=1,sort=nearest] run function ghost_power:ectoplasmic_ray/process

team leave Ectoplasmic_Ray
team join cooldown Ectoplasmic_Ray
scoreboard players set @a[tag=spectral] nivulu0 4
scoreboard players set @a[tag=spectral] nuage0 370
scoreboard players set @p[tag=spectral] sneak 0