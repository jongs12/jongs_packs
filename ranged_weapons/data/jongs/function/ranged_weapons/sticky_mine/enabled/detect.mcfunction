tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run function jongs:ranged_weapons/sticky_mine/enabled/damage
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sticky_mine/enabled/explosion
scoreboard players add @s jongs.ranged_weapons.distance 1
execute if score @s jongs.ranged_weapons.distance matches 30 run particle minecraft:dust{color:[1,0,1],scale:0.5} ~ ~ ~ 0.1 0.1 0.1 0 2 normal
execute if score @s jongs.ranged_weapons.distance matches 60 run scoreboard players set @s jongs.ranged_weapons.distance 0
tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter