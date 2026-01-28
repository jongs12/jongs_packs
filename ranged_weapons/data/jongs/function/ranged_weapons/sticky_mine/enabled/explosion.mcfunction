scoreboard players add @a[tag=jongs.ranged_weapons.shooter,limit=1] jongs.ranged_weapons.refill.sticky_mine 1
execute positioned ~-3.5 ~-3.5 ~-3.5 as @e[dx=6,dy=6,dz=6,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_explosion_target] run damage @s 26 minecraft:player_explosion by @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] from @a[tag=jongs.ranged_weapons.shooter,limit=1]
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 5 0.7
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 5 2
particle minecraft:lava ~ ~ ~ 2.5 2.5 2.5 0.5 100 normal
particle minecraft:reverse_portal ~ ~ ~ 2.5 2.5 2.5 0.5 100 normal
particle minecraft:flash{color:[1,0.33,1,1]} ~ ~ ~ 0.6 0.6 0.6 0.1 3 normal
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s