##
 # load.mcfunction
 # ghost_power
 #
 # Created by Antogone. 
##
tellraw @a [{"text": "Loaded ","color": "yellow"},{"text": "Spectral Abilities ","color": "gray","bold": true},{"text": "1.0.0","color": "dark_gray"},{"text": " successfully"}]
execute in minecraft:overworld run forceload add -30000000 1600
