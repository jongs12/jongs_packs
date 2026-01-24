execute as @a[predicate=jongs:ranged_weapons/on_mainhand] at @s run function jongs:ranged_weapons/player/on_mainhand
execute as @a[predicate=jongs:ranged_weapons/on_offhand_reload] at @s run function jongs:ranged_weapons/player/force_reload
execute as @a[predicate=jongs:ranged_weapons/on_offhand_no_reload] at @s run function jongs:ranged_weapons/player/force_swap
execute as @a if score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 1
execute as @a unless score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 0
execute as @a run scoreboard players set @s jongs.ranged_weapons.click 0
execute as @e[type=minecraft:small_fireball,tag=jongs.ranged_weapons.limit_duration] at @s run function jongs:ranged_weapons/flamethrower/process
execute as @e[type=minecraft:lingering_potion,tag=jongs.ranged_weapons.summoned,predicate=jongs:ranged_weapons/no_vehicle] at @s run fill ~-1 ~-1 ~-1 ~1 ~1 ~1 fire keep
execute as @e[type=minecraft:block_display,tag=jongs.ranged_weapons.limit_duration] at @s run function jongs:ranged_weapons/rocket_launcher/process with entity @s data.jongs[{purpose:"ranged_weapons.shot_rocket"}]
execute as @e[type=minecraft:marker,tag=jongs.ranged_weapons.summoned] at @s run function jongs:ranged_weapons/grenade_launcher/process/check
execute as @e[type=minecraft:item_display,tag=jongs.ranged_weapons.limit_duration,predicate=jongs:ranged_weapons/no_vehicle] at @s run function jongs:ranged_weapons/sticky_mine/process with entity @s data.jongs[{purpose:"ranged_weapons.thrown_mine"}]