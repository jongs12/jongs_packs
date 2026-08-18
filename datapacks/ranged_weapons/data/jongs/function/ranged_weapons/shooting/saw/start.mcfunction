advancement revoke @s only jongs:ranged_weapons/shooting/saw
scoreboard players set @s jongs.ranged_weapons.click 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run function jongs:ranged_weapons/reload/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.can_reload"}]
execute if score @s jongs.ranged_weapons.delay matches 1.. run return 0
scoreboard players set @s jongs.ranged_weapons.hold 1
scoreboard players set @s jongs.ranged_weapons.reload_time -1
scoreboard players set @s jongs.ranged_weapons.load_sound 0
scoreboard players set @s jongs.ranged_weapons.delay 1
playsound minecraft:block.grindstone.use player @a ~ ~ ~ 5 0.8
execute anchored eyes positioned ^ ^ ^ anchored feet run return run function jongs:ranged_weapons/shooting/saw/process