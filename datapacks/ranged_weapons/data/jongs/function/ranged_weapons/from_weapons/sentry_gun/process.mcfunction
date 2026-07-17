execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,type=!#jongs:ranged_weapons/throwables_dont_target,tag=!jongs.ranged_weapons.shooter,limit=1] run return run function jongs:ranged_weapons/from_weapons/sentry_gun/damage
execute unless loaded ^ ^ ^1 run return 0
execute unless block ^ ^ ^0.9 #jongs:ranged_weapons/can_pierce run return 0
scoreboard players remove @s jongs.ranged_weapons.hold 1
scoreboard players remove @s jongs.ranged_weapons.click 1
execute if score @s jongs.ranged_weapons.hold matches 1.. if score @s jongs.ranged_weapons.click matches 1.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/sentry_gun/process
return 0