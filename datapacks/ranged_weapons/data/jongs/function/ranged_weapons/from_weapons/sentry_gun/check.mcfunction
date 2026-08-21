scoreboard players set #남은체력 jongs.ranged_weapons.delay 0
execute store result score #남은체력 jongs.ranged_weapons.delay on vehicle run data get entity @s Health
execute if score #남은체력 jongs.ranged_weapons.delay matches 0 run return run kill @s
execute if score @s jongs.ranged_weapons.delay matches 1.. run return run scoreboard players remove @s jongs.ranged_weapons.delay 1
tag @s add jongs.ranged_weapons.shooting
execute on vehicle run tag @s add jongs.ranged_weapons.shooter
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
tag @a[distance=..25,tag=!jongs.ranged_weapons.shooter,gamemode=!survival,gamemode=!adventure] add jongs.ranged_weapons.do_not_target
execute as @e[distance=..25,tag=!jongs.ranged_weapons.shooter,type=#jongs:ranged_weapons/can_be_tamed] if data entity @s Owner run function jongs:ranged_weapons/from_weapons/sentry_gun/find_owner
scoreboard players set @s jongs.ranged_weapons.click 100
return run function jongs:ranged_weapons/from_weapons/sentry_gun/start