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
tag @s add no_inv


team add choice
team modify choice color green

team add nochoice
team modify nochoice color dark_green

team add cooldown
team modify cooldown color dark_red

scoreboard objectives add splch dummy
scoreboard objectives modify splch displayname [{"text":"\u2582","color":"#298e09"},{"text":"\u2583","color":"#3db118"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2586","color":"#48d71a"},{"text":"Abilities","color":"#a2ec8a"},{"text":"\u2586","color":"#48d71a"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2583","color":"#3db118"},{"text":"\u2582","color":"#298e09"}]

scoreboard objectives add splch2 dummy
scoreboard objectives modify splch2 displayname [{"text":"\u2582","color":"#298e09"},{"text":"\u2583","color":"#3db118"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2586","color":"#48d71a"},{"text":"Abilities","color":"#a2ec8a"},{"text":"\u2586","color":"#48d71a"},{"text":"\u2585","color":"#43c11a"},{"text":"\u2583","color":"#3db118"},{"text":"\u2582","color":"#298e09"}]


scoreboard players set Haunting splch 1
scoreboard players set Invisibility splch 3
scoreboard players set Hybrid_Form splch 2
scoreboard players set Ghost_Form splch 4
scoreboard players set Possession splch 0

scoreboard players set Normal_Form splch2 1
scoreboard players set Flight splch2 2
scoreboard players set Mind_Reading splch2 3
scoreboard players set Ectoplasmic_Ray splch2 4


team join nochoice Normal_Form
team join nochoice Flight
team join nochoice Mind_Reading
team join nochoice Ectoplasmic_Ray

team join nochoice Haunting
team join nochoice Invisibility
team join nochoice Hybrid_Form
team join nochoice Possession
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

scoreboard objectives add mind dummy
scoreboard objectives add mindPos0 dummy
scoreboard objectives add mindPos1 dummy
scoreboard objectives add mindPos2 dummy
scoreboard objectives add timehunt dummy
scoreboard objectives add steps dummy



execute as @s run scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time

execute as @s run scoreboard objectives add energy dummy
scoreboard players set @s energy 100

execute as @s run scoreboard objectives add recharge dummy
execute as @s run scoreboard objectives add timer dummy
bossbar add timer {"text":"Temps restant","color":"red"}
bossbar set timer color red 

scoreboard objectives setdisplay sidebar splch
execute in minecraft:overworld run forceload add -30000000 1600
