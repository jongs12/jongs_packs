scoreboard players set @s jongs.ranged_weapons.cooldown.assault_rifle 2
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return 0
item modify entity @s weapon.mainhand jongs:ranged_weapons/shoot_small
return run function jongs:ranged_weapons/assault_rifle/start