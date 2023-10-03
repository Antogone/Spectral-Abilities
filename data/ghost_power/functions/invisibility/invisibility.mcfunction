##
 # invisibility.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set @s sneak 0
scoreboard players set @s cloud0 0



execute as @a[scores={energy=..4},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=5..},tag=spectral] run scoreboard players remove @s energy 5

effect give @s invisibility 2 5 true


team leave Aura_Explosion
team join cooldown Aura_Explosion
scoreboard players set @s cloud0 4
scoreboard players set @s nuage0 1
scoreboard players set @s sneak 0
