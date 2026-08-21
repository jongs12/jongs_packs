execute unless score @s jongs.ranged_weapons.delay matches 1.. on vehicle run kill @s
execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/from_weapons/fireball/start
particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 5 force
particle minecraft:small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal
return run scoreboard players remove @s jongs.ranged_weapons.delay 1