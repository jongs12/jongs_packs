execute positioned ~-1 ~-1 ~-1 if entity @e[dx=1,dy=1,dz=1,type=!#jongs:ranged_weapons/bullets_dont_target] positioned ~1 ~1 ~1 run return run function jongs:ranged_weapons/from_weapons/fireball/explosion
execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/fireball/explosion
execute unless block ^ ^ ^0.75 #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/from_weapons/fireball/explosion
scoreboard players remove @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 1.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/fireball/process
return run function jongs:ranged_weapons/from_weapons/fireball/explosion