execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/from_weapons/grenade/start
data modify storage jongs:ranged_weapons bomb set value {}
execute on vehicle store result storage jongs:ranged_weapons bomb.x float 0.01 run data get entity @s Motion[0] 100
execute on vehicle store result storage jongs:ranged_weapons bomb.y float 0.01 run data get entity @s Motion[1] 100
execute on vehicle store result storage jongs:ranged_weapons bomb.z float 0.01 run data get entity @s Motion[2] 100
function jongs:ranged_weapons/from_weapons/grenade/rotate with storage jongs:ranged_weapons bomb
return run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 normal