execute store result score #현재값 jongs.sword_dash.click run data get entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.damage
execute store result score #추가값 jongs.sword_dash.click run data get entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.damage 0.125
scoreboard players operation #현재값 jongs.sword_dash.click -= #추가값 jongs.sword_dash.click
execute if score #현재값 jongs.sword_dash.click matches ..9 run scoreboard players set #현재값 jongs.sword_dash.click 10
execute store result storage jongs:sword_dash damage int 1 run scoreboard players get #현재값 jongs.sword_dash.click
item modify entity @s weapon.mainhand jongs:sword_dash/paste_damage
execute store result score #현재값 jongs.sword_dash.click run data get entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.distance
execute store result score #추가값 jongs.sword_dash.click run data get entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels.distance 0.0625
scoreboard players operation #현재값 jongs.sword_dash.click -= #추가값 jongs.sword_dash.click
execute if score #현재값 jongs.sword_dash.click matches ..99 run scoreboard players set #현재값 jongs.sword_dash.click 100
execute store result storage jongs:sword_dash distance int 1 run scoreboard players get #현재값 jongs.sword_dash.click
item modify entity @s weapon.mainhand jongs:sword_dash/paste_distance