effect clear @s minecraft:dolphins_grace
execute if items entity @s weapon.mainhand minecraft:trident[minecraft:custom_data~{"jongs":[{"purpose":"rinne.wand"}]}] run effect give @s minecraft:dolphins_grace 1 0 true
return run tag @s remove jongs.rinne.using_trident