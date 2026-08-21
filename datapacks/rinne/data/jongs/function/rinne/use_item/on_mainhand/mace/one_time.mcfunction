particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 0.5
execute as @e[distance=0.001..9] run function jongs:rinne/use_item/on_mainhand/mace/damage
attribute @s minecraft:air_drag_modifier modifier add jongs:rinne.command.mace_air_drag 2048 add_value
return run tag @s add jongs.rinne.using_mace