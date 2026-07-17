execute if items entity @s armor.head minecraft:player_head[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.head with minecraft:air
execute if items entity @s armor.chest minecraft:leather_chestplate[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.chest with minecraft:air
execute if items entity @s armor.legs minecraft:iron_leggings[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.legs with minecraft:air
execute if items entity @s armor.feet minecraft:leather_boots[minecraft:custom_data~{"jongs":[{"purpose":"rinne.exclusive"}]}] run item replace entity @s armor.feet with minecraft:air
return run tag @s remove jongs.rinne.unready