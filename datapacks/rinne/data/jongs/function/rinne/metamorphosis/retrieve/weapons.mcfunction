advancement revoke @s only jongs:rinne/grab_wand
scoreboard players set @s jongs.rinne.remaining 0
tag @s remove jongs.rinne.in_metamorphose
title @s actionbar {"translate":"jongs.rinne.reverted","color":"aqua","shadow_color":[0,0,0,1]}
execute if items entity @s container.* *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run function jongs:rinne/drop_item/store {slot:'Inventory[{components:{"minecraft:custom_data":{jongs:[{purpose:"rinne.exclusive"}]}}}]'}
execute if items entity @s weapon.offhand *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s weapon.offhand with minecraft:air
tag @s add jongs.rinne.unready
return run schedule function jongs:rinne/metamorphosis/retrieve/delay 1t append