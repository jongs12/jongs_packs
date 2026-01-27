tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute if score @s jongs.ranged_weapons.distance matches ..0 run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
execute if score @s jongs.ranged_weapons.success matches 0.. run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute unless block ^ ^ ^1 #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute positioned ^ ^ ^0.5 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
execute if score @s jongs.ranged_weapons.success matches 0.. run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute positioned ^ ^ ^1 unless loaded ^ ^ ^1 run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute positioned ^ ^ ^1 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
execute if score @s jongs.ranged_weapons.success matches 0.. run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute positioned ^ ^ ^1 unless block ^ ^ ^1 #jongs:ranged_weapons/can_pierce run return run function jongs:ranged_weapons/rocket_launcher/explosion
execute positioned ^ ^ ^1.5 store success score @s jongs.ranged_weapons.success positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 50 minecraft:player_attack by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
execute if score @s jongs.ranged_weapons.success matches 0.. run return run function jongs:ranged_weapons/rocket_launcher/explosion
particle minecraft:electric_spark ~ ~ ~ 0.2 0.2 0.2 0.1 5 normal
scoreboard players remove @s jongs.ranged_weapons.distance 1
tag @s remove jongs.ranged_weapons.shooting
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run tp ^ ^ ^2