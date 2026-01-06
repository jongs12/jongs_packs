scoreboard players set @s jongs_ranged_weapons_success 1
$execute as @e[dx=0,sort=nearest,nbt=!{UUID:$(UUID)},type=!#jongs:ranged_weapons/infinite_health,predicate=jongs:ranged_weapons/not_invulnerable,limit=2] run damage @s 8 minecraft:sweet_berry_bush by @p[scores={jongs_ranged_weapons_success=1}]
particle minecraft:block{block_state:{Name:"minecraft:diamond_block"}} ~0.5 ~0.5 ~0.5 0.1 0.1 0.1 1 3 normal
scoreboard players set @s jongs_ranged_weapons_success -1