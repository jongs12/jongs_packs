advancement revoke @s only jongs:ranged_weapons/shoot/flamethrower
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_very_small
return run function jongs:ranged_weapons/flamethrower/start