tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}
item replace entity @s weapon.mainhand with air
execute as @e[type=item,predicate=jongs:rinne/exclusive/item] run kill @s
execute as @a[predicate=jongs:rinne/face/head,predicate=!jongs:rinne/wand/inventory,predicate=!jongs:rinne/wand/offhand] at @s run function jongs:rinne/metamorphosis/wand