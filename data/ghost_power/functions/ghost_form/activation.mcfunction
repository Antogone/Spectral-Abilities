##
 # activation.mcfunction
 # 
 #
 # Created by .
##
scoreboard players set @p[tag=spectral] sneak 0
scoreboard players set @p[tag=spectral] cloud0 0

execute as @a[scores={energy=..14},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=15..},tag=spectral] run scoreboard players remove @p[tag=spectral,limit=1] energy 15

execute as @a[tag=spectral,nbt={playerGameType:1}] run tag @s add crea
execute as @a[tag=spectral,nbt={playerGameType:0}] run tag @s add surv
execute as @a[tag=spectral,nbt={playerGameType:2}] run tag @s add adv
execute as @a[tag=spectral] run tag @s add ghost
scoreboard players set @a[tag=spectral] timer 0



execute at @p[tag=spectral,limit=1] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral,limit=1] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force
execute as @a[tag=spectral,limit=1] at @s run gamemode spectator @s
schedule function ghost_power:ghost_form/deactivation 8s

team leave Ghost_Form
team join cooldown Ghost_Form
scoreboard players set @p[tag=spectral] cloud0 4
scoreboard players set @p[tag=spectral] nuage0 1
scoreboard players set @p[tag=spectral] sneak 0
