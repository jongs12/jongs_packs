$execute positioned ~-3 ~-3 ~-3 as @e[dx=5,dy=5,dz=5,nbt=!{UUID:$(UUID)},tag=!jongs.sword_dash.hit] run tag @s add jongs.sword_dash.hit
execute unless loaded ~ ~ ~ run return run function jongs:sword_dash/dashing/done with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels
execute unless block ~ ~ ~ #jongs:sword_dash/dashable run return run function jongs:sword_dash/dashing/done with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels
scoreboard players add @s jongs.sword_dash.distance 1
execute if score @s jongs.sword_dash.distance matches ..-1 positioned ^ ^ ^0.1 run return run function jongs:sword_dash/dashing/process with entity @s
return run function jongs:sword_dash/dashing/done with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels