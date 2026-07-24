execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/from_weapons/display/set_position
execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/display/set_position
execute unless block ^ ^ ^0.5 #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/from_weapons/display/set_position
scoreboard players remove @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 1.. positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/from_weapons/display/process
return run function jongs:ranged_weapons/from_weapons/display/set_position