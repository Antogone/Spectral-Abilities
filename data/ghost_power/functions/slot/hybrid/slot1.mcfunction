execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Parade
team leave Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Normal_Form



execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Parade
team join choice Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Normal_Form




execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Ghost_Parade


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Ghost_Parade

execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run function ghost_power:hybrid_form/mind_reading


scoreboard players set @p[tag=spectral,limit=1] sneak 0
