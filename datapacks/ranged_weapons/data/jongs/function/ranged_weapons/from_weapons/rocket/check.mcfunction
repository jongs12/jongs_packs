tag @s add jongs.ranged_weapons.shooting
execute as @a if score @s jongs.ranged_weapons.player_id = @e[type=minecraft:block_display,tag=jongs.ranged_weapons.shooting,limit=1] jongs.ranged_weapons.player_id run tag @s add jongs.ranged_weapons.shooter
execute positioned ^ ^ ^-0.5 positioned ~-0.5 ~-0.5 ~-0.5 as @e[dx=0,type=!#jongs:ranged_weapons/bullets_dont_target,tag=!jongs.ranged_weapons.shooter] run tag @s add jongs.ranged_weapons.do_not_target
scoreboard players set #피해여부 jongs.ranged_weapons.click 0
execute store result storage jongs:ranged_weapons rocket.speed.amount int 1 run scoreboard players get @s jongs.ranged_weapons.hold
execute store result storage jongs:ranged_weapons rocket.direct.amount float 0.1 run scoreboard players get @s jongs.ranged_weapons.click
execute store result storage jongs:ranged_weapons rocket.area.amount float 0.1 run scoreboard players get @s jongs.ranged_weapons.reload_time
return run function jongs:ranged_weapons/from_weapons/rocket/start with storage jongs:ranged_weapons rocket.speed