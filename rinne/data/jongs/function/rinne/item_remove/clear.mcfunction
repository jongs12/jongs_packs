$clear @s $(id)[minecraft:custom_data=$(data)]
execute if predicate jongs:rinne/exclusive/inventory run return run function jongs:rinne/item_remove/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.exclusive"}]}}}]'}
execute if predicate jongs:rinne/exclusive/offhand run return run function jongs:rinne/item_remove/store {slot:'equipment.offhand.components."minecraft:custom_data".jongs[{purpose:"rinne.exclusive"}]'}
return 0