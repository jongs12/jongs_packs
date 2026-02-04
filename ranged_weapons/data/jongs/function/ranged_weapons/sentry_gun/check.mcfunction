advancement revoke @s only jongs:ranged_weapons/shoot/sentry_gun
scoreboard players set @s jongs.ranged_weapons.click 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return 0
execute if score @s jongs.ranged_weapons.hold matches 1 run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/throwables/spend
return run function jongs:ranged_weapons/sentry_gun/start