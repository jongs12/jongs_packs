execute if items entity @s weapon.mainhand *[damage~{durability:0}] run return run item modify entity @s weapon.mainhand jongs:ranged_weapons/throwables/remove_boost
execute if items entity @s weapon.mainhand *[damage~{damage:0}] run playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1
item modify entity @s weapon.mainhand jongs:ranged_weapons/throwables/tiny_spend
return run particle minecraft:soul_fire_flame ~ ~ ~ 0.2 0.2 0.2 1 2 normal