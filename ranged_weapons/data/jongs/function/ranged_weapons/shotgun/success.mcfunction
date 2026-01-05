scoreboard players set @s jongs_ranged_weapons_success 1
particle minecraft:block{block_state:{Name:"minecraft:iron_block"}} ~ ~ ~ 0.1 0.1 0.1 1 3 normal
scoreboard players operation @s jongs_ranged_weapons_shotgun_cooldown = 공격속도 jongs_ranged_weapons_shotgun_cooldown
$execute as @n[nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invincible] run scoreboard players add @s jongs_ranged_weapons_hit 7