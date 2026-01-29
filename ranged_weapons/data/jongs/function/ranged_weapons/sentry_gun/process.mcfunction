scoreboard players add @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 10 run return run particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 20 normal
execute if score @s jongs.ranged_weapons.distance matches 16 run return run scoreboard players set @s jongs.ranged_weapons.distance 0
return 0