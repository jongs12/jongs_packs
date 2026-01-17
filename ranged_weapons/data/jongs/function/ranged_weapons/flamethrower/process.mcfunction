execute unless loaded ~ ~ ~ run return run kill @s
execute if score @s jongs.ranged_weapons.distance matches ..0 run return run kill @s
particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 normal
return run scoreboard players remove @s jongs.ranged_weapons.distance 1