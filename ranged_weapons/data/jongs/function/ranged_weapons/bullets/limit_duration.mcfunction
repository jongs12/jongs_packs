execute if entity @s[type=minecraft:marker] run return run function jongs:ranged_weapons/flamethrower/process
execute if entity @s[type=minecraft:block_display] run return run function jongs:ranged_weapons/rocket_launcher/process
execute if entity @s[type=minecraft:item_display,predicate=jongs:ranged_weapons/no_vehicle] run return run function jongs:ranged_weapons/sticky_mine/process
return 0