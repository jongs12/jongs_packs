particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 1 1 normal
playsound minecraft:item.mace.smash_ground_heavy player @a ~ ~ ~ 2 0.5
execute as @e[distance=0.001..9] run function jongs:rinne/use_item/on_mainhand/sword/damage
effect give @s minecraft:regeneration infinite 2 true
tag @s add jongs.rinne.using_sword
return run scoreboard players set @s jongs.rinne.hold 1