scoreboard players set @s jongs_ranged_weapons_click 1
scoreboard players set @s jongs_ranged_weapons_loaded -1
execute unless score @s jongs_ranged_weapons_hold matches 1 run scoreboard players set @s jongs_ranged_weapons_loaded 0
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"ranged_weapons_infinite_ammo"}]}}}] run scoreboard players set @s jongs_ranged_weapons_loaded 1
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"ranged_weapons_infinite_ammo"}] run scoreboard players set @s jongs_ranged_weapons_loaded 1
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"ranged_weapons_pistol_ammo"}]}}}] run function jongs:ranged_weapons/use_ammo/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"ranged_weapons_pistol_ammo"}]}}}]'}
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"ranged_weapons_pistol_ammo"}] run function jongs:ranged_weapons/use_ammo/store {slot:'equipment.offhand'}
execute if score @s jongs_ranged_weapons_loaded matches 1 run function jongs:ranged_weapons/pistol/start
advancement revoke @s only jongs:ranged_weapons/shoot/pistol