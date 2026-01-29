execute unless loaded ^ ^ ^1 run return 0
execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=2,dy=2,dz=2,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target] run function jongs:ranged_weapons/sentry_gun/shooting/damage
execute if score @s jongs.ranged_weapons.success matches 1 run return 0
execute unless block ^ ^ ^1 #jongs:ranged_weapons/can_pierce run return 0
scoreboard players remove @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 0.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
return 0