tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ~-1 ~-1 ~-1 as @e[dx=1,dy=1,dz=1,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run function jongs:ranged_weapons/sticky_mine/enabled/damage
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sticky_mine/enabled/explosion
tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter