tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute store success score @s jongs.ranged_weapons.success run rotate @s facing entity @n[distance=..32,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target]
tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter