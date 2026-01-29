execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 21 minecraft:fireworks by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 5 0.5
particle minecraft:gust_emitter_large ~ ~ ~ 0 0 0 1 1 force
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s