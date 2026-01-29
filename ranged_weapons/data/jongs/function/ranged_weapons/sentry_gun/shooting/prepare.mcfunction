execute store result score @s jongs.ranged_weapons.success on vehicle run data get entity @s Health
execute if score @s jongs.ranged_weapons.success matches 0 run return run ride @s dismount
scoreboard players set @s jongs.ranged_weapons.success 0
tag @s add jongs.ranged_weapons.owner
execute on vehicle run tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.owner,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
playsound minecraft:entity.firework_rocket.blast_far player @a ~ ~ ~ 3 0.9
particle minecraft:block{block_state:{Name:"minecraft:copper_block"}} ~ ~ ~ 0.2 0.2 0.2 1 3
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 25
execute positioned ^ ^ ^ on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
tag @s remove jongs.ranged_weapons.owner
execute on vehicle run tag @s remove jongs.ranged_weapons.shooting
return run tag @a[tag=jongs.ranged_weapons.shooter,limit=1] remove jongs.ranged_weapons.shooter