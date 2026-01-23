$execute if score @s jongs.ranged_weapons.distance matches ..0 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^0.5 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1 unless block ~ ~ ~ #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
$execute positioned ^ ^ ^1.5 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/rocket_launcher/explosion {"UUID":$(shooter)}
particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal
scoreboard players remove @s jongs.ranged_weapons.distance 1
return run tp ^ ^ ^2