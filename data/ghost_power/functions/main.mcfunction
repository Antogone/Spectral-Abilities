##
 # main.mcfunction
 # ghost_power
 #
 # Created by Antogone.
##

item replace entity @a[tag=spectral,scores={active=1}] hotbar.8 with lime_dye{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability OFF\"}"}}
item replace entity @a[tag=spectral,scores={active=0}] hotbar.8 with gray_dye{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability ON\"}"}}

execute as @a[tag=spectral,tag=!hybrid,scores={drop1=1..,active=1}] run function ghost_power:item_store/normal
execute as @a[tag=spectral,tag=hybrid,scores={drop1=1..,active=1}] run function ghost_power:hybrid_form/deactivate
execute as @a[tag=spectral,tag=pos,scores={drop1=1..,active=1}] run function ghost_power:possession/fin_possession


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
execute as @a[tag=spectral,limit=1,scores={cloud1=4}] if score @s nuage1 matches 100 run function ghost_power:cooldown/cd1
execute as @a[tag=spectral,limit=1,scores={cloud0=4}] if score @s nuage0 matches 400 run function ghost_power:cooldown/cd0
execute as @a[tag=spectral,limit=1,scores={cloud2=4}] if score @s nuage2 matches 30 run function ghost_power:cooldown/cd2
execute as @a[tag=spectral,limit=1,scores={cloud3=4}] if score @s nuage3 matches 300 run function ghost_power:cooldown/cd3
execute as @a[tag=spectral,limit=1,scores={cloud4=4}] if score @s nuage4 matches 800 run function ghost_power:cooldown/cd4


execute as @a[tag=spectral,limit=1,scores={nivulu0=4}] if score @s nuage0 matches 400 run function ghost_power:cooldown/cd0-h
execute as @a[tag=spectral,limit=1,scores={nivulu1=4}] if score @s nuage1 matches 100 run function ghost_power:cooldown/cd1-h


### AFFICHAGE 
execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team leave Possession

execute unless score @a[tag=spectral,limit=1] nivulu0 matches 4 run team leave Ectoplasmic_Ray
execute unless score @a[tag=spectral,limit=1] nivulu0 matches 4 run team join nochoice Ectoplasmic_Ray


execute unless score @a[tag=spectral,limit=1] nivulu1 matches 4 run team leave Mind_Reading
execute unless score @a[tag=spectral,limit=1] nivulu1 matches 4 run team join nochoice Mind_Reading


execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team join nochoice Possession



### UTILISATION DES CAPACITEES
execute unless score @a[tag=spectral,tag=!hybrid,limit=1] cloud0 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=!hybrid,scores={active=1},nbt={SelectedItemSlot:0},limit=1] run function ghost_power:slot/slot0
execute unless score @a[tag=spectral,tag=!hybrid,limit=1] cloud1 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=!hybrid,scores={active=1},nbt={SelectedItemSlot:1},limit=1] run function ghost_power:slot/slot1
execute unless score @a[tag=spectral,tag=!hybrid,limit=1] cloud2 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=!hybrid,scores={active=1},nbt={SelectedItemSlot:2},limit=1] run function ghost_power:slot/slot2
execute unless score @a[tag=spectral,tag=!hybrid,limit=1] cloud3 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=!hybrid,scores={active=1},nbt={SelectedItemSlot:3},limit=1] run function ghost_power:slot/slot3

execute unless score @a[tag=spectral,tag=!hybrid,limit=1] cloud4 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=!hybrid,scores={active=1},nbt={SelectedItemSlot:4},limit=1] run function ghost_power:slot/slot4


### HYBRID SLOT
execute unless score @a[tag=spectral,tag=hybrid,limit=1] nivulu0 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=hybrid,scores={active=1},nbt={SelectedItemSlot:0},limit=1] run function ghost_power:slot/hybrid/slot0
execute unless score @a[tag=spectral,tag=hybrid,limit=1] nivulu1 matches 4 run execute as @a[gamemode=!spectator,tag=spectral,tag=hybrid,scores={active=1},nbt={SelectedItemSlot:1},limit=1] run function ghost_power:slot/hybrid/slot1
execute as @a[gamemode=!spectator,tag=spectral,tag=hybrid,scores={active=1},nbt={SelectedItemSlot:2},limit=1] run function ghost_power:slot/hybrid/slot2
execute as @a[gamemode=!spectator,tag=spectral,tag=hybrid,scores={active=1},nbt={SelectedItemSlot:3},limit=1] run function ghost_power:slot/hybrid/slot3





### INDISPONIBILITE SUITE A MANQUE ENERGY
execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team leave Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 0..14 run team leave Invisibility
execute if score @a[tag=spectral,limit=1,tag=!pos] energy matches 0..19 run team leave Possession
execute if score @a[tag=spectral,limit=1] energy matches 0..14 run team leave Ghost_Form


execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team join cooldown Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 0..14 run team join cooldown Invisibility
execute if score @a[tag=spectral,limit=1,tag=!pos] energy matches 0..19 run team join cooldown Possession
execute if score @a[tag=spectral,limit=1] energy matches 0..14 run team join cooldown Ghost_Form


execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team leave Ectoplasmic_Ray
execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team leave Mind_Reading

execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 0..9 run team join cooldown Ectoplasmic_Ray





scoreboard players set @a[tag=spectral] drop1 0
scoreboard players set @a[tag=spectral] drop2 0

execute if score @a[tag=spectral,tag=!hybrid,limit=1] active matches 1..1 run scoreboard objectives setdisplay sidebar splch
execute if score @a[tag=spectral,tag=hybrid,limit=1] active matches 1..1 run scoreboard objectives setdisplay sidebar splch2
execute if score @a[tag=spectral,limit=1] active matches 0..0 run scoreboard objectives setdisplay sidebar 


### AFFICHAGE ENERGY RESTANTE
execute as @a[tag=spectral,limit=1] run title @s actionbar ["",{"text":"Energie Spectrale :","color":"dark_green"},{"text":" ","color":"#00CE00"},{"score":{"name":"@a[tag=spectral,limit=1]","objective":"energy"},"color":"#00CE00"}]





### RECHARGEMENT ENERGY 
scoreboard players add @a[tag=spectral,limit=1,scores={energy=0..99}] recharge 1
scoreboard players set @a[tag=spectral,limit=1,scores={energy=100}] recharge 0

execute if score @a[tag=spectral,limit=1,scores={active=0}] recharge matches 10..10 run scoreboard players add @a[tag=spectral,limit=1,scores={energy=..99}] energy 1
execute if score @a[tag=spectral,limit=1,scores={active=0}] recharge matches 10..100 run execute as @a[tag=spectral,scores={active=0,recharge=10..}] run scoreboard players set @s recharge 0


execute if score @a[tag=hybrid,limit=1,scores={active=1}] recharge matches 80..80 run execute as @a[tag=hybrid,scores={active=1,recharge=80}] run scoreboard players add @a[tag=spectral,tag=hybrid,limit=1,scores={energy=..99}] energy 1
execute if score @a[tag=hybrid,limit=1,scores={active=1}] recharge matches 80..100 run execute as @a[tag=hybrid,scores={active=1,recharge=80..}] run scoreboard players set @s recharge 0

execute if score @a[tag=spectral,tag=!hybrid,limit=1,scores={active=1}] recharge matches 60..60 run execute as @a[tag=spectral,tag=!hybrid,scores={active=1,recharge=60}] run scoreboard players add @a[tag=spectral,tag=!hybrid,limit=1,scores={energy=..99}] energy 1
execute if score @a[tag=spectral,tag=!hybrid,limit=1,scores={active=1}] recharge matches 60..100 run execute as @a[tag=spectral,tag=!hybrid,scores={active=1,recharge=60..}] run scoreboard players set @s recharge 0


scoreboard players set @a[tag=spectral,tag=!hybrid,limit=1,scores={recharge=60..}] recharge 0
scoreboard players set @a[tag=spectral,tag=hybrid,limit=1,scores={recharge=80..}] recharge 0




### PARTICLE RECHARGEMENT
execute as @a[tag=spectral,tag=no_inv,tag=!hybrid,tag=!pos,limit=1,scores={energy=0..99,active=0..},nbt=!{playerGameType:3}] at @s if score @s energy matches 0..99 run particle end_rod ^ ^ ^ 0.3 1 0.3 0.05 1 force



### Invisibility
effect give @p[tag=spectral,tag=inv] invisibility 5 5 true

### POSSESSION
execute if entity @a[tag=pos] unless entity @e[tag=possessed] run function ghost_power:possession/fin_possession

execute as @a[tag=pos] at @s run teleport @e[tag=possessed] @s

effect give @a[tag=w_pos] conduit_power 5 14 true
effect give @a[tag=w_pos] water_breathing 5 255 true
effect give @a[tag=w_pos] dolphins_grace 5 14 true

effect give @a[tag=f_pos] fire_resistance 5 255 true

effect give @a[tag=pos] resistance 5 255 true
effect give @a[tag=pos] regeneration 5 255 true
effect give @a[tag=pos] saturation 5 255 true
effect give @a[tag=pos] invisibility 5 255 true
effect give @a[tag=pos] slow_falling 5 255 true
execute as @a[tag=fly_pos,nbt={SelectedItemSlot:5}] if score @a[tag=fly_pos,nbt={SelectedItemSlot:5},limit=1] sneak matches 1..2 run function ghost_power:hybrid_form/fly




### Hybrid
effect give @a[tag=spectral,scores={active=1}] jump_boost 5 2 true
effect give @a[tag=spectral,scores={active=1}] slow_falling 5 2 true
effect give @a[tag=hybrid] resistance 5 255 true
effect give @a[tag=hybrid] night_vision 15 255 true
effect give @a[tag=hybrid] saturation 2 255 true
effect give @a[tag=hybrid] invisibility 2 255 true
execute as @a[tag=hybrid] at @a[tag=hybrid] run particle cloud ^ ^0.4 ^ 0 0.4 0 0.05 2 force


execute if entity @a[tag=hybrid,limit=1,nbt=!{Inventory:[{Slot:103b,id:":player_head",tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}"},SkullOwner:{Id:[I;-648657094,119099104,-1571011330,1324342760],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGZmMzEwOWQ0YWNjZWFiODJiZTRkZjIwMmE5MjI3YTRlYzhmNjk1YzM2NzQyYmZlOWVlYTZlNjNjMGQzYjcxMiJ9fX0="}]}},Enchantments:[{}]}}]}] run item replace entity @a[tag=hybrid] armor.head with player_head{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}"},SkullOwner:{Id:[I;-648657094,119099104,-1571011330,1324342760],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGZmMzEwOWQ0YWNjZWFiODJiZTRkZjIwMmE5MjI3YTRlYzhmNjk1YzM2NzQyYmZlOWVlYTZlNjNjMGQzYjcxMiJ9fX0="}]}},Enchantments:[{}]}

execute if entity @a[tag=hybrid,limit=1,nbt=!{Inventory:[{Slot:102b,id:":leather_chestplate",tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}",color:16777215},Enchantments:[{}]}}]}] run item replace entity @a[tag=hybrid] armor.chest with leather_chestplate{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}",color:16777215},Enchantments:[{}]}


### HAUNTING
scoreboard players add @e[tag=haunted,scores={timehunt=1..}] timehunt 1

execute as @e[tag=haunted,scores={timehunt=10}] at @s run function ghost_power:haunting/haunt0
execute as @e[tag=haunted,scores={timehunt=400}] at @s run function ghost_power:haunting/haunt1
execute as @e[tag=haunted,scores={timehunt=800}] at @s run function ghost_power:haunting/haunt2
execute as @e[tag=haunted,scores={timehunt=1200}] at @s run function ghost_power:haunting/haunt3

### SNEAKING RESET
scoreboard players set @p[tag=spectral,limit=1] sneak 0
execute at @e[tag=spectral] run kill @e[tag=ecto_ray,distance=51..]
execute as @e[tag=ecto_ray] run particle minecraft:dust 0.498 1 0.345 1 ^ ^ ^ 0.15 0.15 0.15 10 1 force

###
execute as @a[tag=spectral,scores={active=0}] run tag @s remove inv
execute as @a[tag=spectral,scores={active=0}] run tag @s remove hybrid
execute as @a[tag=spectral,scores={active=0}] run tag @s add no_inv


### Killing object
execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:lime_dye",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability OFF\"}"}}}}]
execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:gray_dye",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§3Ability ON\"}"}}}}]

execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:leather_chestplate",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}",color:16777215},Enchantments:[{}]}}}]
execute as @a[tag=spectral,limit=1] at @s run kill @e[distance=..10,nbt={Item:{id:"minecraft:player_head",Count:1b,tag:{HideFlags:3,Unbreakable:1,display:{Name:"{\"text\":\"§2Hybrid Form\"}"},SkullOwner:{Id:[I;-648657094,119099104,-1571011330,1324342760],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGZmMzEwOWQ0YWNjZWFiODJiZTRkZjIwMmE5MjI3YTRlYzhmNjk1YzM2NzQyYmZlOWVlYTZlNjNjMGQzYjcxMiJ9fX0="}]}},Enchantments:[{}]}}}]
