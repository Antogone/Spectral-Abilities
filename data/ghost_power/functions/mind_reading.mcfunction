execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest] store result score @s mind run data get entity @s Health
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest] store result score @s mindPos0 run data get entity @s Pos[0]
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest] store result score @s mindPos1 run data get entity @s Pos[1]
execute at @a[tag=hybrid] run execute as @e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest] store result score @s mindPos2 run data get entity @s Pos[2]

execute at @a[tag=hybrid] run execute if entity @e[tag=!spectral,type=!#minecraft:dontharm,distance=..15,limit=1,sort=nearest] run tellraw @a[tag=hybrid] ["",{"text":"You read the mind of the nearest entity, learning that its health is ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest]","objective":"mind"},"color":"red"},{"text":" located in ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest]","objective":"mindPos0"},"color":"red"},{"text":" , ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest]","objective":"mindPos1"},"color":"red"},{"text":" , ","color":"aqua"},{"score":{"name":"@e[tag=!spectral,type=!#minecraft:dontharm,distance=..11,limit=1,sort=nearest]","objective":"mindPos2"},"color":"red"}]



