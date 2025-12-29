tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}
item replace entity @s weapon.mainhand with air
execute as @e[type=item] if data entity @s Item.components."minecraft:custom_data".jongs[{purpose:"rinne_exclusive"}] run kill @s
execute as @a if data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne_head"}] unless data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne_wand"}]}}}] at @s run function jongs:rinne/metamorphosis/wand