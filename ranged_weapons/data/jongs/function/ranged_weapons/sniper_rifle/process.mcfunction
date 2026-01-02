$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(UUID)}] run function jongs:ranged_weapons/sniper_rifle/success with entity @s
execute unless loaded ~ ~ ~ run function jongs:ranged_weapons/sniper_rifle/failed
execute unless block ~ ~ ~ #jongs:ranged_weapons/sniper_can_pierce run function jongs:ranged_weapons/sniper_rifle/failed
scoreboard players add @s jongs_ranged_weapons_distance 1
execute if score @s jongs_ranged_weapons_distance matches 0 if score @s jongs_ranged_weapons_success matches 0 run function jongs:ranged_weapons/sniper_rifle/failed
execute if score @s jongs_ranged_weapons_distance matches ..-1 if score @s jongs_ranged_weapons_success matches 0 positioned ^ ^ ^0.5 run function jongs:ranged_weapons/sniper_rifle/process with entity @s