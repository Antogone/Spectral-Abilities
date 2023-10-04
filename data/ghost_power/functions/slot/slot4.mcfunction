execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Green_Fireball
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Immobilization
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Poofing
team leave True_Sight




execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Form
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Green_Fireball
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Immobilization
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Poofing
team join choice True_Sight

execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Poofing
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team leave Green_Fireball
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Immobilization
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team leave True_Sight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Ghost_Form


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Poofing
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team join cooldown Green_Fireball
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Immobilization
execute if score @a[tag=spectral,limit=1] energy matches 1..19 run team join cooldown True_Sight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Ghost_Form

execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run function ghost_power:invisibility/invisibility

scoreboard players set @a[tag=spectral,limit=1] sneak 0