$execute unless loaded ~ ~ ~ run return run function jongs:ranged_weapons/grenade_launcher/process/explosion {"UUID":$(shooter)}
$execute store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,nbt=!{UUID:$(shooter)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 24 minecraft:arrow by @p[nbt={UUID:$(shooter)}]
$execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/grenade_launcher/process/explosion {"UUID":$(shooter)}
$execute unless block ~ ~ ~ #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/grenade_launcher/process/explosion {"UUID":$(shooter)}
scoreboard players remove @s jongs.ranged_weapons.distance 1
$execute if score @s jongs.ranged_weapons.distance matches 0.. positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/grenade_launcher/process/shooting {"shooter":$(shooter)}
$return run function jongs:ranged_weapons/grenade_launcher/process/explosion {"UUID":$(shooter)}