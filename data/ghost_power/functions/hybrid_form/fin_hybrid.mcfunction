execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral,limit=1] at @s run tag @s remove hybrid
execute if score @a[tag=spectral,limit=1] sneak matches 1..2 run execute as @a[tag=spectral] run function ghost_power:item_store/normal



team leave Haunting
team join cooldown Haunting
execute unless score @a[tag=spectral,limit=1] cloud3 matches 1..5 run scoreboard players set @p[tag=spectral] cloud3 4
execute unless score @a[tag=spectral,limit=1] nuage3 matches 1..100000 run scoreboard players set @p[tag=spectral] nuage3 290
