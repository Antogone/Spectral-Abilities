##
 # start.mcfunction
 # 
 #
 # Created by .
##

execute as @s run scoreboard objectives add drop1 minecraft.dropped:minecraft.lime_dye
execute as @s run scoreboard objectives add drop2 minecraft.dropped:minecraft.gray_dye


execute as @s run scoreboard objectives add active dummy
execute as @s run scoreboard players set @s active 0

tag @s add spectral

team add choice
team modify choice color green

team add nochoice
team modify nochoice color dark_green

team add cooldown
team modify cooldown color dark_red

scoreboard objectives add splch dummy
scoreboard objectives modify splch displayname [{"text":"\u2582","color":"#298e09"},{"text":"\u2583","color":"#3db118"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2586","color":"#48d71a"},{"text":" Spectral Abilities ","color":"#a2ec8a"},{"text":"\u2586","color":"#48d71a"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2583","color":"#3db118"},{"text":"\u2582","color":"#298e09"}]

scoreboard players set Poofing splch 1
scoreboard players set Green_Fireball splch 1
scoreboard players set Immobilization splch 1
scoreboard players set Ghost_Form splch 1
scoreboard players set True_Sight splch 1

team join nochoice Poofing
team join nochoice Green_Fireball
team join nochoice Immobilization
team join nochoice True_Sight
team join nochoice Ghost_Form

execute as @s run scoreboard objectives add cloud1 dummy
execute as @s run scoreboard players set @s cloud1 0

execute as @s run scoreboard objectives add cloud0 dummy
execute as @s run scoreboard players set @s cloud0 0

execute as @s run scoreboard objectives add cloud2 dummy
execute as @s run scoreboard players set @s cloud2 0

execute as @s run scoreboard objectives add cloud3 dummy
execute as @s run scoreboard players set @s cloud3 0

execute as @s run scoreboard objectives add cloud4 dummy
execute as @s run scoreboard players set @s cloud4 0

execute as @s run scoreboard objectives add nuage4 dummy
execute as @s run scoreboard players set @s nuage4 0

execute as @s run scoreboard objectives add nuage0 dummy
execute as @s run scoreboard players set @s nuage0 0

execute as @s run scoreboard objectives add nuage1 dummy
execute as @s run scoreboard players set @s nuage1 0

execute as @s run scoreboard objectives add nuage2 dummy
execute as @s run scoreboard players set @s nuage2 0

execute as @s run scoreboard objectives add nuage3 dummy
execute as @s run scoreboard players set @s nuage3 0


execute as @s run scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

execute as @s run scoreboard objectives add energy dummy
scoreboard players set @s energy 100

execute as @s run scoreboard objectives add recharge dummy
execute as @s run scoreboard objectives add timer dummy
bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 

scoreboard objectives setdisplay sidebar splch
