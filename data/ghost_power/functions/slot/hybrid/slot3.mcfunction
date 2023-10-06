
execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team leave Ectoplasmic_Ray
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team leave Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team leave Flight
team leave Normal_Form

execute unless score @a[tag=spectral,limit=1] cloud0 matches 4 run team join nochoice Ectoplasmic_Ray
execute unless score @a[tag=spectral,limit=1] cloud1 matches 4 run team join nochoice Mind_Reading
execute unless score @a[tag=spectral,limit=1] cloud2 matches 4 run team join nochoice Flight
team join choice Normal_Form



execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team leave Ectoplasmic_Ray


execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Mind_Reading
execute if score @a[tag=spectral,limit=1] energy matches 1..9 run team join cooldown Ectoplasmic_Ray

execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral] run function ghost_power:hybrid_form/fin_hybrid


scoreboard players set @a[tag=spectral,limit=1] sneak 0
