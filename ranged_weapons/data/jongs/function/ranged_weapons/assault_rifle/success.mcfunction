scoreboard players set @s jongs_ranged_weapons_success 1
$execute as @n[nbt=!{UUID:$(UUID)}] run damage @s 9 minecraft:arrow by @p[scores={jongs_ranged_weapons_success=1}]
particle minecraft:block{block_state:{Name:"minecraft:gold_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players operation @s jongs_ranged_weapons_assault_rifle_cooldown = 공격속도 jongs_ranged_weapons_assault_rifle_cooldown
scoreboard players set @s jongs_ranged_weapons_success -1