scoreboard players set @s jongs_sword_dash_click 1
execute unless score @s jongs_sword_dash_hold matches 1 run function jongs:sword_dash/dashing/start with entity @s SelectedItem.components."minecraft:custom_data".jongs[{purpose:"sword_dash"}].levels
advancement revoke @s only jongs:sword_dash/start_dashing