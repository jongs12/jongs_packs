execute if items entity @s contents *[!minecraft:blocks_attacks]  run data modify entity @s Item.components."minecraft:blocks_attacks" set value {disable_cooldown_scale:0,damage_reductions:[{type:fall,base:0,factor:1,horizontal_blocking_angle:180}],item_damage:{base:0,factor:0,threshold:0},block_sound:"entity.zombie.attack_wooden_door"}
execute unless predicate jongs:sword_dash/is_dashing_sword run data modify entity @s Item.components."minecraft:custom_data".jongs append value {purpose:"sword_dash", levels:{distance:95,damage:10}}
data modify entity @s Item.components."minecraft:enchantment_glint_override" set value true
execute store result score #현재값 jongs.sword_dash.click run data get entity @s Item.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.distance
execute store result score #추가값 jongs.sword_dash.click run data get entity @n[type=item,nbt={Item:{id:"minecraft:wind_charge"}}] Item.count 5
scoreboard players operation #현재값 jongs.sword_dash.click += #추가값 jongs.sword_dash.click
execute store result storage jongs:sword_dash distance int 1 run scoreboard players get #현재값 jongs.sword_dash.click
data modify entity @s Item.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.distance set from storage jongs:sword_dash distance
kill @n[type=item,nbt={Item:{id:"minecraft:wind_charge"}}]
particle minecraft:happy_villager ~ ~ ~ 1 1 1 1 20 normal
playsound minecraft:entity.breeze.wind_burst block @a ~ ~ ~ 1 2 0