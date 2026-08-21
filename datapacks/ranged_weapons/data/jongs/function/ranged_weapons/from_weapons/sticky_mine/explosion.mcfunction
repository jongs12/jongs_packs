execute as @e[distance=..2.5,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.shooter] \
run function jongs:ranged_weapons/from_weapons/sticky_mine/area_damage {amount:21}
execute as @e[distance=2.5..6,type=!#jongs:ranged_weapons/infinite_health,tag=!jongs.ranged_weapons.shooter, \
tag=!jongs.ranged_weapons.damaged] run function jongs:ranged_weapons/from_weapons/sticky_mine/area_damage {amount:6}
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 10 0.5
playsound minecraft:block.sculk_shrieker.shriek player @a ~ ~ ~ 10 1.2
particle minecraft:flash{color:[1,0.5,1,0.8]} ~ ~ ~ 0.2 0.2 0.2 0 3 force
particle minecraft:reverse_portal ~ ~ ~ 1.5 1.5 1.5 0.5 100 normal
particle minecraft:wax_off ~ ~ ~ 3 3 3 1 100 normal
tag @e[type=!#jongs:ranged_weapons/infinite_health,tag=jongs.ranged_weapons.damaged] remove jongs.ranged_weapons.damaged
tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter
return run kill @s