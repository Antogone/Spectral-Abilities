##
 # normal.mcfunction
 # 
 #
 # Created by .
##
tag @p[tag=spectral,tag=inv] add no_inv 
tag @p[tag=spectral] remove inv 

effect clear @p[tag=spectral,tag=no_inv] invisibility
execute at @p[tag=spectral] run particle glow ^ ^ ^ 0.5 -1 0.5 0.001 100 force
execute at @p[tag=spectral] run particle cloud ^ ^ ^ 0.5 -1 0.5 0.05 1000 force


item replace entity @a[tag=spectral,limit=1] hotbar.0 from entity @e[tag=hold,limit=1] armor.head
item replace entity @a[tag=spectral,limit=1] hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
item replace entity @a[tag=spectral,limit=1] hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

item replace entity @a[tag=spectral,limit=1] hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
item replace entity @a[tag=spectral,limit=1] hotbar.4 from entity @e[tag=hold2,limit=1] weapon.mainhand
item replace entity @a[tag=spectral,limit=1] armor.head from entity @e[tag=hold2,limit=1] weapon.offhand
item replace entity @a[tag=spectral,limit=1] armor.chest from entity @e[tag=hold2,limit=1] armor.chest
item replace entity @a[tag=spectral,limit=1] armor.legs from entity @e[tag=hold2,limit=1] armor.legs
item replace entity @a[tag=spectral,limit=1] armor.feet from entity @e[tag=hold2,limit=1] armor.feet

kill @e[tag=hold]
kill @e[tag=hold2]

team leave Invisibility
team join cooldown Invisibility

scoreboard players set @p[tag=spectral] cloud1 4
scoreboard players set @p[tag=spectral] nuage1 1
scoreboard players set @p[tag=spectral] sneak 0
