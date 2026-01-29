execute positioned ~-6 ~-6 ~-6 as @e[dx=11,dy=11,dz=11,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 40 minecraft:fireworks by @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:gust_emitter_large ~3 ~3 ~3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-3 ~3 ~3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~3 ~-3 ~3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~3 ~3 ~-3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-3 ~-3 ~3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-3 ~3 ~-3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~3 ~-3 ~-3 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-3 ~-3 ~-3 0 0 0 1 1 force
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s