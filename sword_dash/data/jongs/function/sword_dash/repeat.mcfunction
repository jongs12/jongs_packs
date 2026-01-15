execute as @a if score @s jongs.sword_dash.click matches 1 run scoreboard players set @s jongs.sword_dash.hold 1
execute as @a unless score @s jongs.sword_dash.click matches 1 run scoreboard players set @s jongs.sword_dash.hold 0
execute as @a run scoreboard players set @s jongs.sword_dash.click 0
execute as @a at @s as @e[type=item,distance=..10] if predicate jongs:sword_dash/can_upgrade at @s run function jongs:sword_dash/upgrade/check