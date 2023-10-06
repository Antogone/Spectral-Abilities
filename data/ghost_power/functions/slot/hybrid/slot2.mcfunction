
execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ghost_Parade
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Mind_Reading
team leave Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Normal_Form



execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ghost_Parade
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Mind_Reading
team join choice Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Normal_Form


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Ghost_Parade


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Ghost_Parade



execute as @a[tag=spectral,limit=1,scores={sneak=1..}] at @s run function ghost_power:hybrid_form/fly

scoreboard players set @a sneak 0
