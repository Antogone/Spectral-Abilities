##
 # normal.mcfunction
 # 
 #
 # Created by .
##
item replace entity @a[tag=spectral,tag=inv,limit=1] hotbar.1 from entity @e[tag=hold2,limit=1] weapon.mainhand
item replace entity @a[tag=spectral,tag=pos,limit=1] hotbar.4 from entity @e[tag=hold2,limit=1] weapon.mainhand

item replace entity @a[tag=spectral,limit=1] armor.head from entity @e[tag=hold2,limit=1] armor.head
item replace entity @a[tag=spectral,limit=1] armor.chest from entity @e[tag=hold2,limit=1] armor.chest
item replace entity @a[tag=spectral,limit=1] armor.legs from entity @e[tag=hold2,limit=1] armor.legs
item replace entity @a[tag=spectral,limit=1] armor.feet from entity @e[tag=hold2,limit=1] armor.feet

# item replace entity @a[tag=spectral,limit=1] hotbar.0 from entity @e[tag=hold,limit=1] armor.head
# item replace entity @a[tag=spectral,limit=1] hotbar.1 from entity @e[tag=hold,limit=1] weapon.mainhand
# item replace entity @a[tag=spectral,limit=1] hotbar.2 from entity @e[tag=hold,limit=1] weapon.offhand

# item replace entity @a[tag=spectral,limit=1] hotbar.3 from entity @e[tag=hold2,limit=1] armor.head
# item replace entity @a[tag=spectral,limit=1] hotbar.4 from entity @e[tag=hold2,limit=1] weapon.mainhand
# item replace entity @a[tag=spectral,limit=1] armor.head from entity @e[tag=hold2,limit=1] weapon.offhand
# item replace entity @a[tag=spectral,limit=1] armor.chest from entity @e[tag=hold2,limit=1] armor.chest
# item replace entity @a[tag=spectral,limit=1] armor.legs from entity @e[tag=hold2,limit=1] armor.legs
# item replace entity @a[tag=spectral,limit=1] armor.feet from entity @e[tag=hold2,limit=1] armor.feet

kill @e[tag=hold]
kill @e[tag=hold2]



