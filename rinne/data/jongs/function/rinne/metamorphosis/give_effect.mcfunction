execute if predicate jongs:rinne/face/head run effect give @s minecraft:night_vision 30 0 true
function jongs:rinne/metamorphosis/item_copy {slot:"weapon.mainhand"}
item replace entity @s weapon.mainhand from entity @s weapon.offhand
return run item replace entity @s weapon.offhand with minecraft:air