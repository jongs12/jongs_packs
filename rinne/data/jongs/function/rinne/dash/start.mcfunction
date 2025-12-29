execute unless data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne_head"}] run function jongs:rinne/boom/back_to_owner
attribute @s minecraft:gravity modifier add jongs:rinne -1 add_multiplied_total
particle minecraft:explosion ~ ~ ~ 1 1 1 1 5 normal
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 0.5 0
effect give @e[distance=0.001..9] minecraft:glowing 6 0 true
effect give @e[distance=0.001..9] minecraft:slowness 6 4 false
effect clear @s minecraft:blindness
effect clear @s minecraft:darkness
effect clear @s minecraft:nausea
scoreboard players set @s jongs_rinne_hold 1