execute unless items entity @s weapon.mainhand *[minecraft:damage~{damage:0}] if score @s jongs.ranged_weapons.refill.sentry_gun matches 1.. run function jongs:ranged_weapons/sentry_gun/refill
execute if score @s jongs.ranged_weapons.cooldown.sentry_gun matches 1 run playsound minecraft:item.armor.equip_netherite player @s ~ ~ ~ 1.5 1.2
execute if score @s jongs.ranged_weapons.cooldown.sentry_gun matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.cooldown.sentry_gun 1
return 0