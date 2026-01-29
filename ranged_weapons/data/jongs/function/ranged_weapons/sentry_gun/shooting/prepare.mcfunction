scoreboard players set @s jongs.ranged_weapons.success 0
tag @s add jongs.ranged_weapons.owner
execute on vehicle run tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.owner,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ^ ^ ^ on vehicle run return run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
tag @s remove jongs.ranged_weapons.owner
execute on vehicle run tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter