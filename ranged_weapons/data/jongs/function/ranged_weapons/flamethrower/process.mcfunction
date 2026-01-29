execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/flamethrower/burning
execute if score @s jongs.ranged_weapons.distance matches ..0 on vehicle run return run kill @s
particle minecraft:small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal
execute if score @s jongs.ranged_weapons.distance matches ..29 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 5 normal
execute if score @s jongs.ranged_weapons.distance matches ..7 run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.02 1 normal
return run scoreboard players remove @s jongs.ranged_weapons.distance 1