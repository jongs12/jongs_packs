execute unless predicate jongs:rinne/item/face/head run return run function jongs:rinne/use_item/back_to_owner {slot:"weapon.offhand"}
effect give @s minecraft:night_vision 30 0 true
function jongs:rinne/drop_item/copy {slot:"weapon.mainhand"}
item replace entity @s weapon.mainhand from entity @s weapon.offhand
return run item replace entity @s weapon.offhand with minecraft:air