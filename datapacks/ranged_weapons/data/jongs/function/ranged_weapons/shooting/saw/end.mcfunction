tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
execute if score #피해여부 jongs.ranged_weapons.click matches 0 run return run tag @s remove jongs.ranged_weapons.shooter
xp add @s -1 points
return run tag @s remove jongs.ranged_weapons.shooter