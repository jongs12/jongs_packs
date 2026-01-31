tag @s add jongs.ranged_weapons.owner
execute as @e[type=minecraft:block_display,tag=jongs.ranged_weapons.installed_turret] if score @s jongs.ranged_weapons.player_id = @a[tag=jongs.ranged_weapons.owner,limit=1] jongs.ranged_weapons.player_id on vehicle run kill @s
return run tag @s remove jongs.ranged_weapons.owner