execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ectoplasmic_Ray
team leave Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team leave Normal_Form



execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ectoplasmic_Ray
team join choice Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Flight
execute unless score @a[tag=spectral,limit=1] cloud3 matches 4 run team join nochoice Normal_Form



execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Normal_Form
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Flight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team leave Ectoplasmic_Ray


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Normal_Form
execute if score @a[tag=spectral,limit=1] energy matches 1..4 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Flight
execute if score @a[tag=spectral,limit=1] energy matches 1..14 run team join cooldown Ectoplasmic_Ray

execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run function ghost_power:mind_reading


scoreboard players set @p[tag=spectral,limit=1] sneak 0
