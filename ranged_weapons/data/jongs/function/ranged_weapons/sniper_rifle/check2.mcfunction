execute unless score @s jongs_ranged_weapons_hold matches 1 run return 0
execute if score @s jongs_ranged_weapons_click matches 1 run return 0
execute unless score @s jongs_ranged_weapons_sniper_rifle_cooldown matches 0 run return 0
scoreboard players set @s jongs_ranged_weapons_loaded 0
execute as @s[gamemode=creative] run scoreboard players set @s jongs_ranged_weapons_loaded 1
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"ranged_weapons_sniper_rifle_ammo"}]}}}] run function jongs:ranged_weapons/use_ammo/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"ranged_weapons_sniper_rifle_ammo"}]}}}]'}
execute if score @s jongs_ranged_weapons_loaded matches 0 if data entity @s equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"ranged_weapons_sniper_rifle_ammo"}] run function jongs:ranged_weapons/use_ammo/store {slot:'equipment.offhand'}
execute if score @s jongs_ranged_weapons_loaded matches 0 run return run function jongs:ranged_weapons/use_ammo/display {color:"dark_green"}
return run function jongs:ranged_weapons/sniper_rifle/start