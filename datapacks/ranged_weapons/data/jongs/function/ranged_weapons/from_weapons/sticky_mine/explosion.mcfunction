execute positioned ~-4 ~-4 ~-4 as @e[dx=7,dy=7,dz=7,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.shooter] \
run damage @s 32 jongs:ranged_weapons/explosion by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 10 0.5
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 10 1.2
particle minecraft:reverse_portal ~ ~ ~ 2 2 2 0.5 100 normal
particle minecraft:flash{color:[1,0.33,1,0.8]} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s