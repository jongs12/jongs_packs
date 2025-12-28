$clear @s $(id)[minecraft:custom_data=$(data)]
execute if data entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"do_not_copy"}]}}}] run function jongs:rinne/item_remove/store