execute unless data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne_head"}] run function jongs:rinne/boom/back_to_owner
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0.5 0
execute as @e[distance=0.001..9] run function jongs:rinne/boom/damage
effect clear @s minecraft:mining_fatigue
scoreboard players set @s jongs_rinne_hold 1