execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Form
team leave Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team leave Possession



execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Form
team join choice Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team join nochoice Possession

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 1..14 run team leave Invisibility
execute if score @a[tag=spectral,limit=1,tag=!pos] energy matches 1..19 run team leave Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Ghost_Form

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 1..14 run team join cooldown Invisibility
execute if score @a[tag=spectral,limit=1,tag=!pos] energy matches 1..19 run team join cooldown Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Ghost_Form




execute if score @a[tag=no_inv,limit=1] sneak matches 1..2 run execute as @a[tag=no_inv,limit=1] at @s run function ghost_power:invisibility/invisibility
execute if score @a[tag=inv,limit=1] sneak matches 1..2 run execute as @a[tag=inv,limit=1] at @s run function ghost_power:invisibility/normal

scoreboard players set @p[tag=spectral,limit=1] sneak 0
