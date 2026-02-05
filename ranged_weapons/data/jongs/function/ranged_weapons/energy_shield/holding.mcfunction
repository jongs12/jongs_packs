execute if score @s jongs.ranged_weapons.cooldown.energy_shield matches 1.. run scoreboard players remove @s jongs.ranged_weapons.cooldown.energy_shield 1
execute if items entity @s weapon.mainhand *[attribute_modifiers~{modifiers:{contains:[{id:"jongs:ranged_weapons.mainhand.movement_speed"}]}}] run return run function jongs:ranged_weapons/energy_shield/charging
return 0