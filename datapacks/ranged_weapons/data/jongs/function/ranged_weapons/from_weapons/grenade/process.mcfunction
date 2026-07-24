execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/from_weapons/grenade/explosion with storage jongs:ranged_weapons rocket.area
execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/from_weapons/grenade/explosion with storage jongs:ranged_weapons rocket.area
execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/grenade/explosion with storage jongs:ranged_weapons rocket.area
execute unless block ^ ^ ^0.75 #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/from_weapons/grenade/explosion with storage jongs:ranged_weapons rocket.area
scoreboard players remove @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 1.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/grenade/process
return run function jongs:ranged_weapons/from_weapons/grenade/explosion with storage jongs:ranged_weapons rocket.area