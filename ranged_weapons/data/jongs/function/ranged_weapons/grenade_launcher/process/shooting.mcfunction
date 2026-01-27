execute unless loaded ^ ^ ^0.5 run return run function jongs:ranged_weapons/grenade_launcher/process/explosion
execute store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 24 minecraft:player_attack by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
execute if score @s jongs.ranged_weapons.success matches 0.. run return run function jongs:ranged_weapons/grenade_launcher/process/explosion
execute unless block ^ ^ ^0.5 #jongs:ranged_weapons/dashable run return run function jongs:ranged_weapons/grenade_launcher/process/explosion
scoreboard players remove @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 0.. positioned ^ ^ ^0.5 run return run function jongs:ranged_weapons/grenade_launcher/process/shooting
return run function jongs:ranged_weapons/grenade_launcher/process/explosion