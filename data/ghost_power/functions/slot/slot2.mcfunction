
execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Invisibility
team leave Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team leave Possession



execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Invisibility
team join choice Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team join nochoice Possession

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 1..14 run team leave Invisibility
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team leave Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Ghost_Form

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Haunting
execute if score @a[tag=spectral,limit=1,tag=no_inv] energy matches 1..14 run team join cooldown Invisibility
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team join cooldown Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Ghost_Form



execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run tag @s add hybrid
execute as @a[tag=spectral,tag=hybrid,tag=inv,limit=1] at @s run function ghost_power:invisibility/normal
execute as @a[tag=spectral,tag=hybrid] run function ghost_power:item_store/recup

scoreboard players set @a sneak 0
