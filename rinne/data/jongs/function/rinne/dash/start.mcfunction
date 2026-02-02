execute unless data entity @s equipment.head.components."minecraft:custom_data".jongs[{purpose:"rinne.face"}] run return run function jongs:rinne/boom/back_to_owner
particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 0.5 0
effect give @e[distance=0.001..9] minecraft:glowing 6 0 true
effect give @e[distance=0.001..9] minecraft:slowness 6 4 false
function jongs:rinne/boom/remove_effects
attribute @s minecraft:gravity modifier add jongs:rinne.command.gravity -1 add_multiplied_total
function jongs:rinne/dash/process
return run scoreboard players set @s jongs.rinne.hold 1