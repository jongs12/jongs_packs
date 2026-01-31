execute store result score @s jongs.ranged_weapons.success on vehicle run data get entity @s Health
execute if score @s jongs.ranged_weapons.success matches 0 run return run ride @s dismount
tag @s add jongs.ranged_weapons.owner
execute on vehicle run tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.owner,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:1}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:1}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:2}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:2}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:3}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:3}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:4}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:4}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:5}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:5}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:6}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:6}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:7}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:7}
tag @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] add jongs.ranged_weapons.blocked
scoreboard players set @s jongs.ranged_weapons.success 0
execute store success score @s jongs.ranged_weapons.success positioned ~-15 ~-15 ~-15 as @e[dx=29,dy=29,dz=29,tag=!jongs.ranged_weapons.shooter,type=!#jongs:ranged_weapons/no_throwable_target,tag=!jongs.ranged_weapons.blocked,limit=1] run tag @s add jongs.ranged_weapons.target
execute if score @s jongs.ranged_weapons.success matches 0 run return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:8}
scoreboard players set @s jongs.ranged_weapons.success 0
execute on vehicle run scoreboard players set @s jongs.ranged_weapons.distance 26
execute positioned ^ ^ ^ facing entity @e[tag=jongs.ranged_weapons.target,tag=!jongs.ranged_weapons.blocked,limit=1] eyes on vehicle run function jongs:ranged_weapons/sentry_gun/shooting/in_progress
execute if score @s jongs.ranged_weapons.success matches 1 run return run function jongs:ranged_weapons/sentry_gun/shooting/effect {limit:8}
return run function jongs:ranged_weapons/sentry_gun/shooting/remove_tags {limit:8}