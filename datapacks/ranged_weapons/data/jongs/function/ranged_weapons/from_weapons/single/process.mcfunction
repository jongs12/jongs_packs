particle minecraft:dust{color:[0.8,0.8,0.8],scale:0.05} ~ ~ ~ 0 0 0 0 1 normal
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target,tag=!jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/detect
execute if score @s jongs.ranged_weapons.reload_time matches ..-1 run return run scoreboard players set @s jongs.ranged_weapons.delay 0
execute positioned ^ ^ ^0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target,tag=!jongs.ranged_weapons.hit] run function jongs:ranged_weapons/from_weapons/single/detect
execute unless loaded ^ ^ ^1 run return run scoreboard players set @s jongs.ranged_weapons.delay 0
execute unless block ^ ^ ^0.75 #jongs:ranged_weapons/can_pierce run function jongs:ranged_weapons/from_weapons/single/blocked
execute if score @s jongs.ranged_weapons.reload_time matches ..-1 run return run scoreboard players set @s jongs.ranged_weapons.delay 0
scoreboard players remove @s jongs.ranged_weapons.hold 1
execute if score @s jongs.ranged_weapons.hold matches 1.. positioned ^ ^ ^1 run return run function jongs:ranged_weapons/from_weapons/single/process
return 0