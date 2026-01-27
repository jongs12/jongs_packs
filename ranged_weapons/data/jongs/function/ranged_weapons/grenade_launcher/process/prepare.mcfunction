execute if predicate jongs:ranged_weapons/no_vehicle positioned ^ ^ ^ run return run function jongs:ranged_weapons/grenade_launcher/process/set_tags
execute on vehicle store result storage jongs:ranged_weapons x float 1 run data get entity @s Motion[0] 1
execute on vehicle store result storage jongs:ranged_weapons y float 1 run data get entity @s Motion[1] 1
execute on vehicle store result storage jongs:ranged_weapons z float 1 run data get entity @s Motion[2] 1
function jongs:ranged_weapons/grenade_launcher/process/rotate with storage jongs:ranged_weapons
return run particle minecraft:cloud ~ ~ ~ 0.05 0.05 0.05 0 1 normal