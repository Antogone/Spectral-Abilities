##
 # invisibility.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set @p[tag=spectral,limit=1] cloud1 0

execute as @a[scores={energy=..4,sneak=1..2},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=5..,sneak=1..2},tag=spectral] run scoreboard players remove @p[tag=spectral,limit=1] energy 5
scoreboard players set @p[tag=spectral,limit=1] sneak 0



effect give @p[tag=spectral,limit=1] invisibility 2 5 true
execute at @p[tag=spectral,limit=1] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral,limit=1] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force

team leave Ghost_Form
team join cooldown Ghost_Form
scoreboard players set @p[tag=spectral,limit=1] cloud1 4
scoreboard players set @p[tag=spectral,limit=1] nuage1 1
scoreboard players set @p[tag=spectral,limit=1] sneak 0
