data modify storage jongs:rinne id set from entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"do_not_copy"}]}}}].id
data modify storage jongs:rinne data set from entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"do_not_copy"}]}}}].components."minecraft:custom_data"
function jongs:rinne/item_remove/clear with storage jongs:rinne