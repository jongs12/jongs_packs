$execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.shooter] \
run damage @s $(amount) jongs:ranged_weapons/explosion by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.6
particle minecraft:gust_emitter_large ~ ~ ~ 0 0 0 1 1 force
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s