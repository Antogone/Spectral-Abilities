##
 # altar.mcfunction
 # 
 #
 # Created by Antogone.
##
execute at @e[nbt={Item:{id:"minecraft:nether_star",Count:1b},OnGround:1b}] if block ~ ~-1 ~ chiseled_quartz_block if block ~-1 ~-1 ~ amethyst_block if block ~-1 ~-1 ~-1 amethyst_block if block ~-1 ~-1 ~1 amethyst_block if block ~1 ~-1 ~ amethyst_block if block ~1 ~-1 ~-1 amethyst_block if block ~1 ~-1 ~1 amethyst_block if block ~ ~-1 ~-1 amethyst_block if block ~ ~-1 ~1 amethyst_block if block ~1 ~ ~-1 white_candle[candles=4,lit=true] if block ~1 ~ ~1 white_candle[candles=4,lit=true] if block ~-1 ~ ~-1 white_candle[candles=4,lit=true] if block ~-1 ~ ~1 white_candle[candles=4,lit=true] if block ~ ~-1 ~2 amethyst_block if block ~ ~-1 ~-2 amethyst_block if block ~2 ~-1 ~ amethyst_block if block ~-2 ~-1 ~ amethyst_block if block ~ ~ ~2 black_candle[candles=4,lit=true] if block ~ ~ ~-2 black_candle[candles=4,lit=true] if block ~2 ~ ~ black_candle[candles=4,lit=true] if block ~-2 ~ ~ black_candle[candles=4,lit=true] if entity @e[distance=..2,type=#minecraft:sacrifice] unless entity @a[tag=spectral] run execute as @p[distance=..5] at @s run function ghost_power:start

