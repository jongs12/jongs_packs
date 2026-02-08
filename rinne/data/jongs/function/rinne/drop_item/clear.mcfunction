$clear @s $(id)[minecraft:custom_data=$(data)]
execute if predicate jongs:rinne/item/exclusive/inventory run return run function jongs:rinne/drop_item/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.exclusive"}]}}}]'}
execute if predicate jongs:rinne/item/exclusive/offhand run return run function jongs:rinne/drop_item/store {slot:'equipment.offhand'}
return 0