scoreboard players set @s jongs_ranged_weapons_success 1
$execute as @n[nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health] run damage @s 8 minecraft:sweet_berry_bush by @p[scores={jongs_ranged_weapons_success=1}]
particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players set @s jongs_ranged_weapons_success -1