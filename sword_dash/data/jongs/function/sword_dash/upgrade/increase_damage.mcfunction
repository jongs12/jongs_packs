execute store result score 현재값 jongs_sword_dash_click run data get entity @s Item.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.damage
execute store result score 추가값 jongs_sword_dash_click run data get entity @n[type=item,nbt={Item:{id:"minecraft:fire_charge"}}] Item.count 2
scoreboard players operation 현재값 jongs_sword_dash_click += 추가값 jongs_sword_dash_click
execute store result storage jongs:sword_dash damage int 1 run scoreboard players get 현재값 jongs_sword_dash_click
data modify entity @s Item.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.damage set from storage jongs:sword_dash damage
kill @n[type=item,nbt={Item:{id:"minecraft:fire_charge"}}]
particle minecraft:angry_villager ~ ~ ~ 1 1 1 1 20 normal
playsound minecraft:entity.generic.explode block @a ~ ~ ~ 1 2 0