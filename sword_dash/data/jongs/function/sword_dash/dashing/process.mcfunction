$execute positioned ~-3 ~-3 ~-3 if entity @e[dx=5,dy=5,dz=5,nbt=!{UUID:$(UUID)}] run tag @e[dx=5,dy=5,dz=5,nbt=!{UUID:$(UUID)}] add jongs_sword_dash_hit
execute unless block ~ ~ ~ #jongs:sword_dash/dashable run scoreboard players set @s jongs_sword_dash_done 1
execute unless loaded ~ ~ ~ run scoreboard players set @s jongs_sword_dash_done 1
execute if score @s jongs_sword_dash_done matches 1 run function jongs:sword_dash/dashing/done with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels
scoreboard players add @s jongs_sword_dash_distance 1
execute if score @s jongs_sword_dash_distance matches 0 if score @s jongs_sword_dash_done matches 0 run function jongs:sword_dash/dashing/done with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels
execute if score @s jongs_sword_dash_distance matches ..-1 if score @s jongs_sword_dash_done matches 0 positioned ^ ^ ^0.1 run function jongs:sword_dash/dashing/process with entity @s