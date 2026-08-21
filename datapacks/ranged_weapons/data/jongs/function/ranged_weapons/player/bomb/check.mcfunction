execute as @a[tag=jongs.ranged_weapons.ready] at @s run function jongs:ranged_weapons/player/bomb/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.launcher"}]
execute as @a[tag=jongs.ranged_weapons.ready] run tag @s remove jongs.ranged_weapons.ready
return 0