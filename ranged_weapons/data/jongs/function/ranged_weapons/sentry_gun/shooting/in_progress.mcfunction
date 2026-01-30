execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target] run function jongs:ranged_weapons/sentry_gun/shooting/damage
execute on passengers if score @s jongs.ranged_weapons.success matches 1 run return 0
execute unless block ^ ^ ^1 #jongs:ranged_weapons/can_pierce run return 0
execute unless loaded ^ ^ ^1 on passengers run return run scoreboard players set @s jongs.ranged_weapons.success 1
scoreboard players remove @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 0.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute on passengers run return run scoreboard players set @s jongs.ranged_weapons.success 1