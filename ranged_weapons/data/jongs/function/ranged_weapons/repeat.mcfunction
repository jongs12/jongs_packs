execute as @a[predicate=jongs:ranged_weapons/on_mainhand] at @s run function jongs:ranged_weapons/player/on_mainhand
execute as @a[predicate=jongs:ranged_weapons/on_offhand_reload] at @s run function jongs:ranged_weapons/player/force_reload
execute as @a[predicate=jongs:ranged_weapons/on_offhand_no_reload] at @s run function jongs:ranged_weapons/player/force_swap
execute as @a[scores={jongs.ranged_weapons.click=1}] run scoreboard players set @s jongs.ranged_weapons.hold 1
execute as @a unless score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 0
execute as @a run scoreboard players set @s jongs.ranged_weapons.click 0
execute as @e[tag=jongs.ranged_weapons.limit_duration] at @s run function jongs:ranged_weapons/bullets/limit_duration
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.shot_grenade] at @s run function jongs:ranged_weapons/grenade_launcher/process/prepare