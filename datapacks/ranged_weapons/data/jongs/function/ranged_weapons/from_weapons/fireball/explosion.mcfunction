execute positioned ~-1.5 ~-1.5 ~-1.5 as @e[dx=2,dy=2,dz=2,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter] \
run function jongs:ranged_weapons/from_weapons/fireball/damage with storage jongs:ranged_weapons fireball
particle minecraft:lava ~ ~ ~ 1 1 1 0 20 force
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 minecraft:fire replace #minecraft:replaceable destroy
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s