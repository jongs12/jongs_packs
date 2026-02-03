tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}
item replace entity @s weapon.mainhand with air
execute as @e[type=item,predicate=rinne/exclusive/item] run kill @s
execute as @a if data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne.face"}] unless data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.wand"}]}}}] unless data entity @s equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"rinne.wand"}] at @s run function jongs:rinne/metamorphosis/wand