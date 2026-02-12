playsound minecraft:item.armor.equip_netherite player @a ~ ~ ~ 2 0.8
attribute @s minecraft:movement_speed modifier add jongs:rinne.command.movement_speed 0.85 add_multiplied_base
tag @s add jongs.rinne.using_spear
return run scoreboard players set @s jongs.rinne.hold 1