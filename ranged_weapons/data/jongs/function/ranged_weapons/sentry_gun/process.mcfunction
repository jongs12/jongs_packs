execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/sentry_gun/force_return/add_scores
scoreboard players add @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 5 unless score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/rotate
execute if score @s jongs.ranged_weapons.distance matches 8 if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/prepare
execute if score @s jongs.ranged_weapons.distance matches 16 run return run scoreboard players set @s jongs.ranged_weapons.distance 0
return 0