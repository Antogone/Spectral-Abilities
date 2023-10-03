##
 # main.mcfunction
 # ghost_power
 #
 # Created by Antogone.
##

item replace entity @a[tag=spectral,scores={active=1}] hotbar.8 with lime_dye{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability OFF\"}"}}
item replace entity @a[tag=spectral,scores={active=0}] hotbar.8 with gray_dye{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability ON\"}"}}


execute as @a[tag=spectral,scores={drop1=1..,active=1}] run scoreboard players set @s active 0
execute as @a[tag=spectral,scores={drop2=1..,active=0}] run scoreboard players set @s active 1

execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:lime_dye",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability OFF\"}"}}}}]
execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:gray_dye",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability ON\"}"}}}}]



execute as @a[tag=spectral,scores={nuage4=1..}] run scoreboard players add @s nuage4 1
execute as @a[tag=spectral,scores={nuage0=1..}] run scoreboard players add @s nuage0 1
execute as @a[tag=spectral,scores={nuage1=1..}] run scoreboard players add @s nuage1 1
execute as @a[tag=spectral,scores={nuage2=1..}] run scoreboard players add @s nuage2 1
execute as @a[tag=spectral,scores={nuage3=1..}] run scoreboard players add @s nuage3 1



### COOLDOWNN
execute as @a[tag=spectral,limit=1,scores={cloud1=4}] if score @s nuage1 matches 320 run function ghost_power:cooldown/cd
execute as @a[tag=spectral,limit=1,scores={cloud0=4}] if score @s nuage0 matches 15 run function ghost_power:cooldown/cd0
execute as @a[tag=spectral,limit=1,scores={cloud2=4}] if score @s nuage2 matches 30 run function ghost_power:cooldown/cd1
execute as @a[tag=spectral,limit=1,scores={cloud3=4}] if score @s nuage3 matches 200 run function ghost_power:cooldown/cd2
execute as @a[tag=spectral,limit=1,scores={cloud4=4}] if score @s nuage4 matches 15 run function ghost_power:cooldown/cd3


### AFFICHAGE 
execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Aura_Explosion
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Green_Fireball
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Immobilization
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Poofing
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team leave True_Sight


execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Aura_Explosion
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Green_Fireball
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Immobilization
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Poofing
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team join nochoice True_Sight


### UTILISATION DES CAPACITEES

execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,scores={active=1},nbt={SelectedItemSlot:0},limit=1] run function ghost_power:slot/slot0
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,scores={active=1},nbt={SelectedItemSlot:1},limit=1] run function ghost_power:slot/slot1
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,scores={active=1},nbt={SelectedItemSlot:2},limit=1] run function ghost_power:slot/slot2
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,scores={active=1},nbt={SelectedItemSlot:3},limit=1] run function ghost_power:slot/slot3
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,scores={active=1},nbt={SelectedItemSlot:4},limit=1] run function ghost_power:slot/slot4



### INDISPONIBILITE SUITE A MANQUE ENERGY
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Poofing
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team leave Green_Fireball
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Immobilization
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team leave True_Sight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Aura_Explosion


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Poofing
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team join cooldown Green_Fireball
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Immobilization
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team join cooldown True_Sight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Aura_Explosion

scoreboard players set @a[tag=spectral] drop1 0
scoreboard players set @a[tag=spectral] drop2 0

execute if score @a[tag=spectral,limit=1] active matches 1..1 run scoreboard objectives setdisplay sidebar splch
execute if score @a[tag=spectral,limit=1] active matches 0..0 run scoreboard objectives setdisplay sidebar 


### AFFICHAGE ENERGY RESTANTE
execute as @a[tag=spectral,limit=1] run title @s actionbar ["",{"text":"Energie Spectrale :","color":"dark_green"},{"text":" ","color":"#00CE00"},{"score":{"name":"@a[tag=spectral,limit=1]","objective":"energy"},"color":"#00CE00"}]





### RECHARGEMENT ENERGY 

scoreboard players add @a[tag=spectral,limit=1,scores={energy=0..99}] recharge 1
scoreboard players set @a[tag=spectral,limit=1,scores={energy=100}] recharge 0

execute if score @a[limit=1,scores={active=0}] recharge matches 10..10 run scoreboard players add @a[tag=spectral,limit=1,scores={energy=..99}] energy 1
execute if score @a[limit=1,scores={active=0}] recharge matches 10..100 run execute as @a[scores={active=0,recharge=10..}] run scoreboard players set @s recharge 0


execute if score @a[limit=1,scores={active=1}] recharge matches 60..60 run execute as @a[scores={active=1,recharge=60}] run scoreboard players add @a[tag=spectral,limit=1,scores={energy=..99}] energy 1
execute if score @a[limit=1,scores={active=1}] recharge matches 60..100 run execute as @a[scores={active=1,recharge=60..}] run scoreboard players set @s recharge 0

### PARTICLE RECHARGEMENT
execute as @a[tag=spectral,limit=1,scores={energy=0..99,active=0..}] at @s if score @s energy matches 0..99 run particle happy_villager ^ ^ ^ 0.3 1 0.3 50 1 force



