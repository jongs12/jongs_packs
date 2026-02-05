execute if score @s jongs.ranged_weapons.cooldown.energy_shield matches 2 run playsound minecraft:block.beacon.activate player @s ~ ~ ~ 1.5 2
execute if score @s jongs.ranged_weapons.cooldown.energy_shield matches 1 anchored eyes positioned ^ ^ ^ run particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 1 1 1 0.1 20
execute if score @s jongs.ranged_weapons.cooldown.energy_shield matches 1.. run scoreboard players remove @s jongs.ranged_weapons.cooldown.energy_shield 1
execute if items entity @s weapon.mainhand *[attribute_modifiers~{modifiers:{contains:[{id:"jongs:ranged_weapons.mainhand.movement_speed"}]}}] run return run function jongs:ranged_weapons/energy_shield/charging
return 0