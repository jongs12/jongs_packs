scoreboard players set @s jongs_ranged_weapons_success 1
particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players operation @s jongs_ranged_weapons_shotgun_cooldown = 공격속도 jongs_ranged_weapons_shotgun_cooldown
$execute as @n[nbt=!{UUID:$(UUID)}] run scoreboard players add @s jongs_ranged_weapons_hit 7