execute if score @s jongs.ranged_weapons.hold matches 1.. run function jongs:ranged_weapons/from_weapons/display/process
execute if entity @s[tag=jongs.ranged_weapons.sticky_mine] run return run function jongs:ranged_weapons/from_weapons/display/end/sticky_mine
execute if entity @s[tag=jongs.ranged_weapons.sentry_gun] run return run function jongs:ranged_weapons/from_weapons/display/end/sentry_gun
execute if entity @s[tag=jongs.ranged_weapons.orbital_strike] run return run function jongs:ranged_weapons/from_weapons/display/end/orbital_strike
return run kill @s