execute if score @s jongs.ranged_weapons.weapon_type matches 2 if block ^ ^ ^0.9 #jongs:ranged_weapons/might_pierce run return 0
particle minecraft:block{block_state:{Name:"minecraft:netherite_block"}} ~ ~ ~ 0 0 0 1 1 normal
return run scoreboard players set @s jongs.ranged_weapons.reload_time -1