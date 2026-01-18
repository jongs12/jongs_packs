$execute if score @s jongs.ranged_weapons.distance matches ..0 at @s run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute unless loaded ~ ~ ~ run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health,limit=1] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health,limit=1] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 unless loaded ~ ~ ~ run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health,limit=1] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1.5 positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health,limit=1] positioned ~0.5 ~0.5 ~0.5 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal
scoreboard players remove @s jongs.ranged_weapons.distance 1
return run tp ^ ^ ^2