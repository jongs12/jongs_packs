execute if entity @s[tag=jongs.rinne.in_metamorphose] run return 0
tellraw @s {"translate":"jongs.rinne.no_equipment","color":"dark_red"}
execute as @e[type=item,predicate=jongs:rinne/item/exclusive/contents] run kill @s
execute as @a[tag=jongs.rinne.in_metamorphose] at @s run function jongs:rinne/metamorphosis/instant/costume
return run function jongs:rinne/metamorphosis/retrieve/weapons