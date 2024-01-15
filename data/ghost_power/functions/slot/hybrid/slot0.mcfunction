

team leave Ectoplasmic_Ray
execute unless score @a[tag=spectral,limit=1] nivulu1 matches 4 run team leave Mind_Reading
team leave Flight
team leave Normal_Form


team join choice Ectoplasmic_Ray
execute unless score @a[tag=spectral,limit=1] nivulu1 matches 4 run team join nochoice Mind_Reading
team join nochoice Flight
team join nochoice Normal_Form


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Ectoplasmic_Ray


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Ectoplasmic_Ray


execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1,scores={energy=10..}] at @s run function ghost_power:ectoplasmic_ray/cast
scoreboard players set @a[tag=spectral] sneak 0
