scoreboard players set @s jongs.ranged_weapons.distance 6
tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
return run function jongs:ranged_weapons/grenade_launcher/process/shooting