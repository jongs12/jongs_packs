execute unless loaded ~ ~ ~ run return run kill @s
execute if score @s jongs.ranged_weapons.distance matches ..0 run return run kill @s
scoreboard players remove @s jongs.ranged_weapons.distance 1
particle minecraft:small_flame ~ ~ ~ 0.3 0.3 0.3 0.05 2 normal
execute if score @s jongs.ranged_weapons.distance matches ..12 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.05 8 normal
execute if score @s jongs.ranged_weapons.distance matches ..5 run return run particle minecraft:lava ~ ~ ~ 0.1 0.1 0.1 0.02 1 normal
execute if score @s jongs.ranged_weapons.distance matches ..28 run return run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.02 5 normal
return 0