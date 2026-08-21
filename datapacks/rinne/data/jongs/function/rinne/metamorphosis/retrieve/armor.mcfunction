execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.head with minecraft:air
execute if items entity @s armor.chest *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.chest with minecraft:air
execute if items entity @s armor.legs *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.legs with minecraft:air
execute if items entity @s armor.feet *[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.feet with minecraft:air
return run tag @s remove jongs.rinne.unready