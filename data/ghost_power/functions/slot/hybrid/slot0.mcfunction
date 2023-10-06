

team leave Ghost_Parade
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Normal_Form


team join choice Ghost_Parade
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Normal_Form


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Ghost_Parade


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Ghost_Parade


execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run function ghost_power:ghost_parade/activation
scoreboard players set @a[tag=spectral] sneak 0
