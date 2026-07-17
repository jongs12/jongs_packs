function jongs:rinne/use_item/remove_effects
effect give @s minecraft:night_vision 60 0 true
effect give @s minecraft:fire_resistance 60 0 true
effect give @s minecraft:water_breathing 5 0 true
function jongs:rinne/drop_item/copy {slot:"weapon.mainhand"}
item replace entity @s weapon.mainhand from entity @s weapon.offhand
return run item replace entity @s weapon.offhand with minecraft:air