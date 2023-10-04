

team leave Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team leave Possession


team join choice Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Invisibility
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Hybrid_Form
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Haunting
execute unless score @a[tag=spectral,limit=1] cloud4 matches 4 run team join nochoice Possession

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Haunting
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team leave Invisibility
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Hybrid_Form
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team leave Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Ghost_Form

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Haunting
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team join cooldown Invisibility
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Hybrid_Form
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team join cooldown Possession
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Ghost_Form



execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run function ghost_power:ghost_form/activation
scoreboard players set @a sneak 0
