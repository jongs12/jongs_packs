execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/flamethrower/burning
particle minecraft:small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal
execute if score @s jongs.ranged_weapons.distance matches ..29 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 5 normal
execute if score @s jongs.ranged_weapons.distance matches ..12 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.05 8 normal
execute if score @s jongs.ranged_weapons.distance matches ..0 on vehicle run return run kill @s
return run scoreboard players remove @s jongs.ranged_weapons.distance 1