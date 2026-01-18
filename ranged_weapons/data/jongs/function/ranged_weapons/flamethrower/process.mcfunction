execute unless loaded ~ ~ ~ run return run kill @s
execute if score @s jongs.ranged_weapons.distance matches ..0 run return run kill @s
execute if score @s jongs.ranged_weapons.distance matches 8..29 run particle minecraft:flame ~ ~ ~ 0.1 0.1 0.1 0.02 2 normal
execute if score @s jongs.ranged_weapons.distance matches ..15 run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0.05 2 normal
return run scoreboard players remove @s jongs.ranged_weapons.distance 1