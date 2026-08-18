advancement revoke @s only jongs:ranged_weapons/shooting/rocket
scoreboard players set @s jongs.ranged_weapons.click 1
execute unless items entity @s weapon.mainhand *[minecraft:damage~{durability:{min:1}}] run return run function jongs:ranged_weapons/reload/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.can_reload"}]
return run function jongs:ranged_weapons/shooting/rocket/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{"purpose":"ranged_weapons.guns"}]