

execute at @a[tag=hybrid] as @a[tag=hybrid] run execute if entity @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,sort=nearest] run tag @s add valide

execute unless entity @a[tag=valide] run return 0

execute as @a[scores={energy=..9},tag=spectral,tag=valide] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..9},tag=spectral,tag=valide] run return 0
execute as @a[scores={energy=10..},tag=spectral,tag=valide] run scoreboard players remove @p[tag=spectral,tag=valide] energy 10


execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] store result score @s mind run data get entity @s Health
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] store result score @s mindPos0 run data get entity @s Pos[0]
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] store result score @s mindPos1 run data get entity @s Pos[1]
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] store result score @s mindPos2 run data get entity @s Pos[2]


execute at @a[tag=hybrid] run execute if entity @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] run tellraw @a[tag=hybrid] ["",{"text":"You read the mind of the nearest entity, learning that its health is ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest]","objective":"mind"},"color":"red"},{"text":" located in ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest]","objective":"mindPos0"},"color":"red"},{"text":" , ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest]","objective":"mindPos1"},"color":"red"},{"text":" , ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest]","objective":"mindPos2"},"color":"red"}]


execute at @a[tag=hybrid] run execute if entity @e[tag=!spectral,type=!#minecraft:dontharm,distance=..20,sort=nearest] run effect give @e[tag=!spectral,type=!#minecraft:dontharm,distance=..20,sort=nearest] glowing 5 2 true


team leave Mind_Reading
team join cooldown Mind_Reading
scoreboard players set @p[tag=spectral] nivulu1 4
scoreboard players set @p[tag=spectral] nuage1 50
tag @a[tag=spectral] remove valide