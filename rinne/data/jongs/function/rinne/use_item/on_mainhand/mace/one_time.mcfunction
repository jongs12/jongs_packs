particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:entity.breeze.wind_burst player @a ~ ~ ~ 2 0.5
execute as @e[distance=0.001..9] run function jongs:rinne/use_item/on_mainhand/mace/damage
attribute @s minecraft:gravity modifier add jongs:rinne.command.gravity -1 add_multiplied_total
tag @s add jongs.rinne.no_gravity
return run scoreboard players set @s jongs.rinne.hold 1