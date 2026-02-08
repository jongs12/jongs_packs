$item replace entity @s $(slot) with minecraft:air
execute as @e[type=item,predicate=jongs:rinne/item/exclusive/contents] run kill @s
execute as @a[predicate=jongs:rinne/item/face/head,predicate=!jongs:rinne/item/wand/inventory,predicate=!jongs:rinne/item/wand/offhand] run function jongs:rinne/metamorphosis/wand
return run tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}