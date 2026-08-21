tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:marker,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute store result storage jongs:ranged_weapons rocket.area.amount float 0.1 run scoreboard players get @s jongs.ranged_weapons.click
return run function jongs:ranged_weapons/from_weapons/grenade/process