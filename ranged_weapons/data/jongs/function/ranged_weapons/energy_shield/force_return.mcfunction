execute unless score @s jongs.ranged_weapons.cooldown.energy_shield matches 0 run return 0
execute if items entity @s weapon.offhand *[attribute_modifiers~{modifiers:{contains:[{id:"jongs:ranged_weapons.mainhand.movement_speed"}]}}] run return 0
scoreboard players set @s jongs.ranged_weapons.cooldown.energy_shield 80
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1
return run item modify entity @s weapon.offhand jongs:ranged_weapons/throwables/give_boost