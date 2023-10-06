##
 # recup.mcfunction
 # 
 #
 # Created by .
##
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold"]}
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold2"]}
execute in minecraft:overworld positioned -30000000 300 1600 run summon armor_stand -30000000 300 1600 {PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["hold3"]}



item replace entity @e[tag=hold2] armor.head from entity @a[tag=spectral,limit=1] armor.head
item replace entity @e[tag=hold2] weapon.mainhand from entity @a[tag=spectral,tag=inv,limit=1] hotbar.1
item replace entity @e[tag=hold2] weapon.mainhand from entity @a[tag=spectral,tag=pos,limit=1] hotbar.4

item replace entity @e[tag=hold2] armor.chest from entity @a[tag=spectral,limit=1] armor.chest
item replace entity @e[tag=hold2] armor.legs from entity @a[tag=spectral,limit=1] armor.legs
item replace entity @e[tag=hold2] armor.feet from entity @a[tag=spectral,limit=1] armor.feet

# item replace entity @a[tag=spectral] hotbar.0 with air
item replace entity @a[tag=spectral,tag=inv] hotbar.1 with air
item replace entity @a[tag=spectral,tag=pos] hotbar.4 with air

# item replace entity @a[tag=spectral] hotbar.2 with air
# item replace entity @a[tag=spectral] hotbar.3 with air
# item replace entity @a[tag=spectral] hotbar.4 with air
item replace entity @a[tag=spectral] armor.head with air
item replace entity @a[tag=spectral] armor.chest with air
item replace entity @a[tag=spectral] armor.legs with air
item replace entity @a[tag=spectral] armor.feet with air