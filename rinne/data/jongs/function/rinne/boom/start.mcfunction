execute unless data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne_head"}] run function jongs:rinne/boom/back_to_owner
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0.5 0
kill @e[type=creeper, distance=0.001..9]
execute as @e[distance=0.001..9] run damage @s 1 minecraft:player_attack by @p[scores={jongs_rinne_click=1,jongs_rinne_hold=0}]
execute as @e[distance=0.001..9] if items entity @s weapon.mainhand * at @s run function jongs:rinne/boom/drop_item {delay:40,slot:"weapon.mainhand"}
effect give @e[distance=0.001..9] minecraft:weakness 2 99 false
scoreboard players set @s jongs_rinne_hold 1