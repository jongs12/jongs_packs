scoreboard players remove @s jongs.ranged_weapons.refill.sentry_gun 1
item modify entity @s weapon.mainhand {"function":"set_damage","add":true,"damage":0.2}
return run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 0.8 2