tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}
item replace entity @s weapon.mainhand with air
execute as @e[type=item,predicate=jongs:rinne/exclusive/item] run kill @s
execute as @a[predicate=jongs:rinne/face/head] unless data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.wand"}]}}}] unless data entity @s equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"rinne.wand"}] at @s run function jongs:rinne/metamorphosis/wand