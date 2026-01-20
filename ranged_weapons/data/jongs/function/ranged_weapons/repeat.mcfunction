execute as @a[predicate=jongs:ranged_weapons/holding_assault_rifle] at @s run function jongs:ranged_weapons/assault_rifle/holding
execute as @a[predicate=jongs:ranged_weapons/holding_pistol] at @s run function jongs:ranged_weapons/pistol/holding
execute as @a[predicate=jongs:ranged_weapons/holding_shotgun] at @s run function jongs:ranged_weapons/shotgun/holding
execute as @a[predicate=jongs:ranged_weapons/holding_sniper_rifle] at @s run function jongs:ranged_weapons/sniper_rifle/holding
execute as @a[predicate=jongs:ranged_weapons/holding_flamethrower] at @s run function jongs:ranged_weapons/flamethrower/holding
execute as @a[predicate=jongs:ranged_weapons/holding_rocket_launcher] at @s run function jongs:ranged_weapons/rocket_launcher/holding
execute as @a[predicate=jongs:ranged_weapons/on_offhand] at @s run function jongs:ranged_weapons/player/force_reload
execute as @a if score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 1
execute as @a unless score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 0
execute as @a run scoreboard players set @s jongs.ranged_weapons.click 0
execute as @e[type=minecraft:small_fireball,tag=jongs.ranged_weapons.limit_duration] at @s run function jongs:ranged_weapons/flamethrower/process
execute as @e[type=minecraft:block_display,tag=jongs.ranged_weapons.limit_duration] at @s run function jongs:ranged_weapons/rocket_launcher/process with entity @s data.jongs[{purpose:"ranged_weapons.shot_rocket"}]