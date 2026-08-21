execute positioned ~-5 ~-5 ~-5 as @e[dx=9,dy=9,dz=9,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.shooter,tag=!jongs.ranged_weapons.do_not_target] \
run function jongs:ranged_weapons/from_weapons/rocket/area_damage with storage jongs:ranged_weapons rocket.area
playsound minecraft:entity.generic.explode player @a ~ ~ ~ 10 0.5
particle minecraft:gust_emitter_large ~2 ~2 ~2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-2 ~2 ~2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-2 ~-2 ~2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~2 ~-2 ~2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~2 ~2 ~-2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-2 ~2 ~-2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~-2 ~-2 ~-2 0 0 0 1 1 force
particle minecraft:gust_emitter_large ~2 ~-2 ~-2 0 0 0 1 1 force
tag @e[type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter,tag=jongs.ranged_weapons.do_not_target] remove jongs.ranged_weapons.do_not_target
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
scoreboard players set #피해여부 jongs.ranged_weapons.click -1
return run kill @s