##
 # invisibility.mcfunction
 # 
 #
 # Created by .
##
execute as @a[scores={energy=..14},tag=spectral] run tellraw @s {"text":"You don't have enough spectral energy to use the ability !","color":"dark_red"}
execute as @a[scores={energy=..14},tag=spectral] run return 0
execute as @a[scores={energy=15..},tag=spectral] run scoreboard players remove @p[tag=spectral] energy 15

tag @p[tag=spectral,tag=no_inv] add inv 
tag @p[tag=spectral,tag=no_inv] remove no_inv

effect give @p[tag=spectral,tag=inv] invisibility 5 5 true


execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold"]}
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold2"]}
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold3"]}

item replace entity @e[tag=hold] armor.head from entity @a[tag=spectral,limit=1] hotbar.0
item replace entity @e[tag=hold] weapon.mainhand from entity @a[tag=spectral,limit=1] hotbar.1
item replace entity @e[tag=hold] weapon.offhand from entity @a[tag=spectral,limit=1] hotbar.2

item replace entity @e[tag=hold2] armor.head from entity @a[tag=spectral,limit=1] hotbar.3
item replace entity @e[tag=hold2] weapon.mainhand from entity @a[tag=spectral,limit=1] hotbar.4
item replace entity @e[tag=hold2] weapon.offhand from entity @a[tag=spectral,limit=1] armor.head
item replace entity @e[tag=hold2] armor.chest from entity @a[tag=spectral,limit=1] armor.chest
item replace entity @e[tag=hold2] armor.legs from entity @a[tag=spectral,limit=1] armor.legs
item replace entity @e[tag=hold2] armor.feet from entity @a[tag=spectral,limit=1] armor.feet

item replace entity @a[tag=spectral] hotbar.0 with air
item replace entity @a[tag=spectral] hotbar.1 with air
item replace entity @a[tag=spectral] hotbar.2 with air
item replace entity @a[tag=spectral] hotbar.3 with air
item replace entity @a[tag=spectral] hotbar.4 with air
item replace entity @a[tag=spectral] armor.head with air
item replace entity @a[tag=spectral] armor.chest with air
item replace entity @a[tag=spectral] armor.legs with air
item replace entity @a[tag=spectral] armor.feet with air


execute at @p[tag=spectral] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force

team leave Invisibility
team join cooldown Invisibility
scoreboard players set @a[tag=spectral] cloud1 4
scoreboard players set @a[tag=spectral] nuage1 1
scoreboard players set @p[tag=spectral] sneak 0
