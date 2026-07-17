$clear @s $(id)[minecraft:custom_data=$(data)]
execute if items entity @s container.* *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run return run function jongs:rinne/drop_item/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.exclusive"}]}}}]'}
return 0