particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 0.2 2 force
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target] run function jongs:ranged_weapons/from_weapons/rocket/direct_damage with storage jongs:ranged_weapons rocket.direct
execute if score #피해여부 jongs.ranged_weapons.click matches 1 run return run function jongs:ranged_weapons/from_weapons/rocket/explosion
execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target] run function jongs:ranged_weapons/from_weapons/rocket/direct_damage with storage jongs:ranged_weapons rocket.direct
execute if score #피해여부 jongs.ranged_weapons.click matches 1 positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/from_weapons/rocket/explosion
execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/rocket/explosion
execute unless block ^ ^ ^0.9 #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/from_weapons/rocket/explosion
scoreboard players remove @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 1.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/rocket/process
return 0