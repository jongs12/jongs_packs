data modify storage jongs:rinne id set from entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne_exclusive"}]}}}].id
data modify storage jongs:rinne data set from entity @s Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne_exclusive"}]}}}].components."minecraft:custom_data"
function jongs:rinne/item_remove/clear with storage jongs:rinne