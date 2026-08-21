execute if predicate jongs:ranged_weapons/no_vehicle run return run function jongs:ranged_weapons/from_weapons/display/start
data modify storage jongs:ranged_weapons bomb set value {}
execute on vehicle store result storage jongs:ranged_weapons bomb.x float 0.01 run data get entity @s Motion[0] 100
execute on vehicle store result storage jongs:ranged_weapons bomb.y float 0.01 run data get entity @s Motion[1] 100
execute on vehicle store result storage jongs:ranged_weapons bomb.z float 0.01 run data get entity @s Motion[2] 100
return run function jongs:ranged_weapons/from_weapons/grenade/rotate with storage jongs:ranged_weapons bomb