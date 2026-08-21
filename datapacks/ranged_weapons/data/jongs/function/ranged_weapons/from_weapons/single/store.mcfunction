execute if score @s jongs.ranged_weapons.weapon_type matches 1 run return run data modify storage jongs:ranged_weapons damage.type set value "mini_pierce"
execute if score @s jongs.ranged_weapons.weapon_type matches 2 run return run data modify storage jongs:ranged_weapons damage.type set value "full_pierce"
return run data modify storage jongs:ranged_weapons damage.type set value "no_pierce"