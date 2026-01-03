$data modify storage jongs:rinne id set from entity @s $(slot).id
$data modify storage jongs:rinne data set from entity @s $(slot).components."minecraft:custom_data"
function jongs:rinne/item_remove/clear with storage jongs:rinne