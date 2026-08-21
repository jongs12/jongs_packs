execute as @a if score @s jongs.ranged_weapons.delay matches 1.. run function jongs:ranged_weapons/player/reduce_delay
execute as @e[type=#jongs:ranged_weapons/projectiles,tag=jongs.ranged_weapons.from_weapons] at @s run function jongs:ranged_weapons/from_weapons/trigger with entity @s data.jongs[{purpose:"ranged_weapons.from_weapons"}]
execute as @a if items entity @s weapon.offhand #jongs:ranged_weapons/guns[minecraft:custom_data~{"jongs":[{"purpose":"ranged_weapons.can_reload"}]}] at @s run function jongs:ranged_weapons/reload/trigger
execute as @a if score @s jongs.ranged_weapons.reload_time matches 0.. at @s run function jongs:ranged_weapons/reload/process
execute as @a if score @s jongs.ranged_weapons.hold matches 1 if score @s jongs.ranged_weapons.click matches 0 if items entity @s weapon.mainhand minecraft:spyglass[minecraft:custom_data~{"jongs":[{"purpose":"ranged_weapons.guns"}]}] \
at @s run function jongs:ranged_weapons/shooting/sniper/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.guns"}]
execute as @a unless score @s jongs.ranged_weapons.click matches 1 run scoreboard players set @s jongs.ranged_weapons.hold 0
scoreboard players set @a jongs.ranged_weapons.click 0